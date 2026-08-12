/**
 * Copyright (C) 2015 Patrick Mours. All rights reserved.
 * License: https://github.com/crosire/d3d8to9#license
 */

#include "d3dx9.hpp"
#include "d3d8to9.hpp"
#include <regex>
#include <assert.h>
#include <stdlib.h>

struct VertexShaderInfo
{
	IDirect3DVertexShader9 *Shader = nullptr;
	IDirect3DVertexDeclaration9 *Declaration = nullptr;

	// AquaNox (547.2): Merkmale, am Quelltext des Shaders erkannt.
	// Rein wrapper-intern, wird nie an das Spiel gereicht.
	bool RechnetLicht = false;   // (c51 und c53) oder c58
	bool HatHemi = false;        // c51 und c53  -> Hemisphaerenlicht
	bool HatAdditiv = false;     // c50          -> additiver Anteil
	bool HatGlanz = false;       // oD1 -> Spekularanteil, den der PS addieren muss
	unsigned char Lichter = 0;   // c58/c62/c66/c70 -> 0..4 Punktlichter

	// *** OB DIESER SHADER AUF vs_3_0 STEHT (F19). *** Die Absicherung
	// hing bisher an AqVSLicht -- einem ANDEREN Merkmal, gesetzt zu
	// einem anderen Zeitpunkt. Faellt es aus, bleibt ein umgestellter
	// Shader ohne Pixelshader und das Objekt verschwindet.
	bool IstVS3 = false;

	// *** DOPPEL-FASSUNG (579, Option B). *** "Shader" ist IMMER das
	// unveraenderte vs_1_1-Original -- gueltig mit Fixed Function und
	// mit den spieleigenen ps_1_x. "ShaderVS3" ist die uebersetzte
	// vs_3_0-Fassung mit durchgereichter Normale/Position/Farbe --
	// gueltig NUR mit unseren ps_3_0-Shadern. AqVorZeichnen bindet je
	// Zeichenaufruf die Fassung, die zum Pixelshader passt: eine
	// ungueltige Paarung (F12/F16) ist damit konstruktiv unmoeglich.
	IDirect3DVertexShader9 *ShaderVS3 = nullptr;

	// 597: Register der WVP-Matrix ("m4x4 oPos, v0, cN"), am Quelltext
	// erkannt. Die Prelit-Shader nutzen c3, andere anderes, Bildschirm-
	// Quads gar keins (-1). Grundlage der errechneten Prelit-Kamera.
	int MatrixReg = -1;
};

// Definition steht bei den uebrigen Aq-Funktionen am Dateiende (561).
static bool AqNachVS3(std::string &SourceCode);

Direct3DDevice8::Direct3DDevice8(Direct3D8 *d3d, IDirect3DDevice9 *ProxyInterface, DWORD BehaviorFlags, D3DFORMAT ZBufferFormat, BOOL EnableZBufferDiscarding) :
	D3D(d3d), ProxyInterface(ProxyInterface), ZBufferDiscarding(EnableZBufferDiscarding)
{
	ProxyAddressLookupTable = new AddressLookupTable(this);

	const HDC hDC = GetDC(nullptr);
	IsPaletteSupported = (::GetDeviceCaps(hDC, RASTERCAPS) & RC_PALETTE) != 0;
	ReleaseDC(nullptr, hDC);

	IsMixedVertexProcessingDevice = (BehaviorFlags & D3DCREATE_MIXED_VERTEXPROCESSING) != 0;

	CurrentZBufferBitCount = GetDepthStencilBitCount(ZBufferFormat);

	// The default value of D3DRS_POINTSIZE_MIN is 0.0f in D3D8,
	// whereas in D3D9 it is 1.0f, so adjust it as needed
	ProxyInterface->SetRenderState(D3DRS_POINTSIZE_MIN, (DWORD)0.0f);
	// The DEPTHBIAS value of -0.0f works differently than 0.0f
	// Some games require defaulting to -0.0f to work correctly
	const float DepthBias = -0.0f;
	ProxyInterface->SetRenderState(D3DRS_DEPTHBIAS, *(const DWORD *)&DepthBias);

	AqInit(BehaviorFlags);
}
Direct3DDevice8::~Direct3DDevice8()
{
	// Letzte Rettung, falls die Referenzrechnung verrutscht ist.
	AqGibFrei();

	delete ProxyAddressLookupTable;
}

HRESULT STDMETHODCALLTYPE Direct3DDevice8::QueryInterface(REFIID riid, void **ppvObj)
{
	if (ppvObj == nullptr)
		return E_POINTER;

	if (riid == __uuidof(IDirect3DDevice8) ||
		riid == __uuidof(IUnknown))
	{
		AddRef();
		*ppvObj = static_cast<IDirect3DDevice8 *>(this);

		return S_OK;
	}

	const HRESULT hr = ProxyInterface->QueryInterface(ConvertREFIID(riid), ppvObj);
	if (SUCCEEDED(hr))
		GenericQueryInterface(riid, ppvObj, this);

	return hr;
}
ULONG STDMETHODCALLTYPE Direct3DDevice8::AddRef()
{
	ULONG LastRefCount = ProxyInterface->AddRef();

	// Shaders and state blocks increase ref counter in d3d9 but not in d3d8
	// AquaNox: unser eigener Pixelshader haelt ebenfalls eine Referenz.
	DWORD ExtraRefs = VertexShaderAndDeclarationCount + PixelShaderHandles.size() + StateBlockTokens.size()
		+ AqPSRefs;
	if (ExtraRefs <= LastRefCount)
	{
		LastRefCount = LastRefCount - ExtraRefs;
	}

	return LastRefCount;
}

ULONG STDMETHODCALLTYPE Direct3DDevice8::Release()
{
	// Get current value before releasing the device reference
	ULONG LastRefCount = ProxyInterface->AddRef();
	LastRefCount = ProxyInterface->Release();

	// Shaders and StateBlocks are destroyed alongside the device that created them in D3D8 but not in D3D9
	// so we need to Release any remaining shaders or state blocks when the device is released to mirror that behaviour
	DWORD ExtraRefs = VertexShaderAndDeclarationCount + PixelShaderHandles.size() + StateBlockTokens.size()
		+ AqPSRefs;
	if (ExtraRefs <= LastRefCount)
	{
		LastRefCount = LastRefCount - ExtraRefs;
		if (LastRefCount == 1)
		{
			// Release shaders and state blocks when only one reference is left
			ReleaseShadersAndStateBlocks();
		}
	}

	// Release device reference
	LastRefCount = ProxyInterface->Release();

	if (LastRefCount == 0)
		delete this;

	return LastRefCount;
}

HRESULT STDMETHODCALLTYPE Direct3DDevice8::TestCooperativeLevel()
{
	return ProxyInterface->TestCooperativeLevel();
}
UINT STDMETHODCALLTYPE Direct3DDevice8::GetAvailableTextureMem()
{
	return ProxyInterface->GetAvailableTextureMem();
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::ResourceManagerDiscardBytes(DWORD Bytes)
{
	UNREFERENCED_PARAMETER(Bytes);

	return ProxyInterface->EvictManagedResources();
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetDirect3D(IDirect3D8 **ppD3D8)
{
	if (ppD3D8 == nullptr)
		return D3DERR_INVALIDCALL;

	D3D->AddRef();
	*ppD3D8 = D3D;

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetDeviceCaps(D3DCAPS8 *pCaps)
{
	if (pCaps == nullptr)
		return D3DERR_INVALIDCALL;

	D3DCAPS9 DeviceCaps;

	const HRESULT hr = ProxyInterface->GetDeviceCaps(&DeviceCaps);
	if (FAILED(hr))
		return hr;

	ConvertCaps(DeviceCaps, *pCaps);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetDisplayMode(D3DDISPLAYMODE *pMode)
{
	return ProxyInterface->GetDisplayMode(0, pMode);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetCreationParameters(D3DDEVICE_CREATION_PARAMETERS *pParameters)
{
	return ProxyInterface->GetCreationParameters(pParameters);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetCursorProperties(UINT XHotSpot, UINT YHotSpot, IDirect3DSurface8 *pCursorBitmap)
{
	if (pCursorBitmap == nullptr)
		return D3DERR_INVALIDCALL;

	auto pCursorBitmapImpl = static_cast<Direct3DSurface8 *>(pCursorBitmap);
	return ProxyInterface->SetCursorProperties(XHotSpot, YHotSpot, pCursorBitmapImpl->GetProxyInterface());
}
void STDMETHODCALLTYPE Direct3DDevice8::SetCursorPosition(UINT XScreenSpace, UINT YScreenSpace, DWORD Flags)
{
	ProxyInterface->SetCursorPosition(XScreenSpace, YScreenSpace, Flags);
}
BOOL STDMETHODCALLTYPE Direct3DDevice8::ShowCursor(BOOL bShow)
{
	return ProxyInterface->ShowCursor(bShow);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::CreateAdditionalSwapChain(D3DPRESENT_PARAMETERS8 *pPresentationParameters, IDirect3DSwapChain8 **ppSwapChain)
{
#ifndef D3D8TO9NOLOG
	LOG << "Redirecting '" << "IDirect3DDevice8::CreateAdditionalSwapChain" << "(" << this << ", " << pPresentationParameters << ", " << ppSwapChain << ")' ..." << std::endl;
#endif

	if (pPresentationParameters == nullptr || ppSwapChain == nullptr)
		return D3DERR_INVALIDCALL;

	*ppSwapChain = nullptr;

	D3DPRESENT_PARAMETERS PresentParams;
	ConvertPresentParameters(*pPresentationParameters, PresentParams);

	IDirect3DSwapChain9 *SwapChainInterface = nullptr;

	const HRESULT hr = ProxyInterface->CreateAdditionalSwapChain(&PresentParams, &SwapChainInterface);
	if (FAILED(hr))
		return hr;

	*ppSwapChain = ProxyAddressLookupTable->FindAddress<Direct3DSwapChain8>(SwapChainInterface);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::Reset(D3DPRESENT_PARAMETERS8 *pPresentationParameters)
{
#ifndef D3D8TO9NOLOG
	LOG << "Redirecting '" << "IDirect3DDevice8::Reset" << "(" << this << ", " << pPresentationParameters << ")' ..." << std::endl;
#endif

	if (pPresentationParameters == nullptr)
		return D3DERR_INVALIDCALL;

	CurrentZBiasRenderState = 0;

	const HRESULT deviceState = ProxyInterface->TestCooperativeLevel();

	if (deviceState == D3DERR_DEVICENOTRESET) {
		while (!StateBlockTokens.empty())
		{
			DWORD Token = *StateBlockTokens.begin();
			DeleteStateBlock(Token);
		}
	}

	D3DPRESENT_PARAMETERS PresentParams;
	ConvertPresentParameters(*pPresentationParameters, PresentParams);

	const HRESULT hr = ProxyInterface->Reset(&PresentParams);

	if (SUCCEEDED(hr))
	{
		// The default value of D3DRS_POINTSIZE_MIN is 0.0f in D3D8,
		// whereas in D3D9 it is 1.0f, so adjust it as needed
		ProxyInterface->SetRenderState(D3DRS_POINTSIZE_MIN, (DWORD) 0.0f);
		// The DEPTHBIAS value of -0.0f works differently than 0.0f
		// Some games require defaulting to -0.0f to work correctly
		float DepthBias = -0.0f;
		ProxyInterface->SetRenderState(D3DRS_DEPTHBIAS, *(DWORD*)&DepthBias);

		// AquaNox (547.7, Falle F): Reset setzt alle Texturstufen auf ihre
		// Vorgabe und loest jede Texturbindung. Der Schatten muss mit.
		// Den Pixelshader-Cache NICHT freigeben: Shader sind keine
		// DEFAULT-Pool-Ressourcen und ueberstehen den Reset unbeschadet.
		AqDefaults();
		AqAktiverPS = nullptr;
		// Reset setzt auch die Samplerzustaende zurueck -- die
		// Kartenstufen 8..10 fielen sonst auf POINT zurueck (585).
		AqSetzeKartenfilter();

		// Reset loest auch Vertex- und Pixelshader. Ohne diese Zeilen
		// bindet der Abraeumzweig in AqVorZeichnen einen Pixelshader,
		// den das Spiel nie gesetzt hat, und AqVSLicht behauptet einen
		// lichtrechnenden Vertexshader, den es nicht mehr gibt (F7).
		CurrentPixelShaderHandle = 0;
		AqVSLicht = false;
		AqVSHemi = false;
		AqVSAdditiv = false;
		AqVSGlanz = false;
		AqVSLichter = 0;
		AqVS3Aktiv = false;
		AqVSOriginal = nullptr;
		AqVSDrei = nullptr;
		AqVS3Gebunden = false;
		AqVSMatrixReg = -1;   // 597
		AqKonstSchmutzig = true;
	}

	return hr;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::Present(const RECT *pSourceRect, const RECT *pDestRect, HWND hDestWindowOverride, const RGNDATA *pDirtyRegion)
{
	UNREFERENCED_PARAMETER(pDirtyRegion);

	++AqFrame;   // 595-Diagnose: Frame-Zaehler fuer das Flacker-Protokoll
	return ProxyInterface->Present(pSourceRect, pDestRect, hDestWindowOverride, nullptr);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetBackBuffer(UINT iBackBuffer, D3DBACKBUFFER_TYPE Type, IDirect3DSurface8 **ppBackBuffer)
{
	if (ppBackBuffer == nullptr)
		return D3DERR_INVALIDCALL;

	*ppBackBuffer = nullptr;

	IDirect3DSurface9 *SurfaceInterface = nullptr;

	const HRESULT hr = ProxyInterface->GetBackBuffer(0, iBackBuffer, Type, &SurfaceInterface);
	if (FAILED(hr))
		return hr;

	*ppBackBuffer = ProxyAddressLookupTable->FindAddress<Direct3DSurface8>(SurfaceInterface);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetRasterStatus(D3DRASTER_STATUS *pRasterStatus)
{
	return ProxyInterface->GetRasterStatus(0, pRasterStatus);
}
void STDMETHODCALLTYPE Direct3DDevice8::SetGammaRamp(DWORD Flags, const D3DGAMMARAMP *pRamp)
{
	ProxyInterface->SetGammaRamp(0, Flags, pRamp);
}
void STDMETHODCALLTYPE Direct3DDevice8::GetGammaRamp(D3DGAMMARAMP *pRamp)
{
	ProxyInterface->GetGammaRamp(0, pRamp);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::CreateTexture(UINT Width, UINT Height, UINT Levels, DWORD Usage, D3DFORMAT Format, D3DPOOL Pool, IDirect3DTexture8 **ppTexture)
{
	if (ppTexture == nullptr)
		return D3DERR_INVALIDCALL;

	if (Format == D3DFMT_UNKNOWN)
		return D3DERR_INVALIDCALL;

	*ppTexture = nullptr;

	if (Pool == D3DPOOL_DEFAULT)
	{
		D3DDEVICE_CREATION_PARAMETERS CreationParams;
		ProxyInterface->GetCreationParameters(&CreationParams);

		if ((Usage & D3DUSAGE_DYNAMIC) == 0 &&
			SUCCEEDED(D3D->GetProxyInterface()->CheckDeviceFormat(CreationParams.AdapterOrdinal, CreationParams.DeviceType, D3DFMT_X8R8G8B8, D3DUSAGE_RENDERTARGET, D3DRTYPE_TEXTURE, Format)))
		{
			Usage |= D3DUSAGE_RENDERTARGET;
		}
		else if (Usage != D3DUSAGE_DEPTHSTENCIL)
		{
			Usage |= D3DUSAGE_DYNAMIC;
		}
	}

	IDirect3DTexture9 *TextureInterface = nullptr;

	const HRESULT hr = ProxyInterface->CreateTexture(Width, Height, Levels, Usage, Format, Pool, &TextureInterface, nullptr);
	if (FAILED(hr))
		return hr;

	*ppTexture = ProxyAddressLookupTable->FindAddress<Direct3DTexture8>(TextureInterface);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::CreateVolumeTexture(UINT Width, UINT Height, UINT Depth, UINT Levels, DWORD Usage, D3DFORMAT Format, D3DPOOL Pool, IDirect3DVolumeTexture8 **ppVolumeTexture)
{
	if (ppVolumeTexture == nullptr)
		return D3DERR_INVALIDCALL;

	if (Format == D3DFMT_UNKNOWN)
		return D3DERR_INVALIDCALL;

	*ppVolumeTexture = nullptr;

	IDirect3DVolumeTexture9 *TextureInterface = nullptr;

	const HRESULT hr = ProxyInterface->CreateVolumeTexture(Width, Height, Depth, Levels, Usage, Format, Pool, &TextureInterface, nullptr);
	if (FAILED(hr))
		return hr;

	*ppVolumeTexture = ProxyAddressLookupTable->FindAddress<Direct3DVolumeTexture8>(TextureInterface);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::CreateCubeTexture(UINT EdgeLength, UINT Levels, DWORD Usage, D3DFORMAT Format, D3DPOOL Pool, IDirect3DCubeTexture8 **ppCubeTexture)
{
	if (ppCubeTexture == nullptr)
		return D3DERR_INVALIDCALL;

	if (Format == D3DFMT_UNKNOWN)
		return D3DERR_INVALIDCALL;

	*ppCubeTexture = nullptr;

	IDirect3DCubeTexture9 *TextureInterface = nullptr;

	const HRESULT hr = ProxyInterface->CreateCubeTexture(EdgeLength, Levels, Usage, Format, Pool, &TextureInterface, nullptr);
	if (FAILED(hr))
		return hr;

	*ppCubeTexture = ProxyAddressLookupTable->FindAddress<Direct3DCubeTexture8>(TextureInterface);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::CreateVertexBuffer(UINT Length, DWORD Usage, DWORD FVF, D3DPOOL Pool, IDirect3DVertexBuffer8 **ppVertexBuffer)
{
	if (ppVertexBuffer == nullptr)
		return D3DERR_INVALIDCALL;

	*ppVertexBuffer = nullptr;

	IDirect3DVertexBuffer9 *BufferInterface = nullptr;

	const HRESULT hr = ProxyInterface->CreateVertexBuffer(Length, Usage, FVF, Pool, &BufferInterface, nullptr);
	if (FAILED(hr))
		return hr;

	*ppVertexBuffer = ProxyAddressLookupTable->FindAddress<Direct3DVertexBuffer8>(BufferInterface);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::CreateIndexBuffer(UINT Length, DWORD Usage, D3DFORMAT Format, D3DPOOL Pool, IDirect3DIndexBuffer8 **ppIndexBuffer)
{
	if (ppIndexBuffer == nullptr)
		return D3DERR_INVALIDCALL;

	*ppIndexBuffer = nullptr;

	IDirect3DIndexBuffer9 *BufferInterface = nullptr;

	const HRESULT hr = ProxyInterface->CreateIndexBuffer(Length, Usage, Format, Pool, &BufferInterface, nullptr);
	if (FAILED(hr))
		return hr;

	*ppIndexBuffer = ProxyAddressLookupTable->FindAddress<Direct3DIndexBuffer8>(BufferInterface);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::CreateRenderTarget(UINT Width, UINT Height, D3DFORMAT Format, D3DMULTISAMPLE_TYPE MultiSample, BOOL Lockable, IDirect3DSurface8 **ppSurface)
{
	if (ppSurface == nullptr)
		return D3DERR_INVALIDCALL;

	if (Format == D3DFMT_UNKNOWN)
		return D3DERR_INVALIDCALL;

	*ppSurface = nullptr;

	IDirect3DSurface9 *SurfaceInterface = nullptr;

	const HRESULT hr = ProxyInterface->CreateRenderTarget(Width, Height, Format, MultiSample, 0, Lockable, &SurfaceInterface, nullptr);
	if (FAILED(hr))
		return hr;

	*ppSurface = ProxyAddressLookupTable->FindAddress<Direct3DSurface8>(SurfaceInterface);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::CreateDepthStencilSurface(UINT Width, UINT Height, D3DFORMAT Format, D3DMULTISAMPLE_TYPE MultiSample, IDirect3DSurface8 **ppSurface)
{
	if (ppSurface == nullptr)
		return D3DERR_INVALIDCALL;

	if (Format == D3DFMT_UNKNOWN)
		return D3DERR_INVALIDCALL;

	*ppSurface = nullptr;

	IDirect3DSurface9 *SurfaceInterface = nullptr;

	const HRESULT hr = ProxyInterface->CreateDepthStencilSurface(Width, Height, Format, MultiSample, 0, ZBufferDiscarding, &SurfaceInterface, nullptr);
	if (FAILED(hr))
		return hr;

	*ppSurface = ProxyAddressLookupTable->FindAddress<Direct3DSurface8>(SurfaceInterface);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::CreateImageSurface(UINT Width, UINT Height, D3DFORMAT Format, IDirect3DSurface8 **ppSurface)
{
#ifndef D3D8TO9NOLOG
	LOG << "Redirecting '" << "IDirect3DDevice8::CreateImageSurface" << "(" << this << ", " << Width << ", " << Height << ", " << Format << ", " << ppSurface << ")' ..." << std::endl;
#endif

	if (ppSurface == nullptr)
		return D3DERR_INVALIDCALL;

	// Only 'CreateImageSurface' clears the content of ppSurface before checking if Format is equal to D3DFMT_UNKNOWN.
	*ppSurface = nullptr;

	if (Format == D3DFMT_UNKNOWN)
		return D3DERR_INVALIDCALL;

	IDirect3DSurface9 *SurfaceInterface = nullptr;

	const HRESULT hr = ProxyInterface->CreateOffscreenPlainSurface(Width, Height, Format, D3DPOOL_SYSTEMMEM, &SurfaceInterface, nullptr);

	if (FAILED(hr) && FAILED(ProxyInterface->CreateOffscreenPlainSurface(Width, Height, Format, D3DPOOL_SCRATCH, &SurfaceInterface, nullptr)))
	{
#ifndef D3D8TO9NOLOG
		LOG << "> 'IDirect3DDevice9::CreateOffscreenPlainSurface' failed with error code " << std::hex << hr << std::dec << "!" << std::endl;
#endif
		return hr;
	}

	*ppSurface = ProxyAddressLookupTable->FindAddress<Direct3DSurface8>(SurfaceInterface);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::CopyRects(IDirect3DSurface8 *pSourceSurface, const RECT *pSourceRectsArray, UINT cRects, IDirect3DSurface8 *pDestinationSurface, const POINT *pDestPointsArray)
{
	if (pSourceSurface == nullptr || pDestinationSurface == nullptr || pSourceSurface == pDestinationSurface)
		return D3DERR_INVALIDCALL;

	auto pSourceSurfaceImpl = static_cast<Direct3DSurface8 *>(pSourceSurface);
	auto pDestinationSurfaceImpl = static_cast<Direct3DSurface8 *>(pDestinationSurface);

	D3DSURFACE_DESC SourceDesc, DestinationDesc;
	pSourceSurfaceImpl->GetProxyInterface()->GetDesc(&SourceDesc);
	pDestinationSurfaceImpl->GetProxyInterface()->GetDesc(&DestinationDesc);

	if (SourceDesc.Format != DestinationDesc.Format)
		return D3DERR_INVALIDCALL;

	if (GetDepthStencilBitCount(SourceDesc.Format) != 0)
		return D3DERR_INVALIDCALL;

	HRESULT hr = D3DERR_INVALIDCALL;

	if (cRects == 0)
		cRects  = 1;

	for (UINT i = 0; i < cRects; i++)
	{
		RECT SourceRect, DestinationRect;

		if (pSourceRectsArray != nullptr)
		{
			SourceRect = pSourceRectsArray[i];
		}
		else
		{
			SourceRect.left = 0;
			SourceRect.right = SourceDesc.Width;
			SourceRect.top = 0;
			SourceRect.bottom = SourceDesc.Height;
		}

		if (pDestPointsArray != nullptr)
		{
			DestinationRect.left = pDestPointsArray[i].x;
			DestinationRect.right = DestinationRect.left + (SourceRect.right - SourceRect.left);
			DestinationRect.top = pDestPointsArray[i].y;
			DestinationRect.bottom = DestinationRect.top + (SourceRect.bottom - SourceRect.top);
		}
		else
		{
			DestinationRect = SourceRect;
		}

		if (SourceDesc.Pool == D3DPOOL_MANAGED || DestinationDesc.Pool != D3DPOOL_DEFAULT)
		{
			hr = D3DERR_INVALIDCALL;
			if (D3DXLoadSurfaceFromSurface != nullptr)
			{
				if (SUCCEEDED(D3DXLoadSurfaceFromSurface(pDestinationSurfaceImpl->GetProxyInterface(), nullptr, &DestinationRect, pSourceSurfaceImpl->GetProxyInterface(), nullptr, &SourceRect, D3DX_FILTER_NONE, 0)))
				{
					// Explicitly call AddDirtyRect on the surface
					void *pContainer = nullptr;
					if (SUCCEEDED(pDestinationSurfaceImpl->GetContainer(IID_IDirect3DTexture9, &pContainer)) && pContainer)
					{
						IDirect3DTexture9 *pTexture = (IDirect3DTexture9*)pContainer;
						pTexture->AddDirtyRect(&DestinationRect);
						pTexture->Release();
					}
					hr = D3D_OK;
				}
			}
		}
		else if (SourceDesc.Pool == D3DPOOL_DEFAULT)
		{
			hr = ProxyInterface->StretchRect(pSourceSurfaceImpl->GetProxyInterface(), &SourceRect, pDestinationSurfaceImpl->GetProxyInterface(), &DestinationRect, D3DTEXF_NONE);
		}
		else if (SourceDesc.Pool == D3DPOOL_SYSTEMMEM)
		{
			const POINT pt = { DestinationRect.left, DestinationRect.top };

			hr = ProxyInterface->UpdateSurface(pSourceSurfaceImpl->GetProxyInterface(), &SourceRect, pDestinationSurfaceImpl->GetProxyInterface(), &pt);
		}

		if (FAILED(hr))
		{
#ifndef D3D8TO9NOLOG
			LOG << "Failed to translate 'IDirect3DDevice8::CopyRects' call from '[" << SourceDesc.Width << "x" << SourceDesc.Height << ", " << SourceDesc.Format << ", " << SourceDesc.MultiSampleType << ", " << SourceDesc.Usage << ", " << SourceDesc.Pool << "]' to '[" << DestinationDesc.Width << "x" << DestinationDesc.Height << ", " << DestinationDesc.Format << ", " << DestinationDesc.MultiSampleType << ", " << DestinationDesc.Usage << ", " << DestinationDesc.Pool << "]'!" << std::endl;
#endif
			break;
		}
	}

	return hr;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::UpdateTexture(IDirect3DBaseTexture8 *pSourceTexture, IDirect3DBaseTexture8 *pDestinationTexture)
{
	if (pSourceTexture == nullptr || pDestinationTexture == nullptr || pSourceTexture->GetType() != pDestinationTexture->GetType())
		return D3DERR_INVALIDCALL;

	IDirect3DBaseTexture9 *SourceBaseTextureInterface, *DestinationBaseTextureInterface;

	switch (pSourceTexture->GetType())
	{
	case D3DRTYPE_TEXTURE:
		SourceBaseTextureInterface = static_cast<Direct3DTexture8 *>(pSourceTexture)->GetProxyInterface();
		DestinationBaseTextureInterface = static_cast<Direct3DTexture8 *>(pDestinationTexture)->GetProxyInterface();
		break;
	case D3DRTYPE_VOLUMETEXTURE:
		SourceBaseTextureInterface = static_cast<Direct3DVolumeTexture8 *>(pSourceTexture)->GetProxyInterface();
		DestinationBaseTextureInterface = static_cast<Direct3DVolumeTexture8 *>(pDestinationTexture)->GetProxyInterface();
		break;
	case D3DRTYPE_CUBETEXTURE:
		SourceBaseTextureInterface = static_cast<Direct3DCubeTexture8 *>(pSourceTexture)->GetProxyInterface();
		DestinationBaseTextureInterface = static_cast<Direct3DCubeTexture8 *>(pDestinationTexture)->GetProxyInterface();
		break;
	default:
		return D3DERR_INVALIDCALL;
	}

	return ProxyInterface->UpdateTexture(SourceBaseTextureInterface, DestinationBaseTextureInterface);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetFrontBuffer(IDirect3DSurface8 *pDestSurface)
{
	if (pDestSurface == nullptr)
		return D3DERR_INVALIDCALL;

	auto pDestSurfaceImpl = static_cast<Direct3DSurface8 *>(pDestSurface);
	return ProxyInterface->GetFrontBufferData(0, pDestSurfaceImpl->GetProxyInterface());
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetRenderTarget(IDirect3DSurface8 *pRenderTarget, IDirect3DSurface8 *pNewZStencil)
{
	HRESULT hr;

	if (pRenderTarget != nullptr)
	{
		auto pRenderTargetImpl = static_cast<Direct3DSurface8 *>(pRenderTarget);
		hr = ProxyInterface->SetRenderTarget(0, pRenderTargetImpl->GetProxyInterface());
		if (FAILED(hr))
			return hr;
	}

	if (pNewZStencil != nullptr)
	{
		auto pNewZStencilImpl = static_cast<Direct3DSurface8 *>(pNewZStencil);
		hr = ProxyInterface->SetDepthStencilSurface(pNewZStencilImpl->GetProxyInterface());
		if (FAILED(hr))
			return hr;

		D3DSURFACE_DESC8 Desc = {};
		pNewZStencilImpl->GetDesc(&Desc);

		CurrentZBufferBitCount = GetDepthStencilBitCount(Desc.Format);

		ProxyInterface->SetRenderState(D3DRS_DEPTHBIAS, CalcDepthBias(CurrentZBiasRenderState, CurrentZBufferBitCount));
	}
	else
	{
		ProxyInterface->SetDepthStencilSurface(nullptr);
	}

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetRenderTarget(IDirect3DSurface8 **ppRenderTarget)
{
	if (ppRenderTarget == nullptr)
		return D3DERR_INVALIDCALL;

	IDirect3DSurface9 *SurfaceInterface = nullptr;

	const HRESULT hr = ProxyInterface->GetRenderTarget(0, &SurfaceInterface);
	if (FAILED(hr))
		return hr;

	*ppRenderTarget = ProxyAddressLookupTable->FindAddress<Direct3DSurface8>(SurfaceInterface);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetDepthStencilSurface(IDirect3DSurface8 **ppZStencilSurface)
{
	if (ppZStencilSurface == nullptr)
		return D3DERR_INVALIDCALL;

	IDirect3DSurface9 *SurfaceInterface = nullptr;

	const HRESULT hr = ProxyInterface->GetDepthStencilSurface(&SurfaceInterface);
	if (FAILED(hr))
		return hr;

	*ppZStencilSurface = ProxyAddressLookupTable->FindAddress<Direct3DSurface8>(SurfaceInterface);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::BeginScene()
{
	return ProxyInterface->BeginScene();
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::EndScene()
{
	return ProxyInterface->EndScene();
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::Clear(DWORD Count, const D3DRECT *pRects, DWORD Flags, D3DCOLOR Color, float Z, DWORD Stencil)
{
	return ProxyInterface->Clear(Count, pRects, Flags, Color, Z, Stencil);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetTransform(D3DTRANSFORMSTATETYPE State, const D3DMATRIX *pMatrix)
{
	return ProxyInterface->SetTransform(State, pMatrix);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetTransform(D3DTRANSFORMSTATETYPE State, D3DMATRIX *pMatrix)
{
	return ProxyInterface->GetTransform(State, pMatrix);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::MultiplyTransform(D3DTRANSFORMSTATETYPE State, const D3DMATRIX *pMatrix)
{
	return ProxyInterface->MultiplyTransform(State, pMatrix);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetViewport(const D3DVIEWPORT8 *pViewport)
{
	IDirect3DSurface9 *pCurrentRenderTarget = nullptr;
	if (SUCCEEDED(ProxyInterface->GetRenderTarget(0, &pCurrentRenderTarget)))
	{
		D3DSURFACE_DESC Desc;
		pCurrentRenderTarget->GetDesc(&Desc);

		pCurrentRenderTarget->Release();

		if (pViewport->Y + pViewport->Height > Desc.Height || pViewport->X + pViewport->Width > Desc.Width)
			return D3DERR_INVALIDCALL;
	}

	return ProxyInterface->SetViewport(pViewport);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetViewport(D3DVIEWPORT8 *pViewport)
{
	return ProxyInterface->GetViewport(pViewport);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetMaterial(const D3DMATERIAL8 *pMaterial)
{
	return ProxyInterface->SetMaterial(pMaterial);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetMaterial(D3DMATERIAL8 *pMaterial)
{
	return ProxyInterface->GetMaterial(pMaterial);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetLight(DWORD Index, const D3DLIGHT8 *pLight)
{
	if (pLight == nullptr)
		return D3DERR_INVALIDCALL;

	D3DLIGHT8 Light = *pLight;

	// Make spot light work more like it did in Direct3D 8
	if (Light.Type == D3DLIGHTTYPE::D3DLIGHT_SPOT)
	{
		// Theta must be in the range from 0 through the value specified by Phi
		if (Light.Theta <= Light.Phi)
		{
			Light.Theta /= 1.75f;
		}
	}

	return ProxyInterface->SetLight(Index, &Light);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetLight(DWORD Index, D3DLIGHT8 *pLight)
{
	return ProxyInterface->GetLight(Index, pLight);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::LightEnable(DWORD Index, BOOL Enable)
{
	return ProxyInterface->LightEnable(Index, Enable);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetLightEnable(DWORD Index, BOOL *pEnable)
{
	return ProxyInterface->GetLightEnable(Index, pEnable);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetClipPlane(DWORD Index, const float *pPlane)
{
	if (pPlane == nullptr || Index >= MAX_CLIP_PLANES)
		return D3DERR_INVALIDCALL;

	memcpy(StoredClipPlanes[Index], pPlane, sizeof(StoredClipPlanes[0]));
	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetClipPlane(DWORD Index, float *pPlane)
{
	if (pPlane == nullptr || Index >= MAX_CLIP_PLANES)
		return D3DERR_INVALIDCALL;

	memcpy(pPlane, StoredClipPlanes[Index], sizeof(StoredClipPlanes[0]));
	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetRenderState(D3DRENDERSTATETYPE State, DWORD Value)
{
	HRESULT hr;

	switch (static_cast<DWORD>(State))
	{
	case D3DRS_ZVISIBLE:
	case D3DRS_PATCHSEGMENTS:
	case D3DRS_LINEPATTERN:
		return D3D_OK;
	case D3DRS_SOFTWAREVERTEXPROCESSING:
		// SWVP can be modified by this render state only on devices
		// created with the D3DCREATE_MIXED_VERTEXPROCESSING flag
		if (IsMixedVertexProcessingDevice)
			return ProxyInterface->SetSoftwareVertexProcessing(static_cast<BOOL>(Value));
		return D3D_OK;
	case D3DRS_EDGEANTIALIAS:
		return ProxyInterface->SetRenderState(D3DRS_ANTIALIASEDLINEENABLE, Value);
	case D3DRS_CLIPPLANEENABLE:
		hr = ProxyInterface->SetRenderState(State, Value);
		if (SUCCEEDED(hr))
			ClipPlaneRenderState = Value;
		return hr;
	// AquaNox (547.1): auf einem PUREDEVICE liefert GetRenderState nichts.
	// Beide Zustaende braucht der Pixelshader-Generator, also mitschreiben.
	case D3DRS_TEXTUREFACTOR:
		if (!IsRecordingState)
		{
			// 589: c4 traegt den Wert im Pixelshader -- eine Aenderung
			// muss den naechsten Konstanten-Upload ausloesen.
			if (AqTFactor != Value)
				AqKonstSchmutzig = true;
			AqTFactor = Value;
		}
		return ProxyInterface->SetRenderState(State, Value);
	case D3DRS_SPECULARENABLE:
		if (!IsRecordingState)
			AqSpecular = Value;
		return ProxyInterface->SetRenderState(State, Value);
	// *** DIE MISCHUNG MITSCHREIBEN (555.8). *** Wird gebraucht, um zu
	// klaeren, ob durchscheinende Objekte an unserem Alpha liegen oder
	// daran, dass die FARBE als Mischfaktor dient -- dann wirkt dunkler
	// automatisch durchsichtiger, ganz ohne Alpha.
	case D3DRS_ALPHABLENDENABLE:
		if (!IsRecordingState)
			AqBlendAn = Value;
		return ProxyInterface->SetRenderState(State, Value);
	case D3DRS_SRCBLEND:
		if (!IsRecordingState)
			AqSrcBlend = Value;
		return ProxyInterface->SetRenderState(State, Value);
	case D3DRS_DESTBLEND:
		if (!IsRecordingState)
			AqDestBlend = Value;
		return ProxyInterface->SetRenderState(State, Value);
	case D3DRS_ALPHATESTENABLE:
		if (!IsRecordingState)
			AqAlphaTest = Value;
		return ProxyInterface->SetRenderState(State, Value);
	// Der Nebel wird NACH dem Pixelshader zugemischt -- wenn er die
	// Objekte einfaerbt, ist keine Zeile unseres Shaders daran schuld.
	// Tiefentest, geschattet (581): HUD und Ladebildschirm zeichnen ohne
	// ihn -- das zuverlaessigste Merkmal, um sie vom Prelit-Pfad
	// fernzuhalten.
	case D3DRS_ZENABLE:
		if (!IsRecordingState)
			AqZAn = (Value != D3DZB_FALSE);
		return ProxyInterface->SetRenderState(State, Value);
	// Cull-Modus, geschattet (581c): Vollbild-Quads (Ladebildschirm)
	// zeichnen mit CULL_NONE, echte Objekte praktisch nie.
	case D3DRS_CULLMODE:
		if (!IsRecordingState)
			AqCull = Value;
		return ProxyInterface->SetRenderState(State, Value);
	case D3DRS_FOGENABLE:
		if (!IsRecordingState)
			AqFogAn = Value;
		return ProxyInterface->SetRenderState(State, Value);
	case D3DRS_FOGCOLOR:
		if (!IsRecordingState)
			AqFogFarbe = Value;
		return ProxyInterface->SetRenderState(State, Value);
	case D3DRS_FOGTABLEMODE:
		if (!IsRecordingState)
			AqFogTabelle = Value;
		return ProxyInterface->SetRenderState(State, Value);
	case D3DRS_FOGVERTEXMODE:
		if (!IsRecordingState)
			AqFogVertex = Value;
		return ProxyInterface->SetRenderState(State, Value);
	case D3DRS_ZBIAS:
		CurrentZBiasRenderState = Value;
		Value = CalcDepthBias(Value, CurrentZBufferBitCount);
		State = D3DRS_DEPTHBIAS;
	default:
		return ProxyInterface->SetRenderState(State, Value);
	}
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetRenderState(D3DRENDERSTATETYPE State, DWORD *pValue)
{
	if (pValue == nullptr)
		return D3DERR_INVALIDCALL;

	*pValue = 0;

	switch (static_cast<DWORD>(State))
	{
	case D3DRS_ZVISIBLE:
	case D3DRS_LINEPATTERN:
		*pValue = 0;
		return D3D_OK;
	case D3DRS_EDGEANTIALIAS:
		return ProxyInterface->GetRenderState(D3DRS_ANTIALIASEDLINEENABLE, pValue);
	case D3DRS_ZBIAS:
		*pValue = CurrentZBiasRenderState;
		return D3D_OK;
	case D3DRS_SOFTWAREVERTEXPROCESSING:
		*pValue = static_cast<DWORD>(ProxyInterface->GetSoftwareVertexProcessing());
		return D3D_OK;
	case D3DRS_PATCHSEGMENTS:
		*pValue = 1;
		return D3D_OK;
	default:
		return ProxyInterface->GetRenderState(State, pValue);
	}
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::BeginStateBlock()
{
	if (IsRecordingState)
		return D3DERR_INVALIDCALL;

	HRESULT hr = ProxyInterface->BeginStateBlock();

	if (SUCCEEDED(hr))
		IsRecordingState = true;

	return hr;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::EndStateBlock(DWORD *pToken)
{
	if (pToken == nullptr)
		return D3DERR_INVALIDCALL;

	if (!IsRecordingState)
		return D3DERR_INVALIDCALL;

	HRESULT hr = ProxyInterface->EndStateBlock(reinterpret_cast<IDirect3DStateBlock9**>(pToken));

	if (SUCCEEDED(hr))
	{
		StateBlockTokens.insert(*pToken);
		IsRecordingState = false;
	}

	return hr;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::ApplyStateBlock(DWORD Token)
{
	if (Token == 0)
		return D3DERR_INVALIDCALL;

	if (IsRecordingState)
		return D3DERR_INVALIDCALL;

	if (StateBlockTokens.find(Token) == StateBlockTokens.end())
		return D3D_OK;

	// AquaNox (547.7, Falle H): ein Zustandsblock setzt Texturstufen und
	// Renderzustaende, ohne durch unsere Schreibfunktionen zu laufen.
	// Danach ist der Schatten Fiktion -- also stillegen statt raten.
	//
	// *** ERST ABRAEUMEN, DANN STILLEGEN. *** Sobald AqSchattenGueltig
	// falsch ist, kehrt AqVorZeichnen sofort zurueck -- noch vor dem
	// Abraeumzweig. Ein jetzt gebundener eigener Pixelshader bliebe fuer
	// ALLE folgenden Zeichenaufrufe haengen, auch fuer Terrain und HUD,
	// und das Bild waere bis zum Missionsende falsch (F2).
	{
		IDirect3DPixelShader9 *const Spiel =
			reinterpret_cast<IDirect3DPixelShader9 *>(CurrentPixelShaderHandle);

		// nullptr waere falsch: hatte das Spiel selbst einen ps_1_1
		// gebunden, naehme man ihm den weg.
		if (AqAktiverPS != Spiel)
			ProxyInterface->SetPixelShader(Spiel);

		AqAktiverPS = Spiel;
	}

	AqSchattenGueltig = false;

#ifndef D3D8TO9NOLOG
	// 595-Diagnose: WANN wendet das Spiel Zustandsbloecke an?
	if (AqDiagZeilen < 400)
	{
		++AqDiagZeilen;
		LOG << "> AquaNox-595: ApplyStateBlock im Frame " << AqFrame << std::endl;
	}
#endif
	return reinterpret_cast<IDirect3DStateBlock9 *>(Token)->Apply();
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::CaptureStateBlock(DWORD Token)
{
	if (Token == 0)
		return D3DERR_INVALIDCALL;

	if (IsRecordingState)
		return D3DERR_INVALIDCALL;

	if (StateBlockTokens.find(Token) == StateBlockTokens.end())
		return D3D_OK;

	return reinterpret_cast<IDirect3DStateBlock9 *>(Token)->Capture();
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::DeleteStateBlock(DWORD Token)
{
	if (Token == 0)
		return D3DERR_INVALIDCALL;

	if (IsRecordingState)
		return D3DERR_INVALIDCALL;

	if (StateBlockTokens.find(Token) == StateBlockTokens.end())
		return D3D_OK;

	reinterpret_cast<IDirect3DStateBlock9 *>(Token)->Release();

	StateBlockTokens.erase(Token);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::CreateStateBlock(D3DSTATEBLOCKTYPE Type, DWORD *pToken)
{
#ifndef D3D8TO9NOLOG
	LOG << "Redirecting '" << "IDirect3DDevice8::CreateStateBlock" << "(" << Type << ", " << pToken << ")' ..." << std::endl;
#endif

	if (pToken == nullptr)
		return D3DERR_INVALIDCALL;

	if (IsRecordingState)
		return D3DERR_INVALIDCALL;

	HRESULT hr = ProxyInterface->CreateStateBlock(Type, reinterpret_cast<IDirect3DStateBlock9 **>(pToken));

	if (SUCCEEDED(hr))
		StateBlockTokens.insert(*pToken);

	return hr;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetClipStatus(const D3DCLIPSTATUS8 *pClipStatus)
{
	return ProxyInterface->SetClipStatus(pClipStatus);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetClipStatus(D3DCLIPSTATUS8 *pClipStatus)
{
	return ProxyInterface->GetClipStatus(pClipStatus);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetTexture(DWORD Stage, IDirect3DBaseTexture8 **ppTexture)
{
	if (ppTexture == nullptr)
		return D3DERR_INVALIDCALL;

	*ppTexture = nullptr;

	IDirect3DBaseTexture9 *BaseTextureInterface = nullptr;

	const HRESULT hr = ProxyInterface->GetTexture(Stage, &BaseTextureInterface);
	if (FAILED(hr))
		return hr;

	if (BaseTextureInterface != nullptr)
	{
		IDirect3DTexture9 *TextureInterface = nullptr;
		IDirect3DCubeTexture9 *CubeTextureInterface = nullptr;
		IDirect3DVolumeTexture9 *VolumeTextureInterface = nullptr;

		switch (BaseTextureInterface->GetType())
		{
		case D3DRTYPE_TEXTURE:
			BaseTextureInterface->QueryInterface(IID_PPV_ARGS(&TextureInterface));
			*ppTexture = ProxyAddressLookupTable->FindAddress<Direct3DTexture8>(TextureInterface);
			BaseTextureInterface->Release();
			break;
		case D3DRTYPE_VOLUMETEXTURE:
			BaseTextureInterface->QueryInterface(IID_PPV_ARGS(&VolumeTextureInterface));
			*ppTexture = ProxyAddressLookupTable->FindAddress<Direct3DVolumeTexture8>(VolumeTextureInterface);
			BaseTextureInterface->Release();
			break;
		case D3DRTYPE_CUBETEXTURE:
			BaseTextureInterface->QueryInterface(IID_PPV_ARGS(&CubeTextureInterface));
			*ppTexture = ProxyAddressLookupTable->FindAddress<Direct3DCubeTexture8>(CubeTextureInterface);
			BaseTextureInterface->Release();
			break;
		default:
			BaseTextureInterface->Release();
			return D3DERR_INVALIDCALL;
		}
	}

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetTexture(DWORD Stage, IDirect3DBaseTexture8 *pTexture)
{
	if (pTexture == nullptr)
	{
		const HRESULT hrLoesen = ProxyInterface->SetTexture(Stage, nullptr);
		// AquaNox (547.7, Falle J): den Schatten erst NACH dem Erfolg fuehren.
		if (SUCCEEDED(hrLoesen) && Stage < 8 && !IsRecordingState)
		{
			AqTexTyp[Stage] = 0;
			if (Stage == 1)
				AqStufe1Tex = nullptr;
			if (Stage == 0)
			{
				AqNormalAktiv = false;
				AqHash0 = 0;
				// Nur anfassen, wenn wir Stufe 4 auch selbst belegen
				// (AQUANOX_NK, 568) -- sonst gehoert sie der Engine.
				if (AqNKStufe >= 2)
				{
					ProxyInterface->SetTexture(8, nullptr);
					ProxyInterface->SetTexture(9, nullptr);
					AqOrmAktiv = false;
				}
			}
		}
		return hrLoesen;
	}

	IDirect3DBaseTexture9 *BaseTextureInterface;

	switch (pTexture->GetType())
	{
	case D3DRTYPE_TEXTURE:
	{
		// *** JEDE TEXTUR EINMAL MIT IHREM HASH MELDEN (566). ***
		// Das ist die Liste, aus der sich spaeter Normalen- und
		// ORM-Karten zuordnen lassen: der Hash ist die Kennung, die
		// Direct3D selbst nicht liefert.
		Direct3DTexture8 *const T8 = static_cast<Direct3DTexture8 *>(pTexture);
		if (Stage == 0 && !IsRecordingState)
			AqHash0 = T8->AqHash;
		// Stufe-1-Schatten (591): solange gebunden, haelt das Geraet
		// die Textur am Leben -- der Zeiger ist gueltig, bis hier ein
		// anderer Wert gesetzt wird.
		if (Stage == 1 && !IsRecordingState)
			AqStufe1Tex = T8;
#ifndef D3D8TO9NOLOG
		if (T8->AqHash != 0 && AqTexGesehen.insert(T8->AqHash).second)
		{
			LOG << "> AquaNox-TEXTUR: " << std::hex << T8->AqHash << std::dec
				<< "  " << T8->AqBreite << "x" << T8->AqHoehe << std::endl;

			// *** JEDE TEXTUR EINMAL AUF DIE PLATTE (566.2). *** Nur so
			// laesst sich sehen, WAS hinter einem Hash steckt -- und nur
			// so kann man dazu passende Normalen- oder ORM-Karten
			// erzeugen. Geschrieben wird per D3DXSaveTextureToFile;
			// das dekodiert DXT selbst, was ein eigener Schreiber
			// muehsam nachbauen muesste.
			// Nur wenn AQUANOX_TEXDUMP gesetzt ist -- 223 Dateien je
			// Szene will man nicht bei jedem Start.
			if (AqTexDump && D3DXSaveTextureToFileA != nullptr)
			{
				char Pfad[MAX_PATH];
				sprintf_s(Pfad, sizeof(Pfad), "mod_docu\\texturen\\%016llx_%ux%u.png",
					T8->AqHash, T8->AqBreite, T8->AqHoehe);
				D3DXSaveTextureToFileA(Pfad, 3 /* D3DXIFF_PNG */, T8->GetProxyInterface(), nullptr);
			}
		}
#endif
		// *** DIE NORMALENKARTE UEBER DEN HASH SUCHEN (566.3). ***
		// Einmal je Textur, dann gemerkt. Fehlt sie, bleibt AqNormal
		// nullptr und die Stufe wird nicht belegt -- der Shader muss
		// also damit rechnen, dass sie fehlt.
		// *** AQUANOX_NK STUFT DIE NORMALENKARTEN-MASCHINERIE (568): ***
		//   0 = ganz aus (weder laden noch binden)
		//   1 = nur laden (D3DXCreateTextureFromFileA), nicht binden
		//   2 = voll (Vorgabe)
		// Eingefuehrt, weil die Gegenprobe zeigte: die Pflanzen
		// verschwinden AUCH OHNE vs_3_0 -- der Taeter steckt in diesem
		// neuen Texturcode, nicht im Shaderprofil. Der Stufenschalter
		// trennt Laden (Plattenzugriff mitten im Frame, Speicher) vom
		// Binden (Stufe 4 gehoert womoeglich der Engine!).
		if (AqNKStufe >= 1
			&& !T8->AqNormalGesucht && T8->AqHash != 0 && AqModus != 0
			&& D3DXCreateTextureFromFileA != nullptr)
		{
			T8->AqNormalGesucht = true;

			char Pfad[MAX_PATH];
			sprintf_s(Pfad, sizeof(Pfad),
				"mod_docu\\texturen\\normal\\%016llx_%ux%u_n.png",
				T8->AqHash, T8->AqBreite, T8->AqHoehe);

			if (FAILED(D3DXCreateTextureFromFileA(ProxyInterface, Pfad, &T8->AqNormal)))
				T8->AqNormal = nullptr;
#ifndef D3D8TO9NOLOG
			else
				LOG << "> AquaNox-NORMALKARTE geladen: " << Pfad << std::endl;
#endif
		}

		// Auf Stufe 4 binden -- s0..s2 gehoeren der Texturkette,
		// s3 bleibt frei fuer eine spaetere ORM-Karte.
		// *** VERDACHT (568): die Engine kennt selbst Stufen ab 4 --
		// der Schluesselaufbau wehrt "Stufe4Aktiv" seit jeher ab. Wenn
		// das Spiel dort eine eigene Textur erwartet und wir sie bei
		// jedem SetTexture(0) ueberschreiben, kippt die Fixed-Function-
		// Kaskade der betroffenen Objekte. ***
		// ORM-Karte (571): Ambient Occlusion / Rauheit / Metall im
		// R/G/B-Kanal, Datei orm\<hash>_orm.png. Genutzt wird derzeit
		// nur der G-Kanal (Rauheit) im GGX-Vorspann. Gleiche
		// NK-Stufung wie die Normalenkarte.
		if (AqNKStufe >= 1
			&& !T8->AqOrmGesucht && T8->AqHash != 0 && AqModus != 0
			&& D3DXCreateTextureFromFileA != nullptr)
		{
			T8->AqOrmGesucht = true;

			char PfadO[MAX_PATH];
			sprintf_s(PfadO, sizeof(PfadO),
				"mod_docu\\texturen\\orm\\%016llx_%ux%u_orm.png",
				T8->AqHash, T8->AqBreite, T8->AqHoehe);

			if (FAILED(D3DXCreateTextureFromFileA(ProxyInterface, PfadO, &T8->AqOrm)))
				T8->AqOrm = nullptr;
#ifndef D3D8TO9NOLOG
			else
				LOG << "> AquaNox-ORM geladen: " << PfadO << std::endl;
#endif
		}

		if (AqNKStufe >= 2 && Stage == 0)
		{
			// s8/s9 statt 3/4: das D3D8-Spiel kann nur Stufen 0..7
			// ansprechen -- dort oben ist eine Kollision UNMOEGLICH.
			const HRESULT hr8 = ProxyInterface->SetTexture(8, T8->AqNormal);
#ifndef D3D8TO9NOLOG
			// Einmalig melden, falls die Stufe abgelehnt wird -- der
			// einzige bislang UNGEPRUEFTE Rueckgabewert der Kette.
			if (FAILED(hr8) && AqWarum.insert("SetTexture8").second)
				LOG << "> AquaNox: SetTexture(8) FEHLGESCHLAGEN hr=0x" << std::hex << hr8 << std::dec << std::endl;
#endif
			AqNormalAktiv = (T8->AqNormal != nullptr);
			if (AqNormalAktiv)
				++AqNormalGebunden;

			if (AqUmgebung != nullptr)
				ProxyInterface->SetTexture(10, AqUmgebung);
			const HRESULT hr9 = ProxyInterface->SetTexture(9, T8->AqOrm);
#ifndef D3D8TO9NOLOG
			if (FAILED(hr9) && AqWarum.insert("SetTexture9").second)
				LOG << "> AquaNox: SetTexture(9) FEHLGESCHLAGEN hr=0x" << std::hex << hr9 << std::dec << std::endl;
#endif
			AqOrmAktiv = (T8->AqOrm != nullptr);
		}

		BaseTextureInterface = T8->GetProxyInterface();
		break;
	}
	case D3DRTYPE_VOLUMETEXTURE:
		if (Stage == 0 && !IsRecordingState) AqHash0 = 0;
		if (Stage == 1 && !IsRecordingState) AqStufe1Tex = nullptr;
		BaseTextureInterface = static_cast<Direct3DVolumeTexture8 *>(pTexture)->GetProxyInterface();
		break;
	case D3DRTYPE_CUBETEXTURE:
		if (Stage == 0 && !IsRecordingState) AqHash0 = 0;
		if (Stage == 1 && !IsRecordingState) AqStufe1Tex = nullptr;
		BaseTextureInterface = static_cast<Direct3DCubeTexture8 *>(pTexture)->GetProxyInterface();
		break;
	default:
		return D3DERR_INVALIDCALL;
	}

	// *** ALBEDO-ERSETZUNG (606, nur mit AQUANOX_ERSATZ=1). *** Fuer
	// die PBR-Demo: liegt texturen\ersatz\<hash>.png vor, wird SIE
	// statt der Spieltextur gebunden -- erst damit passt die Albedo
	// zur Normalenkarte, was ein Material erst als Material lesbar
	// macht.
	// Seit 609 auch Stufe 1: lightmap-zuerst-Zuege (Bunker!) tragen
	// ihre Objekttextur DORT -- die Stufe-0-Ersetzung hat die
	// sichtbare Textur nie getauscht (Verdacht aus 608, Schritt a).
	// Lightmaps selbst sind sicher: fuer ihre Hashes existiert keine
	// Ersatzdatei, der einmalige Ladeversuch schlaegt fehl.
	if (Stage <= 1 && !IsRecordingState && AqErsatzAn
		&& pTexture != nullptr && pTexture->GetType() == D3DRTYPE_TEXTURE)
	{
		Direct3DTexture8 *const TE = static_cast<Direct3DTexture8 *>(pTexture);
		if (!TE->AqErsatzGesucht && TE->AqHash != 0
			&& D3DXCreateTextureFromFileA != nullptr)
		{
			TE->AqErsatzGesucht = true;
			char PfadE[MAX_PATH];
			sprintf_s(PfadE, sizeof(PfadE),
				"mod_docu\\texturen\\ersatz\\%016llx_%ux%u.png",
				TE->AqHash, TE->AqBreite, TE->AqHoehe);
			const HRESULT hrE = D3DXCreateTextureFromFileA(ProxyInterface, PfadE, &TE->AqErsatz);
			if (FAILED(hrE))
				TE->AqErsatz = nullptr;
#ifndef D3D8TO9NOLOG
			// 635: der Ersatz-Lader war die einzige unbeobachtete
			// Stelle der Kette.
			LOG << "> AquaNox-ERSATZ " << (TE->AqErsatz ? "geladen: " : "FEHLT/FEHLER 0x")
				<< (TE->AqErsatz ? PfadE : "")
				<< (TE->AqErsatz ? "" : std::to_string((unsigned long)hrE).c_str())
				<< (TE->AqErsatz ? "" : " ") << (TE->AqErsatz ? "" : PfadE) << std::endl;
#endif
		}
		if (TE->AqErsatz != nullptr)
			BaseTextureInterface = TE->AqErsatz;
	}

	const HRESULT hrBinden = ProxyInterface->SetTexture(Stage, BaseTextureInterface);

	// Der Typ entscheidet, ob die Stufe nachbaubar ist: ein ps_2_0 braucht
	// fuer eine Wuerfel- oder Volumentextur einen anderen Sampler als s0/2D.
	if (SUCCEEDED(hrBinden) && Stage < 8 && !IsRecordingState)
		AqTexTyp[Stage] = (pTexture->GetType() == D3DRTYPE_TEXTURE) ? 1 : 2;

	return hrBinden;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetTextureStageState(DWORD Stage, D3DTEXTURESTAGESTATETYPE Type, DWORD *pValue)
{
	switch (static_cast<DWORD>(Type))
	{
	case D3DTSS_ADDRESSU:
		return ProxyInterface->GetSamplerState(Stage, D3DSAMP_ADDRESSU, pValue);
	case D3DTSS_ADDRESSV:
		return ProxyInterface->GetSamplerState(Stage, D3DSAMP_ADDRESSV, pValue);
	case D3DTSS_ADDRESSW:
		return ProxyInterface->GetSamplerState(Stage, D3DSAMP_ADDRESSW, pValue);
	case D3DTSS_BORDERCOLOR:
		return ProxyInterface->GetSamplerState(Stage, D3DSAMP_BORDERCOLOR, pValue);
	case D3DTSS_MAGFILTER:
		return ProxyInterface->GetSamplerState(Stage, D3DSAMP_MAGFILTER, pValue);
	case D3DTSS_MINFILTER:
		return ProxyInterface->GetSamplerState(Stage, D3DSAMP_MINFILTER, pValue);
	case D3DTSS_MIPFILTER:
		return ProxyInterface->GetSamplerState(Stage, D3DSAMP_MIPFILTER, pValue);
	case D3DTSS_MIPMAPLODBIAS:
		return ProxyInterface->GetSamplerState(Stage, D3DSAMP_MIPMAPLODBIAS, pValue);
	case D3DTSS_MAXMIPLEVEL:
		return ProxyInterface->GetSamplerState(Stage, D3DSAMP_MAXMIPLEVEL, pValue);
	case D3DTSS_MAXANISOTROPY:
		return ProxyInterface->GetSamplerState(Stage, D3DSAMP_MAXANISOTROPY, pValue);
	default:
		return ProxyInterface->GetTextureStageState(Stage, Type, pValue);
	}
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetTextureStageState(DWORD Stage, D3DTEXTURESTAGESTATETYPE Type, DWORD Value)
{
	switch (static_cast<DWORD>(Type))
	{
	case D3DTSS_ADDRESSU:
		return ProxyInterface->SetSamplerState(Stage, D3DSAMP_ADDRESSU, Value);
	case D3DTSS_ADDRESSV:
		return ProxyInterface->SetSamplerState(Stage, D3DSAMP_ADDRESSV, Value);
	case D3DTSS_ADDRESSW:
		return ProxyInterface->SetSamplerState(Stage, D3DSAMP_ADDRESSW, Value);
	case D3DTSS_BORDERCOLOR:
		return ProxyInterface->SetSamplerState(Stage, D3DSAMP_BORDERCOLOR, Value);
	case D3DTSS_MAGFILTER:
		if (Value == D3DTEXF_FLATCUBIC || Value == D3DTEXF_GAUSSIANCUBIC)
			Value = D3DTEXF_LINEAR;
		return ProxyInterface->SetSamplerState(Stage, D3DSAMP_MAGFILTER, Value);
	case D3DTSS_MINFILTER:
		return ProxyInterface->SetSamplerState(Stage, D3DSAMP_MINFILTER, Value);
	case D3DTSS_MIPFILTER:
		return ProxyInterface->SetSamplerState(Stage, D3DSAMP_MIPFILTER, Value);
	case D3DTSS_MIPMAPLODBIAS:
		return ProxyInterface->SetSamplerState(Stage, D3DSAMP_MIPMAPLODBIAS, Value);
	case D3DTSS_MAXMIPLEVEL:
		return ProxyInterface->SetSamplerState(Stage, D3DSAMP_MAXMIPLEVEL, Value);
	case D3DTSS_MAXANISOTROPY:
		return ProxyInterface->SetSamplerState(Stage, D3DSAMP_MAXANISOTROPY, Value);
	default:
		// AquaNox (547.1): COLOROP(1), COLORARG1/2(2/3), ALPHAOP(4),
		// ALPHAARG1/2(5/6), TEXCOORDINDEX(11) und RESULTARG(28) landen
		// alle hier. Auf einem PUREDEVICE sind sie spaeter nicht mehr
		// abfragbar -- also jetzt mitschreiben.
		if (Stage < 8 && static_cast<DWORD>(Type) < 34 && !IsRecordingState)
			AqTSS[Stage][static_cast<DWORD>(Type)] = Value;
		return ProxyInterface->SetTextureStageState(Stage, Type, Value);
	}
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::ValidateDevice(DWORD *pNumPasses)
{
	return ProxyInterface->ValidateDevice(pNumPasses);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetInfo(DWORD DevInfoID, void *pDevInfoStruct, DWORD DevInfoStructSize)
{
#ifndef D3D8TO9NOLOG
	LOG << "Redirecting '" << "IDirect3DDevice8::GetInfo" << "(" << this << ", " << DevInfoID << ", " << pDevInfoStruct << ", " << DevInfoStructSize << ")' ..." << std::endl;
#endif

	if (pDevInfoStruct == nullptr || DevInfoStructSize == 0)
		return D3DERR_INVALIDCALL;

	HRESULT hr;
	IDirect3DQuery9 *pQuery = nullptr;

	switch (DevInfoID)
	{
		case 0:
		case D3DDEVINFOID_TEXTUREMANAGER:
		case D3DDEVINFOID_D3DTEXTUREMANAGER:
		case D3DDEVINFOID_TEXTURING:
			return E_FAIL; // Unsupported query IDs

		case D3DDEVINFOID_VCACHE:
			hr = ProxyInterface->CreateQuery(D3DQUERYTYPE_VCACHE, &pQuery);

			if (FAILED(hr))
			{
				if (DevInfoStructSize != sizeof(D3DDEVINFO_VCACHE))
					return D3DERR_INVALIDCALL;

				// The contents of pDevInfoStruct are zeroed before return
				memset(pDevInfoStruct, 0, sizeof(D3DDEVINFO_VCACHE));
				return S_FALSE;
			}

			break;

		case D3DDEVINFOID_RESOURCEMANAGER:
			hr = ProxyInterface->CreateQuery(D3DQUERYTYPE_RESOURCEMANAGER, &pQuery);
			break;

		case D3DDEVINFOID_VERTEXSTATS:
			hr = ProxyInterface->CreateQuery(D3DQUERYTYPE_VERTEXSTATS, &pQuery);
			break;

		default: // D3DDEVINFOID_UNKNOWN
			return E_FAIL;
	}

	if ((FAILED(hr)))
	{
		if (hr == D3DERR_NOTAVAILABLE)
		{
			return E_FAIL;
		}
		else
		{
			return S_FALSE;
		}
	}

	if (pQuery != nullptr)
	{
		pQuery->Issue(D3DISSUE_END);
		hr = pQuery->GetData(pDevInfoStruct, DevInfoStructSize, D3DGETDATA_FLUSH);

		pQuery->Release();
	}

	return hr;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetPaletteEntries(UINT PaletteNumber, const PALETTEENTRY *pEntries)
{
	if (pEntries == nullptr)
		return D3DERR_INVALIDCALL;

	return ProxyInterface->SetPaletteEntries(PaletteNumber, pEntries);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetPaletteEntries(UINT PaletteNumber, PALETTEENTRY *pEntries)
{
	if (pEntries == nullptr)
		return D3DERR_INVALIDCALL;

	return ProxyInterface->GetPaletteEntries(PaletteNumber, pEntries);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetCurrentTexturePalette(UINT PaletteNumber)
{
	if (!IsPaletteSupported)
		return D3DERR_INVALIDCALL;

	return ProxyInterface->SetCurrentTexturePalette(PaletteNumber);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetCurrentTexturePalette(UINT *pPaletteNumber)
{
	if (!IsPaletteSupported)
		return D3DERR_INVALIDCALL;

	return ProxyInterface->GetCurrentTexturePalette(pPaletteNumber);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::DrawPrimitive(D3DPRIMITIVETYPE PrimitiveType, UINT StartVertex, UINT PrimitiveCount)
{
	ApplyClipPlanes();
	AqVorZeichnen();
	ProxyInterface->DrawPrimitive(PrimitiveType, StartVertex, PrimitiveCount);
	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::DrawIndexedPrimitive(D3DPRIMITIVETYPE PrimitiveType, UINT MinIndex, UINT NumVertices, UINT StartIndex, UINT PrimitiveCount)
{
	ApplyClipPlanes();
	AqVorZeichnen();
	ProxyInterface->DrawIndexedPrimitive(PrimitiveType, CurrentBaseVertexIndex, MinIndex, NumVertices, StartIndex, PrimitiveCount);
	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::DrawPrimitiveUP(D3DPRIMITIVETYPE PrimitiveType, UINT PrimitiveCount, const void *pVertexStreamZeroData, UINT VertexStreamZeroStride)
{
	ApplyClipPlanes();
	AqVorZeichnen();
	ProxyInterface->DrawPrimitiveUP(PrimitiveType, PrimitiveCount, pVertexStreamZeroData, VertexStreamZeroStride);
	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::DrawIndexedPrimitiveUP(D3DPRIMITIVETYPE PrimitiveType, UINT MinVertexIndex, UINT NumVertexIndices, UINT PrimitiveCount, const void *pIndexData, D3DFORMAT IndexDataFormat, const void *pVertexStreamZeroData, UINT VertexStreamZeroStride)
{
	ApplyClipPlanes();
	AqVorZeichnen();
	ProxyInterface->DrawIndexedPrimitiveUP(PrimitiveType, MinVertexIndex, NumVertexIndices, PrimitiveCount, pIndexData, IndexDataFormat, pVertexStreamZeroData, VertexStreamZeroStride);
	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::ProcessVertices(UINT SrcStartIndex, UINT DestIndex, UINT VertexCount, IDirect3DVertexBuffer8 *pDestBuffer, DWORD Flags)
{
	if (pDestBuffer == nullptr)
		return D3DERR_INVALIDCALL;

	Direct3DVertexBuffer8 *pDestBufferImpl = static_cast<Direct3DVertexBuffer8 *>(pDestBuffer);
	return ProxyInterface->ProcessVertices(SrcStartIndex, DestIndex, VertexCount, pDestBufferImpl->GetProxyInterface(), nullptr, Flags);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::CreateVertexShader(const DWORD *pDeclaration, const DWORD *pFunction, DWORD *pHandle, DWORD Usage)
{
	UNREFERENCED_PARAMETER(Usage);

#ifndef D3D8TO9NOLOG
	LOG << "Redirecting '" << "IDirect3DDevice8::CreateVertexShader" << "(" << this << ", " << pDeclaration << ", " << pFunction << ", " << pHandle << ", " << Usage << ")' ..." << std::endl;
#endif

	if (pDeclaration == nullptr || pHandle == nullptr)
		return D3DERR_INVALIDCALL;

	*pHandle = 0;

	UINT ElementIndex = 0;
	const UINT ElementLimit = 32;
	std::string ConstantsCode;
	WORD Stream = 0, Offset = 0;
	DWORD VertexShaderInputs[ElementLimit];
	D3DVERTEXELEMENT9 VertexElements[ElementLimit];

#ifndef D3D8TO9NOLOG
	LOG << "> Translating vertex declaration ..." << std::endl;
#endif

	static const BYTE DeclTypes[][2] =
	{
		{ D3DDECLTYPE_FLOAT1, 4 },
		{ D3DDECLTYPE_FLOAT2, 8 },
		{ D3DDECLTYPE_FLOAT3, 12 },
		{ D3DDECLTYPE_FLOAT4, 16 },
		{ D3DDECLTYPE_D3DCOLOR, 4 },
		{ D3DDECLTYPE_UBYTE4, 4 },
		{ D3DDECLTYPE_SHORT2, 4 },
		{ D3DDECLTYPE_SHORT4, 8 },
		{ D3DDECLTYPE_UBYTE4N, 4 },
		{ D3DDECLTYPE_SHORT2N, 4 },
		{ D3DDECLTYPE_SHORT4N, 8 },
		{ D3DDECLTYPE_USHORT2N, 4 },
		{ D3DDECLTYPE_USHORT4N, 8 },
		{ D3DDECLTYPE_UDEC3, 6 },
		{ D3DDECLTYPE_DEC3N, 6 },
		{ D3DDECLTYPE_FLOAT16_2, 8 },
		{ D3DDECLTYPE_FLOAT16_4, 16 }
	};
	static const BYTE DeclAddressUsages[][2] =
	{
		{ D3DDECLUSAGE_POSITION, 0 },
		{ D3DDECLUSAGE_BLENDWEIGHT, 0 },
		{ D3DDECLUSAGE_BLENDINDICES, 0 },
		{ D3DDECLUSAGE_NORMAL, 0 },
		{ D3DDECLUSAGE_PSIZE, 0 },
		{ D3DDECLUSAGE_COLOR, 0 },
		{ D3DDECLUSAGE_COLOR, 1 },
		{ D3DDECLUSAGE_TEXCOORD, 0 },
		{ D3DDECLUSAGE_TEXCOORD, 1 },
		{ D3DDECLUSAGE_TEXCOORD, 2 },
		{ D3DDECLUSAGE_TEXCOORD, 3 },
		{ D3DDECLUSAGE_TEXCOORD, 4 },
		{ D3DDECLUSAGE_TEXCOORD, 5 },
		{ D3DDECLUSAGE_TEXCOORD, 6 },
		{ D3DDECLUSAGE_TEXCOORD, 7 },
		{ D3DDECLUSAGE_POSITION, 1 },
		{ D3DDECLUSAGE_NORMAL, 1 }
	};

	while (ElementIndex < ElementLimit)
	{
		const DWORD Token = *pDeclaration;
		const DWORD TokenType = (Token & D3DVSD_TOKENTYPEMASK) >> D3DVSD_TOKENTYPESHIFT;

		if (Token == D3DVSD_END())
		{
			break;
		}
		else if (TokenType == D3DVSD_TOKEN_STREAM)
		{
			Stream = static_cast<WORD>((Token & D3DVSD_STREAMNUMBERMASK) >> D3DVSD_STREAMNUMBERSHIFT);
			Offset = 0;
		}
		else if (TokenType == D3DVSD_TOKEN_STREAMDATA && !(Token & 0x10000000))
		{
			VertexElements[ElementIndex].Stream = Stream;
			VertexElements[ElementIndex].Offset = Offset;
			const DWORD type = (Token & D3DVSD_DATATYPEMASK) >> D3DVSD_DATATYPESHIFT;
			VertexElements[ElementIndex].Type = DeclTypes[type][0];
			Offset += DeclTypes[type][1];
			VertexElements[ElementIndex].Method = D3DDECLMETHOD_DEFAULT;
			const DWORD Address = (Token & D3DVSD_VERTEXREGMASK) >> D3DVSD_VERTEXREGSHIFT;
			VertexElements[ElementIndex].Usage = DeclAddressUsages[Address][0];
			VertexElements[ElementIndex].UsageIndex = DeclAddressUsages[Address][1];

			VertexShaderInputs[ElementIndex++] = Address;
		}
		else if (TokenType == D3DVSD_TOKEN_STREAMDATA && (Token & 0x10000000))
		{
			Offset += ((Token & D3DVSD_SKIPCOUNTMASK) >> D3DVSD_SKIPCOUNTSHIFT) * sizeof(DWORD);
		}
		else if (TokenType == D3DVSD_TOKEN_TESSELLATOR && !(Token & 0x10000000))
		{
			VertexElements[ElementIndex].Stream = Stream;
			VertexElements[ElementIndex].Offset = Offset;

			const DWORD UsageType = (Token & D3DVSD_VERTEXREGINMASK) >> D3DVSD_VERTEXREGINSHIFT;

			for (UINT r = 0; r < ElementIndex; ++r)
			{
				if (VertexElements[r].Usage == DeclAddressUsages[UsageType][0] && VertexElements[r].UsageIndex == DeclAddressUsages[UsageType][1])
				{
					VertexElements[ElementIndex].Stream = VertexElements[r].Stream;
					VertexElements[ElementIndex].Offset = VertexElements[r].Offset;
					break;
				}
			}

			VertexElements[ElementIndex].Type = D3DDECLTYPE_FLOAT3;
			VertexElements[ElementIndex].Method = D3DDECLMETHOD_CROSSUV;
			const DWORD Address = (Token & 0xF);
			VertexElements[ElementIndex].Usage = DeclAddressUsages[Address][0];
			VertexElements[ElementIndex].UsageIndex = DeclAddressUsages[Address][1];

			if (VertexElements[ElementIndex].Usage == D3DDECLUSAGE_BLENDINDICES)
			{
				VertexElements[ElementIndex].Method = D3DDECLMETHOD_DEFAULT;
			}

			VertexShaderInputs[ElementIndex++] = Address;
		}
		else if (TokenType == D3DVSD_TOKEN_TESSELLATOR && (Token & 0x10000000))
		{
			VertexElements[ElementIndex].Stream = 0;
			VertexElements[ElementIndex].Offset = 0;
			VertexElements[ElementIndex].Type = D3DDECLTYPE_UNUSED;
			VertexElements[ElementIndex].Method = D3DDECLMETHOD_UV;
			const DWORD Address = (Token & 0xF);
			VertexElements[ElementIndex].Usage = DeclAddressUsages[Address][0];
			VertexElements[ElementIndex].UsageIndex = DeclAddressUsages[Address][1];

			if (VertexElements[ElementIndex].Usage == D3DDECLUSAGE_BLENDINDICES)
			{
				VertexElements[ElementIndex].Method = D3DDECLMETHOD_DEFAULT;
			}

			VertexShaderInputs[ElementIndex++] = Address;
		}
		else if (TokenType == D3DVSD_TOKEN_CONSTMEM)
		{
			const DWORD RegisterCount = 4 * ((Token & D3DVSD_CONSTCOUNTMASK) >> D3DVSD_CONSTCOUNTSHIFT);
			DWORD Address = (Token & D3DVSD_CONSTADDRESSMASK) >> D3DVSD_CONSTADDRESSSHIFT;

			for (DWORD RegisterIndex = 0; RegisterIndex < RegisterCount; RegisterIndex += 4, ++Address)
			{
				ConstantsCode += "    def c" + std::to_string(Address) + ", " +
					std::to_string(*reinterpret_cast<const float *>(&pDeclaration[RegisterIndex + 1])) + ", " +
					std::to_string(*reinterpret_cast<const float *>(&pDeclaration[RegisterIndex + 2])) + ", " +
					std::to_string(*reinterpret_cast<const float *>(&pDeclaration[RegisterIndex + 3])) + ", " +
					std::to_string(*reinterpret_cast<const float *>(&pDeclaration[RegisterIndex + 4])) + " /* vertex declaration constant */\n";
			}

			pDeclaration += RegisterCount;
		}
		else
		{
#ifndef D3D8TO9NOLOG
			LOG << "> Failed because token type '" << TokenType << "' is not supported!" << std::endl;
#endif

			return D3DERR_INVALIDCALL;
		}

		++pDeclaration;
	}

	const D3DVERTEXELEMENT9 Terminator = D3DDECL_END();
	VertexElements[ElementIndex] = Terminator;

	HRESULT hr;
	VertexShaderInfo *ShaderInfo;

	// AquaNox (547.2): Merkmale des Shaders, am Quelltext erkannt.
	bool AqLicht = false, AqHemi = false, AqAdditiv = false, AqGlanz = false;
	unsigned char AqLichter = 0;

	if (pFunction != nullptr)
	{
#ifndef D3D8TO9NOLOG
		LOG << "> Disassembling shader and translating assembly to Direct3D 9 compatible code ..." << std::endl;
#endif

		if (*pFunction < D3DVS_VERSION(1, 0) || *pFunction > D3DVS_VERSION(1, 1))
		{
#ifndef D3D8TO9NOLOG
			LOG << "> Failed because of version mismatch ('" << std::showbase << std::hex << *pFunction << std::dec << std::noshowbase << "')! Only 'vs_1_x' shaders are supported." << std::endl;
#endif

			return D3DERR_INVALIDCALL;
		}

		ID3DXBuffer *Disassembly = nullptr, *Assembly = nullptr, *ErrorBuffer = nullptr;

		if (D3DXDisassembleShader != nullptr)
		{
			hr = D3DXDisassembleShader(pFunction, FALSE, nullptr, &Disassembly);
		}
		else
		{
			hr = D3DERR_INVALIDCALL;
		}

		if (FAILED(hr))
		{
#ifndef D3D8TO9NOLOG
			LOG << "> Failed to disassemble shader with error code " << std::hex << hr << std::dec << "!" << std::endl;
#endif

			return hr;
		}

		std::string SourceCode;
		{
			const char* raw = static_cast<const char*>(Disassembly->GetBufferPointer());
			size_t rawSize = Disassembly->GetBufferSize();

			SourceCode.reserve(rawSize);

			for (size_t i = 0; i < rawSize; ++i)
			{
				unsigned char c = static_cast<unsigned char>(raw[i]);

				bool isAllowed =
					(c == '\t') ||
					(c == '\n') ||
					(c == '\r') ||
					(c >= ' ' && c <= '~');

				if (!isAllowed)
					continue;

				SourceCode.push_back(static_cast<char>(c));
			}
		}

#ifndef D3D8TO9NOLOG
		LOG << "> Dumping original shader assembly:" << std::endl << std::endl << SourceCode << std::endl;
#endif

		const size_t VersionPosition = SourceCode.find("vs_1_");

		assert(VersionPosition != std::string::npos);

		if (SourceCode.at(VersionPosition + 5) == '0')
		{
#ifndef D3D8TO9NOLOG
			LOG << "> Replacing version 'vs_1_0' with 'vs_1_1' ..." << std::endl;
#endif

			SourceCode.replace(VersionPosition, 6, "vs_1_1");
		}

		size_t DeclPosition = VersionPosition + 7;

		for (UINT k = 0; k < ElementIndex; k++)
		{
			std::string DeclCode = "    ";

			switch (VertexElements[k].Usage)
			{
			case D3DDECLUSAGE_POSITION:
				DeclCode += "dcl_position";
				break;
			case D3DDECLUSAGE_BLENDWEIGHT:
				DeclCode += "dcl_blendweight";
				break;
			case D3DDECLUSAGE_BLENDINDICES:
				DeclCode += "dcl_blendindices";
				break;
			case D3DDECLUSAGE_NORMAL:
				DeclCode += "dcl_normal";
				break;
			case D3DDECLUSAGE_PSIZE:
				DeclCode += "dcl_psize";
				break;
			case D3DDECLUSAGE_COLOR:
				DeclCode += "dcl_color";
				break;
			case D3DDECLUSAGE_TEXCOORD:
				DeclCode += "dcl_texcoord";
				break;
			}

			if (VertexElements[k].UsageIndex > 0)
			{
				DeclCode += std::to_string(VertexElements[k].UsageIndex);
			}

			DeclCode += " v" + std::to_string(VertexShaderInputs[k]) + '\n';

			SourceCode.insert(DeclPosition, DeclCode);
			DeclPosition += DeclCode.length();
		}

		#pragma region Fill registers with default value
		SourceCode.insert(DeclPosition, ConstantsCode);

		// Get number of arithmetic instructions used
		const size_t InstructionPosition = SourceCode.find("instruction");
		size_t InstructionCount = InstructionPosition > 2 && InstructionPosition < SourceCode.size() ? strtoul(SourceCode.substr(InstructionPosition - 4, 4).c_str(), nullptr, 10) : 0;

		for (size_t j = 0; j < 8; j++)
		{
			const std::string reg = "oT" + std::to_string(j);

			if (SourceCode.find(reg) != std::string::npos && InstructionCount < 128)
			{
				++InstructionCount;
				SourceCode.insert(DeclPosition + ConstantsCode.size(), "    mov " + reg + ", c0 /* initialize output register " + reg + " */\n");
			}
		}
		for (size_t j = 0; j < 2; j++)
		{
			const std::string reg = "oD" + std::to_string(j);

			if (SourceCode.find(reg) != std::string::npos && InstructionCount < 128)
			{
				++InstructionCount;
				SourceCode.insert(DeclPosition + ConstantsCode.size(), "    mov " + reg + ", c0 /* initialize output register " + reg + " */\n");
			}
		}
		for (size_t j = 0; j < 12; j++)
		{
			const std::string reg = "r" + std::to_string(j);

			if (SourceCode.find(reg) != std::string::npos && InstructionCount < 128)
			{
				++InstructionCount;
				SourceCode.insert(DeclPosition + ConstantsCode.size(), "    mov " + reg + ", c0 /* initialize register " + reg + " */\n");
			}
		}
		#pragma endregion

		SourceCode = std::regex_replace(SourceCode, std::regex("    \\/\\/ vs\\.1\\.1\\n((?! ).+\\n)+"), "");
		SourceCode = std::regex_replace(SourceCode, std::regex("([^\\n]\\n)[\\s]*#line [0123456789]+.*\\n"), "$1");
		SourceCode = std::regex_replace(SourceCode, std::regex("(oFog|oPts)\\.x"), "$1 /* removed swizzle */");
		SourceCode = std::regex_replace(SourceCode, std::regex("(add|sub|mul|min|max) (oFog|oPts), ([cr][0-9]+), (.+)\\n"), "$1 $2, $3.x /* added swizzle */, $4\n");
		SourceCode = std::regex_replace(SourceCode, std::regex("(add|sub|mul|min|max) (oFog|oPts), (.+), ([cr][0-9]+)\\n"), "$1 $2, $3, $4.x /* added swizzle */\n");
		SourceCode = std::regex_replace(SourceCode, std::regex("(mov|mad) (oFog|oPts)(.*), (-?)([crv][0-9]+(?![\\.0-9]))"), "$1 $2$3, $4$5.x /* select single component */");

		// ------------------------------------------------------------------
		// AquaNox-Probe (Handoff 542.5, Schritt 1)
		//
		// Ziel: BEWEISEN, dass der selbst gebaute Wrapper geladen wird, dass
		// sich der Shader am Namen erkennen laesst und dass eine Aenderung am
		// Bytecode im Bild ankommt. Erst wenn das steht, lohnt der Aufwand
		// fuer echte Ersatzshader.
		//
		// AquaNox' Shader tragen ihren Quelldateinamen im Bytecode: der
		// Assembler hat die Debuginformation als Kommentar-Token eingebettet
		// ("FILE<name>.vsa"). Das Disassemblat enthaelt ihn NICHT mehr,
		// deshalb wird er hier aus pFunction gelesen.
		//
		// Gesteuert ueber die Umgebungsvariable AQUANOX_SHADERPROBE:
		//     nicht gesetzt  -> nichts geschieht (Standardverhalten)
		//     gesetzt        -> Objektshader faerben ihr Ergebnis fest ein
		// So bleibt dieselbe DLL fuer beide Faelle brauchbar.
		// ------------------------------------------------------------------
		{
			static const bool ProbeAn = GetEnvironmentVariableA("AQUANOX_SHADERPROBE", nullptr, 0) != 0;

			if (ProbeAn)
			{
				// Den .vsa-Namen aus dem Bytecode holen. Die Laenge ergibt
				// sich aus dem Ende-Token 0x0000FFFF.
				std::string ShaderName;
				{
					const char *raw = reinterpret_cast<const char *>(pFunction);
					size_t bytes = 0;
					for (const DWORD *p = pFunction; *p != 0x0000FFFF && bytes < 65536; ++p)
						bytes += 4;

					for (size_t i = 0; i + 5 < bytes; ++i)
					{
						if (memcmp(raw + i, "FILE", 4) == 0)
						{
							const char *n = raw + i + 4;
							size_t len = 0;
							while (len < 80 && n[len] >= 0x20 && n[len] <= 0x7e)
								++len;
							ShaderName.assign(n, len);
							break;
						}
					}
				}

#ifndef D3D8TO9NOLOG
				LOG << "> AquaNox-Probe: Shader '" << ShaderName << "'" << std::endl;
#endif

				// *** ERKENNUNG AM INHALT, NICHT AM NAMEN. ***
				// Der erste Versuch pruefte auf den Praefix "rep_object" und
				// uebersah dadurch die neun Shader der Familie rep_standard,
				// die ebenfalls Beleuchtung rechnen -- Objekte flackerten,
				// sobald sie zwischen beiden Familien wechselten.
				//
				// Ein Shader rechnet genau dann Beleuchtung, wenn er c51
				// (Ambient) UND c53 (Licht von oben) liest. Das trifft alle
				// 27 lichtrechnenden Shader und keinen anderen; Terrain, HUD,
				// Pflanzen und Menue bleiben unberuehrt.
				const bool RechnetLicht =
					SourceCode.find("c51") != std::string::npos &&
					SourceCode.find("c53") != std::string::npos;

				if (RechnetLicht)
				{
					// Eine freie Konstante: das hoechste in AquaNox benutzte
					// Konstantenregister ist c71 (Handoff 497.7).
					SourceCode.insert(DeclPosition, "    def c95, 1, 0, 0, 1 /* AquaNox-Probe */\n");

					// *** ALLE SCHREIBWEISEN VON oD0 TREFFEN. *** Die
					// Familien schreiben ihr Ergebnis unterschiedlich:
					//     mul oD0.xyz, v2, r0        rep_object
					//     mad oD0, r0, v2, c50       rep_standard
					// Der Alphakanal (oD0.w) bleibt unangetastet -- er traegt
					// keine Farbe, sondern die Sichtbarkeit.
					SourceCode = std::regex_replace(SourceCode,
						std::regex("(mul|mov|mad) oD0(\\.xyz)?, [^\\n]*\\n"),
						"    mov oD0.xyz, c95 /* AquaNox-Probe */\n");

#ifndef D3D8TO9NOLOG
					LOG << "> AquaNox-Probe: '" << ShaderName << "' eingefaerbt" << std::endl;
#endif
				}
			}
		}

		// ==============================================================
		// AquaNox (547.2/547.3): Merkmale erkennen und -- ab Modus 3 --
		// Normale, Position und Vertexfarbe an den Pixelshader
		// durchreichen.
		//
		// *** ES WIRD NUR ANGEHAENGT, NIE ERSETZT. *** oD0 bleibt
		// unangetastet. Faellt der Assembler aus, ist das Bild exakt
		// das heutige -- der Rueckfall kostet nichts.
		// ==============================================================
		if (AqModus != 0)
		{
			const bool HatHemi = SourceCode.find("c51") != std::string::npos
			                  && SourceCode.find("c53") != std::string::npos;
			const bool HatPunktlicht = SourceCode.find("c58") != std::string::npos;

			// 547.2: die Regel "c51 UND c53" war zu eng -- acht vorbeleuchtete
			// Shader rechnen Punktlichter, ohne c51 zu lesen.
			AqLicht = HatHemi || HatPunktlicht;
			AqHemi = HatHemi;
			AqAdditiv = SourceCode.find("c50") != std::string::npos;

			// oD1 traegt den Glanz. Die Fixed-Function-Pipeline addiert
			// ihn nach der Texturkette dazu -- ein Pixelshader NICHT.
			// Vier Shader betrifft das (F3); ohne dieses Merkmal wuerden
			// sie sich ausserdem den Cacheeintrag mit ihren glanzlosen
			// Zwillingen teilen.
			AqGlanz = SourceCode.find("oD1") != std::string::npos;
			AqLichter = static_cast<unsigned char>(
				  (SourceCode.find("c58") != std::string::npos ? 1 : 0)
				+ (SourceCode.find("c62") != std::string::npos ? 1 : 0)
				+ (SourceCode.find("c66") != std::string::npos ? 1 : 0)
				+ (SourceCode.find("c70") != std::string::npos ? 1 : 0));

			// *** OPTION B (579), ZWEIGLEISIG NACH MODUSFAMILIE: ***
			// ps_3_0-Familie (5/14..): das Original bleibt byteweise
			//   unveraendert; die oT5..oT7-Durchreichung wandert in die
			//   vs_3_0-KOPIE weiter unten -- fuer ALLE Shader, auch
			//   vorbeleuchtete (Waende bekommen Spiegelung und Relief).
			// ps_2_0-Familie (3/4/10..13): WIE BISHER ans Original
			//   anhaengen -- deren Pixelshader lesen t5..t7, und ein
			//   vs_1_1 mit Anhang ist dafuer das gueltige Paar.
			// AqModus ist prozesskonstant, die Familien mischen nie.
			if (AqLicht && AqModus >= 3 && !(AqModus == 5 || AqModus >= 14))
			{
				unsigned long Slots = 0;
				const size_t SlotStelle = SourceCode.find("// approximately ");
				if (SlotStelle != std::string::npos)
					Slots = strtoul(SourceCode.c_str() + SlotStelle + 17, nullptr, 10);

				bool Angehaengt = false;

				if (Slots != 0 && InstructionCount + 3 <= 124)
				{
					const std::string Zeilen =
						"    mov oT5, v1 /* AquaNox: Normale, Objektraum */\n"
						"    mov oT6, v0 /* AquaNox: Position, Objektraum */\n"
						"    mov oT7, v2 /* AquaNox: Vertexfarbe */\n";

					const size_t Kommentar = SourceCode.find("// approximately");
					if (Kommentar != std::string::npos)
						SourceCode.insert(Kommentar, Zeilen);
					else
						SourceCode += Zeilen;

					Angehaengt = true;
				}

				// Ohne durchgereichte Normale darf spaeter auch kein
				// Pixelshader gebunden werden -- sonst liest er Muell.
				AqLicht = Angehaengt;
			}
		}

		// Destination register cannot be the same as first source register for m*x* instructions.
		if (std::regex_search(SourceCode, std::regex("m.x.")))
		{
			// Check for unused register
			size_t r;
			for (r = 0; r < 12; r++)
			{
				if (SourceCode.find("r" + std::to_string(r)) == std::string::npos) break;
			}

			// Check if first source register is the same as the destination register
			for (size_t j = 0; j < 12; j++)
			{
				const std::string reg = "(m.x.) (r" + std::to_string(j) + "), ((-?)r" + std::to_string(j) + "([\\.xyzw]*))(?![0-9])";

				while (std::regex_search(SourceCode, std::regex(reg)))
				{
					// If there is enough remaining instructions and an unused register then update to use a temp register
					if (r < 12 && InstructionCount < 128)
					{
						++InstructionCount;
						SourceCode = std::regex_replace(SourceCode, std::regex(reg),
							"mov r" + std::to_string(r) + ", $2 /* added line */\n    $1 $2, $4r" + std::to_string(r) + "$5 /* changed $3 to r" + std::to_string(r) + " */",
							std::regex_constants::format_first_only);
					}
					// Disable line to prevent assembly error
					else
					{
						SourceCode = std::regex_replace(SourceCode, std::regex("(.*" + reg + ".*)"), "/*$1*/ /* disabled this line */");
						break;
					}
				}
			}
		}

		// Vertex shader must minimally write all four components (xyzw) of oPos output register. (fix error X5350)
		if (std::regex_search(SourceCode, std::regex("    ([a-z2-4]*) oPos\\.")) && !std::regex_search(SourceCode, std::regex("    ([a-z2-4]*) oPos,")))
		{
			bool xReg = std::regex_search(SourceCode, std::regex("    ([a-z2-4]*) oPos\\.[y|z|w]*x"));
			bool yReg = std::regex_search(SourceCode, std::regex("    ([a-z2-4]*) oPos\\.[x|z|w]*y"));
			bool zReg = std::regex_search(SourceCode, std::regex("    ([a-z2-4]*) oPos\\.[x|y|w]*z"));
			bool wReg = std::regex_search(SourceCode, std::regex("    ([a-z2-4]*) oPos\\.[x|y|z]*w"));
			if (!xReg || !yReg || !zReg || !wReg)
			{
				SourceCode = std::regex_replace(SourceCode, std::regex("    ([a-z2-4]*) (oPos\\.[x|y|z|w]*,) ([^\\n]*)\\n"), "    $1 oPos, $3 /* removed oPos swizzles */\n");
			}
		}

		// *** vs_3_0-UMSTELLUNG, GANZ AM ENDE (561). *** Erst hier sind
		// alle Manipulationen durch: die Reparaturen an oFog/oPts, das
		// Anhaengen von oT5..oT7 und der m*x*-Fix. Wer frueher umstellt,
		// laesst die spaeteren Schritte auf Register los, die es in
		// vs_3_0 nicht mehr gibt.
		//
		// *** SCHLAEGT DIE UMSCHREIBUNG FEHL, BLEIBT ES BEI vs_1_1. ***
		// AqNachVS3 laesst SourceCode dann unangetastet -- lieber der
		// erprobte Stand als ein halb umgebauter Shader.
		// *** NUR SHADER, DIE AUCH EINEN ps_3_0 BEKOMMEN (F16). ***
		// vs_3_0 verlangt ps_3_0 -- mit Fixed Function oder ps_1_x ist
		// die Kombination unzulaessig, und zwar STILL: kein Fehler,
		// kein Protokolleintrag, einfach kein Bild. Beim ersten
		// Versuch waren schon Intro und Hauptmenue schwarz, lange vor
		// der ersten 3D-Ansicht.
		//
		// AqLicht markiert genau die Objektshader, fuer die spaeter in
		// AqVorZeichnen ein eigener Pixelshader gebunden wird. Alles
		// andere -- Terrain, Wasser, HUD, Filme -- bleibt bei vs_1_1.
		// *** F29: "AqWurdeVS3 = true" STAND IN EINEM #ifndef-BLOCK. ***
		// Eine Textersetzung hatte die Zuweisung mitsamt der Logzeile in
		// #ifndef D3D8TO9NOLOG eingeschachtelt. In der Protokollfassung
		// harmlos -- in der STILLEN Fassung waere das Merkmal nie gesetzt
		// worden: kein IstVS3, keine Absicherungen, und die Diagnose
		// haette sich zwischen den beiden Fassungen unterschieden.
		// Zustand gehoert NIE in Protokollklammern.
		// *** OPTION B (579): DIE UEBERSETZUNG ARBEITET AUF EINER KOPIE. ***
		// SourceCode bleibt das unveraenderte Original (vs_1_1, wird gleich
		// wie immer assembliert). QuelleVS3 bekommt die oT5..oT7-Zeilen
		// angehaengt und wird nach vs_3_0 uebersetzt -- fuer ALLE Shader,
		// nicht nur lichtrechnende. Traegt das Original selbst schon
		// oT5..oT7 (fuenfstufige Objekte), gibt es keine VS3-Fassung:
		// lieber gar keine Spiegelung als zerstoerte Texturkoordinaten.
		// *** NUR WENN DER VERTEXSTROM v1 UND v2 WIRKLICH FUEHRT (580). ***
		// Die erste Option-B-Fassung haengte oT5..oT7 an JEDEN Shader --
		// auch an Ladebildschirm- und Fernstuecke, deren Deklaration
		// gar kein v1/v2 kennt. Deren "Normale" war Muell: der
		// Ladebildschirm bekam einen Blaustich (Spiegelung aus
		// Zufallsdaten), die Ferne kippte. Die Deklaration ist die
		// verlaessliche Quelle: kein v1/v2 im Strom -> keine
		// Zweitfassung -> Objekt bleibt exakt, was es war.
		bool StromV1 = false, StromV2 = false;
		for (UINT StromR = 0; StromR < ElementIndex; ++StromR)
		{
			if (VertexShaderInputs[StromR] == 1) StromV1 = true;
			if (VertexShaderInputs[StromR] == 2) StromV2 = true;
		}

		// *** NUR SHADER, DIE WIRKLICH TRANSFORMIEREN (581b). *** Der
		// Ladebildschirm reicht seine Position direkt durch (kein
		// m4x4/dp4 auf oPos) -- seine "Objektraum-Position" ist
		// Bildschirmraum, der Blickvektor daraus Muell, die Folge ein
		// Blaustich. Ohne Matrixtransformation keine Zweitfassung.
		const bool Transformiert =
			SourceCode.find("m4x4 oPos") != std::string::npos ||
			SourceCode.find("dp4 oPos") != std::string::npos;

		// 597: Matrixregister erkennen, solange SourceCode im Zugriff
		// ist (Prelit-Objektshader: "m4x4 oPos, v0, c3" -- NICHT c0,
		// dort liegt deren Farbe!). Member wie AqWurdeVS3, weil das
		// ShaderInfo-Feld erst nach diesem Block beschrieben wird.
		AqMatrixRegErkannt = -1;
		{
			const size_t pM = SourceCode.find("m4x4 oPos, v0, c");
			if (pM != std::string::npos)
				AqMatrixRegErkannt = atoi(SourceCode.c_str() + pM + 16);
		}

		AqWurdeVS3 = false;
		std::string QuelleVS3;
		if (AqVS3 && AqModus >= 3
			&& Transformiert
			&& StromV1 && StromV2
			&& SourceCode.find("oT5") == std::string::npos
			&& SourceCode.find("oT6") == std::string::npos
			&& SourceCode.find("oT7") == std::string::npos)
		{
			QuelleVS3 = SourceCode;

			const std::string Zeilen =
				"    mov oT5, v1 /* AquaNox: Normale, Objektraum */\n"
				"    mov oT6, v0 /* AquaNox: Position, Objektraum */\n"
				"    mov oT7, v2 /* AquaNox: Vertexfarbe */\n";

			const size_t Kommentar = QuelleVS3.find("// approximately");
			if (Kommentar != std::string::npos)
				QuelleVS3.insert(Kommentar, Zeilen);
			else
				QuelleVS3 += Zeilen;

			if (AqNachVS3(QuelleVS3))
			{
				AqWurdeVS3 = true;
#ifndef D3D8TO9NOLOG
				LOG << "> AquaNox: vs_3_0-Zweitfassung erzeugt" << std::endl;
#endif
			}
			else
			{
				QuelleVS3.clear();
				++AqVS3Fehlgeschlagen;
#ifndef D3D8TO9NOLOG
				LOG << "> AquaNox: vs_3_0-Zweitfassung FEHLGESCHLAGEN" << std::endl;
#endif
			}
		}

#ifndef D3D8TO9NOLOG
		LOG << "> Dumping translated shader assembly:" << std::endl << std::endl << SourceCode << std::endl;
#endif

		if (D3DXAssembleShader != nullptr)
		{
			hr = D3DXAssembleShader(SourceCode.data(), static_cast<UINT>(SourceCode.size()), nullptr, nullptr, D3DXASM_FLAGS, &Assembly, &ErrorBuffer);
		}
		else
		{
			hr = D3DERR_INVALIDCALL;
		}

		Disassembly->Release();

		if (FAILED(hr))
		{
			if (ErrorBuffer != nullptr)
			{
#ifndef D3D8TO9NOLOG
				LOG << "> Failed to reassemble shader:" << std::endl << std::endl << static_cast<const char *>(ErrorBuffer->GetBufferPointer()) << std::endl;
#endif
				ErrorBuffer->Release();
			}
			else
			{
#ifndef D3D8TO9NOLOG
				LOG << "> Failed to reassemble shader with error code " << std::hex << hr << std::dec << "!" << std::endl;
#endif
			}

			return hr;
		}

		ShaderInfo = new VertexShaderInfo();

		hr = ProxyInterface->CreateVertexShader(static_cast<const DWORD *>(Assembly->GetBufferPointer()), &ShaderInfo->Shader);

		Assembly->Release();

		// Zweitfassung (579): die uebersetzte vs_3_0-Kopie. Scheitert
		// sie, bleibt ShaderVS3 null und das Objekt laeuft dauerhaft
		// ueber das Original -- kein Rueckfall noetig, kein Risiko.
		if (SUCCEEDED(hr) && AqWurdeVS3 && !QuelleVS3.empty() && D3DXAssembleShader != nullptr)
		{
			ID3DXBuffer *Vs3Kode = nullptr, *Vs3Fehler = nullptr;

			if (SUCCEEDED(D3DXAssembleShader(QuelleVS3.data(), static_cast<UINT>(QuelleVS3.size()),
					nullptr, nullptr, D3DXASM_FLAGS, &Vs3Kode, &Vs3Fehler))
				&& Vs3Kode != nullptr)
			{
				if (FAILED(ProxyInterface->CreateVertexShader(
					static_cast<const DWORD *>(Vs3Kode->GetBufferPointer()), &ShaderInfo->ShaderVS3)))
				{
					ShaderInfo->ShaderVS3 = nullptr;
				}
			}
#ifndef D3D8TO9NOLOG
			else if (Vs3Fehler != nullptr)
			{
				LOG << "> AquaNox: vs_3_0-Zweitfassung nicht assemblierbar: "
					<< static_cast<const char *>(Vs3Fehler->GetBufferPointer()) << std::endl;
			}
#endif

			if (Vs3Kode != nullptr)
				Vs3Kode->Release();
			if (Vs3Fehler != nullptr)
				Vs3Fehler->Release();
		}
	}
	else
	{
		ShaderInfo = new VertexShaderInfo();
		ShaderInfo->Shader = nullptr;
		AqMatrixRegErkannt = -1;   // 597: kein Quelltext, keine Matrix

		hr = D3D_OK;
	}

	// AquaNox: die erkannten Merkmale am Shader festhalten. SetVertexShader
	// liest sie spaeter wieder aus -- der Wrapper weiss dann bei jedem
	// Zeichenaufruf, ob gerade ein lichtrechnender Shader gebunden ist.
	ShaderInfo->RechnetLicht = AqLicht;
	ShaderInfo->HatHemi = AqHemi;
	ShaderInfo->HatAdditiv = AqAdditiv;
	ShaderInfo->HatGlanz = AqGlanz;
	ShaderInfo->Lichter = AqLichter;
	// IstVS3 heisst jetzt: die Zweitfassung EXISTIERT (579). Ob sie
	// gerade gebunden ist, steht in AqVS3Gebunden.
	ShaderInfo->IstVS3 = (ShaderInfo->ShaderVS3 != nullptr);

	ShaderInfo->MatrixReg = AqMatrixRegErkannt;   // 597

	if (SUCCEEDED(hr))
	{
		hr = ProxyInterface->CreateVertexDeclaration(VertexElements, &ShaderInfo->Declaration);

		if (SUCCEEDED(hr))
		{
			// Since 'Shader' is at least 8 byte aligned, we can safely shift it to right and end up not overwriting the top bit
			assert((reinterpret_cast<DWORD>(ShaderInfo) & 1) == 0);
			const DWORD ShaderMagic = reinterpret_cast<DWORD>(ShaderInfo) >> 1;

			*pHandle = ShaderMagic | 0x80000000;

			VertexShaderHandles.insert(*pHandle);
			VertexShaderAndDeclarationCount++;
			if (ShaderInfo->Shader)
			{
				VertexShaderAndDeclarationCount++;
			}
		}
		else
		{
#ifndef D3D8TO9NOLOG
			LOG << "> 'IDirect3DDevice9::CreateVertexDeclaration' failed with error code " << std::hex << hr << std::dec << "!" << std::endl;
#endif
			if (ShaderInfo->Shader != nullptr) 
			{
				ShaderInfo->Shader->Release();
			}
		}
	}
	else
	{
#ifndef D3D8TO9NOLOG
		LOG << "> 'IDirect3DDevice9::CreateVertexShader' failed with error code " << std::hex << hr << std::dec << "!" << std::endl;
#endif
	}

	if (FAILED(hr))
	{
		delete ShaderInfo;
	}

	return hr;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetVertexShader(DWORD Handle)
{
	HRESULT hr;

	if ((Handle & 0x80000000) == 0)
	{
		ProxyInterface->SetVertexShader(nullptr);
		ProxyInterface->SetVertexDeclaration(nullptr);
		hr = ProxyInterface->SetFVF(Handle);

		CurrentVertexShaderHandle = 0;

		// AquaNox: Fixed-Function-Vertexpipeline. Es gibt keine Normale in
		// t5 -- wer hier einen Pixelshader binden wuerde, faerbte nach Muell.
		AqVSLicht = false;
		AqVSHemi = false;
		AqVSAdditiv = false;
		AqVSGlanz = false;
		AqVSLichter = 0;
		AqVS3Aktiv = false;
		AqVSOriginal = nullptr;
		AqVSDrei = nullptr;
		AqVS3Gebunden = false;
		AqVSMatrixReg = -1;   // 597
	}
	else
	{
		const DWORD handleMagic = Handle << 1;
		VertexShaderInfo *const ShaderInfo = reinterpret_cast<VertexShaderInfo *>(handleMagic);

		// *** IMMER DAS ORIGINAL BINDEN (579). *** Die vs_3_0-Fassung
		// legt erst AqVorZeichnen an das Geraet -- und nur zusammen
		// mit einem eigenen ps_3_0. So ist das Paar in jedem Moment
		// gueltig, egal was das Spiel als naechstes tut.
		hr = ProxyInterface->SetVertexShader(ShaderInfo->Shader);
		ProxyInterface->SetVertexDeclaration(ShaderInfo->Declaration);

		if (SUCCEEDED(hr))
		{
			CurrentVertexShaderHandle = Handle;

			AqVSLicht = ShaderInfo->RechnetLicht;
			AqVSHemi = ShaderInfo->HatHemi;
			AqVSAdditiv = ShaderInfo->HatAdditiv;
			AqVSGlanz = ShaderInfo->HatGlanz;
			AqVSLichter = ShaderInfo->Lichter;
			AqVS3Aktiv = ShaderInfo->IstVS3;   // Zweitfassung VERFUEGBAR
			AqVSOriginal = ShaderInfo->Shader;
			AqVSDrei = ShaderInfo->ShaderVS3;
			AqVS3Gebunden = false;             // Geraet steht auf Original
			AqVSMatrixReg = ShaderInfo->MatrixReg;   // 597
			AqMatrixSchmutzig = true;
		}
	}

	return hr;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetVertexShader(DWORD *pHandle)
{
	if (pHandle == nullptr)
		return D3DERR_INVALIDCALL;

	if (CurrentVertexShaderHandle == 0)
	{
		return ProxyInterface->GetFVF(pHandle);
	}
	else
	{
		*pHandle = CurrentVertexShaderHandle;
		return D3D_OK;
	}
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::DeleteVertexShader(DWORD Handle)
{
	if ((Handle & 0x80000000) == 0)
		return D3DERR_INVALIDCALL;

	if (VertexShaderHandles.erase(Handle) == 0)
		return D3DERR_INVALIDCALL;

	if (CurrentVertexShaderHandle == Handle)
	{
		ProxyInterface->SetVertexShader(nullptr);
		ProxyInterface->SetVertexDeclaration(nullptr);
		CurrentVertexShaderHandle = 0;

		// AquaNox (547.7, Falle I): das Merkmal darf nicht stehen bleiben.
		// 456 CreateVertexShader-Aufrufe auf 76 Shader -- es wird geloescht.
		AqVSLicht = false;
		AqVSHemi = false;
		AqVSAdditiv = false;
		AqVSGlanz = false;
		AqVSLichter = 0;
		AqVS3Aktiv = false;
		AqVSOriginal = nullptr;
		AqVSDrei = nullptr;
		AqVS3Gebunden = false;
		AqVSMatrixReg = -1;   // 597
	}

	const DWORD HandleMagic = Handle << 1;
	VertexShaderInfo *const ShaderInfo = reinterpret_cast<VertexShaderInfo *>(HandleMagic);

	if (ShaderInfo->Shader != nullptr)
	{
		ShaderInfo->Shader->Release();
		VertexShaderAndDeclarationCount--;
	}
	// Die vs_3_0-Zweitfassung (579) haengt am selben Info.
	if (ShaderInfo->ShaderVS3 != nullptr)
	{
		ShaderInfo->ShaderVS3->Release();
		ShaderInfo->ShaderVS3 = nullptr;
	}
	if (ShaderInfo->Declaration != nullptr)
	{
		ShaderInfo->Declaration->Release();
		VertexShaderAndDeclarationCount--;
	}

	delete ShaderInfo;

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetVertexShaderConstant(DWORD Register, const void *pConstantData, DWORD ConstantCount)
{
	// AquaNox (547.1/547.4): auf einem PUREDEVICE gibt es kein
	// GetVertexShaderConstantF. Die Beleuchtungskonstanten c50..c71 muessen
	// also hier mitgeschrieben werden -- sonst kann der Pixelshader sie
	// spaeter nicht bekommen.
	//
	// Kosten: ein kurzschliessender Vergleich und hoechstens 352 Byte
	// memcpy vor einem Durchgriff, der dieselben Daten ohnehin kopiert.
	if (AqModus != 0 && pConstantData != nullptr && Register < 72 && Register + ConstantCount > 50)
	{
		const DWORD Von = (Register < 50) ? 50 : Register;
		const DWORD Bis = ((Register + ConstantCount) > 72) ? 72 : (Register + ConstantCount);
		const float *const Quelle = static_cast<const float *>(pConstantData) + (Von - Register) * 4;

		memcpy(&AqKonst[Von - 50][0], Quelle, (Bis - Von) * 4 * sizeof(float));
		AqKonstSchmutzig = true;
	}

	// Dasselbe fuer die Kameraposition in c2 -- sie wird als eigener
	// Aufruf gesetzt und faellt daher nicht in den Bereich oben.
	if (AqModus != 0 && pConstantData != nullptr && Register <= 2 && Register + ConstantCount > 2)
	{
		memcpy(AqKamera, static_cast<const float *>(pConstantData) + (2 - Register) * 4,
			4 * sizeof(float));
		AqKonstSchmutzig = true;
	}

	// vs c0..c7 mitschreiben (596/597): dort liegen die WVP-Matrizen
	// (welches Register, sagt der Shader -- MatrixReg). Wechselt je
	// Objekt; das Schmutzig-Flag laesst den Prelit-Pfad seine
	// errechnete Kamera je Objekt neu bestimmen.
	if (AqModus != 0 && pConstantData != nullptr && Register < 8)
	{
		const DWORD Anzahl = (ConstantCount < 8 - Register) ? ConstantCount : (8 - Register);
		memcpy(&AqVSK[Register][0], pConstantData, Anzahl * 4 * sizeof(float));
		AqMatrixSchmutzig = true;
		AqKonstSchmutzig = true;
	}

	return ProxyInterface->SetVertexShaderConstantF(Register, static_cast<const float *>(pConstantData), ConstantCount);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetVertexShaderConstant(DWORD Register, void *pConstantData, DWORD ConstantCount)
{
	return ProxyInterface->GetVertexShaderConstantF(Register, static_cast<float *>(pConstantData), ConstantCount);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetVertexShaderDeclaration(DWORD Handle, void *pData, DWORD *pSizeOfData)
{
	UNREFERENCED_PARAMETER(Handle);
	UNREFERENCED_PARAMETER(pData);
	UNREFERENCED_PARAMETER(pSizeOfData);

#ifndef D3D8TO9NOLOG
	LOG << "Redirecting '" << "IDirect3DDevice8::GetVertexShaderDeclaration" << "(" << this << ", " << Handle << ", " << pData << ", " << pSizeOfData << ")' ..." << std::endl;
	LOG << "> 'IDirect3DDevice8::GetVertexShaderDeclaration' is not implemented!" << std::endl;
#endif

	return D3DERR_INVALIDCALL;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetVertexShaderFunction(DWORD Handle, void *pData, DWORD *pSizeOfData)
{
#ifndef D3D8TO9NOLOG
	LOG << "Redirecting '" << "IDirect3DDevice8::GetVertexShaderFunction" << "(" << this << ", " << Handle << ", " << pData << ", " << pSizeOfData << ")' ..." << std::endl;
#endif

	if ((Handle & 0x80000000) == 0)
		return D3DERR_INVALIDCALL;

	const DWORD HandleMagic = Handle << 1;
	IDirect3DVertexShader9 *VertexShaderInterface = reinterpret_cast<VertexShaderInfo *>(HandleMagic)->Shader;

	if (VertexShaderInterface == nullptr)
		return D3DERR_INVALIDCALL;

#ifndef D3D8TO9NOLOG
	LOG << "> Returning translated shader byte code." << std::endl;
#endif

	return VertexShaderInterface->GetFunction(pData, reinterpret_cast<UINT *>(pSizeOfData));
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetStreamSource(UINT StreamNumber, IDirect3DVertexBuffer8 *pStreamData, UINT Stride)
{
	IDirect3DVertexBuffer9 *pStreamDataImpl = nullptr;
	if (pStreamData != nullptr)
		pStreamDataImpl = static_cast<Direct3DVertexBuffer8 *>(pStreamData)->GetProxyInterface();

	return ProxyInterface->SetStreamSource(StreamNumber, pStreamDataImpl, 0, Stride);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetStreamSource(UINT StreamNumber, IDirect3DVertexBuffer8 **ppStreamData, UINT *pStride)
{
	if (ppStreamData == nullptr)
		return D3DERR_INVALIDCALL;

	*ppStreamData = nullptr;

	UINT StreamOffset = 0;
	IDirect3DVertexBuffer9 *VertexBufferInterface = nullptr;

	const HRESULT hr = ProxyInterface->GetStreamSource(StreamNumber, &VertexBufferInterface, &StreamOffset, pStride);
	if (FAILED(hr))
		return hr;

	if (VertexBufferInterface != nullptr)
		*ppStreamData = ProxyAddressLookupTable->FindAddress<Direct3DVertexBuffer8>(VertexBufferInterface);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetIndices(IDirect3DIndexBuffer8 *pIndexData, UINT BaseVertexIndex)
{
	if (BaseVertexIndex > 0x7FFFFFFF)
		return D3DERR_INVALIDCALL;

	IDirect3DIndexBuffer9 *pIndexDataImpl = nullptr;
	if (pIndexData != nullptr)
		pIndexDataImpl = static_cast<Direct3DIndexBuffer8 *>(pIndexData)->GetProxyInterface();

	const HRESULT hr = ProxyInterface->SetIndices(pIndexDataImpl);
	if (FAILED(hr))
		return hr;

	CurrentBaseVertexIndex = static_cast<INT>(BaseVertexIndex);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetIndices(IDirect3DIndexBuffer8 **ppIndexData, UINT *pBaseVertexIndex)
{
	if (ppIndexData == nullptr)
		return D3DERR_INVALIDCALL;

	*ppIndexData = nullptr;

	if (pBaseVertexIndex != nullptr)
		*pBaseVertexIndex = static_cast<UINT>(CurrentBaseVertexIndex);

	IDirect3DIndexBuffer9 *IntexBufferInterface = nullptr;

	const HRESULT hr = ProxyInterface->GetIndices(&IntexBufferInterface);
	if (FAILED(hr))
		return hr;

	if (IntexBufferInterface != nullptr)
		*ppIndexData = ProxyAddressLookupTable->FindAddress<Direct3DIndexBuffer8>(IntexBufferInterface);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::CreatePixelShader(const DWORD *pFunction, DWORD *pHandle)
{
#ifndef D3D8TO9NOLOG
	LOG << "Redirecting '" << "IDirect3DDevice8::CreatePixelShader" << "(" << this << ", " << pFunction << ", " << pHandle << ")' ..." << std::endl;
#endif

	if (pFunction == nullptr || pHandle == nullptr)
		return D3DERR_INVALIDCALL;

	*pHandle = 0;

#ifndef D3D8TO9NOLOG
	LOG << "> Disassembling shader and translating assembly to Direct3D 9 compatible code ..." << std::endl;
#endif

	if (*pFunction < D3DPS_VERSION(1, 0) || *pFunction > D3DPS_VERSION(1, 4))
	{
#ifndef D3D8TO9NOLOG
		LOG << "> Failed because of version mismatch ('" << std::showbase << std::hex << *pFunction << std::dec << std::noshowbase << "')! Only 'ps_1_x' shaders are supported." << std::endl;
#endif
		return D3DERR_INVALIDCALL;
	}

	ID3DXBuffer *Disassembly = nullptr, *Assembly = nullptr, *ErrorBuffer = nullptr;

	HRESULT hr = D3DERR_INVALIDCALL;

	if (D3DXDisassembleShader != nullptr)
		hr = D3DXDisassembleShader(pFunction, FALSE, nullptr, &Disassembly);

	if (FAILED(hr))
	{
#ifndef D3D8TO9NOLOG
		LOG << "> Failed to disassemble shader with error code " << std::hex << hr << std::dec << "!" << std::endl;
#endif
		return hr;
	}

	std::string SourceCode;
	{
		const char* raw = static_cast<const char*>(Disassembly->GetBufferPointer());
		size_t rawSize = Disassembly->GetBufferSize();

		SourceCode.reserve(rawSize);

		for (size_t i = 0; i < rawSize; ++i)
		{
			unsigned char c = static_cast<unsigned char>(raw[i]);

			bool isAllowed =
				(c == '\t') ||
				(c == '\n') ||
				(c == '\r') ||
				(c >= ' ' && c <= '~');

			if (!isAllowed)
				continue;

			SourceCode.push_back(static_cast<char>(c));
		}
	}

	const size_t VersionPosition = SourceCode.find("ps_1_");

	assert(VersionPosition != std::string::npos);

	if (SourceCode.at(VersionPosition + 5) == '0')
	{
#ifndef D3D8TO9NOLOG
		LOG << "> Replacing version 'ps_1_0' with 'ps_1_1' ..." << std::endl;
#endif

		SourceCode.replace(VersionPosition, 6, "ps_1_1");
	}

	// Get number of arithmetic instructions used
	const size_t ArithmeticPosition = SourceCode.find("arithmetic");
	size_t ArithmeticCount = ArithmeticPosition > 2 && ArithmeticPosition < SourceCode.size() ? strtoul(SourceCode.substr(ArithmeticPosition - 2, 2).c_str(), nullptr, 10) : 0;
	ArithmeticCount = (ArithmeticCount != 0) ? ArithmeticCount : 10;	// Default to 10

	// Remove lines when "    // ps.1.1" string is found and the next line does not start with a space
	SourceCode = std::regex_replace(SourceCode,
		std::regex("    \\/\\/ ps\\.1\\.[1-4]\\n((?! ).+\\n)+"),
		"");

	// Remove debug lines
	SourceCode = std::regex_replace(SourceCode,
		std::regex("([^\\n]\\n)[\\s]*#line [0123456789]+.*\\n"),
		"$1");

	// Fix '-' modifier for constant values when using 'add' arithmetic by changing it to use 'sub'
	SourceCode = std::regex_replace(SourceCode,
		std::regex("(add)([_satxd248]*) (r[0-9][\\.wxyz]*), ((1-|)[crtv][0-9][\\.wxyz_abdis2]*), (-)(c[0-9][\\.wxyz]*)(_bx2|_bias|_x2|_d[zbwa]|)(?![_\\.wxyz])"),
		"sub$2 $3, $4, $7$8 /* changed 'add' to 'sub' removed modifier $6 */");

	// Create temporary varables for ps_1_4
	std::string SourceCode14 = SourceCode;
	int ArithmeticCount14 = ArithmeticCount;

	// Fix modifiers for constant values by using any remaining arithmetic places to add an instruction to move the constant value to a temporary register
	while (std::regex_search(SourceCode, std::regex("-c[0-9]|c[0-9][\\.wxyz]*_")) && ArithmeticCount < 8)
	{
		// Make sure that the dest register is not already being used
		const std::string normalizedSourceCode =
			std::regex_replace(
				std::regex_replace(SourceCode,
					std::regex("1?-(c[0-9])[\\._a-z0-9]*"), "-$1"),    // Find negative modifiers
				std::regex("(c[0-9])[\\.wxyz]*_[a-z0-9]*"), "-$1");    // Find swizzle modifiers
		std::string tmpLine = "\n" + normalizedSourceCode + "\n";
		size_t start = tmpLine.substr(0, tmpLine.find("-c")).rfind("\n") + 1;
		tmpLine = tmpLine.substr(start, tmpLine.find("\n", start) - start);
		const std::string destReg = std::regex_replace(tmpLine, std::regex("[ \\+]+[a-z_\\.0-9]+ (r[0-9]).*-c[0-9].*"),"$1");
		const std::string sourceReg = std::regex_replace(tmpLine, std::regex("[ \\+]+[a-z_\\.0-9]+ r[0-9][\\._a-z0-9]*, (.*)-c[0-9](.*)"), "$1$2");
		if (sourceReg.find(destReg) != std::string::npos)
		{
			break;
		}

		// Replace one constant modifier using the dest register as a temporary register
		size_t SourceSize = SourceCode.size();
		SourceCode = std::regex_replace(SourceCode,
			std::regex("    (...)(_[_satxd248]*|) (r[0-9])([\\.wxyz]*), (1?-?[crtv][0-9][\\.wxyz_abdis2]*, )?(1?-?[crtv][0-9][\\.wxyz_abdis2]*, )?(1?-?[crtv][0-9][\\.wxyz_abdis2]*, )?((1?-)(c[0-9])([\\.wxyz]*)(_bx2|_bias|_x2|_d[zbwa]|)|(1?-?)(c[0-9])([\\.wxyz]*)(_bx2|_bias|_x2|_d[zbwa]))(?![_\\.wxyz])"),
			"    mov $3$4, $10$11$14$15 /* added line */\n    $1$2 $3$4, $5$6$9$13$3$12$16 /* changed $10$11$14$15 to $3 */", std::regex_constants::format_first_only);
		// Replace one constant modifier on coissued commands using the dest register as a temporary register
		if (SourceSize == SourceCode.size())
		{
			SourceCode = std::regex_replace(SourceCode,
				std::regex("(    .*\\n)  \\+ (...)(_[_satxd248]*|) (r[0-9])([\\.wxyz]*), (1?-?[crtv][0-9][\\.wxyz_abdis2]*, )?(1?-?[crtv][0-9][\\.wxyz_abdis2]*, )?(1?-?[crtv][0-9][\\.wxyz_abdis2]*, )?((1?-)(c[0-9])([\\.wxyz]*)(_bx2|_bias|_x2|_d[zbwa]|)|(1?-?)(c[0-9])([\\.wxyz]*)(_bx2|_bias|_x2|_d[zbwa]))(?![_\\.wxyz])"),
				"    mov $4$5, $11$12$15$16 /* added line */\n$1  + $2$3 $4$5, $6$7$10$14$4$13$17 /* changed $11$12$15$16 to $4 */", std::regex_constants::format_first_only);
		}

		if (SourceSize == SourceCode.size())
			break;

		ArithmeticCount++;
	}

	// Check if this should be converted to ps_1_4
	if (std::regex_search(SourceCode, std::regex("-c[0-9]|c[0-9][\\.wxyz]*_")) &&	// Check for modifiers on constants
		!std::regex_search(SourceCode, std::regex("tex[bcdmr]")) &&					// Verify unsupported instructions are not used
		std::regex_search(SourceCode, std::regex("ps_1_[0-3]")))					// Verify PixelShader is using version 1.0 to 1.3
	{
		bool ConvertError = false;
		bool RegisterUsed[7] = { false, false, false, false, false, false, true };

		struct MyStrings
		{
			std::string dest;
			std::string source;
		};

		std::vector<MyStrings> ReplaceReg;
		std::string NewSourceCode = "    ps_1_4 /* converted */\n";

		// Ensure at least one command will be above the phase marker
		bool PhaseMarkerSet = (ArithmeticCount14 >= 8);
		if (SourceCode14.find("def c") == std::string::npos && !PhaseMarkerSet)
		{
			for (size_t j = 0; j < 8; j++)
			{
				const std::string reg = "c" + std::to_string(j);

				if (SourceCode14.find(reg) == std::string::npos)
				{
					PhaseMarkerSet = true;
					NewSourceCode.append("    def " + reg + ", 0, 0, 0, 0 /* added line */\n");
					break;
				}
			}
		}

		// Update registers to use different numbers from textures
		size_t FirstReg = 0;
		for (size_t j = 0; j < 2; j++)
		{
			const std::string reg = "r" + std::to_string(j);

			if (SourceCode14.find(reg) != std::string::npos)
			{
				while (SourceCode14.find("t" + std::to_string(FirstReg)) != std::string::npos ||
					(SourceCode14.find("r" + std::to_string(FirstReg)) != std::string::npos && j != FirstReg))
				{
					FirstReg++;
				}
				SourceCode14 = std::regex_replace(SourceCode14, std::regex(reg), "r" + std::to_string(FirstReg));
				FirstReg++;
			}
		}

		// Set phase location
		size_t PhasePosition = NewSourceCode.length();
		size_t TexturePosition = 0;

		// Loop through each line
		size_t LinePosition = 1;
		std::string NewLine = SourceCode14;
		while (true)
		{
			// Get next line
			size_t tmpLinePos = SourceCode14.find("\n", LinePosition) + 1;
			if (tmpLinePos == std::string::npos || tmpLinePos < LinePosition)
			{
				break;
			}
			LinePosition = tmpLinePos;
			NewLine = SourceCode14.substr(LinePosition, SourceCode14.length());
			tmpLinePos = NewLine.find("\n");
			if (tmpLinePos != std::string::npos)
			{
				NewLine.resize(tmpLinePos);
			}

			// Skip 'ps_x_x' lines
			if (std::regex_search(NewLine, std::regex("ps_._.")))
			{
				// Do nothing
			}

			// Check for 'def' and add before 'phase' statement
			else if (NewLine.find("def c") != std::string::npos)
			{
				PhaseMarkerSet = true;
				const std::string tmpLine = NewLine + "\n";
				NewSourceCode.insert(PhasePosition, tmpLine);
				PhasePosition += tmpLine.length();
			}

			// Check for 'tex' and update to 'texld'
			else if (NewLine.find("tex t") != std::string::npos)
			{
				const std::string regNum = std::regex_replace(NewLine, std::regex(".*tex t([0-9]).*"), "$1");
				const std::string tmpLine = "    texld r" + regNum + ", t" + regNum + "\n";

				// Mark as a texture register and add 'texld' statement before or after the 'phase' statement
				const unsigned long Num = strtoul(regNum.c_str(), nullptr, 10);
				RegisterUsed[(Num < 6) ? Num : 6] = true;
				NewSourceCode.insert(PhasePosition, tmpLine);
				if (PhaseMarkerSet)
				{
					TexturePosition += tmpLine.length();
				}
				else
				{
					PhaseMarkerSet = true;
					PhasePosition += tmpLine.length();
				}
			}

			// Other instructions
			else
			{
				// Check for constant modifiers and update them to use unused temp register
				if (std::regex_search(NewLine, std::regex("-c[0-9]|c[0-9][\\.wxyz]*_")))
				{
					for (size_t j = 0; j < 6; j++)
					{
						std::string reg = "r" + std::to_string(j);

						if (NewSourceCode.find(reg) == std::string::npos)
						{
							const std::string constReg = std::regex_replace(NewLine, std::regex(".*-(c[0-9]).*|.*(c[0-9])[\\.wxyz]*_.*"), "$1$2");

							// Check if this constant has modifiers in more than one line
							if (std::regex_search(SourceCode14.substr(LinePosition + NewLine.length(), SourceCode14.length()), std::regex("-" + constReg + "|" + constReg + "[\\.wxyz]*_")))
							{
								// Find an unused register
								while (j < 6 &&
									(NewSourceCode.find("r" + std::to_string(j)) != std::string::npos ||
									SourceCode14.find("r" + std::to_string(j)) != std::string::npos))
								{
									j++;
								}
								// Replace all constants with the unused register
								if (j < 6)
								{
									reg = "r" + std::to_string(j);
									SourceCode14 = std::regex_replace(SourceCode14, std::regex(constReg), reg);
								}
							}

							const std::string tmpLine = "    mov " + reg + ", " + constReg + "\n";

							// Update the constant in this line and add 'mov' statement before or after the 'phase' statement
							NewLine = std::regex_replace(NewLine, std::regex(constReg), reg);
							if (ArithmeticCount14 < 8)
							{
								NewSourceCode.insert(PhasePosition + TexturePosition, tmpLine);
								ArithmeticCount14++;
							}
							else
							{
								PhaseMarkerSet = true;
								NewSourceCode.insert(PhasePosition, tmpLine);
								PhasePosition += tmpLine.length();
							}
							break;
						}
					}
				}

				// Update register from vector once it is used for the last time
				if (ReplaceReg.size() > 0)
				{
					for (size_t x = 0; x < ReplaceReg.size(); x++)
					{
						// Check if register is used in this line
						if (NewLine.find(ReplaceReg[x].dest) != std::string::npos)
						{
							// Get position of all lines after this line
							size_t start = LinePosition + NewLine.length();
							// Move position to next line if the first line is a co-issed command
							start = (SourceCode14.substr(start, 4).find("+") == std::string::npos) ? start : SourceCode14.find("\n", start + 1);

							// Check if register is used in the code after this position
							if (SourceCode14.find(ReplaceReg[x].dest, start) == std::string::npos)
							{
								// Update dest register using source register from the vector
								NewLine = std::regex_replace(NewLine, std::regex("([ \\+]+[a-z_\\.0-9]+ )r[0-9](.*)"), "$1" + ReplaceReg[x].source + "$2");
								ReplaceReg.erase(ReplaceReg.begin() + x);
								break;
							}
						}
					}
				}

				// Check if texture is no longer being used and update the dest register
				if (std::regex_search(NewLine, std::regex("t[0-9]")))
				{
					const std::string texNum = std::regex_replace(NewLine, std::regex(".*t([0-9]).*"), "$1");

					// Get position of all lines after this line
					size_t start = LinePosition + NewLine.length();
					// Move position to next line if the first line is a co-issed command
					start = (SourceCode14.substr(start, 4).find("+") == std::string::npos) ? start : SourceCode14.find("\n", start + 1);

					// Check if texture is used in the code after this position
					if (SourceCode14.find("t" + texNum, start) == std::string::npos)
					{
						const std::string destRegNum = std::regex_replace(NewLine, std::regex("[ \\+]+[a-z_\\.0-9]+ r([0-9]).*"), "$1");

						// Check if destination register is already being used by a texture register
						const unsigned long Num = strtoul(destRegNum.c_str(), nullptr, 10);
						if (!RegisterUsed[(Num < 6) ? Num : 6])
						{
							// Check if line is using more than one texture and error out
							if (std::regex_search(std::regex_replace(NewLine, std::regex("t" + texNum), "r" + texNum), std::regex("t[0-9]")))
							{
								ConvertError = true;
								break;
							}
							// Check if this is the first or last time the register is used
							if (NewSourceCode.find("r" + destRegNum) == std::string::npos ||
								SourceCode14.find("r" + destRegNum, start) == std::string::npos)
							{
								// Update dest register using texture register
								NewLine = std::regex_replace(NewLine, std::regex("([ \\+]+[a-z_\\.0-9]+ )r[0-9](.*)"), "$1r" + texNum + "$2");
								// Update code replacing all regsiters after the marked position with the texture register
								const std::string tempSourceCode = std::regex_replace(SourceCode14.substr(start, SourceCode14.length()), std::regex("r" + destRegNum), "r" + texNum);
								SourceCode14.resize(start);
								SourceCode14.append(tempSourceCode);
							}
							else
							{
								// If register is still being used then add registers to vector to be replaced later
								RegisterUsed[(Num < 6) ? Num : 6] = true;
								MyStrings tempReplaceReg;
								tempReplaceReg.dest = "r" + destRegNum;
								tempReplaceReg.source = "r" + texNum;
								ReplaceReg.push_back(tempReplaceReg);
							}
						}
					}
				}

				// Add line to SourceCode
				NewLine = std::regex_replace(NewLine, std::regex("t([0-9])"), "r$1") + "\n";
				NewSourceCode.append(NewLine);
			}
		}

		// Add 'phase' instruction
		NewSourceCode.insert(PhasePosition, "    phase\n");

		// If no errors were encountered then check if code assembles
		if (!ConvertError && D3DXAssembleShader != nullptr)
		{
			// Test if ps_1_4 assembles
			if (SUCCEEDED(D3DXAssembleShader(NewSourceCode.data(), static_cast<UINT>(NewSourceCode.size()), nullptr, nullptr, 0, &Assembly, &ErrorBuffer)))
			{
				SourceCode = NewSourceCode;
				Assembly->Release();
				Assembly = nullptr;
			}
			else
			{
#ifndef D3D8TO9NOLOG
				LOG << "> Failed to convert shader to ps_1_4" << std::endl;
				LOG << "> Dumping translated shader assembly:" << std::endl << std::endl << NewSourceCode << std::endl;
#endif
				if (ErrorBuffer != nullptr)
				{
#ifndef D3D8TO9NOLOG
					LOG << "> Failed to reassemble shader:" << std::endl << std::endl << static_cast<const char*>(ErrorBuffer->GetBufferPointer()) << std::endl;
#endif
					ErrorBuffer->Release();
					ErrorBuffer = nullptr;
				}
			}
		}
	}

	// Change '-' modifier for constant values when using 'mad' arithmetic by changing it to use 'sub'
	SourceCode = std::regex_replace(SourceCode,
		std::regex("(mad)([_satxd248]*) (r[0-9][\\.wxyz]*), (1?-?[crtv][0-9][\\.wxyz_abdis2]*), (1?-?[crtv][0-9][\\.wxyz_abdis2]*), (-)(c[0-9][\\.wxyz]*)(_bx2|_bias|_x2|_d[zbwa]|)(?![_\\.wxyz])"),
		"sub$2 $3, $4, $7$8 /* changed 'mad' to 'sub' removed $5 removed modifier $6 */");

	// Remove trailing modifiers for constant values
	SourceCode = std::regex_replace(SourceCode,
		std::regex("(c[0-9][\\.wxyz]*)(_bx2|_bias|_x2|_d[zbwa])"),
		"$1 /* removed modifier $2 */");

	// Remove remaining modifiers for constant values
	SourceCode = std::regex_replace(SourceCode,
		std::regex("(1?-)(c[0-9][\\.wxyz]*(?![\\.wxyz]))"),
		"$2 /* removed modifier $1 */");

#ifndef D3D8TO9NOLOG
	LOG << "> Dumping translated shader assembly:" << std::endl << std::endl << SourceCode << std::endl;
#endif

	if (D3DXAssembleShader != nullptr)
	{
		hr = D3DXAssembleShader(SourceCode.data(), static_cast<UINT>(SourceCode.size()), nullptr, nullptr, D3DXASM_FLAGS, &Assembly, &ErrorBuffer);
	}
	else
	{
		hr = D3DERR_INVALIDCALL;
	}

	Disassembly->Release();

	if (FAILED(hr))
	{
		if (ErrorBuffer != nullptr)
		{
#ifndef D3D8TO9NOLOG
			LOG << "> Failed to reassemble shader:" << std::endl << std::endl << static_cast<const char *>(ErrorBuffer->GetBufferPointer()) << std::endl;
#endif
			ErrorBuffer->Release();
		}
		else
		{
#ifndef D3D8TO9NOLOG
			LOG << "> Failed to reassemble shader with error code " << std::hex << hr << std::dec << "!" << std::endl;
#endif
		}

		return hr;
	}

	hr = ProxyInterface->CreatePixelShader(static_cast<const DWORD *>(Assembly->GetBufferPointer()), reinterpret_cast<IDirect3DPixelShader9 **>(pHandle));

	Assembly->Release();

	if (FAILED(hr))
	{
#ifndef D3D8TO9NOLOG
		LOG << "> 'IDirect3DDevice9::CreatePixelShader' failed with error code " << std::hex << hr << std::dec << "!" << std::endl;
#endif
	}
	else
	{
		PixelShaderHandles.insert(*pHandle);
	}

	return hr;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetPixelShader(DWORD Handle)
{
	const HRESULT hr = ProxyInterface->SetPixelShader(reinterpret_cast<IDirect3DPixelShader9 *>(Handle));
	if (FAILED(hr))
		return hr;

	CurrentPixelShaderHandle = Handle;

	// AquaNox: CurrentPixelShaderHandle ist die Wahrheit des SPIELS,
	// AqAktiverPS die des GERAETS. Beide laufen auseinander, sobald wir
	// selbst einen Shader binden -- deshalb zwei Felder statt einem.
	AqAktiverPS = reinterpret_cast<IDirect3DPixelShader9 *>(Handle);

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetPixelShader(DWORD *pHandle)
{
	if (pHandle == nullptr)
		return D3DERR_INVALIDCALL;

	*pHandle = CurrentPixelShaderHandle;

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::DeletePixelShader(DWORD Handle)
{
	if (Handle == 0)
		return D3DERR_INVALIDCALL;

	if (PixelShaderHandles.erase(Handle) == 0)
		return D3DERR_INVALIDCALL;

	if (CurrentPixelShaderHandle == Handle)
		SetPixelShader(0);

	reinterpret_cast<IDirect3DPixelShader9 *>(Handle)->Release();

	return D3D_OK;
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::SetPixelShaderConstant(DWORD Register, const void *pConstantData, DWORD ConstantCount)
{
	return ProxyInterface->SetPixelShaderConstantF(Register, static_cast<const float *>(pConstantData), ConstantCount);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetPixelShaderConstant(DWORD Register, void *pConstantData, DWORD ConstantCount)
{
	return ProxyInterface->GetPixelShaderConstantF(Register, static_cast<float *>(pConstantData), ConstantCount);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::GetPixelShaderFunction(DWORD Handle, void *pData, DWORD *pSizeOfData)
{
#ifndef D3D8TO9NOLOG
	LOG << "Redirecting '" << "IDirect3DDevice8::GetPixelShaderFunction" << "(" << this << ", " << Handle << ", " << pData << ", " << pSizeOfData << ")' ..." << std::endl;
#endif

	if (Handle == 0)
		return D3DERR_INVALIDCALL;

	IDirect3DPixelShader9 *const PixelShaderInterface = reinterpret_cast<IDirect3DPixelShader9 *>(Handle);

#ifndef D3D8TO9NOLOG
	LOG << "> Returning translated shader byte code." << std::endl;
#endif

	return PixelShaderInterface->GetFunction(pData, reinterpret_cast<UINT *>(pSizeOfData));
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::DrawRectPatch(UINT Handle, const float *pNumSegs, const D3DRECTPATCH_INFO *pRectPatchInfo)
{
	// AquaNox (547.7, Falle U): diese beiden zeichnen ebenfalls. Ohne den
	// Haken bliebe der zuletzt gesetzte Pixelshader hier haengen.
	AqVorZeichnen();
	return ProxyInterface->DrawRectPatch(Handle, pNumSegs, pRectPatchInfo);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::DrawTriPatch(UINT Handle, const float *pNumSegs, const D3DTRIPATCH_INFO *pTriPatchInfo)
{
	AqVorZeichnen();
	return ProxyInterface->DrawTriPatch(Handle, pNumSegs, pTriPatchInfo);
}
HRESULT STDMETHODCALLTYPE Direct3DDevice8::DeletePatch(UINT Handle)
{
	return ProxyInterface->DeletePatch(Handle);
}

void Direct3DDevice8::ApplyClipPlanes()
{
	DWORD index = 0;
	for (const auto plane : StoredClipPlanes)
	{
		if ((ClipPlaneRenderState & (1 << index)) != 0)
			ProxyInterface->SetClipPlane(index, plane);

		index++;
	}
}

void Direct3DDevice8::ReleaseShadersAndStateBlocks()
{
	AqGibFrei();

	while (!PixelShaderHandles.empty())
	{
		DWORD Handle = *PixelShaderHandles.begin();
		DeletePixelShader(Handle);
	}

	while (!VertexShaderHandles.empty())
	{
		DWORD Handle = *VertexShaderHandles.begin();
		DeleteVertexShader(Handle);
	}

	VertexShaderAndDeclarationCount = 0;

	while (!StateBlockTokens.empty())
	{
		DWORD Token = *StateBlockTokens.begin();
		DeleteStateBlock(Token);
	}
}

// ======================================================================
// AquaNox: Beleuchtung pro Bildpunkt  (Handoff 547)
// ======================================================================

void Direct3DDevice8::AqInit(DWORD BehaviorFlags)
{
	AqDefaults();

	char Puffer[16] = {};
	if (GetEnvironmentVariableA("AQUANOX_PP", Puffer, sizeof(Puffer)) == 0)
		return;

	const int Wunsch = atoi(Puffer);
	if (Wunsch <= 0)
		return;

	// Ohne ps_2_0 hat der ganze Umbau keine Grundlage.
	D3DCAPS9 Caps = {};
	if (FAILED(ProxyInterface->GetDeviceCaps(&Caps)) || Caps.PixelShaderVersion < D3DPS_VERSION(2, 0))
	{
#ifndef D3D8TO9NOLOG
		LOG << "> AquaNox: Geraet beherrscht kein ps_2_0 -- Beleuchtung pro Bildpunkt bleibt aus." << std::endl;
#endif
		return;
	}

	AqModus = Wunsch;

	// *** GETRENNT SCHALTBAR, MIT ABSICHT. *** Die Vertexseite laesst
	// sich so allein umstellen (AQUANOX_VS3=1 bei AQUANOX_PP=4) --
	// genau der Trennversuch aus 561.4, ohne den man wieder blind
	// zwei Aenderungen gleichzeitig sucht.
	char VS3[8] = {};
	AqVS3 = GetEnvironmentVariableA("AQUANOX_VS3", VS3, sizeof(VS3)) != 0 && atoi(VS3) > 0;

	char TD[8] = {};
	AqTexDump = GetEnvironmentVariableA("AQUANOX_TEXDUMP", TD, sizeof(TD)) != 0 && atoi(TD) > 0;
	if (AqTexDump)
		CreateDirectoryA("mod_docu\\texturen", nullptr);

	// AQUANOX_PRELIT=0 schaltet NUR den Prelit-Uebernahmepfad ab (580) --
	// das Trennwerkzeug, falls eine Regression auf Option B faellt.
	char PL[8] = {};
	if (GetEnvironmentVariableA("AQUANOX_PRELIT", PL, sizeof(PL)) != 0)
		AqPrelitAn = atoi(PL) > 0;

	// AQUANOX_ERSATZ=1: Albedo-Ersetzung aus texturen\ersatz (606,
	// PBR-Demo). Vorgabe AUS -- Spielbetrieb bleibt unberuehrt.
	char ER[8] = {};
	if (GetEnvironmentVariableA("AQUANOX_ERSATZ", ER, sizeof(ER)) != 0)
		AqErsatzAn = atoi(ER) > 0;

	// AQUANOX_DETAIL=1: Uebernahme der Detailpaesse (614; Kernbefund
	// 612: DORT lebt die sichtbare Statics-Textur). Vorgabe AUS, bis
	// der Testlauf die Deckungsgleichheit bei Faktor 1 bestaetigt.
	char DT[8] = {};
	if (GetEnvironmentVariableA("AQUANOX_DETAIL", DT, sizeof(DT)) != 0)
		AqDetailAn = atoi(DT) > 0;

	// AQUANOX_KENNFARBEN=1: Pfad-Kennfarben (627). Prozesskonstant,
	// darum kein Schluesselfeld noetig.
	char KF[8] = {};
	if (GetEnvironmentVariableA("AQUANOX_KENNFARBEN", KF, sizeof(KF)) != 0)
	{
		AqKennfarbenArt = atoi(KF);
		AqKennfarbenAn = AqKennfarbenArt > 0;
	}

	// AQUANOX_KACHEL: UV-Vervielfachung der Objekttextur samt Karten
	// im ps_3_0-Nachbau (607). Vorgabe 1 = aus. Prozesskonstant wie
	// AqUmgebungAn -- kein Schluesselfeld noetig.
	char KA[16] = {};
	if (GetEnvironmentVariableA("AQUANOX_KACHEL", KA, sizeof(KA)) != 0)
		AqKachel[0] = static_cast<float>(atof(KA));
	// 607b: Positions-UVs; jeder Wert != 1 aktiviert (auch < 1,
	// z. B. 0.125 = eine Kachel je 8 Welteinheiten).
	AqKachelAn = AqKachel[0] > 0.0001f
		&& (AqKachel[0] < 0.999f || AqKachel[0] > 1.001f);

	// AQUANOX_PARALLAX: Staerke der Blick-Verschiebung (643, z. B.
	// 0.05). Der staerkste Tiefenreiz -- Fugen/Nieten verschieben
	// sich beim Blickwechsel. Nur ps_3_0-Familie, braucht Hoehe im
	// R-Kanal der ORM-Karte. Schliesst sich mit KACHEL aus.
	char PX[16] = {};
	if (GetEnvironmentVariableA("AQUANOX_PARALLAX", PX, sizeof(PX)) != 0)
		AqKachel[1] = static_cast<float>(atof(PX));
	AqParallaxAn = AqKachel[1] > 0.0001f && !AqKachelAn;

	// AQUANOX_UMGEBUNG=0 schaltet die Unterwasser-Spiegelung ab (576).
	char UM[8] = {};
	if (GetEnvironmentVariableA("AQUANOX_UMGEBUNG", UM, sizeof(UM)) != 0)
		AqUmgebungAn = atoi(UM) > 0;
	if (AqModus == 5 || AqModus >= 14)
		AqBaueUmgebung();
	// Kartenfilter unabhaengig vom Wuerfel: auch s8/s9 (Normal/ORM)
	// laufen sonst mit der POINT-Vorgabe (585).
	AqSetzeKartenfilter();

	// AQUANOX_RELIEF: Staerke der Normalenkarten-Wirkung (572).
	// Vorgabe 3.0; 1.0 = physikalisch, hoeher = plastischer.
	char RL[16] = {};
	if (GetEnvironmentVariableA("AQUANOX_RELIEF", RL, sizeof(RL)) != 0)
		AqRelief[0] = static_cast<float>(atof(RL));

	// AQUANOX_SPIEGEL: Staerke der Umgebungsspiegelung (577). Stand
	// bisher nur im Kommentar am Schlussblock -- GEPARST wurde die
	// Variable nie; die Vorgabe 5.0 war praktisch fest (584).
	char SP[16] = {};
	if (GetEnvironmentVariableA("AQUANOX_SPIEGEL", SP, sizeof(SP)) != 0)
		AqRelief[1] = static_cast<float>(atof(SP));

	// AQUANOX_METALL: Staerke des Metallanteils aus dem B-Kanal der
	// ORM-Karte (584). Vorgabe 1.0; 0 schaltet den Zweig wirkungslos.
	char MT[16] = {};
	if (GetEnvironmentVariableA("AQUANOX_METALL", MT, sizeof(MT)) != 0)
		AqRelief[2] = static_cast<float>(atof(MT));

	// AQUANOX_WANDLICHT: Staerke der Relief-Antwort auf Prelit-
	// Flaechen (593, blickabhaengig). Vorgabe 2.0; 0 = aus.
	char WL[16] = {};
	if (GetEnvironmentVariableA("AQUANOX_WANDLICHT", WL, sizeof(WL)) != 0)
		AqRelief[3] = static_cast<float>(atof(WL));

	// AQUANOX_NK: 0 = Normalenkarten ganz aus, 1 = nur laden,
	// 2 = laden und binden (Vorgabe). Siehe 568.
	char NK[8] = {};
	if (GetEnvironmentVariableA("AQUANOX_NK", NK, sizeof(NK)) != 0)
		AqNKStufe = atoi(NK);

	// *** MODUS 5 BRAUCHT ps_3_0. *** Dort steckt der Glanz pro
	// Bildpunkt: "pow" gibt es in ps_2_0 nicht, und 112 Anweisungen
	// passen nicht in dessen 64. Kann das Geraet es nicht, wird auf
	// Modus 4 zurueckgenommen statt zu scheitern -- der laeuft
	// nachweislich und sieht nur weniger gut aus.
	if (AqModus >= 5 && Caps.PixelShaderVersion < D3DPS_VERSION(3, 0))
	{
#ifndef D3D8TO9NOLOG
		LOG << "> AquaNox: kein ps_3_0 -- Modus 5 faellt auf 4 zurueck." << std::endl;
#endif
		AqModus = 4;
	}

#ifndef D3D8TO9NOLOG
	LOG << "> AquaNox: Beleuchtung pro Bildpunkt, Modus " << AqModus
		<< "  (BehaviorFlags 0x" << std::hex << BehaviorFlags << std::dec
		<< ((BehaviorFlags & D3DCREATE_PUREDEVICE) != 0 ? ", PUREDEVICE -- Get* liefert nichts" : "")
		<< ")" << std::endl;
#else
	UNREFERENCED_PARAMETER(BehaviorFlags);
#endif
}

void Direct3DDevice8::AqDefaults()
{
	memset(AqTSS, 0, sizeof(AqTSS));
	memset(AqTexTyp, 0, sizeof(AqTexTyp));

	// *** 0 IST KEIN GUELTIGER D3DTEXTUREOP. *** Ohne die Vorgaben von
	// Direct3D misst der Messlauf Unsinn (547.7, Falle E).
	for (DWORD s = 0; s < 8; ++s)
	{
		AqTSS[s][D3DTSS_COLOROP]       = (s == 0) ? D3DTOP_MODULATE : D3DTOP_DISABLE;
		AqTSS[s][D3DTSS_COLORARG1]     = D3DTA_TEXTURE;
		AqTSS[s][D3DTSS_COLORARG2]     = D3DTA_CURRENT;
		AqTSS[s][D3DTSS_ALPHAOP]       = (s == 0) ? D3DTOP_SELECTARG1 : D3DTOP_DISABLE;
		AqTSS[s][D3DTSS_ALPHAARG1]     = D3DTA_TEXTURE;
		AqTSS[s][D3DTSS_ALPHAARG2]     = D3DTA_CURRENT;
		AqTSS[s][D3DTSS_TEXCOORDINDEX] = s;
		AqTSS[s][D3DTSS_RESULTARG]     = D3DTA_CURRENT;
	}

	AqTFactor = 0xFFFFFFFF;
	AqSpecular = 0;
	AqSchattenGueltig = true;

	// Kartenquelle (591): Reset loest alle Texturbindungen -- die
	// Schatten muessen mit, sonst zeigte AqStufe1Tex ins Leere.
	AqStufe1Tex = nullptr;
	AqKartenStufe = 0;
	AqHash0 = 0;
	AqNormalAktiv = false;
	AqOrmAktiv = false;
}

void Direct3DDevice8::AqGibFrei()
{
	if (!AqCache.empty())
		ProxyInterface->SetPixelShader(nullptr);

	for (std::map<AqSchluessel, IDirect3DPixelShader9 *>::iterator i = AqCache.begin();
		i != AqCache.end(); ++i)
	{
		if (i->second != nullptr)
			i->second->Release();
	}

	AqCache.clear();
	AqPSRefs = 0;
	AqAktiverPS = nullptr;

	// 611: Neutralisierer der ERSATZ-Demo mit freigeben.
	for (int i = 0; i < 4; ++i)
	{
		if (AqFlachPS[i] != nullptr)
		{
			AqFlachPS[i]->Release();
			AqFlachPS[i] = nullptr;
		}
	}
}

static bool AqKameraAusMatrix(const float m[16], float aus[4]);   // 596

void Direct3DDevice8::AqVorZeichnen()
{
	if (AqModus == 0)
		return;

	// *** MESSUNG 567, VON HAND GESETZT. *** Alle Zaehler stehen in
	// geklammerten Bloecken direkt an ihrer Wirkung -- die Vorgaenger
	// hingen an klammerlosen ifs und zaehlten jeden Zeichenaufruf der
	// ganzen Szene (F26). Alle 4000 vs_3_0-Aufrufe eine Zeile.
	if (AqVS3Aktiv)
	{
		++AqZaehlVS3Draw;
#ifndef D3D8TO9NOLOG
		if ((AqZaehlVS3Draw % 4000) == 0)
		{
			LOG << "> AquaNox-M567: vs3Draw=" << AqZaehlVS3Draw
			    << " NotA=" << AqNotA << " NotB=" << AqNotB
			    << " NotC=" << AqNotC << " NotD=" << AqNotD
			    << " NachbauC=" << AqNachbauC
			    << " OhnePartner=" << AqOhnePartner
			    << " CacheNull=" << AqPSCacheNull
			    << " NeuNull=" << AqPSNeuNull
			    << " VS3Fehl=" << AqVS3Fehlgeschlagen
			    << " FremdPS=" << AqFremdPS
			    << " NormalGebunden=" << AqNormalGebunden << std::endl;
		}
#endif
	}

	// *** MIT DER DOPPEL-FASSUNG (579) IST DER SICHERE ZUSTAND IMMER
	// ERREICHBAR: Original-Vertexshader ans Geraet, fertig. *** Der
	// Notbehelf (F17a..d) ist damit Geschichte -- er existierte nur,
	// weil ein vs_3_0 ohne Partner unsichtbar wurde. Ein Original
	// vs_1_1 ist mit ALLEM gueltig, was das Spiel binden mag.
	if (!AqSchattenGueltig)
	{
#ifndef D3D8TO9NOLOG
		// 595: faellt der Bunker HIER heraus?
		if (AqDiagZeilen < 400 && (AqHash0 == 0xb6768440fd3771a9ULL
			|| AqHash0 == 0xe8a49b3ded3aa7e8ULL
			|| AqHash0 == 0x71431c5f8ddd8165ULL
			|| AqHash0 == 0x827979ce89702b0eULL))
		{
			++AqDiagZeilen;
			LOG << "> AquaNox-595: F" << AqFrame << " " << std::hex
			    << (AqHash0 >> 32) << std::dec << " SCHATTEN-UNGUELTIG -> FF" << std::endl;
		}
#endif
		if (AqVS3Gebunden && AqVSOriginal != nullptr)
		{
			ProxyInterface->SetVertexShader(AqVSOriginal);
			AqVS3Gebunden = false;
		}
		return;
	}

	// *** DIE ZUSTAENDIGKEITSREGEL (579). *** Zwei Faelle gehoeren uns:
	//   LICHT:  lichtrechnender Vertexshader, Spiel ohne eigenen PS
	//           -> volle Beleuchtung (Modus je AQUANOX_PP)
	//   PRELIT: vorbeleuchteter Vertexshader MIT Zweitfassung, Spiel
	//           ohne eigenen PS, ps_3_0-Familie aktiv
	//           -> Nachbau + Relief + Spiegelung (Modus 19). Das sind
	//           die Waende, die bisher fast immer Fixed Function waren.
	// Alles andere (Spiel-PS, FVF, HUD, Filme) laeuft unveraendert --
	// und weil SetVertexShader stets das Original bindet, ist jede
	// fremde Kombination automatisch gueltig.
	const bool PsFamilieDrei = (AqModus == 5 || AqModus >= 14);
	const bool Licht =
		AqVSLicht && CurrentVertexShaderHandle != 0 && CurrentPixelShaderHandle == 0;
	// Prelit-Ausschluesse (581), nachdem der v1/v2-Stromfilter nicht
	// reichte (die Stoerflaechen teilen sich die Vertexformate mit
	// echten Objekten):
	//   - ohne Tiefentest zeichnen HUD und Ladebildschirm -> raus
	//   - SRCALPHA-transparent sind die Nebelschleier der Ferne
	//     (die fog.fog-Ebenen!) -> raus, sonst bekommt der NEBEL
	//     selbst Spiegelung und Relief
	// *** NUR DECKENDE ZUEGE (589). *** Prelit ERSETZT die Oberflaeche
	// -- das darf nur ein Zug, der sie auch deckend zeichnet (Blending
	// aus oder ONE:ZERO). Vorher war nur SRCALPHA ausgeschlossen (581);
	// die Parabolantenne zeigte, dass auch MULTIPLIKATIONS-
	// Ueberlagerungen (Src=DESTCOLOR) durchrutschten -- eine
	// Spiegelung in einem Abdunkelungszug ist Unsinn.
	const bool Deckend =
		AqBlendAn == 0
		|| (AqSrcBlend == D3DBLEND_ONE && AqDestBlend == D3DBLEND_ZERO);
	const bool Prelit =
		AqPrelitAn
		&& AqZAn
		&& AqCull != D3DCULL_NONE
		&& Deckend
		&& !AqVSLicht && CurrentVertexShaderHandle != 0 && CurrentPixelShaderHandle == 0
		&& PsFamilieDrei && AqVSDrei != nullptr && AqModus >= 4;

	// *** DER DETAILPASS (614, Kernbefund 612): dort lebt die
	// sichtbare Statics-Textur. *** Signatur laut Inventur 613
	// voellig einheitlich: 2x-Modulation DESTCOLOR/SRCCOLOR,
	// Tiefentest an, kein Licht-Shader, Zweitfassung vorhanden.
	const bool Detail =
		AqDetailAn
		&& AqZAn
		&& AqBlendAn != 0
		&& AqSrcBlend == D3DBLEND_DESTCOLOR && AqDestBlend == D3DBLEND_SRCCOLOR
		&& !AqVSLicht && CurrentVertexShaderHandle != 0 && CurrentPixelShaderHandle == 0
		&& PsFamilieDrei && AqVSDrei != nullptr && AqModus >= 4;

#ifndef D3D8TO9NOLOG
	// 595: die vier Bunker-/Stationstexturen JE ZEICHENAUFRUF mit
	// Frame-Nummer -- pendelt der Zeichenweg (P=Prelit, L=Licht,
	// F=fremd/FF)? Deckel 400 Zeilen (~2 Sekunden Standbild).
	if (AqDiagZeilen < 400 && (AqHash0 == 0xb6768440fd3771a9ULL
		|| AqHash0 == 0xe8a49b3ded3aa7e8ULL
		|| AqHash0 == 0x71431c5f8ddd8165ULL
		|| AqHash0 == 0x827979ce89702b0eULL))
	{
		++AqDiagZeilen;
		LOG << "> AquaNox-595: F" << AqFrame << " " << std::hex << (AqHash0 >> 32)
		    << " " << (Prelit ? "P" : (Licht ? "L" : "F"))
		    << " Blend=" << AqBlendAn << "/" << AqSrcBlend << "/" << AqDestBlend
		    << " TF=" << AqTFactor << std::dec
		    << " Typ01=" << int(AqTexTyp[0]) << int(AqTexTyp[1]) << std::endl;
	}

	// *** 588b-DIAGNOSE: DER ZEICHENWEG DER PARABOLANTENNE. *** Die
	// Metallvorgabe (588) kam laut Stefan nicht an. Sobald die
	// parabolic-Textur auf Stufe 0 liegt, wird hier einmal je
	// Signatur festgehalten, WIE das Objekt gezeichnet wird.
	if (AqHash0 == 0x583813ab6be30325ULL)
	{
		char pz[256];
		sprintf_s(pz, sizeof(pz),
			"PARABO: Licht=%d Prelit=%d (PrelitAn=%d Z=%d Cull=%lu "
			"Blend=%d Src=%lu Dest=%lu VSLicht=%d VS=%d PS=%d Fam3=%d VSDrei=%d) "
			"Orm=%d Nk=%d Typ0=%d Typ1=%d Typ2=%d",
			Licht ? 1 : 0, Prelit ? 1 : 0, AqPrelitAn ? 1 : 0,
			AqZAn ? 1 : 0, (unsigned long)AqCull,
			AqBlendAn ? 1 : 0, (unsigned long)AqSrcBlend,
			(unsigned long)AqDestBlend,
			AqVSLicht ? 1 : 0,
			CurrentVertexShaderHandle != 0 ? 1 : 0,
			CurrentPixelShaderHandle != 0 ? 1 : 0,
			PsFamilieDrei ? 1 : 0, AqVSDrei != nullptr ? 1 : 0,
			AqOrmAktiv ? 1 : 0, AqNormalAktiv ? 1 : 0,
			AqTexTyp[0], AqTexTyp[1], AqTexTyp[2]);
		if (AqWarum.insert(std::string(pz)).second)
			LOG << "> AquaNox-" << pz << std::endl;
	}
#endif

	if (!Licht && !Prelit && !Detail)
	{
		// Fremder Fall: Original-VS sicherstellen, Spiel-PS respektieren.
		if (AqVS3Gebunden && AqVSOriginal != nullptr)
		{
			ProxyInterface->SetVertexShader(AqVSOriginal);
			AqVS3Gebunden = false;
		}

#ifndef D3D8TO9NOLOG
		// 627: Im Kennfarben-Modus JEDEN Fremd-Zug einmal je Signatur
		// festhalten -- bleiben Flaechen unveraendert (= FF), steht
		// ihre Signatur damit sofort im Protokoll.
		if (AqKennfarbenAn && AqDiagZeilen < 800)
		{
			char fz[192];
			sprintf_s(fz, sizeof(fz),
				"FREMD-ZUG: Hash0=%016llx Blend=%d Src=%lu Dest=%lu Z=%d "
				"VSLicht=%d VS=%d PS=%d Typ01=%d%d "
				"VS3=%d Cull=%lu Fam3=%d Deckend=%d",
				AqHash0, AqBlendAn ? 1 : 0,
				(unsigned long)AqSrcBlend, (unsigned long)AqDestBlend,
				AqZAn ? 1 : 0, AqVSLicht ? 1 : 0,
				CurrentVertexShaderHandle != 0 ? 1 : 0,
				CurrentPixelShaderHandle != 0 ? 1 : 0,
				int(AqTexTyp[0]), int(AqTexTyp[1]),
				AqVSDrei != nullptr ? 1 : 0, (unsigned long)AqCull,
				PsFamilieDrei ? 1 : 0, Deckend ? 1 : 0);
			if (AqWarum.insert(std::string(fz)).second)
			{
				++AqDiagZeilen;
				LOG << "> AquaNox-" << fz << std::endl;
			}
		}

		// 613: INVENTUR DER DETAILPAESSE (Handoff 612). Jeder nicht
		// uebernommene Zug mit Multiplikations-/Additiv-Mischung wird
		// einmal je Signatur festgehalten: dort lebt die sichtbare
		// Textur der Statics -- die kuenftige Uebernahmestelle.
		if (AqBlendAn != 0 && CurrentPixelShaderHandle == 0
			&& CurrentVertexShaderHandle != 0
			&& (AqSrcBlend == D3DBLEND_DESTCOLOR
				|| AqDestBlend == D3DBLEND_SRCCOLOR
				|| (AqSrcBlend == D3DBLEND_ONE && AqDestBlend == D3DBLEND_ONE)))
		{
			char dz[192];
			sprintf_s(dz, sizeof(dz),
				"DETAIL-ZUG: Hash0=%016llx Src=%lu Dest=%lu Z=%d "
				"VSLicht=%d VS3=%d Typ01=%d%d Coord1=%lu",
				AqHash0, (unsigned long)AqSrcBlend, (unsigned long)AqDestBlend,
				AqZAn ? 1 : 0, AqVSLicht ? 1 : 0,
				AqVSDrei != nullptr ? 1 : 0,
				int(AqTexTyp[0]), int(AqTexTyp[1]),
				AqTSS[1][D3DTSS_TEXCOORDINDEX]);
			if (AqWarum.insert(std::string(dz)).second)
				LOG << "> AquaNox-" << dz << std::endl;
		}
#endif

		// 611 (nur ERSATZ-Demo): die ueberdeckenden Original-
		// Zusatzpaesse neutralisieren, damit die ersetzte Basis
		// sichtbar wird -- Multiplikation -> Weiss (d*1 = d),
		// 2x-Modulation -> Halbgrau (2*d*0.5 = d), Additiv ->
		// Schwarz (d+0 = d; Kaustik/Muendungsfeuer fehlen in der
		// Demo BEWUSST).
		if (AqErsatzAn && CurrentPixelShaderHandle == 0 && AqBlendAn != 0)
		{
			int Art = -1;
			if (AqSrcBlend == D3DBLEND_DESTCOLOR && AqDestBlend == D3DBLEND_ZERO)
				Art = 0;
			else if (AqSrcBlend == D3DBLEND_ZERO && AqDestBlend == D3DBLEND_SRCCOLOR)
				Art = 0;
			else if (AqSrcBlend == D3DBLEND_DESTCOLOR && AqDestBlend == D3DBLEND_SRCCOLOR)
				Art = 1;
			else if (AqSrcBlend == D3DBLEND_ONE && AqDestBlend == D3DBLEND_ONE)
				Art = 2;
			if (Art >= 0)
			{
				// 628: im Kennfarben-Modus zeigen sich die
				// Neutralisierer selbst als MAGENTA.
				IDirect3DPixelShader9 *const Flach =
					AqHoleFlachPS(AqKennfarbenAn ? 3 : Art);
				if (Flach != nullptr)
				{
					if (AqAktiverPS != Flach)
					{
						ProxyInterface->SetPixelShader(Flach);
						AqAktiverPS = Flach;
					}
					return;
				}
			}
		}

		IDirect3DPixelShader9 *const Gewuenscht =
			reinterpret_cast<IDirect3DPixelShader9 *>(CurrentPixelShaderHandle);

		if (AqAktiverPS != Gewuenscht)
		{
			ProxyInterface->SetPixelShader(Gewuenscht);
			AqAktiverPS = Gewuenscht;
		}
		return;
	}

	// *** DER PRELIT-PFAD (579): Waende bekommen Spiegelung. ***
	if (Prelit && AqModus != 1)
	{
		AqSchluessel kn;
		AqWaehleKartenquelle();
		const bool KnOk = AqBaueSchluessel(kn);
#ifndef D3D8TO9NOLOG
		if (AqHash0 == 0x583813ab6be30325ULL)
		{
			char pz2[128];
			sprintf_s(pz2, sizeof(pz2),
				"PARABO-PRELIT: SchluesselOk=%d Effekt=%d Stufen=%u OrmKarte=%u",
				KnOk ? 1 : 0, KnOk ? kn.Effekt : 0,
				KnOk ? kn.Stufen : 0, KnOk ? kn.OrmKarte : 0);
			if (AqWarum.insert(std::string(pz2)).second)
				LOG << "> AquaNox-" << pz2 << std::endl;
		}
		// 589b: JEDEN uebernommenen Prelit-Zug einmal je Stufe-0-Hash
		// festhalten -- falls der sichtbare Schuesselzug in Wahrheit
		// mit einer ANDEREN Textur auf Stufe 0 zeichnet (Lightmap?),
		// taucht er hier auf, ohne je eine PARABO-Zeile auszuloesen.
		if (KnOk && !kn.Effekt)
		{
			char pz3[96];
			sprintf_s(pz3, sizeof(pz3),
				"PRELIT-ZUG: Hash0=%016llx Stufen=%u Orm=%u Nk=%u",
				AqHash0, kn.Stufen, kn.OrmKarte, kn.NormalKarte);
			if (AqWarum.insert(std::string(pz3)).second)
				LOG << "> AquaNox-" << pz3 << std::endl;
		}
#endif
		if (!KnOk || kn.Effekt)
		{
			// Nicht nachbaubar oder selbstleuchtender Effekt: zurueck
			// zu echtem Fixed Function -- Original-VS, kein PS.
			if (AqVS3Gebunden && AqVSOriginal != nullptr)
			{
				ProxyInterface->SetVertexShader(AqVSOriginal);
				AqVS3Gebunden = false;
			}
			if (AqAktiverPS != nullptr)
			{
				ProxyInterface->SetPixelShader(nullptr);
				AqAktiverPS = nullptr;
			}
			return;
		}

		// Nachbau + Relief + Spiegelung, ohne Hemisphaere und Lichter:
		// die Vertexfarbe IST schon das fertige Licht dieser Objekte.
		// In der Konstantenprobe (Modus 18) bleibt 18 stehen: dann
		// faerbt sich AUCH der Prelit-Pfad gelb, und man sieht auf
		// einen Blick, welche Flaechen er uebernimmt (581c).
		// Ebenso Modus 20 (Metallprobe, 584), 21 (Wandlicht-Faktor,
		// 598) und 16 (gestoerte Normale ALS FARBE, 602): der
		// eindeutige Gitter-Nachweis auf den Waenden.
		kn.Modus = static_cast<unsigned char>(
			(AqModus == 16 || AqModus == 18 || AqModus == 20 || AqModus == 21)
				? AqModus : 19);
		kn.Hemi = 0;
		kn.Lichter = 0;
		kn.Additiv = 0;
		kn.Glanz = 0;

		IDirect3DPixelShader9 *const PS19 = AqHolePS(kn);
		if (PS19 == nullptr)
		{
			if (AqVS3Gebunden && AqVSOriginal != nullptr)
			{
				ProxyInterface->SetVertexShader(AqVSOriginal);
				AqVS3Gebunden = false;
			}
			if (AqAktiverPS != nullptr)
			{
				ProxyInterface->SetPixelShader(nullptr);
				AqAktiverPS = nullptr;
			}
			return;
		}

		if (!AqVS3Gebunden)
		{
			ProxyInterface->SetVertexShader(AqVSDrei);
			AqVS3Gebunden = true;
		}
		if (AqAktiverPS != PS19)
		{
			ProxyInterface->SetPixelShader(PS19);
			AqAktiverPS = PS19;
		}
		++AqNachbauC;   // Zaehler wiederverwendet: Prelit-Uebernahmen

		if (AqKonstSchmutzig)
		{
			// ALLE Konstanten, nicht nur die eigenen: das Flag wird
			// hier verbraucht, und der naechste Licht-Zeichenaufruf
			// verliesse sich sonst auf veraltete c8..c29.
			ProxyInterface->SetPixelShaderConstantF(8, &AqKonst[0][0], 22);
			// Prelit-Kamera aus der WVP-Matrix (596/597): das vs-c2 des
			// Licht-Pfads existiert fuer diese Shader nicht; WO die
			// Matrix liegt, sagt der gebundene Shader (MatrixReg --
			// die Prelit-Objektshader nutzen c3!).
			if (AqMatrixSchmutzig)
			{
				AqPrelitKameraGueltig = false;
				if (AqVSMatrixReg >= 0 && AqVSMatrixReg <= 4)
					AqPrelitKameraGueltig = AqKameraAusMatrix(
						&AqVSK[AqVSMatrixReg][0], AqPrelitKamera);
				AqMatrixSchmutzig = false;
			}
			ProxyInterface->SetPixelShaderConstantF(0,
				AqPrelitKameraGueltig ? AqPrelitKamera : AqKamera, 1);
			ProxyInterface->SetPixelShaderConstantF(2, AqRelief, 1);
			{
				// c4 = TEXTUREFACTOR als Farbe (589), ARGB -> RGBA.
				const float TF[4] = {
					((AqTFactor >> 16) & 255) / 255.0f,
					((AqTFactor >>  8) & 255) / 255.0f,
					( AqTFactor        & 255) / 255.0f,
					((AqTFactor >> 24) & 255) / 255.0f };
				ProxyInterface->SetPixelShaderConstantF(4, TF, 1);
				ProxyInterface->SetPixelShaderConstantF(5, AqKachel, 1);   // 607
			}
			AqKonstSchmutzig = false;
		}
		return;
	}

	// *** DER DETAILPASS-PFAD (614). *** Baugleich zum Prelit-Pfad,
	// aber Modus 23: Kette nachbauen, Relief-Faktor multiplizieren
	// (Faktor 1 = bitgenau Original), KEIN Spiegel-Schlussblock --
	// in einem 2x-Multiplikator waere er Unsinn.
	if (Detail && AqModus != 1)
	{
		AqSchluessel kd;
		AqWaehleKartenquelle();
		if (!AqBaueSchluessel(kd) || kd.Effekt)
		{
			if (AqVS3Gebunden && AqVSOriginal != nullptr)
			{
				ProxyInterface->SetVertexShader(AqVSOriginal);
				AqVS3Gebunden = false;
			}
			if (AqAktiverPS != nullptr)
			{
				ProxyInterface->SetPixelShader(nullptr);
				AqAktiverPS = nullptr;
			}
			return;
		}

		kd.Modus = 23;
		kd.Hemi = 0;
		kd.Lichter = 0;
		kd.Additiv = 0;
		kd.Glanz = 0;

		IDirect3DPixelShader9 *const PS23 = AqHolePS(kd);
		if (PS23 == nullptr)
		{
			if (AqVS3Gebunden && AqVSOriginal != nullptr)
			{
				ProxyInterface->SetVertexShader(AqVSOriginal);
				AqVS3Gebunden = false;
			}
			if (AqAktiverPS != nullptr)
			{
				ProxyInterface->SetPixelShader(nullptr);
				AqAktiverPS = nullptr;
			}
			return;
		}

		if (!AqVS3Gebunden)
		{
			ProxyInterface->SetVertexShader(AqVSDrei);
			AqVS3Gebunden = true;
		}
		if (AqAktiverPS != PS23)
		{
			ProxyInterface->SetPixelShader(PS23);
			AqAktiverPS = PS23;
		}

#ifndef D3D8TO9NOLOG
		// 638 (nur Kennfarben Stufe 4): Multiplikator aushebeln --
		// direkt am Geraet, ohne die Schatten anzufassen; das Spiel
		// setzt seine Mischung vor jedem Zug ohnehin neu. Unser
		// Ausgang steht damit NACKT auf dem Schirm.
		if (AqKennfarbenAn && AqKennfarbenArt == 4)
		{
			ProxyInterface->SetRenderState(D3DRS_SRCBLEND, D3DBLEND_ONE);
			ProxyInterface->SetRenderState(D3DRS_DESTBLEND, D3DBLEND_ZERO);
		}
#endif

		if (AqKonstSchmutzig)
		{
			ProxyInterface->SetPixelShaderConstantF(8, &AqKonst[0][0], 22);
			if (AqMatrixSchmutzig)
			{
				AqPrelitKameraGueltig = false;
				if (AqVSMatrixReg >= 0 && AqVSMatrixReg <= 4)
					AqPrelitKameraGueltig = AqKameraAusMatrix(
						&AqVSK[AqVSMatrixReg][0], AqPrelitKamera);
				AqMatrixSchmutzig = false;
			}
			ProxyInterface->SetPixelShaderConstantF(0,
				AqPrelitKameraGueltig ? AqPrelitKamera : AqKamera, 1);
			ProxyInterface->SetPixelShaderConstantF(2, AqRelief, 1);
			{
				const float TF[4] = {
					((AqTFactor >> 16) & 255) / 255.0f,
					((AqTFactor >>  8) & 255) / 255.0f,
					( AqTFactor        & 255) / 255.0f,
					((AqTFactor >> 24) & 255) / 255.0f };
				ProxyInterface->SetPixelShaderConstantF(4, TF, 1);
				ProxyInterface->SetPixelShaderConstantF(5, AqKachel, 1);
			}
			AqKonstSchmutzig = false;
		}
		return;
	}

	// *** DER DETAILPASS-UEBERNEHMER: MODUS 23 (614/624). *** Die
	// sichtbare Statics-Textur lebt in diesen 2x-Multiplikations-
	// Zuegen (612). 624: DIESER BLOCK FEHLTE bis heute -- die
	// Detail-Zuege fielen mit DETAIL=1 in den LICHT-Pfad durch
	// (Hemisphaerenlicht im Multiplikator = die gelb/grauen
	// Demo-Flaechen; KACHEL blieb wirkungslos, weil dieser Pfad
	// nie seine Konstanten bekam).
	// *** 639: DIESER BLOCK IST EIN TOTES DUPLIKAT. *** Der echte
	// 614er-Block steht weiter oben und LIEF die ganze Zeit; der
	// 624er-Befund beruhte auf einem fehlerhaften Grep (Muster
	// "if (Detail)" statt "if (Detail &&"). Stillgelegt; Ausbau
	// beim naechsten Aufraeumen.
	if (false)
	{
		AqSchluessel kd;
		AqWaehleKartenquelle();
		const bool KdOk = AqBaueSchluessel(kd);
		if (!KdOk || kd.Effekt)
		{
			// Nicht nachbaubar: echtes Fixed Function.
			if (AqVS3Gebunden && AqVSOriginal != nullptr)
			{
				ProxyInterface->SetVertexShader(AqVSOriginal);
				AqVS3Gebunden = false;
			}
			if (AqAktiverPS != nullptr)
			{
				ProxyInterface->SetPixelShader(nullptr);
				AqAktiverPS = nullptr;
			}
			return;
		}

		kd.Modus = 23;
		kd.Hemi = 0;
		kd.Lichter = 0;
		kd.Additiv = 0;
		kd.Glanz = 0;

		IDirect3DPixelShader9 *const PS23 = AqHolePS(kd);
		if (PS23 == nullptr)
		{
			if (AqVS3Gebunden && AqVSOriginal != nullptr)
			{
				ProxyInterface->SetVertexShader(AqVSOriginal);
				AqVS3Gebunden = false;
			}
			if (AqAktiverPS != nullptr)
			{
				ProxyInterface->SetPixelShader(nullptr);
				AqAktiverPS = nullptr;
			}
			return;
		}

		if (!AqVS3Gebunden)
		{
			ProxyInterface->SetVertexShader(AqVSDrei);
			AqVS3Gebunden = true;
		}
		if (AqAktiverPS != PS23)
		{
			ProxyInterface->SetPixelShader(PS23);
			AqAktiverPS = PS23;
		}

		if (AqKonstSchmutzig)
		{
			ProxyInterface->SetPixelShaderConstantF(8, &AqKonst[0][0], 22);
			if (AqMatrixSchmutzig)
			{
				AqPrelitKameraGueltig = false;
				if (AqVSMatrixReg >= 0 && AqVSMatrixReg <= 4)
					AqPrelitKameraGueltig = AqKameraAusMatrix(
						&AqVSK[AqVSMatrixReg][0], AqPrelitKamera);
				AqMatrixSchmutzig = false;
			}
			ProxyInterface->SetPixelShaderConstantF(0,
				AqPrelitKameraGueltig ? AqPrelitKamera : AqKamera, 1);
			ProxyInterface->SetPixelShaderConstantF(2, AqRelief, 1);
			{
				const float TF[4] = {
					((AqTFactor >> 16) & 255) / 255.0f,
					((AqTFactor >>  8) & 255) / 255.0f,
					( AqTFactor        & 255) / 255.0f,
					((AqTFactor >> 24) & 255) / 255.0f };
				ProxyInterface->SetPixelShaderConstantF(4, TF, 1);
				ProxyInterface->SetPixelShaderConstantF(5, AqKachel, 1);
			}
			AqKonstSchmutzig = false;
		}
		return;
	}

	// ------------------------------------------------------------------
	// Modus 1: MESSEN. Es wird nichts gesetzt und nichts geaendert --
	// das Bild muss bitgenau dem ohne Schalter entsprechen.
	// ------------------------------------------------------------------
	if (AqModus == 1)
	{
#ifndef D3D8TO9NOLOG
		std::string Schluessel;
		char Zeile[192];

		sprintf_s(Zeile, sizeof(Zeile), "Licht=%u Hemi=%d Additiv=%d |",
			static_cast<unsigned>(AqVSLichter), AqVSHemi ? 1 : 0, AqVSAdditiv ? 1 : 0);
		Schluessel += Zeile;

		for (DWORD s = 0; s < 8; ++s)
		{
			if (AqTSS[s][D3DTSS_COLOROP] == D3DTOP_DISABLE)
				break;

			sprintf_s(Zeile, sizeof(Zeile),
				" S%u[COp=%u CA1=0x%X CA2=0x%X AOp=%u AA1=0x%X AA2=0x%X Tex=%u Coord=%u Res=0x%X]",
				s,
				AqTSS[s][D3DTSS_COLOROP], AqTSS[s][D3DTSS_COLORARG1], AqTSS[s][D3DTSS_COLORARG2],
				AqTSS[s][D3DTSS_ALPHAOP], AqTSS[s][D3DTSS_ALPHAARG1], AqTSS[s][D3DTSS_ALPHAARG2],
				static_cast<unsigned>(AqTexTyp[s]), AqTSS[s][D3DTSS_TEXCOORDINDEX], AqTSS[s][D3DTSS_RESULTARG]);
			Schluessel += Zeile;
		}

		// Jede Kombination nur einmal protokollieren, sonst laeuft die
		// Platte voll: der Haken haengt an jedem einzelnen Zeichenaufruf.
		if (AqGesehen.insert(Schluessel).second)
			LOG << "> AquaNox-Messung: " << Schluessel << std::endl;
#endif
		return;
	}

	// ------------------------------------------------------------------
	// Der LICHT-Pfad: einen eigenen Pixelshader binden (579).
	// Rueckzug ist jetzt immer sicher: Original-VS + kein PS = echtes
	// Fixed Function. Die Notbehelfe F17a/b sind Geschichte.
	// ------------------------------------------------------------------
	AqSchluessel k;
	IDirect3DPixelShader9 *PS = nullptr;

	AqWaehleKartenquelle();
	if (AqBaueSchluessel(k))
		PS = AqHolePS(k);

	// Die ps_3_0-Familie braucht zwingend die vs_3_0-Zweitfassung --
	// ohne sie waere das Paar ungueltig (F12/F16). Dann lieber FF.
	if (PS != nullptr && PsFamilieDrei && AqVSDrei == nullptr)
		PS = nullptr;

	if (PS == nullptr)
	{
		if (AqVS3Gebunden && AqVSOriginal != nullptr)
		{
			ProxyInterface->SetVertexShader(AqVSOriginal);
			AqVS3Gebunden = false;
		}
		if (AqAktiverPS != nullptr)
		{
			ProxyInterface->SetPixelShader(nullptr);
			AqAktiverPS = nullptr;
		}
		return;
	}

	// Vertexfassung passend zum Pixelshader waehlen.
	if (PsFamilieDrei)
	{
		if (!AqVS3Gebunden)
		{
			ProxyInterface->SetVertexShader(AqVSDrei);
			AqVS3Gebunden = true;
		}
	}
	else
	{
		// ps_2_0-Modi (2/3/4/10..13) laufen mit dem ORIGINAL -- die
		// Zweitfassung wuerde t5..t7 liefern, die diese Shader nicht
		// deklarieren, und vs_3_0 + ps_2_0 waere ohnehin ungueltig.
		if (AqVS3Gebunden && AqVSOriginal != nullptr)
		{
			ProxyInterface->SetVertexShader(AqVSOriginal);
			AqVS3Gebunden = false;
		}
	}

	if (AqAktiverPS != PS)
	{
		ProxyInterface->SetPixelShader(PS);
		AqAktiverPS = PS;
	}

	// Die Beleuchtungskonstanten stehen im Objektraum und wechseln daher
	// mit jedem Objekt. vs c50..c71 -> ps c8..c29 (Versatz -42, 547.4).
	// Nur hochladen, wenn sich seither etwas geaendert hat -- sonst sind
	// es 352 Byte bei jedem einzelnen Zeichenaufruf.
	if (AqModus >= 4 && AqKonstSchmutzig)
	{
		ProxyInterface->SetPixelShaderConstantF(8, &AqKonst[0][0], 22);
		{
			// c4 = TEXTUREFACTOR als Farbe (589), ARGB -> RGBA.
			const float TF[4] = {
				((AqTFactor >> 16) & 255) / 255.0f,
				((AqTFactor >>  8) & 255) / 255.0f,
				( AqTFactor        & 255) / 255.0f,
				((AqTFactor >> 24) & 255) / 255.0f };
			ProxyInterface->SetPixelShaderConstantF(4, TF, 1);
		}

		// Ab Modus 5 wird zusaetzlich der Blickvektor gebraucht.
		// c0 = Kameraposition im Objektraum (aus vs c2).
		if (AqModus >= 5)
		{
			ProxyInterface->SetPixelShaderConstantF(0, AqKamera, 1);
			ProxyInterface->SetPixelShaderConstantF(2, AqRelief, 1);   // 572
		}

		AqKonstSchmutzig = false;
	}
}

// ======================================================================
// AquaNox: vs_1_1 -> vs_3_0 uebersetzen  (Handoff 561)
// ======================================================================
//
// *** DIE SEMANTIK RICHTET SICH NACH DER REGISTERNUMMER, NICHT NACH
// DEM INHALT. *** v1 ist formal BLENDWEIGHT, auch wenn die AquaNox-
// Shader dort die Normale fuehren. Die Tabelle ist dieselbe, die
// weiter oben die Vertexdeklaration uebersetzt (Zeile 1330 ff.) --
// wer hier nach dem Inhalt geht, baut einen Shader, der sauber
// assembliert und trotzdem falsch zeichnet (F12-Klasse).
static const char *AqVSEingangSemantik(unsigned Reg)
{
	switch (Reg)
	{
	case 0:  return "dcl_position";
	case 1:  return "dcl_blendweight";
	case 2:  return "dcl_blendindices";
	case 3:  return "dcl_normal";
	case 4:  return "dcl_psize";
	case 5:  return "dcl_color";
	case 6:  return "dcl_color1";
	// *** 15 UND 16, NICHT 16 UND 17. *** Massgeblich ist die
	// DeclAddressUsages-Tabelle des Wrappers (Zeile 1330 ff.):
	// Index 15 = POSITION1, Index 16 = NORMAL1. Der fruehere Versatz
	// um eins haette bei Verwendung dieser Register still die falsche
	// Semantik deklariert -- gemessen nutzen alle Shader nur v0..v4,
	// deshalb ist es nie aufgefallen.
	case 15: return "dcl_position1";
	case 16: return "dcl_normal1";
	default: break;
	}

	// v7..v14 sind TEXCOORD0..TEXCOORD7
	if (Reg >= 7 && Reg <= 14)
		return "dcl_texcoord";   // Index haengt der Aufrufer an

	return nullptr;
}

// Liefert true, wenn die Umschreibung vollstaendig gelungen ist.
// Bei false bleibt SourceCode unveraendert -- der Aufrufer bleibt
// dann bei vs_1_1, statt einen halb umgebauten Shader zu binden.
static bool AqNachVS3(std::string &SourceCode)
{
	const size_t VPos = SourceCode.find("vs_1_1");
	if (VPos == std::string::npos)
		return false;

	// ---- 1. Welche Eingaenge benutzt der Shader? ----
	bool Benutzt[18] = {};

	// *** DAS MUSTER MUSS EINE VARIABLE SEIN. *** Ein temporaeres
	// std::regex an einen regex_iterator zu geben ist seit C++14
	// ausdruecklich geloescht: der Iterator haelt nur einen Zeiger,
	// das Objekt waere sofort tot.
	const std::regex VMuster("\\bv([0-9]+)\\b");

	for (std::sregex_iterator it(SourceCode.begin(), SourceCode.end(), VMuster), Ende;
		it != Ende; ++it)
	{
		const unsigned long r = strtoul((*it)[1].str().c_str(), nullptr, 10);
		if (r < 18)
			Benutzt[r] = true;
		else
			return false;   // unbekanntes Eingaberegister: lieber gar nicht
	}

	// ---- 2. Ausgaenge auf o-Register umschreiben ----
	// *** LAENGERE NAMEN ZUERST. *** Sonst trifft "oT1" den Anfang von
	// "oT10" -- in vs_1_1 gibt es das zwar nicht, aber die Ersetzung
	// arbeitet auf Text, und der Fehler waere lautlos.
	static const struct { const char *Von; const char *Nach; const char *Dcl; } Aus[] = {
		{ "oPos", "o0",  "dcl_position o0" },
		{ "oD0",  "o1",  "dcl_color0 o1"   },
		{ "oD1",  "o2",  "dcl_color1 o2"   },
		{ "oT0",  "o3",  "dcl_texcoord0 o3" },
		{ "oT1",  "o4",  "dcl_texcoord1 o4" },
		{ "oT2",  "o5",  "dcl_texcoord2 o5" },
		{ "oT3",  "o6",  "dcl_texcoord3 o6" },
		{ "oT4",  "o7",  "dcl_texcoord4 o7" },
		{ "oT5",  "o8",  "dcl_texcoord5 o8" },
		{ "oT6",  "o9",  "dcl_texcoord6 o9" },
		{ "oT7",  "o10", "dcl_texcoord7 o10" },
	};

	// oFog und oPts haben in vs_3_0 keine Entsprechung, die sich so
	// einfach abbilden liesse. Gemessen kommen sie in den 456
	// Disassemblaten nicht vor -- taucht doch eines auf, wird der
	// Shader nicht umgestellt.
	if (SourceCode.find("oFog") != std::string::npos ||
		SourceCode.find("oPts") != std::string::npos)
		return false;

	std::string Kopf;
	for (unsigned i = 0; i < 18; ++i)
	{
		if (!Benutzt[i])
			continue;

		const char *Sem = AqVSEingangSemantik(i);
		if (Sem == nullptr)
			return false;

		char z[64];
		if (i >= 7 && i <= 14)
			sprintf_s(z, sizeof(z), "    dcl_texcoord%u v%u\n", i - 7, i);
		else
			sprintf_s(z, sizeof(z), "    %s v%u\n", Sem, i);
		Kopf += z;
	}

	for (unsigned i = 0; i < sizeof(Aus) / sizeof(Aus[0]); ++i)
	{
		if (SourceCode.find(Aus[i].Von) == std::string::npos)
			continue;

		Kopf += "    ";
		Kopf += Aus[i].Dcl;
		Kopf += "\n";

		SourceCode = std::regex_replace(SourceCode,
			std::regex(std::string("\\b") + Aus[i].Von + "\\b"), Aus[i].Nach);
	}

	// ---- 3. Version setzen und die Deklarationen einfuegen ----
	//
	// *** DAS DISASSEMBLAT BRINGT SCHON dcl-ZEILEN MIT (F14). *** Wer
	// seine eigenen einfach dazulegt, bekommt
	//     error X5633: Declaration for register v0 overlaps previous
	//                  declaration
	// und das Spiel bricht beim Start ab ("Unknown D3D Error"). Die
	// vorhandenen muessen zuerst weg -- unsere Tabelle ist die
	// verbindliche Quelle, nicht das, was der Disassembler ausgibt.
	SourceCode = std::regex_replace(SourceCode,
		std::regex("[ \\t]*dcl[_a-z0-9]*[ \\t]+[ovr][0-9]+[^\\n]*\\n"), "");

	// *** SKALARE ANWEISUNGEN BRAUCHEN AB vs_2_0 EINEN REPLIZIERENDEN
	// SWIZZLE (F15). *** In vs_1_1 ist "rsq r1, r1" erlaubt, danach
	// nicht mehr:
	//     error X5795: rsq requires replicate swizzle for source
	//                  parameter(s)
	// Betroffen waren 9 der 456 Shader. Fehlt der Swizzle, wird .x
	// ergaenzt -- dieselbe Komponente, die die Hardware in vs_1_1
	// ohnehin genommen haette.
	SourceCode = std::regex_replace(SourceCode,
		std::regex("\\b(rsq|rcp|exp|log|expp|logp)([ \\t]+[or][0-9]+[^,]*,[ \\t]*-?[cvra][0-9]+)(?![\\.0-9])"),
		"$1$2.x /* AquaNox: replicate swizzle */");

	SourceCode.replace(SourceCode.find("vs_1_1"), 6, "vs_3_0");

	// VPos ist nach dem Entfernen der dcl-Zeilen ueberholt: neu suchen.
	const size_t ZeilenEnde = SourceCode.find('\n', SourceCode.find("vs_3_0"));
	if (ZeilenEnde == std::string::npos)
		return false;

	SourceCode.insert(ZeilenEnde + 1, Kopf);
	return true;
}

// *** DIE KARTENQUELLE WAEHLEN (591). *** Normalfall: Stufe 0 traegt
// die Objekttextur, ihre Karten haengen seit SetTexture(0) auf s8/s9.
// Lightmap-zuerst-Zuege (590, Parabolantennen): Stufe 0 ist die
// LIGHTMAP (seit 591 ohne Karten), die Objekttextur liegt auf
// Stufe 1 -- dann kommen s8/s9 von dort, und der Generator tastet
// mit t1 ab (KartenStufe im Schluessel). Vor JEDEM Schluesselbau
// aufrufen; bindet nur um, wenn noetig.
void Direct3DDevice8::AqWaehleKartenquelle()
{
	unsigned char Neu = 0;
	if (!AqNormalAktiv && !AqOrmAktiv
		&& AqStufe1Tex != nullptr && AqTexTyp[1] == 1
		// 599: die KETTE muss Stufe 1 auch benutzen -- eine nur
		// gebundene, aber abgeschaltete Stufe (COLOROP=DISABLE)
		// erzeugte texld t1 ohne dcl v3 -> X5984, VERWORFEN.
		&& AqTSS[1][D3DTSS_COLOROP] != D3DTOP_DISABLE
		&& (AqStufe1Tex->AqNormal != nullptr || AqStufe1Tex->AqOrm != nullptr))
		Neu = 1;

	if (Neu == AqKartenStufe && Neu == 0)
		return;   // Normalfall, nichts umzubinden

	if (Neu == 1 && AqNKStufe >= 2)
	{
		// Karten der Stufe-1-Textur binden. Kein Zurueckbinden im
		// 0-Fall noetig: SetTexture(0) bindet dort ohnehin bei jedem
		// Texturwechsel neu.
		ProxyInterface->SetTexture(8, AqStufe1Tex->AqNormal);
		ProxyInterface->SetTexture(9, AqStufe1Tex->AqOrm);
	}
	AqKartenStufe = Neu;
}

// *** DIE KAMERA AUS DER WVP-MATRIX (596). *** Der Augpunkt ist der
// einzige Punkt, den die Matrix auf w = 0 wirft; sein Bild ist
// (0,0,z,0) -- also loest M * C = (0,0,1,0) die Aufgabe, und der
// Massstab kuerzt sich beim homogenen Teilen heraus. Cramer entlang
// der DRITTEN Zeile: C_i = Kofaktor(2,i) / det, det = Entwicklung
// derselben Kofaktoren. m ist zeilenweise (m4x4: oPos.i = c_i . v).
static bool AqKameraAusMatrix(const float m[16], float aus[4])
{
	const double a = m[0],  b = m[1],  c = m[2],  d = m[3];
	const double e = m[4],  f = m[5],  g = m[6],  h = m[7];
	const double i = m[12], j = m[13], k = m[14], l = m[15];   // Zeile 3 (Index 3)

	// 3x3-Minoren ohne Zeile 2, jeweils ohne Spalte 0..3 (Zeilen 0,1,3).
	const double M0 = b * (g * l - h * k) - c * (f * l - h * j) + d * (f * k - g * j);
	const double M1 = a * (g * l - h * k) - c * (e * l - h * i) + d * (e * k - g * i);
	const double M2 = a * (f * l - h * j) - b * (e * l - h * i) + d * (e * j - f * i);
	const double M3 = a * (f * k - g * j) - b * (e * k - g * i) + c * (e * j - f * i);

	const double C0 = +M0, C1 = -M1, C2 = +M2, C3 = -M3;   // (-1)^(2+i)
	const double det = m[8] * C0 + m[9] * C1 + m[10] * C2 + m[11] * C3;
	if (det > -1e-20 && det < 1e-20)
		return false;

	const double x0 = C0 / det, x1 = C1 / det, x2 = C2 / det, x3 = C3 / det;
	if (x3 > -1e-12 && x3 < 1e-12)
		return false;   // Kamera im Unendlichen (orthografisch?)

	aus[0] = static_cast<float>(x0 / x3);
	aus[1] = static_cast<float>(x1 / x3);
	aus[2] = static_cast<float>(x2 / x3);
	aus[3] = 1.0f;
	return true;
}

// Welches Register traegt das Argument einer Texturstufe?
static const char *AqArgName(unsigned Arg, unsigned Stufe)
{
	switch (Arg)
	{
	case D3DTA_DIFFUSE: return "r2";                        // unser Diffusersatz
	case D3DTA_CURRENT: return (Stufe == 0) ? "r2" : "r3";  // Stufe 0: CURRENT == DIFFUSE
	case D3DTA_TEXTURE: return "r6";
	// 589: der geschattete TEXTUREFACTOR liegt in c4 (Upload neben
	// c2, schmutzig bei jeder Aenderung). Die Parabolantenne mischt
	// ihre Grundtextur mit TFACTOR -- ohne diesen Fall fiel ihre
	// ganze Kette auf Fixed Function zurueck (F25-Klasse).
	case D3DTA_TFACTOR: return "c4";
	default:            return nullptr;
	}
}

// Weg-A-Diagnose (567.2): NotA ist der einzige Notbehelf-Weg, der
// wirklich feuert (3.594 von 196.000). Diese Funktion protokolliert
// je einzigartiger abgelehnter Kette EINMAL, woran sie gescheitert
// ist -- erst mit dieser Liste darf der Generator erweitert werden.
void Direct3DDevice8::AqLogAblehnung(const char *Grund, DWORD Stufe) const
{
#ifndef D3D8TO9NOLOG
	char Zeile[256];
	std::string Text;

	sprintf_s(Zeile, sizeof(Zeile), "%s (Stufe %lu) |", Grund, Stufe);
	Text += Zeile;

	for (DWORD s = 0; s < 4; ++s)
	{
		if (AqTSS[s][D3DTSS_COLOROP] == D3DTOP_DISABLE)
			break;
		sprintf_s(Zeile, sizeof(Zeile),
			" S%lu[COp=%lu CA1=0x%lX CA2=0x%lX AOp=%lu AA1=0x%lX AA2=0x%lX Tex=%u Coord=%lu Res=0x%lX TTF=%lu]",
			s,
			AqTSS[s][D3DTSS_COLOROP], AqTSS[s][D3DTSS_COLORARG1], AqTSS[s][D3DTSS_COLORARG2],
			AqTSS[s][D3DTSS_ALPHAOP], AqTSS[s][D3DTSS_ALPHAARG1], AqTSS[s][D3DTSS_ALPHAARG2],
			static_cast<unsigned>(AqTexTyp[s]), AqTSS[s][D3DTSS_TEXCOORDINDEX],
			AqTSS[s][D3DTSS_RESULTARG], AqTSS[s][D3DTSS_TEXTURETRANSFORMFLAGS]);
		Text += Zeile;
	}

	if (AqWarum.insert(Text).second)
		LOG << "> AquaNox-ABGELEHNT: " << Text << std::endl;
#else
	UNREFERENCED_PARAMETER(Grund);
	UNREFERENCED_PARAMETER(Stufe);
#endif
}

bool Direct3DDevice8::AqBaueSchluessel(AqSchluessel &k) const
{
	memset(&k, 0, sizeof(k));

	k.Modus = static_cast<unsigned char>(AqModus);
	// *** NUR IN DER ps_3_0-FAMILIE (Modus 5/14/15/16). *** Der TBN-Block
	// braucht dsx/dsy, und die gibt es in ps_2_0 nicht -- ein gesetztes
	// Bit in Modus 10..13 wuerde jeden Shader mit Karte unassemblierbar
	// machen und ueber den Rueckfall bis VERWORFEN treiben.
	// Kartenquelle (591): AqWaehleKartenquelle() lief unmittelbar vor
	// diesem Aufruf und hat AqKartenStufe gesetzt sowie s8/s9 passend
	// gebunden. Bei KartenStufe 1 zaehlen die Karten der STUFE-1-Textur.
	const bool KartenNormal = (AqKartenStufe == 1)
		? (AqStufe1Tex != nullptr && AqStufe1Tex->AqNormal != nullptr)
		: AqNormalAktiv;
	const bool KartenOrm = (AqKartenStufe == 1)
		? (AqStufe1Tex != nullptr && AqStufe1Tex->AqOrm != nullptr)
		: AqOrmAktiv;
	k.KartenStufe = AqKartenStufe;
	k.NormalKarte = (KartenNormal && (AqModus == 5 || AqModus >= 14)) ? 1 : 0;
	k.OrmKarte    = (KartenOrm    && (AqModus == 5 || AqModus >= 14)) ? 1 : 0;

	// *** ADDITIV GEMISCHTE EFFEKTE SIND SELBSTLEUCHTEND (574). ***
	// Muendungsfeuer, Lichtkegel, Explosionen: Dest = ONE. Sie duerfen
	// weder Glanz noch Relief bekommen -- genau diese Sprites waren
	// die "hellblau angestrahlten Plankton"-Beschwerden von gestern
	// und das violett leuchtende Muendungsfeuer in der Modus-16-Probe.
	k.Effekt = (AqBlendAn != 0 && AqDestBlend == D3DBLEND_ONE) ? 1 : 0;
	if (k.Effekt)
	{
		k.NormalKarte = 0;
		k.OrmKarte = 0;
	}
	k.Lichter = AqVSLichter;
	k.Hemi = AqVSHemi ? 1 : 0;
	k.Additiv = AqVSAdditiv ? 1 : 0;

	// Nur wenn der Vertexshader oD1 wirklich schreibt UND das Spiel den
	// Glanz eingeschaltet hat. Sonst waere v1 uninitialisiert und der
	// Zuschlag faerbte nach Muell. In Modus 3 (Normalenprobe) stoert er.
	k.Glanz = (AqVSGlanz && AqSpecular != 0 && AqModus != 3) ? 1 : 0;

	for (DWORD s = 0; s < 4; ++s)
	{
		const DWORD COp = AqTSS[s][D3DTSS_COLOROP];
		if (COp == D3DTOP_DISABLE)
			break;

		// *** ENGE WHITELIST. *** Alles, was hier nicht durchkommt, wird
		// NICHT angefasst -- lieber gar keine Wirkung als ein stilles
		// falsches Bild (547.7, Falle C). Bei aktivem vs_3_0 wird jede
		// Ablehnung einmal protokolliert (567.2): dort ist sie nicht
		// mehr harmlos, sondern schickt das Objekt in den Notbehelf.
		if (AqTSS[s][D3DTSS_TEXCOORDINDEX] != s)
		{
			if (AqVS3Aktiv) AqLogAblehnung("TexCoordIndex", s);
			return false;
		}
		if (AqTSS[s][D3DTSS_RESULTARG] != D3DTA_CURRENT)
		{
			if (AqVS3Aktiv) AqLogAblehnung("ResultArg", s);
			return false;
		}

		// Eine Texturmatrix, besonders D3DTTFF_PROJECTED, bekaeme texld
		// nicht hin -- die Division macht sonst der Rasterizer. Gemessen
		// kommt das nicht vor; der Einzeiler schliesst die Klasse trotzdem.
		if (AqTSS[s][D3DTSS_TEXTURETRANSFORMFLAGS] != D3DTTFF_DISABLE)
		{
			if (AqVS3Aktiv) AqLogAblehnung("TexturTransform", s);
			return false;
		}

		const DWORD CA1 = AqTSS[s][D3DTSS_COLORARG1], CA2 = AqTSS[s][D3DTSS_COLORARG2];
		const DWORD AOp = AqTSS[s][D3DTSS_ALPHAOP];
		const DWORD AA1 = AqTSS[s][D3DTSS_ALPHAARG1], AA2 = AqTSS[s][D3DTSS_ALPHAARG2];

		// Nur DIFFUSE(0), CURRENT(1), TEXTURE(2), TFACTOR(3, seit 589)
		// und keine Modifikatoren (COMPLEMENT 0x10, ALPHAREPLICATE
		// 0x20). SPECULAR(4) bleibt draussen.
		if (CA1 > 3 || CA2 > 3 || AA1 > 3 || AA2 > 3)
		{
			if (AqVS3Aktiv) AqLogAblehnung("Argument", s);
			return false;
		}

		// Gemessene Operationen (547.9). MODULATEALPHA_ADDCOLOR ist die
		// haeufigste ueberhaupt und stand im Entwurf nicht drin.
		if (COp != D3DTOP_SELECTARG1 && COp != D3DTOP_SELECTARG2 &&
			COp != D3DTOP_MODULATE && COp != D3DTOP_MODULATE2X &&
			COp != D3DTOP_ADD && COp != D3DTOP_BLENDTEXTUREALPHA &&
			COp != D3DTOP_MODULATEALPHA_ADDCOLOR)
		{
			if (AqVS3Aktiv) AqLogAblehnung("Farboperation", s);
			return false;
		}

		if (AOp != D3DTOP_SELECTARG1 && AOp != D3DTOP_SELECTARG2 &&
			AOp != D3DTOP_MODULATE)
		{
			if (AqVS3Aktiv) AqLogAblehnung("Alphaoperation", s);
			return false;
		}

		// Braucht die Stufe eine Textur, gibt es zwei Faelle:
		//   Tex == 2 (Wuerfel/Volumen): koennen wir nicht -- ablehnen.
		//   Tex == 0 (gar keine): *** ABSCHNEIDEN, NICHT WEISS (F30). ***
		//     Die erste F28-Fassung ersetzte die fehlende Textur durch
		//     Weiss -- gestuetzt auf die NIE GEMESSENE Behauptung
		//     "Fixed Function liefert implizit Weiss". Das klassische
		//     FF-Verhalten ist ein anderes: die Stufe UND ALLE
		//     FOLGENDEN schalten sich ab. Der Weiss-Ersatz rechnete
		//     also Stufen, die FF nie rechnet -- in JEDEM Modus, auch
		//     in den ps_2_0-Gegenproben. Genau seit F28 verschwanden
		//     die Pflanzen ueberall. Jetzt endet der Nachbau exakt
		//     dort, wo auch FF endet.
		const bool BrauchtTextur =
			CA1 == D3DTA_TEXTURE || CA2 == D3DTA_TEXTURE ||
			AA1 == D3DTA_TEXTURE || AA2 == D3DTA_TEXTURE ||
			COp == D3DTOP_BLENDTEXTUREALPHA;

		if (BrauchtTextur && AqTexTyp[s] == 2)
		{
			if (AqVS3Aktiv) AqLogAblehnung("TexturNicht2D", s);
			return false;
		}

		if (BrauchtTextur && AqTexTyp[s] == 0)
		{
			// *** OHNE vs_3_0: ABLEHNEN WIE IMMER. *** Dann uebernimmt
			// echtes Fixed Function -- der seit Monaten bewaehrte
			// Zustand. Nur unter vs_3_0, wo es kein FF mehr gibt, wird
			// abgeschnitten: die Kaskade endet hier, wie es die
			// klassische FF-Regel beschreibt. Auch das ist ungemessen
			// -- aber schlimmstenfalls falsch AUSSEHEND statt
			// unsichtbar, und nur in dem Zweig, der sonst gar nichts
			// haette.
			if (!AqVS3Aktiv)
				return false;
			break;
		}

		k.Op[s][0] = static_cast<unsigned char>(COp);
		k.Op[s][1] = static_cast<unsigned char>(CA1);
		k.Op[s][2] = static_cast<unsigned char>(CA2);
		k.Op[s][3] = static_cast<unsigned char>(AOp);
		k.Op[s][4] = static_cast<unsigned char>(AA1);
		k.Op[s][5] = static_cast<unsigned char>(AA2);
		k.Tex[s] = AqTexTyp[s];
		k.Stufen = static_cast<unsigned char>(s + 1);
	}

	// Eine aktive Stufe ab 4 koennen wir nicht bedienen (oT5..oT7 belegt).
	if (k.Stufen == 0 || AqTSS[4][D3DTSS_COLOROP] != D3DTOP_DISABLE)
	{
		if (AqVS3Aktiv) AqLogAblehnung(k.Stufen == 0 ? "KeineStufe" : "Stufe4Aktiv", 4);
		return false;
	}

	return true;
}

std::string Direct3DDevice8::AqBaueQuelltext(const AqSchluessel &k) const
{
	std::string Rumpf;

	// *** 256 WAREN ZU WENIG UND HABEN DAS SPIEL GETOETET (F9). *** Der
	// Punktlichtblock weiter unten ist am Stueck 295 Zeichen lang.
	// sprintf_s laesst so etwas nicht durchgehen: es ruft den
	// Invalid-Parameter-Handler, und der beendet den Prozess auf der
	// Stelle mit 0xC0000409 (STATUS_STACK_BUFFER_OVERRUN) aus
	// ucrtbase.dll -- ohne Ausnahme, ohne Logzeile, ohne Rueckgabewert,
	// den man pruefen koennte.
	//
	// Der Fehler blieb verborgen, weil Modus 2 und 3 gar keine
	// Punktlichter rechnen und die Vorabpruefung den Generator in
	// Python NACHBAUT -- dort gibt es keine Puffergrenzen.
	// *** WER HIER EINE ZEILE ANFUEGT, RECHNET DIE LAENGE NACH:
	// scratchpad\puffer.py misst alle sprintf_s dieser Funktion. ***
	char z[512];

	// ============ 1. Der Diffusersatz nach r2 ============
	if (k.Modus == 2)
	{
		// NACHBAU-REFERENZ: das unveraenderte interpolierte oD0. Der
		// Pixelshader ist dann eine reine Nachbildung der Texturstufen --
		// das Bild MUSS bitgleich sein.
		Rumpf += "    mov r2, v0\n";
	}
	else if (k.Modus == 3)
	{
		// INTERPOLATORPROBE: die Normale als Farbe.
		Rumpf += "    dp3 r0.w, t5, t5\n"
		         "    max r0.w, r0.w, c31.x\n"
		         "    rsq r0.w, r0.w\n"
		         "    mul r0.xyz, t5, r0.w\n"
		         "    mad r2.xyz, r0, c31.y, c31.y\n";
	}
	else
	{
		// *** DIE EIGENTLICHE RECHNUNG, PRO BILDPUNKT. ***
		// Der Unterschied zum Vertexshader ist diese Normierung: sie
		// geschieht nach der Interpolation, nicht davor.
		Rumpf += "    dp3 r0.w, t5, t5\n"
		         "    max r0.w, r0.w, c31.x\n"
		         "    rsq r0.w, r0.w\n"
		         "    mul r0.xyz, t5, r0.w\n";

		// *** DIE NORMALENKARTE ALS STOERUNG (566.4). ***
		// Sie ist im TANGENTENRAUM kodiert, unsere Normale liegt im
		// OBJEKTRAUM. Ohne Tangente und Bitangente laesst sich das
		// nicht sauber umrechnen -- hier werden daher nur die
		// x/y-Anteile als Stoerung addiert und neu normalisiert.
		//
		// *** DAS IST EINE NAEHERUNG, KEINE KORREKTE ABBILDUNG. ***
		// Die Richtung der Stoerung haengt an der Ausrichtung der
		// Textur auf dem Modell und stimmt daher nicht ueberall.
		// Sauber waere, die Tangenten per ddx/ddy zu rekonstruieren --
		// in ps_3_0 moeglich, rund zehn Anweisungen. Erst pruefen, ob
		// der Effekt ueberhaupt traegt, dann die teure Fassung bauen.
		//
		// ---- r21: Ersatz-UVs fuer ALLE Kartenzugriffe (607b/643) ----
		// MUSS vor dem NormalKarte-Block stehen: texld r11, r21 liest
		// r21 -- bis 642 stand die Definition erst im Blickvektor-
		// Block darunter (latenter Fehler, las undefiniert). Hier ist
		// r0 noch die UNGESTOERTE Normale und r1-r9 sind frei (der
		// TBN-Block ueberschreibt sie gleich selbst).
		if (k.Modus == 5 || k.Modus >= 14)
		{
			// UV aus der WELTPOSITION (607b): die Level-UVs sind auf
			// grossen Flaechen beliebig gestaucht (16x Kachelung war
			// immer noch EINE Riesenplatte) -- Positions-UVs machen
			// die Plattengroesse ABSOLUT (Meter), auf jeder Flaeche
			// gleich. Schraege Summen statt reinem xy, damit keine
			// Flaechenausrichtung degeneriert. c5.x = Wiederholungen
			// je Welteinheit (AQUANOX_KACHEL, z. B. 0.125 = alle 8 m).
			if (AqKachelAn)
				Rumpf += "    mov r21, t6\n"
				         "    add r21.x, r21.x, r21.z\n"
				         "    add r21.y, r21.y, -r21.z\n"
				         "    mul r21, r21, c5.x\n"
				         // 620: feste Mip-Stufe 0 fuer texldl -- die
				         // dsx/dsy grosser UV-Werte entstehen durch
				         // Ausloeschung als Muell, die Mip-Wahl sprang
				         // wild (Rauschen im Leveltest 618).
				         "    mov r21.w, c31.x\n";
			// *** PARALLAX (643): r21 = blickverschobene UVs. *** Der
			// staerkste Tiefenreiz: Fugen und Nieten verschieben sich
			// beim Blickwechsel gegeneinander -- genau das, was
			// Normal-Mapping prinzipiell nicht kann ("wirkt flach").
			// uv' = uv + V_tangent.xy * (h-0.5) * c5.y; Tangenten wie
			// im TBN-Block (604-Vorskalierung!), Hoehe im R-Kanal der
			// ORM-Karte (bis 642 ungenutzt 1.0). Blick lokal
			// vorberechnet -- der r7-Block kommt erst spaeter und
			// rechnet dasselbe nochmal (harmlos).
			else if (AqParallaxAn && k.OrmKarte)
			{
				Rumpf += "    add r7.xyz, c0, -t6\n"
				         "    dp3 r7.w, r7, r7\n"
				         "    max r7.w, r7.w, c31.x\n"
				         "    rsq r7.w, r7.w\n"
				         "    mul r7.xyz, r7, r7.w\n"
				         "    dsx r1, t6\n"
				         "    dsy r2, t6\n";
				sprintf_s(z, sizeof(z),
					"    dsx r3, t%u\n"
					"    dsy r4, t%u\n",
					static_cast<unsigned>(k.KartenStufe),
					static_cast<unsigned>(k.KartenStufe));
				Rumpf += z;
				Rumpf += "    mul r5.xyz, r2.yzxw, r0.zxyw\n"
				         "    mad r5.xyz, -r2.zxyw, r0.yzxw, r5\n"
				         "    mul r6.xyz, r0.yzxw, r1.zxyw\n"
				         "    mad r6.xyz, -r0.zxyw, r1.yzxw, r6\n"
				         "    mul r8.xyz, r5, r3.x\n"
				         "    mad r8.xyz, r6, r4.x, r8\n"
				         "    mul r9.xyz, r5, r3.y\n"
				         "    mad r9.xyz, r6, r4.y, r9\n"
				         "    mul r8.xyz, r8, c1.z\n"
				         "    mul r9.xyz, r9, c1.z\n"
				         "    dp3 r5.w, r8, r8\n"
				         "    dp3 r6.w, r9, r9\n"
				         "    max r5.w, r5.w, r6.w\n"
				         "    max r5.w, r5.w, c31.x\n"
				         "    rsq r5.w, r5.w\n"
				         "    mul r8.xyz, r8, r5.w\n"
				         "    mul r9.xyz, r9, r5.w\n";
				sprintf_s(z, sizeof(z), "    texld r21, t%u, s9\n",
					static_cast<unsigned>(k.KartenStufe));
				Rumpf += z;
				Rumpf += "    add r21.w, r21.x, -c31.y\n"
				         "    mul r21.w, r21.w, c5.y\n"
				         "    dp3 r21.x, r7, r8\n"
				         "    dp3 r21.y, r7, r9\n"
				         "    mul r21.xy, r21, r21.w\n";
				sprintf_s(z, sizeof(z), "    add r21.xy, r21, t%u\n",
					static_cast<unsigned>(k.KartenStufe));
				Rumpf += z;
			}
		}

		// Gelesen wird nur, wenn auch eine Karte gebunden ist
		// (k.NormalKarte). Sonst laese der Shader eine unbelegte
		// Samplerstufe, und das Ergebnis waere undefiniert.
		if (k.NormalKarte)
		{
			// Kartenquelle (591): abgetastet wird mit den UVs der
			// Stufe, deren Textur die Karten lieferte -- t0 im
			// Normalfall, t1 bei lightmap-zuerst-Zuegen; gekachelt
			// via r21 (607).
			if (AqKachelAn)
				Rumpf += "    texldl r11, r21, s8\n";
			// Parallax (643): verschobene UVs, aber normale Mip-Wahl
			// (texld) -- die Verschiebung ist glatt, die Ableitungen
			// taugen. Gate exakt wie die r21-Definition oben.
			else if (AqParallaxAn && k.OrmKarte
				&& (k.Modus == 5 || k.Modus >= 14))
				Rumpf += "    texld r11, r21, s8\n";
			else
			{
				sprintf_s(z, sizeof(z), "    texld r11, t%u, s8\n",
					static_cast<unsigned>(k.KartenStufe));
				Rumpf += z;
			}

			// *** MODUS 14: DIE KARTE DIREKT ALS BILDFARBE. ***
			// Der schaerfste Nachweis, den es gibt -- er beantwortet
			// genau eine Frage: KOMMT DIE NORMALENKARTE IM SHADER AN?
			// Ist das Bild violett-blau gemustert, dann ja. Ist es
			// unveraendert, dann nein, und jede Feinabstimmung an der
			// Staerke waere vergeudet gewesen.
			// Dasselbe Vorgehen wie bei Modus 11 (uebertriebener
			// Glanz), das damals F13 aufgedeckt hat.
			// *** F27: DIE ERSTE FASSUNG DER MODUS-14-PROBE STAND HIER
			// ("mov r2, r11") -- und der Hemisphaerenblock direkt
			// darunter beginnt mit "mov r2, c9". Die Probe wurde
			// kommentarlos ueberschrieben, das Bild blieb unveraendert,
			// und der Schluss "die Karte kommt nicht an" war falsch.
			// Die Probe steht jetzt GANZ AM ENDE, vor mov oC0. ***

			// In Modus 14 bleibt r11 unangetastet: die Probe am Ende
			// soll die ROHE Karte zeigen, nicht die verschobene.
			if (k.Modus != 14)
			{
				// *** ECHTE TANGENTEN AUS BILDSCHIRMABLEITUNGEN (570). ***
				// Die fruehere Fassung addierte die Kartenwerte als
				// blosse Stoerung auf x/y der Objektraumnormale -- die
				// Richtung stimmte nur zufaellig. Jetzt wird der
				// Tangentenrahmen im Pixel rekonstruiert (Schueler-
				// Verfahren): aus den Ableitungen von Ort (t6) und
				// Texturkoordinate (t0) entsteht T/B, die Karte wird
				// damit vom Tangenten- in den Objektraum gedreht.
				// dsx/dsy gibt es erst ab ps_3_0 -- einer der Gruende,
				// warum dieser Weg unter ps_2_0 nie offenstand.
				//
				// Kreuzprodukt: cross(a,b) = a.yzx*b.zxy - a.zxy*b.yzx
				Rumpf += "    dsx r1, t6\n"                       // dP/dx
				         "    dsy r2, t6\n";                      // dP/dy
				// dUV aus der KARTEN-Stufe (591), nicht stur aus t0.
				sprintf_s(z, sizeof(z),
					"    dsx r3, t%u\n"
					"    dsy r4, t%u\n",
					static_cast<unsigned>(k.KartenStufe),
					static_cast<unsigned>(k.KartenStufe));
				Rumpf += z;
				Rumpf += "    mul r5.xyz, r2.yzxw, r0.zxyw\n"     // dp2perp = cross(dP/dy, N)
				         "    mad r5.xyz, -r2.zxyw, r0.yzxw, r5\n"
				         "    mul r6.xyz, r0.yzxw, r1.zxyw\n"     // dp1perp = cross(N, dP/dx)
				         "    mad r6.xyz, -r0.zxyw, r1.yzxw, r6\n"
				         "    mul r8.xyz, r5, r3.x\n"             // T
				         "    mad r8.xyz, r6, r4.x, r8\n"
				         "    mul r9.xyz, r5, r3.y\n"             // B
				         "    mad r9.xyz, r6, r4.y, r9\n"
				         // Vorskalierung (604): hebt T/B bei Nahsicht ueber
				         // die 1e-6-Schwelle; kuerzt sich in der Normierung.
				         "    mul r8.xyz, r8, c1.z\n"
				         "    mul r9.xyz, r9, c1.z\n"
				         "    dp3 r5.w, r8, r8\n"                 // 1/max(|T|,|B|)
				         "    dp3 r6.w, r9, r9\n"
				         "    max r5.w, r5.w, r6.w\n"
				         "    max r5.w, r5.w, c31.x\n"
				         "    rsq r5.w, r5.w\n"
				         "    mad r11.xyz, r11, c31.z, -c31.w\n"; // Karte -> -1..1

				// *** RELIEFSTAERKE (572). *** Modus 15 bleibt die fixe
				// 24-fach-Probe; alle anderen bekommen c2.x, per
				// AQUANOX_RELIEF einstellbar (Vorgabe 3.0). Befund aus
				// Modus 15: selbst 24-fach wirkt nach der
				// Renormalisierung nur "kraeftig plastisch" -- die
				// Neigung saettigt bei 90 Grad. 1x war darum praktisch
				// unsichtbar.
				if (k.Modus == 15)
					Rumpf += "    mul r11.xy, r11, c30.x\n";   // fix 24
				else
					Rumpf += "    mul r11.xy, r11, c2.x\n";

				// Wandlicht (593) braucht die UNGESTOERTE Normale als
				// Vergleich -- vor der Stoerung nach r20 retten.
				// Auch fuer die Faktorprobe Modus 21 (598) und den
				// Detailpass Modus 23 (614).
				if (k.Modus == 19 || k.Modus == 21 || k.Modus == 23)
					Rumpf += "    mov r20.xyz, r0\n";
				Rumpf += "    mul r8.xyz, r8, r5.w\n"
				         "    mul r9.xyz, r9, r5.w\n"
				         "    mul r8.xyz, r8, r11.x\n"            // T*kx + B*ky + N*kz
				         "    mad r8.xyz, r9, r11.y, r8\n"
				         "    mad r0.xyz, r0, r11.z, r8\n"
				         "    dp3 r0.w, r0, r0\n"                 // renormalisieren
				         "    max r0.w, r0.w, c31.x\n"
				         "    rsq r0.w, r0.w\n"
				         "    mul r0.xyz, r0, r0.w\n";
			}
		}

		if (k.Hemi)
		{
			// c51 + max(N.L,0)*c53 + max(-N.L,0)*c54
			//
			// *** KEINE OBERE KLEMMUNG. *** Das Original klemmt den
			// Hemisphaerenfaktor nur nach unten (max ohne min), waehrend
			// es beim Punktlicht sehr wohl beidseitig klemmt -- die
			// Asymmetrie ist Absicht. Ein mov_sat zoege hier eine
			// Obergrenze ein, die es nie gab, und machte zugewandte
			// Flaechen zu dunkel (F4).
			// Keine Negation auf einem Konstantenregister (547.7)!
			Rumpf += "    dp3 r1.w, r0, c13\n"
			         "    max r1.x, r1.w, c31.x\n"
			         "    max r1.y, -r1.w, c31.x\n"
			         "    mov r2, c9\n"
			         "    mad r2.xyz, c11, r1.x, r2\n"
			         "    mad r2.xyz, c12, r1.y, r2\n";
		}
		else if (k.Modus == 19 || k.Modus == 23
			|| ((k.Modus == 18 || k.Modus == 20 || k.Modus == 21) && k.Lichter == 0))
		{
			// *** MODUS 19 (579): PRELIT-UEBERNAHME. *** Die Vertexfarbe
			// IST bereits das fertige Licht dieser Objekte -- sie wird
			// unveraendert uebernommen, wie es Fixed Function taete.
			// Relief und Spiegelung kommen aus den Bloecken darunter.
			// *** AUCH DIE PROBEN 18/20 OHNE LICHT (584b): *** die
			// Prelit-Weiche reicht sie durch (Hemi=Lichter=0), und ohne
			// diese Zeile fielen Prelit-Waende in den 0-Zweig darunter:
			// Waende OHNE ORM-Karte rendern dann SCHWARZ, und Schwarz
			// ist in der Metallprobe nicht von "Metall = 0" zu
			// unterscheiden -- eine Falsche-Schluss-Falle nach F27.
			// (k.Hemi == 0 ist hier schon durch das else gesichert.)
			Rumpf += "    mov r2, v0\n";

			// Das Wandlicht (593) stand zuerst HIER auf r2 -- WIRKUNGSLOS:
			// die Wand-Ketten benutzen gar kein DIFFUSE (Farbe = TFACTOR
			// mal Textur mal Lightmap), r2 erreicht das Bild nie (594b).
			// Es steht jetzt am ENDE der Texturkette auf r3.
		}
		else
		{
			// Vorbeleuchtete Shader haben kein Ambient: bei 0 anfangen.
			Rumpf += "    mov r2, c31.x\n";
		}

		// ---- Modus 10: Blickvektor fuer den Glanz in ps_2_0 ----
		// Gleiche Rechnung wie in Modus 5, aber im Profil, das mit
		// vs_1_1 zusammenarbeitet (F12).
		// *** MODUS 5 GEHOERT HIER MIT HEREIN, NICHT WEITER UNTEN. ***
		// Der Hemisphaerenglanz gleich darunter liest r7. Stuende der
		// Blickvektor fuer Modus 5 erst nach ihm, laese er ein
		// undefiniertes Register -- ohne dass irgendetwas warnt.
		if (k.Modus >= 10 || k.Modus == 5 || k.Modus >= 14)
		{
			Rumpf += "    add r7.xyz, c0, -t6\n"
			         "    dp3 r7.w, r7, r7\n"
			         "    max r7.w, r7.w, c31.x\n"
			         "    rsq r7.w, r7.w\n"
			         "    mul r7.xyz, r7, r7.w\n"
			         "    mov r9, c31.x\n";

			// Die r21-Definition (Kachel 607b / Parallax 643) stand
			// bis 642 HIER -- ZU SPAET: texld r11, r21 im NormalKarte-
			// Block oben las r21 VOR der Definition (latenter 607er-
			// Fehler, 643 entdeckt). Sie steht jetzt VOR dem
			// NormalKarte-Block.

			// ---- GGX-Vorspann (571): einmal je Bildpunkt ----
			// Rauheit aus der ORM-Karte (G-Kanal, s3) oder Vorgabe
			// c1.w. Daraus a2 = Rauheit^4 (Disney-Umformung), abgelegt
			// als r10.x = a2/pi und r10.y = a2-1 -- genau die zwei
			// Werte, die die Punktlichtschleife je Licht braucht.
			// r10 ist hier frei; die Texturkette ueberschreibt es erst
			// SPAETER (BLENDTEXTUREALPHA nutzt r10 nach der Schleife).
			if (k.Modus == 5 || k.Modus >= 14)
			{
				if (k.OrmKarte)
				{
					// Kartenquelle (591): UVs der Karten-Stufe;
					// gekachelt via r21 (607).
					if (AqKachelAn)
						Rumpf += "    texldl r10, r21, s9\n";
					// Parallax (643): Modusgate und OrmKarte sind hier
					// schon durch die Umgebung gesichert.
					else if (AqParallaxAn)
						Rumpf += "    texld r10, r21, s9\n";
					else
					{
						sprintf_s(z, sizeof(z), "    texld r10, t%u, s9\n",
							static_cast<unsigned>(k.KartenStufe));
						Rumpf += z;
					}
					// 589b: Modus 20 zeigt den ROHEN ORM-Texel. R ist
					// auf JEDER Karte 1.0 -- bleibt die Flaeche trotzdem
					// schwarz, kommt am Sampler nichts Brauchbares an
					// (falsche Textur, leerer Sampler, falsche UVs).
					if (k.Modus == 20)
						Rumpf += "    mov r19.xyz, r10\n";
					Rumpf += // *** r14.y RETTET DEN METALLWERT (584). ***
					         // B-Kanal der ORM-Karte; r10 wird gleich fuer
					         // a2/pi und a2-1 zerlegt und spaeter von der
					         // Texturkette ueberschrieben -- wie die
					         // Rauheit in r14.x.
					         "    mov r14.y, r10.z\n"
					         "    mov r10.w, r10.y\n";
				}
				else
					Rumpf += "    mov r10.w, c1.w\n";

				// *** r14.x RETTET DIE RAUHEIT UEBER DIE TEXTURKETTE. ***
				// BLENDTEXTUREALPHA schreibt spaeter das GANZE r10 --
				// der Spiegelungsblock am Ende laese sonst Farbmuell
				// statt Rauheit^2.
				Rumpf += "    mul r10.w, r10.w, r10.w\n"
				         "    mov r14.x, r10.w\n"
				         "    mul r10.z, r10.w, r10.w\n"
				         "    mul r10.x, r10.z, c1.x\n"
				         "    add r10.y, r10.z, -c1.y\n";
			}
		}

		// ---- Modus 12: Glanz aus der HEMISPHAERE ----
		// *** DIE WICHTIGERE LICHTQUELLE. *** Punktlichter gibt es in
		// AquaNox fast nur beim Schiessen; ein Glanz, der nur dann
		// existiert, ist als Wirkung wertlos. Die Hemisphaere dagegen
		// liegt auf fast jedem Objekt (Hemi=1) und ist unter Wasser
		// ohnehin die beherrschende Quelle: das Licht von oben.
		//
		// c13 ist ihre Richtung, c11 die obere Farbe -- beide werden
		// fuer den diffusen Teil bereits gelesen (555.1). Keine
		// Daempfung noetig, daher billiger als der Punktlichtglanz.
		// *** AUCH IN MODUS 5. *** Er hatte bisher nur Punktlichtglanz
		// und Fresnel. Die Hemisphaere ist aber die Quelle, die auf
		// fast jedem Objekt liegt und immer da ist -- der Glanz auf der
		// Waffe stammt aus ihr. Ohne sie wirkt Modus 5 trotz ps_3_0
		// aermer als Modus 12 in ps_2_0.
		if ((k.Modus >= 12 || k.Modus == 5) && k.Hemi && !k.Effekt)
		{
			Rumpf += "    add r8.xyz, c13, r7\n"
			         "    dp3 r8.w, r8, r8\n"
			         "    max r8.w, r8.w, c31.x\n"
			         "    rsq r8.w, r8.w\n"
			         "    mul r8.xyz, r8, r8.w\n"
			         "    dp3_sat r8.w, r8, r0\n"
			         "    mul r8.w, r8.w, r8.w\n"
			         "    mul r8.w, r8.w, r8.w\n"
			         "    mul r8.w, r8.w, r8.w\n"
			         "    mad r9.xyz, c11, r8.w, r9\n";
		}

		// Der Blickvektor fuer Modus 5 stand frueher HIER -- also nach
		// dem Hemisphaerenglanz, der ihn liest. Er ist nach oben
		// gewandert; dieser Block ist entfallen.

		for (unsigned i = 0; i < k.Lichter; ++i)
		{
			const int cFarbe = 14 + 4 * i;
			const int cDaempf = 16 + 4 * i;
			const int cPos = 17 + 4 * i;

			// dst gibt es im Pixelshader nicht -- der Daempfungsterm
			// a0 + a1*d + a2*d^2 wird von Hand gebaut.
			sprintf_s(z, sizeof(z),
				"    add r4.xyz, c%d, -t6\n"
				"    dp3 r4.w, r4, r4\n"
				"    max r4.w, r4.w, c31.x\n"
				"    rsq r5.w, r4.w\n"
				"    mul r4.xyz, r4, r5.w\n"
				"    mul r5.x, r4.w, r5.w\n"
				"    mad r5.y, c%d.y, r5.x, c%d.x\n"
				"    mad_sat r5.y, c%d.z, r4.w, r5.y\n"
				"    dp3 r5.z, r4, r0\n"
				"    mul_sat r5.z, r5.z, r5.y\n"
				"    mad r2.xyz, c%d, r5.z, r2\n",
				cPos, cDaempf, cDaempf, cDaempf, cFarbe);
			Rumpf += z;

			// ---- Glanz pro Bildpunkt (Blinn-Phong), ab Modus 5 ----
			// *** DAS IST DER GRUND FUER ps_3_0: "pow" gibt es in
			// ps_2_0 nicht, und das Budget von 64 Anweisungen waere
			// mit vier Lichtern ohnehin gesprengt. ***
			// r4 traegt hier bereits das normalisierte L, r5.y die
			// Daempfung -- beides faellt aus der Diffusrechnung ab und
			// ---- Modus 10: Glanz in ps_2_0, NUR fuer das erste Licht ----
			// *** OHNE pow -- das gibt es in ps_2_0 nicht. *** x^16
			// entsteht durch viermaliges Quadrieren; das kostet vier
			// Anweisungen statt einer und ist der Preis dafuer, im
			// Profil zu bleiben, das mit vs_1_1 laeuft.
			//
			// *** NUR DAS ERSTE LICHT. *** Vier Lichter waeren 4 x 11
			// Anweisungen, und Modus 4 liegt im Schlimmstfall schon bei
			// 65 von 64. Glanzlichter werden ohnehin von der staerksten
			// Quelle beherrscht, und das Spiel setzt sie in der
			// Reihenfolge ihrer Bedeutung.
			if (k.Modus >= 10 && i == 0 && !k.Effekt)
			{
				// *** MODUS 11 UEBERTREIBT ABSICHTLICH. *** Exponent 4
				// statt 16 (ein Quadrieren statt vier) und vierfache
				// Staerke. Das Ergebnis ist physikalisch falsch und
				// sieht speckig aus -- aber es beantwortet die Frage,
				// die Modus 10 offen gelassen hat: *** IST DER GLANZ
				// UEBERHAUPT DA UND AN DER RICHTIGEN STELLE? ***
				// Ein Effekt, den man suchen muss, taugt nicht als
				// Nachweis. Erst sichtbar machen, dann zurueckdrehen.
				const bool Laut = (k.Modus == 11);
				sprintf_s(z, sizeof(z),
					"    add r8.xyz, r4, r7\n"
					"    dp3 r8.w, r8, r8\n"
					"    max r8.w, r8.w, c31.x\n"
					"    rsq r8.w, r8.w\n"
					"    mul r8.xyz, r8, r8.w\n"
					"    dp3_sat r8.w, r8, r0\n"
					"    mul r8.w, r8.w, r8.w\n"
					"%s"
					"    mul r8.w, r8.w, r5.y\n"
					"%s"
					"    mad r9.xyz, c%d, r8.w, r9\n",
					Laut ? ""
					     : "    mul r8.w, r8.w, r8.w\n"
					       "    mul r8.w, r8.w, r8.w\n"
					       "    mul r8.w, r8.w, r8.w\n",
					Laut ? "    mul r8.w, r8.w, c31.z\n"
					       "    mul r8.w, r8.w, c31.z\n"
					     : "",
					cFarbe);
				Rumpf += z;
			}

			// wird nicht noch einmal gerechnet.
			if ((k.Modus == 5 || k.Modus >= 14) && !k.Effekt)
			{
				// *** GGX STATT BLINN-PHONG (571). *** D = a2/(pi*d^2)
				// mit d = (N.H)^2*(a2-1)+1. a2 (=Rauheit^4) liegt seit
				// dem Vorspann in r10: x = a2/pi, y = a2-1. Kein pow
				// mehr noetig (F11 damit gegenstandslos); rcp ist
				// harmlos, weil d >= a2 > 0. Der Geometrieterm ist
				// bewusst weggelassen -- fuer die Optik traegt D*F*NL,
				// und NL*Daempfung (r5.z) liegt aus dem Diffusteil vor.
				sprintf_s(z, sizeof(z),
					"    add r8.xyz, r4, r7\n"
					"    dp3 r8.w, r8, r8\n"
					"    max r8.w, r8.w, c31.x\n"
					"    rsq r8.w, r8.w\n"
					"    mul r8.xyz, r8, r8.w\n"
					"    dp3_sat r8.w, r8, r0\n"
					"    mul r8.w, r8.w, r8.w\n"
					"    mad r8.w, r8.w, r10.y, c1.y\n"
					"    mul r8.w, r8.w, r8.w\n"
					"    max r8.w, r8.w, c31.x\n"
					"    rcp r8.w, r8.w\n"
					"    mul r8.w, r8.w, r10.x\n"
					"    mul r8.w, r8.w, r5.z\n"
					"    mad r9.xyz, c%d, r8.w, r9\n",
					cFarbe);
				Rumpf += z;
			}
		}

		// Vertexfarbe und additiver Anteil. *** DIE KLEMMUNG IST
		// PFLICHT *** -- D3D9 klemmt oD0 vor der Interpolation.
		// Das Original rechnet "mad oD0, r0, v2, c50": EINE Klemmung,
		// nicht zwei. Bei negativen Anteilen in c50 laufen die beiden
		// Fassungen auseinander (F5) -- und die exakte spart obendrein
		// eine Anweisung.
		if (k.Modus == 19 || k.Modus == 23
			|| ((k.Modus == 18 || k.Modus == 20)
				&& k.Lichter == 0 && k.Hemi == 0))
		{
			// Prelit (579): r2 traegt schon die fertige Farbe aus v0 --
			// eine weitere Multiplikation mit t7 (derselben Farbe!)
			// wuerde sie faelschlich quadrieren. Gilt seit 584b auch
			// fuer die Proben 18/20 im Prelit-Zuschnitt (siehe die
			// r2-Weiche oben); hier braucht es k.Hemi == 0 EXPLIZIT,
			// weil an dieser Stelle kein else den Hemi-Fall abfaengt.
		}
		else if (k.Additiv)
			Rumpf += "    mad_sat r2.xyz, r2, t7, c8\n";
		else
			Rumpf += "    mul_sat r2.xyz, r2, t7\n";
	}

	// *** DAS ALPHA IST DIE TRUEBUNG. *** Die Objektshader setzen es mit
	// "dp3 oD0.w, v1, c12" -- wer es auf 1 festnagelt, macht jedes
	// durchscheinende Objekt undurchsichtig (gemessen an S3).
	Rumpf += "    mov r2.w, v0.w\n";

	// ============ 2. Die nachgebauten Texturstufen ============
	// *** r17 TRAEGT DEN STUFE-0-TEXEL ALS ALBEDO (584). *** Die
	// Kaskade mischt ab der ersten Stufe das Licht ein (DIFFUSE);
	// fuer die Metall-Toenung der Spiegelung wird aber der REINE
	// Texel gebraucht. Ohne Stufe-0-Textur bleibt Weiss stehen.
	// Nur ps_3_0 (r17 existiert in ps_2_0 nicht) und nur, wenn der
	// Metallzweig am Ende ueberhaupt entsteht.
	const bool Metall = (k.Modus == 5 || k.Modus >= 14) && !k.Effekt
		&& k.OrmKarte && AqUmgebungAn && AqUmgebung != nullptr;
	if (Metall)
		Rumpf += "    mov r17.xyz, c31.w\n";

	bool TexBenutzt[4] = {};

	for (unsigned s = 0; s < k.Stufen; ++s)
	{
		const unsigned COp = k.Op[s][0], CA1 = k.Op[s][1], CA2 = k.Op[s][2];
		const unsigned AOp = k.Op[s][3], AA1 = k.Op[s][4], AA2 = k.Op[s][5];

		if (k.Tex[s] == 1)
		{
			// Objekttextur-Stufe gekachelt abtasten (607, nur
			// ps_3_0-Familie -- r21 existiert in ps_2_0 nicht).
			if (AqKachelAn && s == k.KartenStufe
				&& (k.Modus == 5 || k.Modus >= 14))
				sprintf_s(z, sizeof(z), "    texldl r6, r21, s%u\n", s);
			// Parallax (643): auch die sichtbare Textur an der
			// verschobenen Stelle lesen -- sonst waere nur das Licht
			// verschoben, nicht das Bild.
			else if (AqParallaxAn && k.OrmKarte && s == k.KartenStufe
				&& (k.Modus == 5 || k.Modus >= 14))
				sprintf_s(z, sizeof(z), "    texld r6, r21, s%u\n", s);
			else
				sprintf_s(z, sizeof(z), "    texld r6, t%u, s%u\n", s, s);
			Rumpf += z;
			TexBenutzt[s] = true;
			// Albedo-Rettung (584/591): der Texel der KARTEN-Stufe --
			// bei lightmap-zuerst-Zuegen ist das die Stufe-1-Textur.
			if (s == k.KartenStufe && Metall)
				Rumpf += "    mov r17.xyz, r6\n";
		}
		else if (CA1 == 2 || CA2 == 2 || AA1 == 2 || AA2 == 2 ||
			COp == D3DTOP_BLENDTEXTUREALPHA)
		{
			// *** F28: IMPLIZITES WEISS STATT ABLEHNUNG. *** Die Stufe
			// verlangt TEXTURE, aber es ist keine gebunden. Fixed
			// Function liefert dann Weiss (1,1,1,1) -- texld kann das
			// nicht, also steht das Weiss hier als Konstante. Vorher
			// wurde die ganze Kette verworfen; in ps_2_0 uebernahm dann
			// Fixed Function (harmlos), mit vs_3_0 fiel das Objekt in
			// den Notbehelf, dessen Alphakette den Alphatest riss:
			// *** GENAU DAS liess die Bodenpflanzen verschwinden. ***
			// Gemessene Kette (567.2): MODULATE2X auf Stufe 1 ohne
			// Textur, zwischen zwei Stufen mit Textur.
			Rumpf += "    mov r6, c31.w\n";
		}

		const char *const A1 = AqArgName(CA1, s);
		const char *const A2 = AqArgName(CA2, s);
		const char *const B1 = AqArgName(AA1, s);
		const char *const B2 = AqArgName(AA2, s);
		if (A1 == nullptr || A2 == nullptr || B1 == nullptr || B2 == nullptr)
		{
#ifndef D3D8TO9NOLOG
			// *** HIER GIBT DER GENERATOR AUF, OHNE ES JE ZU SAGEN (F25). ***
			// AqArgName kennt nur DIFFUSE, CURRENT und TEXTURE -- nicht
			// TFACTOR, nicht SPECULAR, und keinen der Modifikatoren
			// (COMPLEMENT 0x10, ALPHAREPLICATE 0x20).
			char zz[160];
			sprintf_s(zz, sizeof(zz), "Arg CA1=0x%X CA2=0x%X AA1=0x%X AA2=0x%X St%u",
				CA1, CA2, AA1, AA2, s);
			if (AqWarum.insert(std::string(zz)).second)
				LOG << "> AquaNox: AUFGEGEBEN, unbekanntes Argument -- " << zz << std::endl;
#endif
			return std::string();
		}

		// *** JEDE STUFE KLEMMT AUF 0..1. *** Die Fixed-Function-Kaskade
		// tut das nach JEDER Stufe, bevor das Ergebnis als CURRENT
		// weitergereicht wird. Ohne _sat verdoppelt eine folgende
		// MODULATE2X-Stufe den Ueberschuss, und helle Stellen laufen
		// zu Weiss aus (F1, betrifft 5 der 19 gemessenen Ketten).
		switch (COp)
		{
		case D3DTOP_SELECTARG1:
			sprintf_s(z, sizeof(z), "    mov r3.xyz, %s\n", A1); break;
		case D3DTOP_SELECTARG2:
			sprintf_s(z, sizeof(z), "    mov r3.xyz, %s\n", A2); break;
		case D3DTOP_MODULATE:
			sprintf_s(z, sizeof(z), "    mul_sat r3.xyz, %s, %s\n", A1, A2); break;
		case D3DTOP_MODULATE2X:
			// *** DIE ERSTE MUL DARF NICHT SAETTIGEN. *** Fixed Function
			// verdoppelt ERST und klemmt DANN -- mul_sat waere zu dunkel.
			sprintf_s(z, sizeof(z), "    mul r3.xyz, %s, %s\n    add_sat r3.xyz, r3, r3\n", A1, A2); break;
		case D3DTOP_ADD:
			sprintf_s(z, sizeof(z), "    add_sat r3.xyz, %s, %s\n", A1, A2); break;
		case D3DTOP_BLENDTEXTUREALPHA:
			sprintf_s(z, sizeof(z), "    lrp r10, r6.w, %s, %s\n    mov_sat r3.xyz, r10\n", A1, A2); break;
		case D3DTOP_MODULATEALPHA_ADDCOLOR:
			// Arg1.rgb + Arg1.a * Arg2.rgb
			sprintf_s(z, sizeof(z), "    mad_sat r3.xyz, %s.w, %s, %s\n", A1, A2, A1); break;
		default:
#ifndef D3D8TO9NOLOG
		{
			char zz[80];
			sprintf_s(zz, sizeof(zz), "Op=%u St%u", COp, s);
			if (AqWarum.insert(std::string(zz)).second)
				LOG << "> AquaNox: AUFGEGEBEN, unbekannte Operation -- " << zz << std::endl;
		}
#endif
			return std::string();
		}
		Rumpf += z;

		// Der Alphapfad braucht kein _sat: alle Quellen liegen in 0..1,
		// SELECTARG und MODULATE sind bereichserhaltend.
		const char *AQuelle = nullptr;

		switch (AOp)
		{
		case D3DTOP_SELECTARG1: AQuelle = B1; break;
		case D3DTOP_SELECTARG2: AQuelle = B2; break;
		case D3DTOP_MODULATE:
			sprintf_s(z, sizeof(z), "    mul r3.w, %s.w, %s.w\n", B1, B2);
			Rumpf += z;
			break;
		default:
#ifndef D3D8TO9NOLOG
		{
			char zz[80];
			sprintf_s(zz, sizeof(zz), "Op=%u St%u", COp, s);
			if (AqWarum.insert(std::string(zz)).second)
				LOG << "> AquaNox: AUFGEGEBEN, unbekannte Operation -- " << zz << std::endl;
		}
#endif
			return std::string();
		}

		// "mov r3.w, r3.w" ist ein verschenkter Platz -- und das Budget
		// ist knapp (F6). Der Fall tritt in 4 gemessenen Ketten auf.
		if (AQuelle != nullptr && strcmp(AQuelle, "r3") != 0)
		{
			sprintf_s(z, sizeof(z), "    mov r3.w, %s.w\n", AQuelle);
			Rumpf += z;
		}
	}

	// *** WANDLICHT (593/594b): RELIEF AUF PRELIT-FLAECHEN. *** Das
	// Licht dieser Flaechen ist eingebacken -- die Normalenkarte hatte
	// nichts, worauf sie antworten konnte. Die FERTIGE Kettenfarbe r3
	// wird um den Relief-Unterschied zur Blickrichtung moduliert:
	// 1 + c2.w * ((N'.V) - (N.V)). Wo die Karte flach ist, ist der
	// Faktor exakt 1 (Lightmaps und Kaustik-Passes unangetastet).
	// Steht NACH der Kette, weil viele Wand-Ketten DIFFUSE gar nicht
	// referenzieren -- auf r2 war das Wandlicht wirkungslos (594b).
	// c2.w = AQUANOX_WANDLICHT (Vorgabe 2, 0 = aus).
	// mul+add statt mad: das mad las c2 UND c1 in EINER Anweisung --
	// X5584, nur EIN Konstantenregister je Instruktion (599). Genau
	// deshalb scheiterte JEDER Wandlicht-Shader still beim
	// Assemblieren, seit 593.
	// Faktor geklemmt auf 0.5..2.0 (600): ungeklemmt lief er gegen
	// Null und malte harte schwarze Flecken.
	// *** SCHRAEGLICHT STATT BLICKLICHT (603). *** Der Blickvektor
	// als "Lampe" loescht den Effekt genau bei senkrechtem Blick aus
	// (die Stoerung liegt tangential; (N'-N).V -> 0 wenn V || N):
	// Stefans Befund "Gitter verschwindet bei Annaeherung". Jetzt
	// eine FESTE diagonale Lichtrichtung (c3.yzw, normiert) -- Rillen
	// bekommen helle und dunkle Flanken (Praegelicht), in jeder
	// Entfernung, ohne Blickwinkel-Flackern.
	// *** VOLLE N'.L-SCHATTIERUNG STATT DELTA (605). *** Die Delta-
	// Fassung betonte nur Kanten ("heller/dunkler Streifen, komplett
	// flach" -- Stefans Urteil, zu Recht): eine Flaeche, die nie auf
	// ihre eigene Orientierung reagiert, kann kein Relief formen.
	// Jetzt: Faktor = 0.5 + c2.w * max(N'.L, 0), geklemmt bis 2.0 --
	// echtes Praegelicht auf der GANZEN Flaeche. Preis (bewusst):
	// die Wandhelligkeit haengt jetzt sichtbar von der Ausrichtung
	// zum festen Schraeglicht ab -- das IST die Modernisierung.
	// Seit 614 auch im Detailpass (Modus 23): DORT lebt die sichtbare
	// Textur, DORT wirkt das Relief am staerksten.
	// *** ZURUECK ZUR DELTA-PRAEGUNG (616). *** Die 605er-Form
	// (0.5 + s*N'.L) hob schon die EBENE Flaeche an die Klemmgrenze:
	// helle Flanken konnten nicht mehr heller werden, nur dunkle
	// dunkler -- "flaches Gitter aus dunklen Linien" (Stefans
	// Befund). Delta gegen das FESTE Licht: ebene Flaeche exakt
	// Faktor 1 (Original!), Flanken symmetrisch hell UND dunkel.
	// 603 zeigte beide Flanken, 604 behob die Nahsicht -- erst jetzt
	// laufen beide zusammen im richtigen Zug.
	if ((k.Modus == 19 || k.Modus == 23) && k.NormalKarte)
		Rumpf += "    dp3 r20.w, r0, c3.yzww\n"
		         "    dp3 r19.w, r20, c3.yzww\n"
		         "    add r20.w, r20.w, -r19.w\n"
		         "    mul r20.w, r20.w, c2.w\n"
		         "    add r20.w, r20.w, c1.y\n"
		         "    max r20.w, r20.w, c31.y\n"
		         "    min r20.w, r20.w, c31.z\n"
		         "    mul r3.xyz, r3, r20.w\n";

	// Fixed Function addiert oD1 NACH der Texturkette auf die Farbe.
	// Mit gebundenem Pixelshader muss der Shader das selbst tun, sonst
	// verlieren Metall und Cockpitglas ihre Glanzlichter (F3).
	// *** AB MODUS 5 RECHNEN WIR DEN GLANZ SELBST -- dann darf das
	// interpolierte oD1 NICHT auch noch dazu, sonst liegt er doppelt
	// auf. Unterhalb von Modus 5 bleibt es beim Vertexglanz (F3). ***
	if (k.Glanz && k.Modus != 5 && k.Modus < 10)
		Rumpf += "    add_sat r3.xyz, r3, v1\n";

	// *** DER GLANZ MUSS AUCH OHNE PUNKTLICHT ANKOMMEN (F18). ***
	// Die Addition von r9 stand hinter "Lichter > 0". Objekte, auf
	// denen nur die Hemisphaere wirkt -- die Waffe zum Beispiel --
	// rechneten den Glanz also aus und verwarfen ihn wieder. Genau
	// deshalb war auf der Waffe nichts zu sehen, obwohl der Shader
	// ihn nachweislich enthielt.
	// *** EIN GEMEINSAMER SCHLUSSBLOCK (576): Fresnel + Glanz +
	// UMGEBUNGSSPIEGELUNG. *** Frueher wurde Fresnel nur bei
	// Punktlichtern gerechnet -- die Spiegelung braucht ihn aber
	// IMMER: sie ist gerade der Anteil, der ohne jede Lichtquelle
	// sichtbar bleibt (nasse Oberflaechen bei streifendem Blick).
	// Modus 23 ausgenommen (614): Fresnel/Spiegel/Metall in einem
	// 2x-MULTIPLIKATOR waeren Unsinn -- der Detailpass traegt nur
	// Textur mal Relieffaktor.
	if ((k.Modus == 5 || k.Modus >= 14) && k.Modus != 23 && !k.Effekt)
	{
		// Fresnel nach Schlick: F = F0 + (1 - F0) * (1 - N.V)^5.
		// Als lrp, nicht als mad (nur EIN Konstantenregister je
		// Instruktion); Ziel r12 statt r11 (X5766); Klemmung vor pow
		// (F11: 1 - N.V ist bei frontalem Blick exakt 0).
		Rumpf += "    dp3_sat r11.w, r0, r7\n"
		         "    add r11.w, c30.y, -r11.w\n"
		         "    max r11.w, r11.w, c31.x\n"
		         "    pow r11.w, r11.w, c30.z\n"
		         "    lrp r12.w, r11.w, c30.y, c30.w\n";

		// Glanz (Punktlichter und/oder Hemisphaere) Fresnel-gewichtet.
		if (k.Lichter > 0)
			Rumpf += "    mul r9.xyz, r9, r12.w\n";
		if (k.Lichter > 0 || k.Hemi)
			Rumpf += "    add_sat r3.xyz, r3, r9\n";

		// Spiegelung: R = 2(N.V)N - V, Wuerfel auf s10, gewichtet mit
		// F * (1 - Rauheit^2) -- glatte Flaechen spiegeln, raue nicht.
		// r10.w traegt Rauheit^2 aus dem GGX-Vorspann.
		// Prozesskonstant (Umgebung entsteht einmal in AqInit) -- darum
		// KEIN Schluesselfeld: der Cache kann nicht auseinanderlaufen.
		if (AqUmgebungAn && AqUmgebung != nullptr)
		{
			Rumpf += "    dp3 r13.w, r0, r7\n"
			         "    add r13.w, r13.w, r13.w\n"
			         "    mul r13.xyz, r0, r13.w\n"
			         "    add r13.xyz, r13, -r7\n"
			         "    texld r13, r13, s10\n";

			// *** MODUS 17: REINE SPIEGELFARBE, UNGEWICHTET. *** Die
			// rohe Wuerfelantwort vor jeder Daempfung -- die
			// Extremprobe nach dem Muster von Modus 9/14/16.
			if (k.Modus == 17)
				Rumpf += "    mov r15.xyz, r13\n";

			Rumpf += "    add r14.w, c1.y, -r14.x\n"
			         "    max r14.w, r14.w, c31.x\n"
			         "    mul r14.w, r14.w, r12.w\n"
			         // c2.y = Spiegelstaerke (AQUANOX_SPIEGEL, Vorgabe
			         // 3). Ungeregelt war das Gewicht 0.2*F mal dunklen
			         // Wuerfelfarben -- in der blauen Szene unsichtbar,
			         // obwohl die Kette nachweislich stand (577).
			         "    mul r14.w, r14.w, c2.y\n"
			         // *** OBERGRENZE 0.5 (577b). *** Auf gekruemmten
			         // Objekten (Waffe, Schiffe) laeuft ein Grossteil
			         // der Pixel streifend -- F geht ueberall gegen 1,
			         // und mit Staerke 5 entstand Chrom-Eis-Optik. Die
			         // Kappung laesst den Streifeffekt, verbietet Chrom.
			         "    min r14.w, r14.w, c31.y\n";

			// *** METALL (584). *** Der B-Kanal der ORM-Karte (in
			// r14.y gerettet) macht zwei Dinge:
			//   1. Die Wuerfelfarbe wird mit dem Stufe-0-Texel (r17)
			//      getoent -- Metall spiegelt in seiner EIGENFARBE,
			//      ein Dielektrikum farblos.
			//   2. Das Spiegelgewicht haengt nicht mehr am Fresnel-
			//      Term: Metall spiegelt bei JEDEM Blickwinkel, nicht
			//      nur streifend. Staerke c2.z (AQUANOX_METALL),
			//      Obergrenze c3.x (0.85) -- etwas Textur bleibt.
			// max statt add: Metall UEBERSTIMMT das Dielektrikum-
			// Gewicht, addiert sich aber nicht darauf (Energieerhalt
			// wie bei 577c). Ziel der Toenungs-lrp ist r18, weil das
			// lrp-Ziel weder erste noch dritte Quelle sein darf (F10).
			// c2.z (AQUANOX_METALL) wirkt seit 592 als HELLIGKEIT des
			// Metallspiegels, nicht mehr als Gewichtszusatz: das Gewicht
			// sass ohnehin an der 0.85er-Kappe, und unter Wasser ist der
			// Umgebungswuerfel DUNKEL -- Metall ohne helle Umgebung wird
			// dunkler statt glaenzender ("ich sehe keinen Effekt").
			// Die Aufhellung sitzt VOR der Metallanteil-lrp: nur der
			// Metallpfad wird heller, das Dielektrikum bleibt unberuehrt.
			if (k.OrmKarte)
				Rumpf += "    mul r17.xyz, r13, r17\n"
				         "    mul r17.xyz, r17, c2.z\n"
				         "    lrp r18.xyz, r14.y, r17, r13\n"
				         "    mov r13.xyz, r18\n"
				         "    add r17.w, c1.y, -r14.x\n"
				         "    mul r17.w, r17.w, r14.y\n"
				         "    min r17.w, r17.w, c3.x\n"
				         "    max r14.w, r14.w, r17.w\n";

			         // *** ERSETZEN STATT ADDIEREN (577c). *** Additiv
			         // ging der Beitrag auf hellen Flaechen (Fenstern)
			         // unter, sobald die Kappung das Uebersteuern
			         // verbot -- sichtbar war er nur als Saettigung.
			         // lrp mischt anteilig zur Wuerfelfarbe: auf hellen
			         // wie dunklen Flaechen gleichermassen sichtbar,
			         // und mehr als die Wuerfelfarbe kann nie entstehen.
			         // Ziel r16: r15 traegt die Modus-17-Probe (X5766).
			Rumpf += "    lrp r16.xyz, r14.w, r13, r3\n"
			         "    mov r3.xyz, r16\n";

			if (k.Modus == 17)
				Rumpf += "    mov r3.xyz, r15\n";

			// *** MODUS 18: KOMMT c2 UEBERHAUPT AN? *** c2 = (3,5,0,0)
			// wird als Farbe ausgegeben: GELB (rot+gruen gesaettigt)
			// heisst ja, SCHWARZ heisst nein. Verdacht: Relief (c2.x)
			// und Spiegelstaerke (c2.y) sind beide wirkungslos,
			// waehrend alle def-Konstanten funktionieren (578).
			if (k.Modus == 18)
				Rumpf += "    mov_sat r3.xyz, c2\n";
		}
	}

	// *** MODUS 7 IST EIN TRENNVERSUCH, KEIN BETRIEBSMODUS. ***
	// Er ist Modus 6 mit einem einzigen Unterschied: das Alpha wird
	// hart auf 1 gesetzt. Bleiben die Objekte dann undurchsichtig,
	// liegt der Fehler am Alphawert -- und damit daran, dass v0.w
	// unter ps_3_0 nicht mehr die Truebung traegt. Sind sie weiterhin
	// durchscheinend, ist das Alpha unschuldig und es liegt an der
	// Farbe oder am Tiefenpuffer (556.4).
	if (k.Modus == 7)
		Rumpf += "    mov r3.w, c30.y\n";

	// *** MODUS 8: REINES WEISS, UNDURCHSICHTIG. *** Der schaerfste
	// Trennversuch, den es gibt -- die gesamte Rechnung wird verworfen
	// und ein fester Wert ausgegeben. Was danach noch am Bild passiert,
	// passiert NACH dem Pixelshader und kann nicht an ihm liegen.
	//
	//   strahlend weiss   -> der Shader arbeitet, der Fehler steckt in
	//                        der Farbrechnung davor
	//   blaugrau          -> NEBEL wird darueber gelegt (Fixed Function
	//                        mischt nach dem Pixelshader)
	//   durchscheinend    -> Mischung oder Tiefenpuffer
	if (k.Modus == 8)
		Rumpf += "    mov r3, c30.y\n";

	// *** MODUS 9: KNALLROT. *** Weiss war als Probefarbe mehrdeutig --
	// eine weisse Flaeche kann man mit hellem Untergrund verwechseln,
	// und unter Wasser sieht alles blass aus. Rot kommt in dieser Szene
	// nirgends vor. Die Frage, die das beantwortet, ist die einzige,
	// die noch offen ist:
	//
	//   *** LAEUFT UNSER SHADER AUF DER DUNKLEN FLAECHE UEBERHAUPT? ***
	//
	//   Flaeche wird rot -> ja, dann ist es unsere Rechnung
	//   Flaeche bleibt dunkel -> nein, dann zeichnet etwas ANDERES
	//                            darueber, und der Shader ist unschuldig
	if (k.Modus == 9)
		Rumpf += "    mov r3, c31.x\n"
		         "    mov r3.x, c30.y\n"
		         "    mov r3.w, c30.y\n";

	// *** DER GLANZ GEHOERT NACH DIE TEXTURKETTE, NICHT DAVOR (F13). ***
	// Zuerst stand er auf r2, also auf der Diffusfarbe -- und die wird
	// anschliessend mit der Textur MULTIPLIZIERT. Unterwassertexturen
	// sind dunkel; ein Glanz mal 0,2 ist unsichtbar. Genau deshalb war
	// in den Modi 10 bis 12 nichts zu sehen.
	// Die Fixed-Function-Pipeline macht es mit oD1 genauso: erst die
	// Texturkette, dann den Glanz addieren.
	// *** MODUS 13: FRESNEL NACH SCHLICK, OHNE pow. ***
	// F = F0 + (1 - F0) * (1 - N.V)^5. Der Exponent 5 laesst sich
	// nicht durch Quadrieren allein bauen (2, 4, 8 ...), also:
	// x^4 = (x^2)^2, dann x^5 = x^4 * x. Drei Multiplikationen.
	//
	// *** DAS IST DER EFFEKT, DER NASSE OBERFLAECHEN AUSMACHT: *** bei
	// streifendem Blick spiegelt jedes Material stark. Unter Wasser
	// gilt das fuer jeden Rumpf, an dem man entlangsieht.
	//
	// lrp d, s0, s1, s2 = s2 + s0*(s1-s2) = F0 + x*(1-F0) mit s1 = 1.
	// Das Ziel darf weder erste noch dritte Quelle sein (F10).
	if (k.Modus == 13)
		Rumpf += "    dp3_sat r11.w, r0, r7\n"
		         "    add r11.w, c31.w, -r11.w\n"
		         "    mul r12.w, r11.w, r11.w\n"
		         "    mul r12.w, r12.w, r12.w\n"
		         "    mul r12.w, r12.w, r11.w\n"
		         "    lrp r11.w, r12.w, c31.w, c30.x\n"
		         "    mul r9.xyz, r9, r11.w\n";

	// *** NUR DIE ps_2_0-MODI 10..13 (584b). *** Die ps_3_0-Familie
	// addiert r9 bereits Fresnel-gewichtet im gemeinsamen Schlussblock
	// (576); ">= 10" allein addierte den Glanz dort ein ZWEITES Mal --
	// im Licht-Pfad der Modi 14..17/20 realer Doppelglanz (add_sat
	// kappt nur bei Saettigung). Vorbestehender Fehler, von der
	// Gegenpruefung 584 gefunden.
	if (k.Modus >= 10 && k.Modus < 14)
		Rumpf += "    add_sat r3.xyz, r3, r9\n";

	// *** MODUS 14: DIE NORMALENKARTE ALS BILDFARBE, GANZ AM ENDE. ***
	// Nichts steht mehr dazwischen, das r3 ueberschreiben koennte (F27).
	// r11 traegt seit dem texld oben die rohe Karte; dazwischen wird
	// hoechstens r11.w angefasst (Fresnel), nie r11.xyz.
	if (k.Modus == 14 && k.NormalKarte)
		Rumpf += "    mov r3.xyz, r11\n";

	// *** MODUS 16: DIE FERTIGE, GESTOERTE NORMALE ALS FARBE (573). ***
	// Entscheidet, WO die Reliefwirkung verlorengeht:
	//   bunte, texturfolgende Muster -> Stoerung kommt in der Normale
	//     an, das Problem liegt in der Lichtantwort danach
	//   glatte Einfarbflaechen je Face -> Stoerung ist null; dann ist
	//     c2 leer, die Karte kommt nicht an oder kx/ky sind winzig
	if (k.Modus == 16 && k.NormalKarte)
		Rumpf += "    mad r3.xyz, r0, c31.y, c31.y\n";

	// *** MODUS 20: DER ROHE ORM-TEXEL ALS FARBE (589b). *** Vorher
	// nur der Metallwert (B) als Graustufe; die schwarze Antenne war
	// damit nicht von "B ist 0" zu unterscheiden. Jetzt: R(Occlusion)
	// ist auf JEDER Karte 1.0 -- eine korrekt abgetastete Karte kann
	// also NIE schwarz sein. Lesart: kraeftig rot+gruen, blau je nach
	// Metall (gelb/weiss = Metall, orange = keins); SCHWARZ = am
	// Sampler kommt nichts an. Objekte OHNE Karte rendern normal.
	if (k.Modus == 20 && k.OrmKarte)
		Rumpf += "    mov r3.xyz, r19\n";

	// *** PFAD-KENNFARBEN (627). *** Prelit (19) ROT, Detail (23)
	// GRUEN, Licht-Familie BLAU; FF bleibt unveraendert. Der 2x-
	// Multiplikator macht aus Gruen "gruenlich" -- reicht zur
	// Identifikation.
	if (AqKennfarbenAn && AqKennfarbenArt == 1)
	{
		if (k.Modus == 19)
			Rumpf += "    mov r3.xyz, c31.x\n"
			         "    mov r3.x, c31.w\n";
		else if (k.Modus == 23)
			Rumpf += "    mov r3.xyz, c31.x\n"
			         "    mov r3.y, c31.w\n";
		else
			Rumpf += "    mov r3.xyz, c31.x\n"
			         "    mov r3.z, c31.w\n";
	}
	// Stufe 2 (630): der Detail-Zug zeigt sein ROHES Stufen-Texel --
	// beantwortet, WAS der Terrain-/Statics-Detailpass wirklich liest.
	else if (AqKennfarbenAn && AqKennfarbenArt == 2 && k.Modus == 23)
		Rumpf += "    mov r3.xyz, r6\n";
	// Stufe 3 (636): der Detail-Zug malt seine TEXTURKOORDINATEN
	// (frac(UV) als Rot/Gruen). Flaeche einfarbig = UVs degeneriert
	// (ein Texel fuer alles -- dann ist JEDES Material unsichtbar);
	// Verlaufsmuster = UVs gesund, Fehler liegt woanders.
	else if (AqKennfarbenAn && AqKennfarbenArt == 3 && k.Modus == 23)
		Rumpf += "    frc r3.xy, t0\n"
		         "    mov r3.z, c31.x\n";
	// Stufe 4 (638): rohes Texel wie Stufe 2, aber der Zeichenzweig
	// erzwingt zusaetzlich DECKENDES Zeichnen -- unser Ausgang steht
	// nackt auf dem Schirm, die Basis kann nichts verschlucken.
	else if (AqKennfarbenAn && AqKennfarbenArt == 4 && k.Modus == 23)
		Rumpf += "    mov r3.xyz, r6\n";

	// *** MODUS 21: DER WANDLICHT-FAKTOR ALS FARBE (598). *** Die
	// letzte Messstufe der Kette: R = N'.V (gestoert), G = N.V
	// (ungestoert), B = 0.5 + Wandlichtdelta. Lesarten:
	//   R == G ueberall           -> Stoerung kommt nie an (TBN/Karte)
	//   R/G starr beim Umschauen  -> Blickvektor/Kamera tot
	//   R != G, aber B flach 0.5  -> Verrechnung dahinter kaputt
	if (k.Modus == 21 && k.NormalKarte)
		Rumpf += "    dp3 r18.w, r0, r7\n"
		         "    dp3 r19.w, r20, r7\n"
		         "    mad r3.x, r18.w, c31.y, c31.y\n"
		         "    mad r3.y, r19.w, c31.y, c31.y\n"
		         "    add r18.w, r18.w, -r19.w\n"
		         // mul+add: c2 und c31 duerfen nicht in EINE Anweisung (X5584).
		         "    mul r3.z, r18.w, c2.w\n"
		         "    add r3.z, r3.z, c31.y\n";

	Rumpf += "    mov oC0, r3\n";

	// ============ 3. Der Kopf, aus dem Rumpf abgeleitet ============
	// *** MODUS 10 GEHOERT NICHT HIERHER. *** Er bleibt bei ps_2_0,
	// weil ps_3_0 sich nicht mit vs_1_1 vertraegt (F12). Die Modi 5
	// bis 9 sind seither unbrauchbar und nur noch als Trennversuche
	// von Wert.
	if ((k.Modus >= 5 && k.Modus <= 9) || k.Modus >= 14)
	{
		// *** ps_3_0 KENNT KEINE t-REGISTER MEHR. *** Jeder Eingang
		// heisst dort v und wird ueber seine SEMANTIK zugeordnet; die
		// Registernummer ist frei waehlbar. Weil v0/v1 schon die
		// Farben tragen, koennen die Texturkoordinaten nicht auf
		// ihren alten Nummern bleiben -- t0 und v0 waeren dasselbe
		// Register.
		//
		// Uebersetzt wird der FERTIGE Rumpf. Den Generator ein zweites
		// Mal zu schreiben hiesse, jede kuenftige Aenderung an zwei
		// Stellen nachzuziehen -- genau so entstehen Fassungen, die
		// auseinanderlaufen.
		static const char *const Tausch[7][2] = {
			{ "t0", "v2" }, { "t1", "v3" }, { "t2", "v4" }, { "t3", "v5" },
			{ "t5", "v6" }, { "t6", "v7" }, { "t7", "v8" },
		};

		// Quellen beginnen mit t, Ziele mit v -- die Ersetzungen
		// koennen einander daher nicht ins Gehege kommen.
		for (unsigned i = 0; i < 7; ++i)
			Rumpf = std::regex_replace(Rumpf,
				std::regex(std::string("\\b") + Tausch[i][0] + "\\b"), Tausch[i][1]);

		// c30: x = Glanzhaerte, y = 1.0, z = Fresnelexponent,
		//      w = F0 (Grundreflexion, 0.04 = Nichtmetall).
		std::string Kopf =
			"ps_3_0\n"
			"    def c30, 24.0, 1.0, 5.0, 0.04\n"
			"    def c31, 0.000001, 0.5, 2.0, 1.0\n"
			// c1 fuer GGX (571): x = 1/pi, y = 1.0, w = Vorgaberauheit
			// ohne ORM-Karte. c1 ist frei -- die Lichtkonstanten
			// belegen c8..c29, die Kamera c0.
			// c1.z = Tangenten-Vorskalierung (604): Bildschirm-
			// Ableitungen werden bei NAHSICHT winzig; ihr Quadrat fiel
			// unter die 1e-6-Schutzschwelle, die invmax-Normierung
			// brach zusammen und das Relief verschwand bei Annaeherung
			// (Stefans Befund). Gleiche Skalierung auf T UND B kuerzt
			// sich in der Normierung exakt heraus.
			"    def c1, 0.31830989, 1.0, 16384.0, 0.7\n"
			// c3.x = Obergrenze des Metall-Spiegelgewichts (584).
			// c3 ist frei: Kamera c0, GGX c1, Regler c2, Lichter
			// c8..c29 -- und zur Laufzeit schreibt nichts auf c3.
			"    def c3, 0.85, 0.57735, 0.57735, 0.57735\n"
			"    dcl_color v0\n";

		if (k.Glanz)
			Kopf += "    dcl_color1 v1\n";

		if (k.NormalKarte)
			Kopf += "    dcl_2d s8\n";

		if (k.OrmKarte)
			Kopf += "    dcl_2d s9\n";

		if (!k.Effekt && AqUmgebungAn && AqUmgebung != nullptr)
			Kopf += "    dcl_cube s10\n";

		Kopf += "    dcl_texcoord5 v6\n"
		        "    dcl_texcoord6 v7\n"
		        "    dcl_texcoord7 v8\n";

		for (unsigned s = 0; s < 4; ++s)
		{
			if (!TexBenutzt[s])
				continue;
			sprintf_s(z, sizeof(z), "    dcl_texcoord%u v%u\n    dcl_2d s%u\n",
				s, s + 2, s);
			Kopf += z;
		}

		return Kopf + Rumpf;
	}

	std::string Kopf = "ps_2_0\n    def c31, 0.000001, 0.5, 2.0, 1.0\n";

	// c30 traegt F0, die Grundreflexion (0.04 = Nichtmetall). In den
	// ps_3_0-Modi steckt sie im dortigen def; fuer Fresnel in ps_2_0
	// muss sie hier eigens angelegt werden. c30 ist frei -- die
	// Lichtkonstanten enden bei c29.
	if (k.Modus == 13)
		Kopf += "    def c30, 0.04, 1.0, 5.0, 0.0\n";

	Kopf += "    dcl v0\n";

	if (k.Glanz)
		Kopf += "    dcl v1\n";

	if (k.Modus != 2)
	{
		// Keine Kartendeklaration im ps_2_0-Kopf: NormalKarte/OrmKarte
		// sind auf die ps_3_0-Familie beschraenkt (dsx/dsy fehlen hier).
		Kopf += "    dcl t5\n";
		if (k.Modus >= 4)
			Kopf += "    dcl t6\n    dcl t7\n";
	}

	for (unsigned s = 0; s < 4; ++s)
	{
		if (!TexBenutzt[s])
			continue;
		sprintf_s(z, sizeof(z), "    dcl t%u\n    dcl_2d s%u\n", s, s);
		Kopf += z;
	}

	return Kopf + Rumpf;
}

// *** LINEARE FILTER FUER DIE KARTENSTUFEN (585). *** Das Spiel
// stellt nur die Stufen um, die es kennt (0..7); fuer 8..10 bleibt
// die D3D9-Vorgabe POINT stehen. Folge: der weiche 32er-Wuerfel
// wurde auf dem Geschuetz als grobe Kacheln vergroessert (Stefans
// Screenshot, "extrem pixelig"), und auch Normal-/ORM-Karte kamen
// unfiltert an. CLAMP nur fuer den Wuerfel (Kantennaehte); s8/s9
// muessen bei WRAP bleiben -- ihre UVs kacheln mit der Grundtextur.
// Aufruf nach dem Aufbau UND nach jedem Reset (der setzt alle
// Samplerzustaende auf die Vorgabe zurueck).
void Direct3DDevice8::AqSetzeKartenfilter()
{
	for (DWORD s = 8; s <= 10; ++s)
	{
		ProxyInterface->SetSamplerState(s, D3DSAMP_MAGFILTER, D3DTEXF_LINEAR);
		ProxyInterface->SetSamplerState(s, D3DSAMP_MINFILTER, D3DTEXF_LINEAR);
		// s8/s9 haben volle Mip-Ketten (D3DXCreateTextureFromFile);
		// der Wuerfel hat nur eine Stufe -- LINEAR ist dort ohne
		// Wirkung, aber unschaedlich.
		ProxyInterface->SetSamplerState(s, D3DSAMP_MIPFILTER, D3DTEXF_LINEAR);
	}
	ProxyInterface->SetSamplerState(10, D3DSAMP_ADDRESSU, D3DTADDRESS_CLAMP);
	ProxyInterface->SetSamplerState(10, D3DSAMP_ADDRESSV, D3DTADDRESS_CLAMP);
	ProxyInterface->SetSamplerState(10, D3DSAMP_ADDRESSW, D3DTADDRESS_CLAMP);
}

// *** DIE PROZEDURALE UNTERWASSER-UMGEBUNG (576). *** Sechs Flaechen,
// 32x32, reiner Vertikalverlauf: helle Wasseroberflaeche oben, dunkler
// Grund unten. AquaNox selbst nutzt keine einzige Wuerfeltextur
// (gemessen: 0 CreateCubeTexture) -- diese hier ist die erste. Sie
// haengt dauerhaft auf s10 und gibt Fresnel und Metall etwas zum
// Spiegeln; ohne sie waere ein PBR-Metall schwarz.
void Direct3DDevice8::AqBaueUmgebung()
{
	if (AqUmgebung != nullptr || !AqUmgebungAn)
		return;

	// 642: 128 statt 32 -- der strukturlose Kleinwuerfel war die
	// Qualitaetsdecke der Nahsicht: auf ebenen Flaechen zeigt jeder
	// Pixel fast dieselbe Spiegelrichtung, ohne Struktur im Wuerfel
	// gibt es keine wandernden Glanzlichter ueber dem Relief.
	const UINT N = 128;
	if (FAILED(ProxyInterface->CreateCubeTexture(N, 1, 0, D3DFMT_A8R8G8B8,
		D3DPOOL_MANAGED, &AqUmgebung, nullptr)))
	{
		AqUmgebung = nullptr;
		return;
	}

	// Farbstuetzen (RGB): Oberflaeche, Horizont, Grund.
	static const float Oben[3]  = {  95.0f, 165.0f, 175.0f };
	static const float Mitte[3] = {  18.0f,  55.0f,  70.0f };
	static const float Unten[3] = {   6.0f,  14.0f,  20.0f };

	for (UINT f = 0; f < 6; ++f)
	{
		D3DLOCKED_RECT lr = {};
		if (FAILED(AqUmgebung->LockRect(static_cast<D3DCUBEMAP_FACES>(f), 0, &lr, nullptr, 0)))
			continue;

		for (UINT y = 0; y < N; ++y)
		{
			DWORD *Zeile = reinterpret_cast<DWORD *>(
				static_cast<unsigned char *>(lr.pBits) + (size_t)y * lr.Pitch);

			for (UINT x = 0; x < N; ++x)
			{
				const float uc = 2.0f * (x + 0.5f) / N - 1.0f;
				const float vc = 2.0f * (y + 0.5f) / N - 1.0f;

				// Blickrichtung je Flaeche (D3D-Wuerfelkonvention).
				float dx, dy, dz;
				switch (f)
				{
				case 0: dx =  1.0f; dy = -vc;   dz = -uc;   break;
				case 1: dx = -1.0f; dy = -vc;   dz =  uc;   break;
				case 2: dx =  uc;   dy =  1.0f; dz =  vc;   break;
				case 3: dx =  uc;   dy = -1.0f; dz = -vc;   break;
				case 4: dx =  uc;   dy = -vc;   dz =  1.0f; break;
				default: dx = -uc;  dy = -vc;   dz = -1.0f; break;
				}

				const float l = sqrtf(dx * dx + dy * dy + dz * dz);
				const float t = dy / l;   // -1 (unten) .. +1 (oben)

				float r, g, b;
				if (t >= 0.0f)
				{
					// Horizont -> Oberflaeche, leicht beschleunigt,
					// damit das helle Licht sichtbar "von oben" kommt.
					const float w = t * t;
					r = Mitte[0] + (Oben[0] - Mitte[0]) * w;
					g = Mitte[1] + (Oben[1] - Mitte[1]) * w;
					b = Mitte[2] + (Oben[2] - Mitte[2]) * w;
				}
				else
				{
					const float w = -t;
					r = Mitte[0] + (Unten[0] - Mitte[0]) * w;
					g = Mitte[1] + (Unten[1] - Mitte[1]) * w;
					b = Mitte[2] + (Unten[2] - Mitte[2]) * w;
				}

				// *** STRUKTUR (642): erst sie macht Glanzlichter. ***
				{
					const float nx2 = dx / l, ny2 = dy / l, nz2 = dz / l;
					// 1. Wasserflecken: weiches Pseudorauschen.
					const float fleck = sinf(nx2 * 7.3f + 1.7f)
						* sinf(ny2 * 5.1f + 0.6f) * sinf(nz2 * 6.7f + 2.9f);
					const float band = 1.0f - t * t;
					r += fleck * 14.0f * band;
					g += fleck * 18.0f * band;
					b += fleck * 18.0f * band;
					// 2. Lichtschaechte der Wasserdecke.
					const float az = atan2f(nz2, nx2);
					float strahl = sinf(az * 9.0f) * 0.5f + 0.5f;
					strahl = strahl * strahl * strahl;
					const float obenAnteil = t > 0.0f ? t : 0.0f;
					r += strahl * 26.0f * obenAnteil;
					g += strahl * 34.0f * obenAnteil;
					b += strahl * 34.0f * obenAnteil;
					// 3. Sonnenscheibe mit Halo, schraeg von oben.
					static const float Sx = 0.30f, Sy = 0.92f, Sz = 0.25f;
					const float sl = sqrtf(Sx * Sx + Sy * Sy + Sz * Sz);
					const float d = (nx2 * Sx + ny2 * Sy + nz2 * Sz) / sl;
					if (d > 0.0f)
					{
						const float h2 = d * d;
						const float h8 = h2 * h2 * h2 * h2;
						const float h32 = h8 * h8 * h8 * h8;
						r += h32 * 90.0f;
						g += h32 * 110.0f;
						b += h32 * 105.0f;
						if (d > 0.9965f)
						{
							r = 250.0f;
							g = 255.0f;
							b = 245.0f;
						}
					}
					if (r > 255.0f) r = 255.0f;
					if (g > 255.0f) g = 255.0f;
					if (b > 255.0f) b = 255.0f;
					if (r < 0.0f) r = 0.0f;
					if (g < 0.0f) g = 0.0f;
					if (b < 0.0f) b = 0.0f;
				}

				Zeile[x] = 0xFF000000
					| (static_cast<DWORD>(r) << 16)
					| (static_cast<DWORD>(g) << 8)
					|  static_cast<DWORD>(b);
			}
		}

		AqUmgebung->UnlockRect(static_cast<D3DCUBEMAP_FACES>(f), 0);
	}

	ProxyInterface->SetTexture(10, AqUmgebung);

#ifndef D3D8TO9NOLOG
	LOG << "> AquaNox: Umgebungswuerfel erzeugt (128, strukturiert, s10)" << std::endl;
#endif
}

// *** DER NOTBEHELF FUER vs_3_0 OHNE PARTNER (F17). ***
// Bewusst minimal: Textur 0 mal Diffusfarbe, Alpha durchgereicht.
// Er ersetzt die Fixed-Function-Kette NICHT originalgetreu -- er
// sorgt nur dafuer, dass das Objekt ueberhaupt erscheint.
// 611: konstantfarbiger Neutralisierer fuer die ERSATZ-Demo. Art
// 0 = Weiss, 1 = Halbgrau, 2 = Schwarz. ps_2_0 (gueltig mit den
// vs_1_1-Originalen der Zusatzpaesse).
IDirect3DPixelShader9 *Direct3DDevice8::AqHoleFlachPS(int Art)
{
	if (Art < 0 || Art > 3)
		return nullptr;
	if (AqFlachPS[Art] != nullptr)
		return AqFlachPS[Art];

	static const char *const Quellen[4] = {
		"ps_2_0\n    def c0, 1.0, 1.0, 1.0, 1.0\n    mov oC0, c0\n",
		"ps_2_0\n    def c0, 0.5, 0.5, 0.5, 1.0\n    mov oC0, c0\n",
		"ps_2_0\n    def c0, 0.0, 0.0, 0.0, 0.0\n    mov oC0, c0\n",
		// 628: MAGENTA -- Kennfarbe der Neutralisierer selbst; sie
		// waren der blinde Fleck der 627er-Kennfarben.
		"ps_2_0\n    def c0, 1.0, 0.0, 1.0, 1.0\n    mov oC0, c0\n",
	};

	ID3DXBuffer *Kode = nullptr, *Fehler = nullptr;
	if (SUCCEEDED(D3DXAssembleShader(Quellen[Art],
			static_cast<UINT>(strlen(Quellen[Art])), nullptr, nullptr, 0,
			&Kode, &Fehler))
		&& Kode != nullptr)
	{
		if (FAILED(ProxyInterface->CreatePixelShader(
			static_cast<const DWORD *>(Kode->GetBufferPointer()),
			&AqFlachPS[Art])))
			AqFlachPS[Art] = nullptr;
	}
	if (Kode != nullptr)
		Kode->Release();
	if (Fehler != nullptr)
		Fehler->Release();
	return AqFlachPS[Art];
}

IDirect3DPixelShader9 *Direct3DDevice8::AqHoleNotPS()
{
	if (AqNotPS != nullptr)
		return AqNotPS;

	static const char Quelle[] =
		"ps_3_0\n"
		"    dcl_color v0\n"
		"    dcl_texcoord0 v2\n"
		"    dcl_2d s0\n"
		// *** DAS ALPHA MUSS MIT (F21). *** Vorher stand hier
		// "mul r0.xyz" -- die Farbe wurde moduliert, das Alpha blieb
		// das rohe Texturalpha. Fixed Function multipliziert BEIDE.
		//
		// Gemessen: der Notbehelf zeichnet 759.534 von 88.000
		// vs_3_0-Zeichenaufruf-Durchlaeufen, also den groessten Teil der
		// Szene -- nicht, wie gedacht, seltene Ausnahmen. Ein falsches
		// Alpha schlaegt damit voll durch: Vegetation mit Alphatest
		// faellt durch den Test und verschwindet.
		"    texld r0, v2, s0\n"
		"    mul r0, r0, v0\n"
		"    mov oC0, r0\n";

	ID3DXBuffer *Kode = nullptr, *Fehler = nullptr;
	if (SUCCEEDED(D3DXAssembleShader(Quelle, sizeof(Quelle) - 1, nullptr, nullptr, 0, &Kode, &Fehler))
		&& Kode != nullptr)
	{
		if (FAILED(ProxyInterface->CreatePixelShader(
			static_cast<const DWORD *>(Kode->GetBufferPointer()), &AqNotPS)))
		{
			AqNotPS = nullptr;
		}
		else
		{
			++AqPSRefs;
		}
	}

	if (Kode != nullptr)   Kode->Release();
	if (Fehler != nullptr) Fehler->Release();

#ifndef D3D8TO9NOLOG
	LOG << "> AquaNox: Not-Pixelshader " << (AqNotPS ? "erzeugt" : "FEHLGESCHLAGEN") << std::endl;
#endif

	return AqNotPS;
}

IDirect3DPixelShader9 *Direct3DDevice8::AqHolePS(const AqSchluessel &k)
{
	const std::map<AqSchluessel, IDirect3DPixelShader9 *>::const_iterator Fund = AqCache.find(k);
	if (Fund != AqCache.end())
	{
		// *** DIE MESSUNG AUS PFLANZENPROBLEM_vs30.txt, Abschnitt 4. ***
		// Trennt "einmal gescheitert und fuer immer gemerkt" (CacheNull
		// waechst, NeuNull steht) von "scheitert jedes Mal neu"
		// (beide wachsen gleich).
		if (Fund->second == nullptr)
			++AqPSCacheNull;
		return Fund->second;   // auch nullptr ist ein gueltiges Ergebnis
	}

	IDirect3DPixelShader9 *PS = nullptr;
	std::string Quelle;

	// *** ps_2_0 ERLAUBT NUR 64 ANWEISUNGEN. *** Der schlimmste Fall
	// (Hemisphaere + 4 Punktlichter + additiv + drei Texturstufen)
	// braucht 65 und passt nicht hinein. Statt dann GAR NICHTS zu tun --
	// das Objekt fiele auf die Beleuchtung pro Eckpunkt zurueck und
	// saehe neben seinesgleichen sichtbar anders aus -- rechnet der
	// Shader lieber ein Punktlicht weniger pro Bildpunkt (F6).
	AqSchluessel Versuch = k;

	for (;;)
	{
		Quelle = AqBaueQuelltext(Versuch);
		if (Quelle.empty())
			break;   // nicht nachbaubar, kein Platzproblem

		ID3DXBuffer *Kode = nullptr, *Fehler = nullptr;

		const HRESULT hrA = D3DXAssembleShader(Quelle.data(), static_cast<UINT>(Quelle.size()),
			nullptr, nullptr, 0, &Kode, &Fehler);

		if (SUCCEEDED(hrA) && Kode != nullptr)
		{
			// *** DIESER FEHLSCHLAG WURDE NIE PROTOKOLLIERT (F24). ***
			// Gemessen: 255.849 gescheiterte Erzeugungen bei 260.000
			// Zeichenaufrufen -- bei NULL Assemblerfehlern im Protokoll.
			// Der Assembler ist also zufrieden, und CreatePixelShader
			// lehnt trotzdem ab. Ohne diese Zeile war das unsichtbar.
			const HRESULT hrC = ProxyInterface->CreatePixelShader(
				static_cast<const DWORD *>(Kode->GetBufferPointer()), &PS);
			if (FAILED(hrC))
			{
				PS = nullptr;
#ifndef D3D8TO9NOLOG
				LOG << "> AquaNox: CreatePixelShader FEHLGESCHLAGEN, hr=0x"
					<< std::hex << hrC << std::dec
					<< " (Modus " << static_cast<unsigned>(Versuch.Modus)
					<< ", Lichter " << static_cast<unsigned>(Versuch.Lichter)
					<< ", Stufen " << static_cast<unsigned>(Versuch.Stufen) << ")" << std::endl;
#endif
			}

			Kode->Release();
			if (Fehler != nullptr)
				Fehler->Release();
			break;
		}

#ifndef D3D8TO9NOLOG
		LOG << "> AquaNox: nicht assemblierbar mit " << static_cast<unsigned>(Versuch.Lichter)
			<< " Punktlichtern";
		if (Fehler != nullptr)
			LOG << ": " << static_cast<const char *>(Fehler->GetBufferPointer());
		LOG << std::endl;
#endif

		if (Kode != nullptr)
			Kode->Release();
		if (Fehler != nullptr)
			Fehler->Release();

		// *** ERST DEN GLANZ OPFERN, DANN ERST EIN LICHT. *** Der Glanz
		// kostet 12 Anweisungen, ein Punktlicht 11 -- beide sind also
		// gleich teuer. Aber ein fehlendes Punktlicht sieht man an einer
		// ganzen Flaeche, ein fehlendes Glanzlicht nur an einem Fleck.
		// Modus 10 faellt daher auf Modus 4 zurueck, bevor gezaehlt wird.
		// *** STUFENWEISE ZURUECK, NICHT IN EINEM SPRUNG. *** Passt der
		// Shader nicht ins Budget, faellt zuerst der teuerste und am
		// wenigsten sichtbare Anteil weg:
		//
		//   13 -> 12   Fresnel weg   (7 Anweisungen)
		//   12 -> 10   Hemisphaerenglanz weg (10)
		//   10 ->  4   Punktlichtglanz weg   (12)
		//    4          nur noch Lichter kuerzen (F6)
		//
		// Frueher sprang das von 13 direkt auf 4 und warf damit auch
		// die beiden Anteile weg, die noch bequem hineingepasst haetten.
		if (Versuch.Modus >= 10)
		{
			Versuch.Modus = (Versuch.Modus == 13) ? 12
			              : (Versuch.Modus == 12) ? 10
			              : 4;
			continue;
		}

		if (Versuch.Lichter == 0)
		{
#ifndef D3D8TO9NOLOG
			LOG << Quelle << std::endl;   // der letzte Versuch, zur Fehlersuche
#endif
			break;
		}

		--Versuch.Lichter;
	}

#ifndef D3D8TO9NOLOG
	// *** DEN TATSAECHLICH GEBAUTEN STAND MELDEN, NICHT DEN GEWUENSCHTEN.
	// *** Vorher stand hier k.Modus und k.Lichter -- also immer das, was
	// angefordert war. Ob der Rueckfall gegriffen hat (Glanz weg, Licht
	// weg), war aus dem Protokoll nicht zu erkennen. Genau das will man
	// aber wissen.
	LOG << "> AquaNox: Pixelshader " << (PS != nullptr ? "erzeugt" : "VERWORFEN")
		<< " (Modus " << static_cast<unsigned>(Versuch.Modus)
		<< (Versuch.Modus != k.Modus ? " ZURUECKGEFALLEN" : "")
		<< ", Lichter " << static_cast<unsigned>(Versuch.Lichter)
		<< (Versuch.Lichter != k.Lichter ? " GEKUERZT" : "")
		<< ", angefordert " << static_cast<unsigned>(k.Modus)
		<< "/" << static_cast<unsigned>(k.Lichter)
		<< ", Hemi " << static_cast<unsigned>(k.Hemi)
		<< ", Stufen " << static_cast<unsigned>(k.Stufen)
		<< ")  Mischung: Blend=" << AqBlendAn
		<< " Src=" << AqSrcBlend << " Dest=" << AqDestBlend
		<< " AlphaTest=" << AqAlphaTest
		<< "  Nebel: an=" << AqFogAn << " Farbe=0x" << std::hex << AqFogFarbe << std::dec
		<< " Tabelle=" << AqFogTabelle << " Vertex=" << AqFogVertex << std::endl;
	if (PS != nullptr && AqCache.size() < 4)
		LOG << Quelle << std::endl;   // die ersten vier zur Kontrolle zeigen

	// 631: fuer Modus-23-Schluessel die KOMPLETTE KETTE ausdrucken --
	// die Rohtexel-Probe (630) zeigte Weiss auf dem Terrain, also
	// referenziert dessen Kette die Materialtextur vermutlich nie.
	if (k.Modus == 23)
	{
		char kz[256];
		std::string Kette = "KETTE-23:";
		sprintf_s(kz, sizeof(kz), " Hash0=%016llx", AqHash0);   // 632
		Kette += kz;
		for (unsigned s = 0; s < k.Stufen && s < 4; ++s)
		{
			sprintf_s(kz, sizeof(kz),
				" S%u[COp=%u A1=0x%X A2=0x%X AOp=%u B1=0x%X B2=0x%X Tex=%u]",
				s, k.Op[s][0], k.Op[s][1], k.Op[s][2],
				k.Op[s][3], k.Op[s][4], k.Op[s][5], k.Tex[s]);
			Kette += kz;
		}
		LOG << "> AquaNox-" << Kette << std::endl;
	}
#endif

	if (PS != nullptr)
	{
		++AqPSRefs;   // haelt eine Geraetereferenz, siehe AddRef/Release
	}
	else
	{
		// Jeder Schluessel, der als nullptr in den Cache geht, wird
		// EINMAL vollstaendig protokolliert -- das ist die Liste der
		// Ketten, die dauerhaft scheitern.
		++AqPSNeuNull;
#ifndef D3D8TO9NOLOG
		LOG << "> AquaNox-NULLKEY: Modus=" << static_cast<unsigned>(k.Modus)
			<< " Lichter=" << static_cast<unsigned>(k.Lichter)
			<< " Hemi=" << static_cast<unsigned>(k.Hemi)
			<< " Additiv=" << static_cast<unsigned>(k.Additiv)
			<< " Stufen=" << static_cast<unsigned>(k.Stufen)
			<< " Glanz=" << static_cast<unsigned>(k.Glanz)
			<< " NormalKarte=" << static_cast<unsigned>(k.NormalKarte) << std::endl;
#endif
	}

	AqCache[k] = PS;   // auch Fehlschlaege merken: nicht jedes Bild neu versuchen
	return PS;
}
