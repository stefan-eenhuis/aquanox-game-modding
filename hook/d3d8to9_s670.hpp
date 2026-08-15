/**
 * Copyright (C) 2015 Patrick Mours. All rights reserved.
 * License: https://github.com/crosire/d3d8to9#license
 */

#pragma once

#include <vector>
#include <unordered_set>
#include <string>
#include <map>
#include <string.h>
#include "d3d8.hpp"
#include "interface_query.hpp"

class Direct3D8 : public IDirect3D8
{
	Direct3D8(const Direct3D8 &) = delete;
	Direct3D8 &operator=(const Direct3D8 &) = delete;

public:
	Direct3D8(IDirect3D9 *ProxyInterface);
	~Direct3D8();

	IDirect3D9 *GetProxyInterface() const { return ProxyInterface; }

	virtual HRESULT STDMETHODCALLTYPE QueryInterface(REFIID riid, void **ppvObj) override;
	virtual ULONG STDMETHODCALLTYPE AddRef() override;
	virtual ULONG STDMETHODCALLTYPE Release() override;

	virtual HRESULT STDMETHODCALLTYPE RegisterSoftwareDevice(void *pInitializeFunction) override;
	virtual UINT STDMETHODCALLTYPE GetAdapterCount() override;
	virtual HRESULT STDMETHODCALLTYPE GetAdapterIdentifier(UINT Adapter, DWORD Flags, D3DADAPTER_IDENTIFIER8 *pIdentifier) override;
	virtual UINT STDMETHODCALLTYPE GetAdapterModeCount(UINT Adapter) override;
	virtual HRESULT STDMETHODCALLTYPE EnumAdapterModes(UINT Adapter, UINT Mode, D3DDISPLAYMODE *pMode) override;
	virtual HRESULT STDMETHODCALLTYPE GetAdapterDisplayMode(UINT Adapter, D3DDISPLAYMODE *pMode) override;
	virtual HRESULT STDMETHODCALLTYPE CheckDeviceType(UINT Adapter, D3DDEVTYPE CheckType, D3DFORMAT DisplayFormat, D3DFORMAT BackBufferFormat, BOOL bWindowed) override;
	virtual HRESULT STDMETHODCALLTYPE CheckDeviceFormat(UINT Adapter, D3DDEVTYPE DeviceType, D3DFORMAT AdapterFormat, DWORD Usage, D3DRESOURCETYPE RType, D3DFORMAT CheckFormat) override;
	virtual HRESULT STDMETHODCALLTYPE CheckDeviceMultiSampleType(UINT Adapter, D3DDEVTYPE DeviceType, D3DFORMAT SurfaceFormat, BOOL Windowed, D3DMULTISAMPLE_TYPE MultiSampleType) override;
	virtual HRESULT STDMETHODCALLTYPE CheckDepthStencilMatch(UINT Adapter, D3DDEVTYPE DeviceType, D3DFORMAT AdapterFormat, D3DFORMAT RenderTargetFormat, D3DFORMAT DepthStencilFormat) override;
	virtual HRESULT STDMETHODCALLTYPE GetDeviceCaps(UINT Adapter, D3DDEVTYPE DeviceType, D3DCAPS8 *pCaps) override;
	virtual HMONITOR STDMETHODCALLTYPE GetAdapterMonitor(UINT Adapter) override;
	virtual HRESULT STDMETHODCALLTYPE CreateDevice(UINT Adapter, D3DDEVTYPE DeviceType, HWND hFocusWindow, DWORD BehaviorFlags, D3DPRESENT_PARAMETERS8 *pPresentationParameters, IDirect3DDevice8 **ppReturnedDeviceInterface) override;

private:
	IDirect3D9 *const ProxyInterface;

	static constexpr UINT MAX_ADAPTERS = 8;
	UINT CurrentAdapterCount = 0;
	UINT CurrentAdapterModeCount[MAX_ADAPTERS] = {};
	std::vector<D3DDISPLAYMODE> CurrentAdapterModes[MAX_ADAPTERS];
};

class Direct3DDevice8 : public IDirect3DDevice8
{
	Direct3DDevice8(const Direct3DDevice8 &) = delete;
	Direct3DDevice8 &operator=(const Direct3DDevice8 &) = delete;

public:
	Direct3DDevice8(Direct3D8 *d3d, IDirect3DDevice9 *ProxyInterface, DWORD BehaviorFlags, D3DFORMAT ZBufferFormat, BOOL EnableZBufferDiscarding);
	~Direct3DDevice8();

	IDirect3DDevice9 *GetProxyInterface() const { return ProxyInterface; }

	virtual HRESULT STDMETHODCALLTYPE QueryInterface(REFIID riid, void **ppvObj) override;
	virtual ULONG STDMETHODCALLTYPE AddRef() override;
	virtual ULONG STDMETHODCALLTYPE Release() override;

	virtual HRESULT STDMETHODCALLTYPE TestCooperativeLevel() override;
	virtual UINT STDMETHODCALLTYPE GetAvailableTextureMem() override;
	virtual HRESULT STDMETHODCALLTYPE ResourceManagerDiscardBytes(DWORD Bytes) override;
	virtual HRESULT STDMETHODCALLTYPE GetDirect3D(IDirect3D8 **ppD3D8) override;
	virtual HRESULT STDMETHODCALLTYPE GetDeviceCaps(D3DCAPS8 *pCaps) override;
	virtual HRESULT STDMETHODCALLTYPE GetDisplayMode(D3DDISPLAYMODE *pMode) override;
	virtual HRESULT STDMETHODCALLTYPE GetCreationParameters(D3DDEVICE_CREATION_PARAMETERS *pParameters) override;
	virtual HRESULT STDMETHODCALLTYPE SetCursorProperties(UINT XHotSpot, UINT YHotSpot, IDirect3DSurface8 *pCursorBitmap) override;
	virtual void STDMETHODCALLTYPE SetCursorPosition(UINT XScreenSpace, UINT YScreenSpace, DWORD Flags) override;
	virtual BOOL STDMETHODCALLTYPE ShowCursor(BOOL bShow) override;
	virtual HRESULT STDMETHODCALLTYPE CreateAdditionalSwapChain(D3DPRESENT_PARAMETERS8 *pPresentationParameters, IDirect3DSwapChain8 **ppSwapChain) override;
	virtual HRESULT STDMETHODCALLTYPE Reset(D3DPRESENT_PARAMETERS8 *pPresentationParameters) override;
	virtual HRESULT STDMETHODCALLTYPE Present(const RECT *pSourceRect, const RECT *pDestRect, HWND hDestWindowOverride, const RGNDATA *pDirtyRegion) override;
	virtual HRESULT STDMETHODCALLTYPE GetBackBuffer(UINT iBackBuffer, D3DBACKBUFFER_TYPE Type, IDirect3DSurface8 **ppBackBuffer) override;
	virtual HRESULT STDMETHODCALLTYPE GetRasterStatus(D3DRASTER_STATUS *pRasterStatus) override;
	virtual void STDMETHODCALLTYPE SetGammaRamp(DWORD Flags, const D3DGAMMARAMP *pRamp) override;
	virtual void STDMETHODCALLTYPE GetGammaRamp(D3DGAMMARAMP *pRamp) override;
	virtual HRESULT STDMETHODCALLTYPE CreateTexture(UINT Width, UINT Height, UINT Levels, DWORD Usage, D3DFORMAT Format, D3DPOOL Pool, IDirect3DTexture8 **ppTexture) override;
	virtual HRESULT STDMETHODCALLTYPE CreateVolumeTexture(UINT Width, UINT Height, UINT Depth, UINT Levels, DWORD Usage, D3DFORMAT Format, D3DPOOL Pool, IDirect3DVolumeTexture8 **ppVolumeTexture) override;
	virtual HRESULT STDMETHODCALLTYPE CreateCubeTexture(UINT EdgeLength, UINT Levels, DWORD Usage, D3DFORMAT Format, D3DPOOL Pool, IDirect3DCubeTexture8 **ppCubeTexture) override;
	virtual HRESULT STDMETHODCALLTYPE CreateVertexBuffer(UINT Length, DWORD Usage, DWORD FVF, D3DPOOL Pool, IDirect3DVertexBuffer8 **ppVertexBuffer) override;
	virtual HRESULT STDMETHODCALLTYPE CreateIndexBuffer(UINT Length, DWORD Usage, D3DFORMAT Format, D3DPOOL Pool, IDirect3DIndexBuffer8 **ppIndexBuffer) override;
	virtual HRESULT STDMETHODCALLTYPE CreateRenderTarget(UINT Width, UINT Height, D3DFORMAT Format, D3DMULTISAMPLE_TYPE MultiSample, BOOL Lockable, IDirect3DSurface8 **ppSurface) override;
	virtual HRESULT STDMETHODCALLTYPE CreateDepthStencilSurface(UINT Width, UINT Height, D3DFORMAT Format, D3DMULTISAMPLE_TYPE MultiSample, IDirect3DSurface8 **ppSurface) override;
	virtual HRESULT STDMETHODCALLTYPE CreateImageSurface(UINT Width, UINT Height, D3DFORMAT Format, IDirect3DSurface8 **ppSurface) override;
	virtual HRESULT STDMETHODCALLTYPE CopyRects(IDirect3DSurface8 *pSourceSurface, const RECT *pSourceRectsArray, UINT cRects, IDirect3DSurface8 *pDestinationSurface, const POINT *pDestPointsArray) override;
	virtual HRESULT STDMETHODCALLTYPE UpdateTexture(IDirect3DBaseTexture8 *pSourceTexture, IDirect3DBaseTexture8 *pDestinationTexture) override;
	virtual HRESULT STDMETHODCALLTYPE GetFrontBuffer(IDirect3DSurface8 *pDestSurface) override;
	virtual HRESULT STDMETHODCALLTYPE SetRenderTarget(IDirect3DSurface8 *pRenderTarget, IDirect3DSurface8 *pNewZStencil) override;
	virtual HRESULT STDMETHODCALLTYPE GetRenderTarget(IDirect3DSurface8 **ppRenderTarget) override;
	virtual HRESULT STDMETHODCALLTYPE GetDepthStencilSurface(IDirect3DSurface8 **ppZStencilSurface) override;
	virtual HRESULT STDMETHODCALLTYPE BeginScene() override;
	virtual HRESULT STDMETHODCALLTYPE EndScene() override;
	virtual HRESULT STDMETHODCALLTYPE Clear(DWORD Count, const D3DRECT *pRects, DWORD Flags, D3DCOLOR Color, float Z, DWORD Stencil) override;
	virtual HRESULT STDMETHODCALLTYPE SetTransform(D3DTRANSFORMSTATETYPE State, const D3DMATRIX *pMatrix) override;
	virtual HRESULT STDMETHODCALLTYPE GetTransform(D3DTRANSFORMSTATETYPE State, D3DMATRIX *pMatrix) override;
	virtual HRESULT STDMETHODCALLTYPE MultiplyTransform(D3DTRANSFORMSTATETYPE State, const D3DMATRIX *pMatrix) override;
	virtual HRESULT STDMETHODCALLTYPE SetViewport(const D3DVIEWPORT8 *pViewport) override;
	virtual HRESULT STDMETHODCALLTYPE GetViewport(D3DVIEWPORT8 *pViewport) override;
	virtual HRESULT STDMETHODCALLTYPE SetMaterial(const D3DMATERIAL8 *pMaterial) override;
	virtual HRESULT STDMETHODCALLTYPE GetMaterial(D3DMATERIAL8 *pMaterial) override;
	virtual HRESULT STDMETHODCALLTYPE SetLight(DWORD Index, const D3DLIGHT8 *pLight) override;
	virtual HRESULT STDMETHODCALLTYPE GetLight(DWORD Index, D3DLIGHT8 *pLight) override;
	virtual HRESULT STDMETHODCALLTYPE LightEnable(DWORD Index, BOOL Enable) override;
	virtual HRESULT STDMETHODCALLTYPE GetLightEnable(DWORD Index, BOOL *pEnable) override;
	virtual HRESULT STDMETHODCALLTYPE SetClipPlane(DWORD Index, const float *pPlane) override;
	virtual HRESULT STDMETHODCALLTYPE GetClipPlane(DWORD Index, float *pPlane) override;
	virtual HRESULT STDMETHODCALLTYPE SetRenderState(D3DRENDERSTATETYPE State, DWORD Value) override;
	virtual HRESULT STDMETHODCALLTYPE GetRenderState(D3DRENDERSTATETYPE State, DWORD *pValue) override;
	virtual HRESULT STDMETHODCALLTYPE BeginStateBlock() override;
	virtual HRESULT STDMETHODCALLTYPE EndStateBlock(DWORD *pToken) override;
	virtual HRESULT STDMETHODCALLTYPE ApplyStateBlock(DWORD Token) override;
	virtual HRESULT STDMETHODCALLTYPE CaptureStateBlock(DWORD Token) override;
	virtual HRESULT STDMETHODCALLTYPE DeleteStateBlock(DWORD Token) override;
	virtual HRESULT STDMETHODCALLTYPE CreateStateBlock(D3DSTATEBLOCKTYPE Type, DWORD *pToken) override;
	virtual HRESULT STDMETHODCALLTYPE SetClipStatus(const D3DCLIPSTATUS8 *pClipStatus) override;
	virtual HRESULT STDMETHODCALLTYPE GetClipStatus(D3DCLIPSTATUS8 *pClipStatus) override;
	virtual HRESULT STDMETHODCALLTYPE GetTexture(DWORD Stage, IDirect3DBaseTexture8 **ppTexture) override;
	virtual HRESULT STDMETHODCALLTYPE SetTexture(DWORD Stage, IDirect3DBaseTexture8 *pTexture) override;
	virtual HRESULT STDMETHODCALLTYPE GetTextureStageState(DWORD Stage, D3DTEXTURESTAGESTATETYPE Type, DWORD *pValue) override;
	virtual HRESULT STDMETHODCALLTYPE SetTextureStageState(DWORD Stage, D3DTEXTURESTAGESTATETYPE Type, DWORD Value) override;
	virtual HRESULT STDMETHODCALLTYPE ValidateDevice(DWORD *pNumPasses) override;
	virtual HRESULT STDMETHODCALLTYPE GetInfo(DWORD DevInfoID, void *pDevInfoStruct, DWORD DevInfoStructSize) override;
	virtual HRESULT STDMETHODCALLTYPE SetPaletteEntries(UINT PaletteNumber, const PALETTEENTRY *pEntries) override;
	virtual HRESULT STDMETHODCALLTYPE GetPaletteEntries(UINT PaletteNumber, PALETTEENTRY *pEntries) override;
	virtual HRESULT STDMETHODCALLTYPE SetCurrentTexturePalette(UINT PaletteNumber) override;
	virtual HRESULT STDMETHODCALLTYPE GetCurrentTexturePalette(UINT *PaletteNumber) override;
	virtual HRESULT STDMETHODCALLTYPE DrawPrimitive(D3DPRIMITIVETYPE PrimitiveType, UINT StartVertex, UINT PrimitiveCount) override;
	virtual HRESULT STDMETHODCALLTYPE DrawIndexedPrimitive(D3DPRIMITIVETYPE PrimitiveType, UINT MinIndex, UINT NumVertices, UINT StartIndex, UINT PrimitiveCount) override;
	virtual HRESULT STDMETHODCALLTYPE DrawPrimitiveUP(D3DPRIMITIVETYPE PrimitiveType, UINT PrimitiveCount, const void *pVertexStreamZeroData, UINT VertexStreamZeroStride) override;
	virtual HRESULT STDMETHODCALLTYPE DrawIndexedPrimitiveUP(D3DPRIMITIVETYPE PrimitiveType, UINT MinVertexIndex, UINT NumVertexIndices, UINT PrimitiveCount, const void *pIndexData, D3DFORMAT IndexDataFormat, const void *pVertexStreamZeroData, UINT VertexStreamZeroStride) override;
	virtual HRESULT STDMETHODCALLTYPE ProcessVertices(UINT SrcStartIndex, UINT DestIndex, UINT VertexCount, IDirect3DVertexBuffer8 *pDestBuffer, DWORD Flags) override;
	virtual HRESULT STDMETHODCALLTYPE CreateVertexShader(const DWORD *pDeclaration, const DWORD *pFunction, DWORD *pHandle, DWORD Usage) override;
	virtual HRESULT STDMETHODCALLTYPE SetVertexShader(DWORD Handle) override;
	virtual HRESULT STDMETHODCALLTYPE GetVertexShader(DWORD *pHandle) override;
	virtual HRESULT STDMETHODCALLTYPE DeleteVertexShader(DWORD Handle) override;
	virtual HRESULT STDMETHODCALLTYPE SetVertexShaderConstant(DWORD Register, const void *pConstantData, DWORD ConstantCount) override;
	virtual HRESULT STDMETHODCALLTYPE GetVertexShaderConstant(DWORD Register, void *pConstantData, DWORD ConstantCount) override;
	virtual HRESULT STDMETHODCALLTYPE GetVertexShaderDeclaration(DWORD Handle, void *pData, DWORD *pSizeOfData) override;
	virtual HRESULT STDMETHODCALLTYPE GetVertexShaderFunction(DWORD Handle, void *pData, DWORD *pSizeOfData) override;
	virtual HRESULT STDMETHODCALLTYPE SetStreamSource(UINT StreamNumber, IDirect3DVertexBuffer8 *pStreamData, UINT Stride) override;
	virtual HRESULT STDMETHODCALLTYPE GetStreamSource(UINT StreamNumber, IDirect3DVertexBuffer8 **ppStreamData, UINT *pStride) override;
	virtual HRESULT STDMETHODCALLTYPE SetIndices(IDirect3DIndexBuffer8 *pIndexData, UINT BaseVertexIndex) override;
	virtual HRESULT STDMETHODCALLTYPE GetIndices(IDirect3DIndexBuffer8 **ppIndexData, UINT *pBaseVertexIndex) override;
	virtual HRESULT STDMETHODCALLTYPE CreatePixelShader(const DWORD *pFunction, DWORD *pHandle) override;
	virtual HRESULT STDMETHODCALLTYPE SetPixelShader(DWORD Handle) override;
	virtual HRESULT STDMETHODCALLTYPE GetPixelShader(DWORD *pHandle) override;
	virtual HRESULT STDMETHODCALLTYPE DeletePixelShader(DWORD Handle) override;
	virtual HRESULT STDMETHODCALLTYPE SetPixelShaderConstant(DWORD Register, const void *pConstantData, DWORD ConstantCount) override;
	virtual HRESULT STDMETHODCALLTYPE GetPixelShaderConstant(DWORD Register, void *pConstantData, DWORD ConstantCount) override;
	virtual HRESULT STDMETHODCALLTYPE GetPixelShaderFunction(DWORD Handle, void *pData, DWORD *pSizeOfData) override;
	virtual HRESULT STDMETHODCALLTYPE DrawRectPatch(UINT Handle, const float *pNumSegs, const D3DRECTPATCH_INFO *pRectPatchInfo) override;
	virtual HRESULT STDMETHODCALLTYPE DrawTriPatch(UINT Handle, const float *pNumSegs, const D3DTRIPATCH_INFO *pTriPatchInfo) override;
	virtual HRESULT STDMETHODCALLTYPE DeletePatch(UINT Handle) override;

	AddressLookupTable *ProxyAddressLookupTable;

private:
	void ApplyClipPlanes();
	void ReleaseShadersAndStateBlocks();

	Direct3D8 *const D3D;
	IDirect3DDevice9 *const ProxyInterface;

	const BOOL ZBufferDiscarding = FALSE;
	bool IsPaletteSupported = false;
	bool IsMixedVertexProcessingDevice = false;
	bool IsRecordingState = false;

	DWORD CurrentZBufferBitCount = 0;
	DWORD CurrentZBiasRenderState = 0;
	INT   CurrentBaseVertexIndex = 0;
	DWORD CurrentVertexShaderHandle = 0, CurrentPixelShaderHandle = 0;

	static constexpr size_t MAX_CLIP_PLANES = 6;
	float StoredClipPlanes[MAX_CLIP_PLANES][4] = {};
	DWORD ClipPlaneRenderState = 0;

	// Store shader handles and state block tokens so they can be destroyed later to mirror D3D8 behavior
	std::unordered_set<DWORD> PixelShaderHandles, VertexShaderHandles, StateBlockTokens;
	unsigned int VertexShaderAndDeclarationCount = 0;

	// ==================================================================
	// AquaNox: Beleuchtung pro Bildpunkt  (Handoff 547)
	//
	// Gesteuert ueber die Umgebungsvariable AQUANOX_PP:
	//     0 (oder nicht gesetzt)  aus, der Wrapper verhaelt sich normal
	//     1  Messlauf: protokolliert die Texturstufen, aendert NICHTS
	//     3  Interpolatorprobe: faerbt Objekte nach der Normalen
	//
	// *** WARUM EIN ZUSTANDSSCHATTEN? *** AquaNox erzeugt das Geraet mit
	// D3DCREATE_PUREDEVICE (gemessen: BehaviorFlags 0x50). Darauf liefern
	// GetRenderState, GetTextureStageState und GetVertexShaderConstantF
	// NICHTS. Jeder Zustand, den wir brauchen, muss beim Setzen
	// mitgeschrieben werden.
	// ==================================================================
	// Der Zustandsschluessel: alles, was den erzeugten Pixelshader
	// bestimmt. Ausschliesslich unsigned char, damit memcmp eine
	// wohldefinierte Ordnung hat.
	struct AqSchluessel
	{
		unsigned char Modus, Lichter, Hemi, Additiv, Stufen, Glanz;
	// *** OB EINE NORMALENKARTE AUF STUFE 4 LIEGT (566.4). ***
	// Muss in den Schluessel: sonst bekaemen Objekte mit und ohne
	// Karte denselben Shader, und einer von beiden laese eine
	// unbelegte Samplerstufe -- Ergebnis undefiniert.
	unsigned char NormalKarte;
	// Liegt eine ORM-Karte (Rauheit im G-Kanal) auf s9? (571)
	unsigned char OrmKarte;
	// Von welcher Texturstufe stammen die Karten und ihre UVs? (591)
	// 0 = Stufe 0 (Normalfall), 1 = Stufe 1 (lightmap-zuerst-Zuege).
	unsigned char KartenStufe;
	// Additiv gemischter Effekt (Muendungsfeuer, Lichtkegel): selbst-
	// leuchtend, bekommt weder Glanz noch Normalenkarte (574).
	unsigned char Effekt;
	// Kaustik-Orientierung (669): 0 = keine, 1 = Statics-Kaustik
	// (Modus-23-Zug, Kaustik-Frame auf Stufe 0), 2 = Schiffs-Kaustik
	// (Modus-5-Zug, Kaustik-Frame auf Stufe 2). Muss in den
	// Schluessel: derselbe Kettenaufbau existiert mit und ohne
	// Kaustik-Frame -- ohne Feld bekaemen beide denselben Shader.
	unsigned char Kaustik;
		unsigned char Op[4][6];   // COp,CA1,CA2,AOp,AA1,AA2 je Stufe
		unsigned char Tex[4];     // 0 keine, 1 = 2D, 2 = sonstige

		bool operator<(const AqSchluessel &a) const
		{
			return memcmp(this, &a, sizeof(AqSchluessel)) < 0;
		}
	};

	// Die Ordnung haengt allein an der Disziplin "nur unsigned char".
	// Ein spaeter eingefuegtes DWORD erzeugt Fuellbytes -- und damit
	// einen Cache, der gleiche Zustaende fuer verschieden haelt.
	static_assert(sizeof(AqSchluessel) == 39, "AqSchluessel darf keine Fuellbytes haben");

	void AqInit(DWORD BehaviorFlags);
	void AqDefaults();
	void AqVorZeichnen();
	void AqGibFrei();
	bool AqKaustikZug();   // 644/650: Kaustik-Zug unterdruecken? (loggt Treffer)
	bool AqBaueSchluessel(AqSchluessel &k) const;
	std::string AqBaueQuelltext(const AqSchluessel &k) const;
	IDirect3DPixelShader9 *AqHolePS(const AqSchluessel &k);

	int   AqModus = 0;              // 0 aus, 1 messen, 3 Normalenprobe
	bool  AqSchattenGueltig = true; // Zustandsbloecke machen ihn ungueltig

	DWORD AqTSS[8][34] = {};        // Texturstufen, geschattet
	unsigned char AqTexTyp[8] = {}; // 0 keine, 1 = 2D, 2 = sonstige
	DWORD AqTFactor = 0xFFFFFFFF;   // D3DRS_TEXTUREFACTOR, geschattet
	DWORD AqSpecular = 0;           // D3DRS_SPECULARENABLE, geschattet
	float AqKonst[22][4] = {};      // Vertexshaderkonstanten c50..c71

	// *** DIE KAMERA STEHT IN c2, IM OBJEKTRAUM. *** Belegt an den
	// Spielshadern selbst: "add oT0.xyz, v0, -c2" ist der Blickvektor
	// (Eckpunkt minus Auge). Ohne diese Konstante gibt es im
	// Pixelshader kein V -- und ohne V keinen Glanz und kein Fresnel.
	// Sie geht als ps c0 hinueber (554.x); c0..c7 sind dort frei,
	// weil die Lichtkonstanten erst bei c8 anfangen.
	float AqKamera[4] = {};

	// Mischzustaende, geschattet (555.8). Auf einem PUREDEVICE gibt es
	// auch dafuer kein GetRenderState.
	DWORD AqBlendAn = 0, AqSrcBlend = 0, AqDestBlend = 0, AqAlphaTest = 0;
	DWORD AqFogAn = 0, AqFogFarbe = 0, AqFogTabelle = 0, AqFogVertex = 0;

	// vs_3_0-Umstellung, ueber AQUANOX_VS3 geschaltet (561).
	bool AqVS3 = false;
	bool AqWurdeVS3 = false;   // wurde der zuletzt erzeugte VS umgestellt?
	bool AqVS3Aktiv = false;
	// Doppel-Fassung (579): beide Zeiger des gerade gebundenen Handles,
	// und ob das Geraet gerade auf der vs_3_0-Fassung steht.
	IDirect3DVertexShader9 *AqVSOriginal = nullptr;
	IDirect3DVertexShader9 *AqVSDrei = nullptr;
	bool AqVS3Gebunden = false;

	// *** ZAEHLER, VON HAND GESETZT (567). *** Die Vorgaenger sassen an
	// falschen Stellen: automatische Textersetzungen hatten Anweisungen
	// an KLAMMERLOSE ifs angehaengt, sodass zwei Zaehler bei JEDEM
	// Zeichenaufruf liefen statt nur im bedingten Fall. Ergebnis waren
	// Millionen gemeldeter "Notbehelf-Einsaetze", wo fast nichts
	// geschah -- und darauf gebaute falsche Schluesse (564, 566).
	// Jeder dieser Zaehler steht jetzt in einem geklammerten Block
	// unmittelbar an seiner Wirkung.
	unsigned AqZaehlVS3Draw = 0;   // Zeichenaufrufe mit umgestelltem VS
	unsigned AqNotA = 0;           // Notbehelf GEBUNDEN: Schluessel nicht baubar
	unsigned AqNotB = 0;           // Notbehelf GEBUNDEN: AqHolePS gab nullptr
	unsigned AqNotC = 0;           // Notbehelf GEBUNDEN: "nicht zustaendig"
	unsigned AqNotD = 0;           // Notbehelf GEBUNDEN: Schatten ungueltig
	unsigned AqNachbauC = 0;       // Nachbau (Modus 2) im Zweig C gebunden
	unsigned AqOhnePartner = 0;    // vs_3_0 gezeichnet, KEIN Pixelshader gesetzt
	unsigned AqPSCacheNull = 0;    // AqHolePS: nullptr kam AUS DEM CACHE
	unsigned AqPSNeuNull = 0;      // AqHolePS: nullptr NEU in den Cache gelegt
	unsigned AqVS3Fehlgeschlagen = 0; // Licht-VS, Umstellung gescheitert (567.3)
	unsigned AqFremdPS = 0;        // Spiel-PS auf vs_3_0-Objekt: ungueltiges Paar

	// Spiegel-Vorgabe 5 MIT Kappung 0.5: die Kappung verhindert das
	// Chrom auf gekruemmten Objekten, die Staerke macht die Flaechen-
	// spiegelung sichtbar. 3 ohne Kappung war zu leise, 5 ohne Kappung
	// zu laut (577b).
	// w (Wandlicht) Vorgabe 1 = DEZENT (601): funktionsfaehig seit dem
	// X5584-Fix (599), geklemmt 0.5..2.0 (600), Bandpass-Karten (600).
	// Auf koernigen Texturen wirkt es wie zusaetzliche Kaustik --
	// Geschmackssache, per AQUANOX_WANDLICHT frei (0 = aus).
	float AqRelief[4] = { 3.0f, 5.0f, 1.0f, 1.0f };   // x: Relief (572), y: Spiegel (577), z: Metall (584), w: Wandlicht (593)
	int AqNKStufe = 2;            // AQUANOX_NK: 0 aus, 1 nur laden, 2 voll (568)
	bool AqNormalAktiv = false;   // Textur 0 hat eine Karte (566.4)
	bool AqOrmAktiv = false;      // Textur 0 hat eine ORM-Karte (571)
	unsigned long long AqHash0 = 0;   // Hash der Stufe-0-Textur (588b-Diagnose)
	// Hash der Stufe-2-Textur (669): die Schiffs-Kaustik haengt als
	// BLENDTEXTUREALPHA-Stufe 2 im Modus-5-Hauptzug -- der
	// Schluesselbau erkennt sie am Frame-Hash, analog AqHash0.
	unsigned long long AqHash2 = 0;
	// Hash der Stufe-3-Textur (670): fuer die KAUSTIK-ZUG-Diagnose --
	// die Terrain-Kette traegt material_1 auf St3; die Kaustik der
	// Statics koennte statt auf St0/St2 auch dort sitzen.
	unsigned long long AqHash3 = 0;
	// *** KARTENQUELLE (591). *** Liegt auf Stufe 0 eine LIGHTMAP
	// (keine Karten, seit 591 ausgeschlossen), aber auf Stufe 1 die
	// eigentliche Objekttextur MIT Karten, kommen s8/s9 von dort und
	// werden mit t1 abgetastet. Entdeckt an den Parabolantennen (590):
	// deren Schuessel zeichnet lightmap-zuerst, Textur multipliziert.
	Direct3DTexture8 *AqStufe1Tex = nullptr;   // Stufe-1-Textur, geschattet
	unsigned char AqKartenStufe = 0;           // 0 oder 1, je Zeichenaufruf
	unsigned AqFrame = 0;                      // Present-Zaehler (595-Diagnose)
	unsigned AqDiagZeilen = 0;                 // Deckel der 595-Protokollzeilen
	// *** DIE PRELIT-KAMERA (596). *** Die Prelit-Vertexshader kennen
	// KEIN c2 -- die "Kamera" der Waende war der veraltete Wert des
	// letzten Lichtobjekts, im falschen Objektraum: Fresnel, Spiegel,
	// Metall und Wandlicht waren auf Prelit-Flaechen von Anfang an
	// stumm. Abhilfe: vs c0..c3 (WVP-Matrix, m4x4 oPos) mitschreiben
	// und die Kamera als M^-1 * (0,0,1,0) errechnen (homogen geteilt).
	// 597: Schatten der vs-Konstanten c0..c7 (dort liegen die WVP-
	// Matrizen; WELCHES Register, weiss der jeweilige Shader selbst --
	// VertexShaderInfo::MatrixReg, am Quelltext erkannt: die Prelit-
	// Objektshader nutzen c3, nicht c0 wie zuerst angenommen).
	float AqVSK[8][4] = {};
	int AqVSMatrixReg = -1;      // MatrixReg des gebundenen Shaders
	int AqMatrixRegErkannt = -1; // Zwischenwert beim CreateVertexShader (597)
	bool AqMatrixSchmutzig = false;
	float AqPrelitKamera[4] = {};
	bool AqPrelitKameraGueltig = false;
	unsigned AqNormalGebunden = 0;   // 566.3
	bool AqTexDump = false;   // AQUANOX_TEXDUMP=1 (566.2)
	std::unordered_set<unsigned long long> AqTexGesehen;   // 566
	mutable std::unordered_set<std::string> AqWarum;   // F25
	void AqLogAblehnung(const char *Grund, DWORD Stufe) const;   // 567.2

	// Prozedurale Unterwasser-Umgebung fuer Spiegelungen (576): heller
	// Wasserspiegel oben, dunkler Grund unten. Auf s10 gebunden --
	// das D3D8-Spiel kann Stufen ab 8 nicht ansprechen.
	IDirect3DCubeTexture9 *AqUmgebung = nullptr;
	bool AqUmgebungAn = true;   // AQUANOX_UMGEBUNG=0 schaltet ab
	bool AqPrelitAn = true;       // AQUANOX_PRELIT=0 schaltet Prelit-Pfad ab (580)
	bool AqErsatzAn = false;      // AQUANOX_ERSATZ=1: Albedo-Ersetzung (606)
	bool AqDetailAn = false;      // AQUANOX_DETAIL=1: Detailpass-Uebernahme (614)
	// 627: Pfad-Kennfarben (prozesskonstant): Prelit ROT, Detail
	// GRUEN, Licht BLAU, FF unveraendert -- beantwortet mit EINEM
	// Screenshot, welcher Zug eine Flaeche malt.
	bool AqKennfarbenAn = false;
	int AqKennfarbenArt = 0;      // 1 = Pfadfarben, 2 = Modus-23-Rohtexel (630)
	// 607: UV-Kachelung. Die projizierten Wand-UVs strecken EINE
	// Kachel ueber dutzende Meter (Stefans Screenshot: Truemmerstueck
	// scharf, Waende einfarbig) -- Detail ist dort prinzipiell
	// unsichtbar, bis die UVs im Shader vervielfacht werden.
	// c5.x = Kachelfaktor (607), c5.y = Parallax-Staerke (643).
	float AqKachel[4] = { 1.0f, 0.0f, 0.0f, 0.0f };   // AQUANOX_KACHEL/-PARALLAX -> c5
	bool AqKachelAn = false;
	bool AqParallaxAn = false;    // AQUANOX_PARALLAX > 0 (643)
	// AQUANOX_KAUSTIK=0: Kaustik KOMPLETT aus (644, repariert 669) --
	// Statics-Zuege per Draw-Skip (AqKaustikZug), die Schiffs-Stufe
	// per Shader-Gate mit f=0 (sie steckt im Hauptzug, ein Skip
	// fraesse das ganze Schiff). Hashes aus kaustik_hashes.txt,
	// seit 669 IMMER geladen: sie speisen auch die Kaustik-
	// Erkennung im Schluesselbau (Statics-St0 / Schiffs-St2).
	bool AqKaustikAus = false;
	// AQUANOX_KAUSTIK_RICHTUNG=s (669, Stefans 667b-Befund): Kaustik
	// nur auf Oberseiten, f = (1-s) + s*sat(N.up); s=0 (Vorgabe) =
	// bisheriges Verhalten, der Grundanteil (1-s) verhindert
	// voellig tote Waende. Prozesskonstant -- kein Schluesselfeld,
	// der Wert steckt als def-Literal (c32) im Shaderkopf.
	float AqKaustikRichtung = 0.0f;
	std::unordered_set<unsigned long long> AqKaustikHashes;
	// Eigene Lichtquellen (649): mod_docu\lichter.txt, aktiv mit
	// AQUANOX_LICHTER=1. Puls/Blinken rechnet die CPU je Frame in
	// die Farbe; der Shader sieht nur c6 (Pos+1/R^2) und c7
	// (Farbe*Intensitaet). Version 1: EIN aktiver Slot (Licht 0).
	struct AqLicht
	{
		float Pos[3];
		float Farbe[3];
		float Intensitaet;
		float Radius;
		int Modus;        // 0 fest, 1 pulsierend, 2 blinkend
		float PeriodeMs;
	};
	// Mehrslot (652): bis 16 Lichter, je Licht ZWEI Register im
	// eigenen Konstantenbereich c200+ (kollisionsfrei: Engine-PS
	// enden bei c8, unsere defs bei c31, AqKonst bei c29) --
	// c200+2i = Pos + 1/R^2, c201+2i = Farbe*Intensitaet(t).
	AqLicht AqLichter[16] = {};
	int AqLichterZahl = 0;
	bool AqLichterAn = false;
	float AqLichtDaten[32][4] = {};
	void AqLichtTick();
	// 654: Welt-Kameraposition aus SetTransform(VIEW) -- Referenz,
	// um die Welt-Lichtpositionen je Zug in dessen Objektraum zu
	// verschieben (Licht_obj = PrelitKamera + Licht_welt - Auge).
	float AqWeltKamera[4] = {};
	bool AqWeltKameraGueltig = false;
	bool AqWeltKameraGemeldet = false;
	// 670: Einmalmeldung des ersten Modus-23-Terrainzugs mit
	// TERRAINMIX=2 (WeltKam gueltig? womit rechnet die Selektor-UV?).
	bool AqTerrainMix2Gemeldet = false;
	void AqLichtUpload();
	// AQUANOX_ANTIKACHEL (649): Grossskala-Selbstmodulation gegen
	// sichtbare Texturwiederholung; c5.z = Skala, c5.w = Staerke.
	bool AqAntikachelAn = false;
	// AQUANOX_TERRAINMIX (661/668): Materialmischung im Terrain-
	// Detailzug gegen den Einheits-Kies (s0); die Engine bindet
	// Sand (s1), Fels (s3) und den Fels-Selektor (s2) laengst.
	//   1 = Neigungsheuristik (flach Sand, steil Fels, 661);
	//   2 = Vollvariante (668): ECHTE Selektorkarte von s2,
	//       Gewicht = Alpha, UV = (t6 - c7)/4096 (Weltrekonstruktion).
	int AqTerrainMix = 0;
	bool AqZAn = true;          // D3DRS_ZENABLE, geschattet (581)
	DWORD AqCull = D3DCULL_CCW; // D3DRS_CULLMODE, geschattet (581c)
	void AqBaueUmgebung();
	void AqSetzeKartenfilter();   // 585: LINEAR fuer s8..s10
	void AqWaehleKartenquelle();  // 591: s8/s9 von Stufe 0 oder 1

	// Notbehelf, wenn ein vs_3_0 sonst ohne Pixelshader bliebe (F17).
	IDirect3DPixelShader9 *AqNotPS = nullptr;
	IDirect3DPixelShader9 *AqHoleNotPS();

	// 611 (nur ERSATZ-Demo): konstantfarbige Neutralisierer fuer die
	// ueberdeckenden Original-Zusatzpaesse. 0 = Weiss (d*s -> d),
	// 1 = Halbgrau (2*d*s -> d), 2 = Schwarz (additiv -> nichts),
	// 3 = Magenta (628, Kennfarbe der Neutralisierer).
	IDirect3DPixelShader9 *AqFlachPS[4] = {};
	IDirect3DPixelShader9 *AqHoleFlachPS(int Art);

	// Merkmale des gerade gesetzten Vertexshaders
	bool  AqVSLicht = false, AqVSHemi = false, AqVSAdditiv = false, AqVSGlanz = false;
	unsigned char AqVSLichter = 0;

	unsigned int AqPSRefs = 0;                    // lebende eigene Pixelshader
	IDirect3DPixelShader9 *AqAktiverPS = nullptr; // was am Geraet haengt
	std::unordered_set<std::string> AqGesehen;    // Messlauf: Kombinationen
	std::map<AqSchluessel, IDirect3DPixelShader9 *> AqCache;
	bool AqKonstSchmutzig = true;
};

class Direct3DSwapChain8 : public IDirect3DSwapChain8, public AddressLookupTableObject
{
	Direct3DSwapChain8(const Direct3DSwapChain8 &) = delete;
	Direct3DSwapChain8 &operator=(const Direct3DSwapChain8 &) = delete;

public:
	Direct3DSwapChain8(Direct3DDevice8 *device, IDirect3DSwapChain9 *ProxyInterface);
	~Direct3DSwapChain8();

	IDirect3DSwapChain9 *GetProxyInterface() const { return ProxyInterface; }

	virtual HRESULT STDMETHODCALLTYPE QueryInterface(REFIID riid, void **ppvObj) override;
	virtual ULONG STDMETHODCALLTYPE AddRef() override;
	virtual ULONG STDMETHODCALLTYPE Release() override;

	virtual HRESULT STDMETHODCALLTYPE Present(const RECT *pSourceRect, const RECT *pDestRect, HWND hDestWindowOverride, const RGNDATA *pDirtyRegion) override;
	virtual HRESULT STDMETHODCALLTYPE GetBackBuffer(UINT iBackBuffer, D3DBACKBUFFER_TYPE Type, IDirect3DSurface8 **ppBackBuffer) override;

private:
	Direct3DDevice8 *const Device;
	IDirect3DSwapChain9 *const ProxyInterface;
};

class Direct3DTexture8 : public IDirect3DTexture8, public AddressLookupTableObject
{
	// *** TEXTURERKENNUNG (566). *** Direct3D reicht keine Dateinamen
	// durch; bei SetTexture kommt nur ein Zeiger an. Der Hash ueber die
	// Pixeldaten der obersten Stufe ist die einzige stabile Kennung,
	// ueber die sich spaeter eine Normalen- oder ORM-Karte zuordnen
	// laesst. Derselbe Weg, den Texturersetzung ueblicherweise geht.
public:
	unsigned long long AqHash = 0;   // 0 = noch nicht berechnet
	void *AqLockZeiger = nullptr;    // gemerkt zwischen Lock und Unlock
	int   AqLockPitch = 0;
	unsigned AqBreite = 0, AqHoehe = 0;
	unsigned AqZeilen = 0;
	// *** DIE ZUGEORDNETE NORMALENKARTE (566.3). *** nullptr heisst
	// entweder "noch nicht gesucht" oder "es gibt keine" -- das
	// trennt AqNormalGesucht.
	IDirect3DTexture9 *AqNormal = nullptr;
	IDirect3DTexture9 *AqOrm = nullptr;      // 571
	IDirect3DTexture9 *AqErsatz = nullptr;   // 606: Albedo-Ersatz (PBR-Demo)
	bool AqErsatzGesucht = false;
	bool AqOrmGesucht = false;
	bool AqNormalGesucht = false;   // Datenzeilen: bei DXT ein Viertel der Hoehe (F26)

	Direct3DTexture8(const Direct3DTexture8 &) = delete;
	Direct3DTexture8 &operator=(const Direct3DTexture8 &) = delete;

public:
	Direct3DTexture8(Direct3DDevice8 *device, IDirect3DTexture9 *ProxyInterface);
	~Direct3DTexture8();

	IDirect3DTexture9 *GetProxyInterface() const { return ProxyInterface; }

	virtual HRESULT STDMETHODCALLTYPE QueryInterface(REFIID riid, void **ppvObj) override;
	virtual ULONG STDMETHODCALLTYPE AddRef() override;
	virtual ULONG STDMETHODCALLTYPE Release() override;

	virtual HRESULT STDMETHODCALLTYPE GetDevice(IDirect3DDevice8 **ppDevice) override;
	virtual HRESULT STDMETHODCALLTYPE SetPrivateData(REFGUID refguid, const void *pData, DWORD SizeOfData, DWORD Flags) override;
	virtual HRESULT STDMETHODCALLTYPE GetPrivateData(REFGUID refguid, void *pData, DWORD *pSizeOfData) override;
	virtual HRESULT STDMETHODCALLTYPE FreePrivateData(REFGUID refguid) override;
	virtual DWORD STDMETHODCALLTYPE SetPriority(DWORD PriorityNew) override;
	virtual DWORD STDMETHODCALLTYPE GetPriority() override;
	virtual void STDMETHODCALLTYPE PreLoad() override;
	virtual D3DRESOURCETYPE STDMETHODCALLTYPE GetType() override;

	virtual DWORD STDMETHODCALLTYPE SetLOD(DWORD LODNew) override;
	virtual DWORD STDMETHODCALLTYPE GetLOD() override;
	virtual DWORD STDMETHODCALLTYPE GetLevelCount() override;

	virtual HRESULT STDMETHODCALLTYPE GetLevelDesc(UINT Level, D3DSURFACE_DESC8 *pDesc) override;
	virtual HRESULT STDMETHODCALLTYPE GetSurfaceLevel(UINT Level, IDirect3DSurface8 **ppSurfaceLevel) override;
	virtual HRESULT STDMETHODCALLTYPE LockRect(UINT Level, D3DLOCKED_RECT *pLockedRect, const RECT *pRect, DWORD Flags) override;
	virtual HRESULT STDMETHODCALLTYPE UnlockRect(UINT Level) override;
	virtual HRESULT STDMETHODCALLTYPE AddDirtyRect(const RECT *pDirtyRect) override;

private:
	Direct3DDevice8 *const Device;
	IDirect3DTexture9 *const ProxyInterface;
};
class Direct3DCubeTexture8 : public IDirect3DCubeTexture8, public AddressLookupTableObject
{
	Direct3DCubeTexture8(const Direct3DCubeTexture8 &) = delete;
	Direct3DCubeTexture8 &operator=(const Direct3DCubeTexture8 &) = delete;

public:
	Direct3DCubeTexture8(Direct3DDevice8 *device, IDirect3DCubeTexture9 *ProxyInterface);
	~Direct3DCubeTexture8();

	IDirect3DCubeTexture9 *GetProxyInterface() const { return ProxyInterface; }

	virtual HRESULT STDMETHODCALLTYPE QueryInterface(REFIID riid, void **ppvObj) override;
	virtual ULONG STDMETHODCALLTYPE AddRef() override;
	virtual ULONG STDMETHODCALLTYPE Release() override;

	virtual HRESULT STDMETHODCALLTYPE GetDevice(IDirect3DDevice8 **ppDevice) override;
	virtual HRESULT STDMETHODCALLTYPE SetPrivateData(REFGUID refguid, const void *pData, DWORD SizeOfData, DWORD Flags) override;
	virtual HRESULT STDMETHODCALLTYPE GetPrivateData(REFGUID refguid, void *pData, DWORD *pSizeOfData) override;
	virtual HRESULT STDMETHODCALLTYPE FreePrivateData(REFGUID refguid) override;
	virtual DWORD STDMETHODCALLTYPE SetPriority(DWORD PriorityNew) override;
	virtual DWORD STDMETHODCALLTYPE GetPriority() override;
	virtual void STDMETHODCALLTYPE PreLoad() override;
	virtual D3DRESOURCETYPE STDMETHODCALLTYPE GetType() override;

	virtual DWORD STDMETHODCALLTYPE SetLOD(DWORD LODNew) override;
	virtual DWORD STDMETHODCALLTYPE GetLOD() override;
	virtual DWORD STDMETHODCALLTYPE GetLevelCount() override;

	virtual HRESULT STDMETHODCALLTYPE GetLevelDesc(UINT Level, D3DSURFACE_DESC8 *pDesc) override;
	virtual HRESULT STDMETHODCALLTYPE GetCubeMapSurface(D3DCUBEMAP_FACES FaceType, UINT Level, IDirect3DSurface8 **ppCubeMapSurface) override;
	virtual HRESULT STDMETHODCALLTYPE LockRect(D3DCUBEMAP_FACES FaceType, UINT Level, D3DLOCKED_RECT *pLockedRect, const RECT *pRect, DWORD Flags) override;
	virtual HRESULT STDMETHODCALLTYPE UnlockRect(D3DCUBEMAP_FACES FaceType, UINT Level) override;
	virtual HRESULT STDMETHODCALLTYPE AddDirtyRect(D3DCUBEMAP_FACES FaceType, const RECT *pDirtyRect) override;

private:
	Direct3DDevice8 *const Device;
	IDirect3DCubeTexture9 *const ProxyInterface;
};
class Direct3DVolumeTexture8 : public IDirect3DVolumeTexture8, public AddressLookupTableObject
{
	Direct3DVolumeTexture8(const Direct3DVolumeTexture8 &) = delete;
	Direct3DVolumeTexture8 &operator=(const Direct3DVolumeTexture8 &) = delete;

public:
	Direct3DVolumeTexture8(Direct3DDevice8 *device, IDirect3DVolumeTexture9 *ProxyInterface);
	~Direct3DVolumeTexture8();

	IDirect3DVolumeTexture9 *GetProxyInterface() const { return ProxyInterface; }

	virtual HRESULT STDMETHODCALLTYPE QueryInterface(REFIID riid, void **ppvObj) override;
	virtual ULONG STDMETHODCALLTYPE AddRef() override;
	virtual ULONG STDMETHODCALLTYPE Release() override;

	virtual HRESULT STDMETHODCALLTYPE GetDevice(IDirect3DDevice8 **ppDevice) override;
	virtual HRESULT STDMETHODCALLTYPE SetPrivateData(REFGUID refguid, const void *pData, DWORD SizeOfData, DWORD Flags) override;
	virtual HRESULT STDMETHODCALLTYPE GetPrivateData(REFGUID refguid, void *pData, DWORD *pSizeOfData) override;
	virtual HRESULT STDMETHODCALLTYPE FreePrivateData(REFGUID refguid) override;
	virtual DWORD STDMETHODCALLTYPE SetPriority(DWORD PriorityNew) override;
	virtual DWORD STDMETHODCALLTYPE GetPriority() override;
	virtual void STDMETHODCALLTYPE PreLoad() override;
	virtual D3DRESOURCETYPE STDMETHODCALLTYPE GetType() override;

	virtual DWORD STDMETHODCALLTYPE SetLOD(DWORD LODNew) override;
	virtual DWORD STDMETHODCALLTYPE GetLOD() override;
	virtual DWORD STDMETHODCALLTYPE GetLevelCount() override;

	virtual HRESULT STDMETHODCALLTYPE GetLevelDesc(UINT Level, D3DVOLUME_DESC8 *pDesc) override;
	virtual HRESULT STDMETHODCALLTYPE GetVolumeLevel(UINT Level, IDirect3DVolume8 **ppVolumeLevel) override;
	virtual HRESULT STDMETHODCALLTYPE LockBox(UINT Level, D3DLOCKED_BOX *pLockedVolume, const D3DBOX *pBox, DWORD Flags) override;
	virtual HRESULT STDMETHODCALLTYPE UnlockBox(UINT Level) override;
	virtual HRESULT STDMETHODCALLTYPE AddDirtyBox(const D3DBOX *pDirtyBox) override;

private:
	Direct3DDevice8 *const Device;
	IDirect3DVolumeTexture9 *const ProxyInterface;
};

class Direct3DSurface8 : public IDirect3DSurface8, public AddressLookupTableObject
{
	Direct3DSurface8(const Direct3DSurface8 &) = delete;
	Direct3DSurface8 &operator=(const Direct3DSurface8 &) = delete;

public:
	Direct3DSurface8(Direct3DDevice8 *device, IDirect3DSurface9 *ProxyInterface);
	~Direct3DSurface8();

	IDirect3DSurface9 *GetProxyInterface() const { return ProxyInterface; }

	virtual HRESULT STDMETHODCALLTYPE QueryInterface(REFIID riid, void **ppvObj) override;
	virtual ULONG STDMETHODCALLTYPE AddRef() override;
	virtual ULONG STDMETHODCALLTYPE Release() override;

	virtual HRESULT STDMETHODCALLTYPE GetDevice(IDirect3DDevice8 **ppDevice) override;
	virtual HRESULT STDMETHODCALLTYPE SetPrivateData(REFGUID refguid, const void *pData, DWORD SizeOfData, DWORD Flags) override;
	virtual HRESULT STDMETHODCALLTYPE GetPrivateData(REFGUID refguid, void *pData, DWORD *pSizeOfData) override;
	virtual HRESULT STDMETHODCALLTYPE FreePrivateData(REFGUID refguid) override;
	virtual HRESULT STDMETHODCALLTYPE GetContainer(REFIID riid, void **ppContainer) override;
	virtual HRESULT STDMETHODCALLTYPE GetDesc(D3DSURFACE_DESC8 *pDesc) override;
	virtual HRESULT STDMETHODCALLTYPE LockRect(D3DLOCKED_RECT *pLockedRect, const RECT *pRect, DWORD Flags) override;
	virtual HRESULT STDMETHODCALLTYPE UnlockRect() override;

private:
	Direct3DDevice8 *const Device;
	IDirect3DSurface9 *const ProxyInterface;
};

class Direct3DVolume8 : public IDirect3DVolume8, public AddressLookupTableObject
{
	Direct3DVolume8(const Direct3DVolume8 &) = delete;
	Direct3DVolume8 &operator=(const Direct3DVolume8 &) = delete;

public:
	Direct3DVolume8(Direct3DDevice8 *Device, IDirect3DVolume9 *ProxyInterface);
	~Direct3DVolume8();

	IDirect3DVolume9 *GetProxyInterface() const { return ProxyInterface; }

	virtual HRESULT STDMETHODCALLTYPE QueryInterface(REFIID riid, void **ppvObj) override;
	virtual ULONG STDMETHODCALLTYPE AddRef() override;
	virtual ULONG STDMETHODCALLTYPE Release() override;

	virtual HRESULT STDMETHODCALLTYPE GetDevice(IDirect3DDevice8 **ppDevice) override;
	virtual HRESULT STDMETHODCALLTYPE SetPrivateData(REFGUID refguid, const void *pData, DWORD SizeOfData, DWORD Flags) override;
	virtual HRESULT STDMETHODCALLTYPE GetPrivateData(REFGUID refguid, void *pData, DWORD *pSizeOfData) override;
	virtual HRESULT STDMETHODCALLTYPE FreePrivateData(REFGUID refguid) override;
	virtual HRESULT STDMETHODCALLTYPE GetContainer(REFIID riid, void **ppContainer) override;
	virtual HRESULT STDMETHODCALLTYPE GetDesc(D3DVOLUME_DESC8 *pDesc) override;
	virtual HRESULT STDMETHODCALLTYPE LockBox(D3DLOCKED_BOX *pLockedVolume, const D3DBOX *pBox, DWORD Flags) override;
	virtual HRESULT STDMETHODCALLTYPE UnlockBox() override;

private:
	Direct3DDevice8 *const Device;
	IDirect3DVolume9 *const ProxyInterface;
};

class Direct3DVertexBuffer8 : public IDirect3DVertexBuffer8, public AddressLookupTableObject
{
	Direct3DVertexBuffer8(const Direct3DVertexBuffer8 &) = delete;
	Direct3DVertexBuffer8 &operator=(const Direct3DVertexBuffer8 &) = delete;

public:
	Direct3DVertexBuffer8(Direct3DDevice8 *Device, IDirect3DVertexBuffer9 *ProxyInterface);
	~Direct3DVertexBuffer8();

	IDirect3DVertexBuffer9 *GetProxyInterface() const { return ProxyInterface; }

	virtual HRESULT STDMETHODCALLTYPE QueryInterface(REFIID riid, void **ppvObj) override;
	virtual ULONG STDMETHODCALLTYPE AddRef() override;
	virtual ULONG STDMETHODCALLTYPE Release() override;

	virtual HRESULT STDMETHODCALLTYPE GetDevice(IDirect3DDevice8 **ppDevice) override;
	virtual HRESULT STDMETHODCALLTYPE SetPrivateData(REFGUID refguid, const void *pData, DWORD SizeOfData, DWORD Flags) override;
	virtual HRESULT STDMETHODCALLTYPE GetPrivateData(REFGUID refguid, void *pData, DWORD *pSizeOfData) override;
	virtual HRESULT STDMETHODCALLTYPE FreePrivateData(REFGUID refguid) override;
	virtual DWORD STDMETHODCALLTYPE SetPriority(DWORD PriorityNew) override;
	virtual DWORD STDMETHODCALLTYPE GetPriority() override;
	virtual void STDMETHODCALLTYPE PreLoad() override;
	virtual D3DRESOURCETYPE STDMETHODCALLTYPE GetType() override;

	virtual HRESULT STDMETHODCALLTYPE Lock(UINT OffsetToLock, UINT SizeToLock, BYTE **ppbData, DWORD Flags) override;
	virtual HRESULT STDMETHODCALLTYPE Unlock() override;
	virtual HRESULT STDMETHODCALLTYPE GetDesc(D3DVERTEXBUFFER_DESC *pDesc) override;

private:
	Direct3DDevice8 *const Device;
	IDirect3DVertexBuffer9 *const ProxyInterface;
};

class Direct3DIndexBuffer8 : public IDirect3DIndexBuffer8, public AddressLookupTableObject
{
	Direct3DIndexBuffer8(const Direct3DIndexBuffer8 &) = delete;
	Direct3DIndexBuffer8 &operator=(const Direct3DIndexBuffer8 &) = delete;

public:
	Direct3DIndexBuffer8(Direct3DDevice8 *Device, IDirect3DIndexBuffer9 *ProxyInterface);
	~Direct3DIndexBuffer8();

	IDirect3DIndexBuffer9 *GetProxyInterface() const { return ProxyInterface; }

	virtual HRESULT STDMETHODCALLTYPE QueryInterface(REFIID riid, void **ppvObj) override;
	virtual ULONG STDMETHODCALLTYPE AddRef() override;
	virtual ULONG STDMETHODCALLTYPE Release() override;

	virtual HRESULT STDMETHODCALLTYPE GetDevice(IDirect3DDevice8 **ppDevice) override;
	virtual HRESULT STDMETHODCALLTYPE SetPrivateData(REFGUID refguid, const void *pData, DWORD SizeOfData, DWORD Flags) override;
	virtual HRESULT STDMETHODCALLTYPE GetPrivateData(REFGUID refguid, void *pData, DWORD *pSizeOfData) override;
	virtual HRESULT STDMETHODCALLTYPE FreePrivateData(REFGUID refguid) override;
	virtual DWORD STDMETHODCALLTYPE SetPriority(DWORD PriorityNew) override;
	virtual DWORD STDMETHODCALLTYPE GetPriority() override;
	virtual void STDMETHODCALLTYPE PreLoad() override;
	virtual D3DRESOURCETYPE STDMETHODCALLTYPE GetType() override;

	virtual HRESULT STDMETHODCALLTYPE Lock(UINT OffsetToLock, UINT SizeToLock, BYTE **ppbData, DWORD Flags) override;
	virtual HRESULT STDMETHODCALLTYPE Unlock() override;
	virtual HRESULT STDMETHODCALLTYPE GetDesc(D3DINDEXBUFFER_DESC *pDesc) override;

private:
	Direct3DDevice8 *const Device;
	IDirect3DIndexBuffer9 *const ProxyInterface;
};

#include <fstream>

#ifndef D3D8TO9NOLOG
extern std::ofstream LOG;
#endif
