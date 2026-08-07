// Muster: Aqua_Renderer   8 Funktionen, 6352 Byte

// --------------------------------------------
// Aqua_Renderer__LoadTextures_2   ab 0x00408180   1341 Byte
// Texte: %s\radar_color, Aqua_Renderer::LoadTextures(), error while reorganizing textures - try to increase texturecache size, rgba8888 or rgba4444 texture format is required, vfx\hud\radar_box, vfx\hud\radar_clip, vfx\tex\
// --------------------------------------------

void __fastcall Aqua_Renderer__LoadTextures_2(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int iVar7;
  undefined4 local_148;
  undefined1 local_144 [64];
  undefined1 local_104 [260];
  
  if (DAT_0066d188 == 0) {
    return;
  }
  DSP_Display__Texture_FlushTextures(1,0x689);
  iVar2 = operator_new(0x18);
  if (iVar2 == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = FUN_00524460(0x201,1);
  }
  *(undefined4 *)(*DAT_00661570 + 0x21c) = 0;
  do {
    iVar3 = *DAT_00661570;
    iVar1 = *(int *)(iVar3 + 0x218);
    if (*(int *)(iVar3 + 0x21c) < iVar1) {
      do {
        if (*(int *)(*(int *)(iVar3 + 0x210) + *(int *)(iVar3 + 0x21c) * 0xc) != 0) break;
        iVar7 = *(int *)(iVar3 + 0x21c) + 1;
        *(int *)(iVar3 + 0x21c) = iVar7;
      } while (iVar7 < iVar1);
    }
    iVar7 = *(int *)(iVar3 + 0x21c);
    if (iVar1 <= iVar7) break;
    iVar1 = *(int *)(*(int *)(iVar3 + 0x210) + iVar7 * 0xc);
    *(int *)(iVar3 + 0x21c) = iVar7 + 1;
    if (iVar1 == 0) break;
    FUN_005245c0(iVar1,0x20);
  } while( true );
  *(undefined4 *)(DAT_00661570[1] + 0x21c) = 0;
  do {
    iVar3 = DAT_00661570[1];
    iVar1 = *(int *)(iVar3 + 0x218);
    if (*(int *)(iVar3 + 0x21c) < iVar1) {
      do {
        if (*(int *)(*(int *)(iVar3 + 0x210) + *(int *)(iVar3 + 0x21c) * 0xc) != 0) break;
        iVar7 = *(int *)(iVar3 + 0x21c) + 1;
        *(int *)(iVar3 + 0x21c) = iVar7;
      } while (iVar7 < iVar1);
    }
    iVar7 = *(int *)(iVar3 + 0x21c);
    if (iVar1 <= iVar7) break;
    iVar1 = *(int *)(*(int *)(iVar3 + 0x210) + iVar7 * 0xc);
    *(int *)(iVar3 + 0x21c) = iVar7 + 1;
    if (iVar1 == 0) break;
    FUN_00524650(iVar1,0x20);
  } while( true );
  FUN_005248b0();
  iVar3 = FUN_005248c0(local_144,&local_148);
  while (iVar3 != 0) {
    str_copy(local_104,s_vfx_tex__00602e10);
    FUN_00520670(local_104,local_144);
    DSP_Display__RequestTexture(local_148,local_104);
    iVar3 = FUN_005248c0(local_144,&local_148);
  }
  if (iVar2 != 0) {
    FUN_00524590();
    operator_delete(iVar2);
  }
  iVar2 = operator_new(0x18);
  if (iVar2 == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = FUN_00524460(0x201,0x408);
  }
  *(undefined4 *)(DAT_00661570[2] + 0x21c) = 0;
  do {
    iVar3 = DAT_00661570[2];
    iVar1 = *(int *)(iVar3 + 0x218);
    if (*(int *)(iVar3 + 0x21c) < iVar1) {
      do {
        if (*(int *)(*(int *)(iVar3 + 0x210) + *(int *)(iVar3 + 0x21c) * 0xc) != 0) break;
        iVar7 = *(int *)(iVar3 + 0x21c) + 1;
        *(int *)(iVar3 + 0x21c) = iVar7;
      } while (iVar7 < iVar1);
    }
    iVar7 = *(int *)(iVar3 + 0x21c);
    if (iVar1 <= iVar7) {
LAB_004083c8:
      FUN_005248b0();
      iVar3 = FUN_005248c0(local_144,&local_148);
      if (iVar3 != 0) {
        do {
          str_copy(local_104,param_1 + 0x18370);
          FUN_00520670(local_104,local_144);
          DSP_Display__RequestTexture(local_148,local_104);
          iVar3 = FUN_005248c0(local_144,&local_148);
        } while (iVar3 != 0);
      }
      if (iVar2 != 0) {
        FUN_00524590();
        operator_delete(iVar2);
      }
      FUN_005248b0();
      iVar2 = FUN_005248c0(local_144,&local_148);
      while (iVar2 != 0) {
        str_copy(local_104,local_144);
        DSP_Display__RequestTexture(local_148,local_104);
        iVar2 = FUN_005248c0(local_144,&local_148);
      }
      if (*(int *)(param_1 + 0x169bc) != 0) {
        DSP_Display__RequestTexture(0x406,*(int *)(param_1 + 0x169bc));
      }
      if (*(int *)(param_1 + 0x169c0) != 0) {
        DSP_Display__RequestTexture(0x407,*(int *)(param_1 + 0x169c0));
      }
      uVar4 = FUN_005222c0(s__s_radar_color_006040b8,param_1 + 0x17a90);
      DSP_Display__RequestTexture(0x403,uVar4);
      DSP_Display__RequestTexture(0x404,s_vfx_hud_radar_clip_006040a4);
      DSP_Display__RequestTexture(0x405,s_vfx_hud_radar_box_00604090);
      uVar4 = FUN_00520f10();
      uVar5 = FUN_00520f10(uVar4);
      uVar6 = FUN_00520f10(uVar5);
      iVar2 = DSP_Display__Texture_FlushTextures_2(1,0x608,uVar6,uVar5,uVar4);
      if (iVar2 == 1) {
        TERMINATION(s_Aqua_Renderer__LoadTextures___00604028,
                    s_error_while_reorganizing_texture_00604048);
      }
      if (*(int *)(param_1 + 0x17228) != 0) {
        FUN_0055e1e0(0x609);
        FUN_0055e480();
        MUI_Menu__RelocateResources();
      }
      if (*(int *)(param_1 + 0x17b94) != 0) {
        FUN_0055e1e0(0x68a);
        FUN_0055e480();
        MUI_Menu__RelocateResources();
      }
      if (*(int *)(param_1 + 0x17228) != 0) {
        FUN_004f3a80(param_1 + 0x17a90,0x80,0x79e);
      }
      iVar2 = DSP_Display__IsTextureTypeSupported(7);
      if (iVar2 == 0) {
        iVar2 = DSP_Display__IsTextureTypeSupported(8);
        if (iVar2 == 0) {
          TERMINATION(s_Aqua_Renderer__LoadTextures___00604028,
                      s_rgba8888_or_rgba4444_texture_for_00603ff8);
          return;
        }
        DSP_Display__Texture_Create(*(undefined4 *)(param_1 + 0xe0),8,6,1);
        DSP_Display__Texture_Create(*(undefined4 *)(param_1 + 0xe4),8,6,1);
        *(undefined4 *)(param_1 + 0xec) = 1;
        return;
      }
      DSP_Display__Texture_Create(*(undefined4 *)(param_1 + 0xe0),7,6,1);
      DSP_Display__Texture_Create(*(undefined4 *)(param_1 + 0xe4),7,6,1);
      *(undefined4 *)(param_1 + 0xec) = 0;
      return;
    }
    iVar1 = *(int *)(*(int *)(iVar3 + 0x210) + iVar7 * 0xc);
    *(int *)(iVar3 + 0x21c) = iVar7 + 1;
    if (iVar1 == 0) goto LAB_004083c8;
    FUN_00524650(iVar1,0x20);
  } while( true );
}



// --------------------------------------------
// Aqua_Renderer__LoadTextures   ab 0x004086c0   2470 Byte
// Texte: Aqua_Renderer::LoadTextures(), CON_Cache::Allocate() file not found, CON_Cache<T>::Allocate() - cache overflow, caustic\caustic.tse, rgba8888 or rgba4444 texture format is required
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall Aqua_Renderer__LoadTextures(int param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined1 *puVar4;
  int *piVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  uint uVar8;
  int *piVar9;
  undefined4 *puVar10;
  float10 fVar11;
  undefined4 uVar12;
  float fVar13;
  float fVar14;
  undefined1 local_124 [260];
  int local_20;
  int local_1c;
  int *local_18;
  undefined4 local_14;
  undefined4 local_10;
  int local_c;
  undefined4 *local_8;
  
  if (DAT_0066d188 == 0) {
    return;
  }
  FUN_0050a4f0(0x7b4);
  FUN_00409340();
  iVar2 = operator_new(0x40);
  if (iVar2 == 0) {
    iVar2 = 0;
  }
  else {
    *(undefined4 *)(iVar2 + 0x28) = 0;
    *(undefined4 *)(iVar2 + 0x24) = 0;
    *(undefined4 *)(iVar2 + 0x20) = 0;
  }
  *(int *)(param_1 + 0xd8) = iVar2;
  puVar3 = (undefined4 *)operator_new(0x14);
  if (puVar3 == (undefined4 *)0x0) {
    puVar3 = (undefined4 *)0x0;
  }
  else {
    *puVar3 = 0;
    puVar3[1] = 0;
    puVar3[2] = 0;
    puVar3[3] = 0;
    puVar3[4] = 0;
    FUN_00412ed0(0x40,0x40);
  }
  *(undefined4 *)(param_1 + 0x18358) = 0;
  *(undefined4 **)(param_1 + 0xdc) = puVar3;
  puVar3 = *(undefined4 **)(param_1 + 0x169b8);
  *(undefined4 *)(param_1 + 0xe8) = 0;
  *(undefined4 *)(param_1 + 0xe0) = 0x78b;
  *(undefined4 *)(param_1 + 0xe4) = 0x78c;
  *(undefined4 *)(param_1 + 0x18354) = 0x3f000000;
  puVar3[0x37] = *(undefined4 *)(param_1 + 0xd8);
  *puVar3 = 0x78b;
  puVar3[1] = 0x78c;
  puVar3[2] = 0;
  uVar12 = *(undefined4 *)(param_1 + 0x18358);
  iVar2 = *(int *)(param_1 + 0x16a50);
  uVar7 = *(undefined4 *)(param_1 + 0xd8);
  *(undefined4 *)(iVar2 + 0xa0) = *(undefined4 *)(param_1 + 0x18354);
  *(undefined4 *)(iVar2 + 0xa8) = uVar7;
  *(undefined4 *)(iVar2 + 0xa4) = uVar12;
  *(undefined4 *)(iVar2 + 0x98) = 0x78b;
  *(undefined4 *)(iVar2 + 0x9c) = 0x78c;
  **(uint **)(param_1 + 0x16a50) = **(uint **)(param_1 + 0x16a50) | 4;
  **(uint **)(param_1 + 0x16a50) = **(uint **)(param_1 + 0x16a50) | 1;
  **(uint **)(param_1 + 0x16a50) = **(uint **)(param_1 + 0x16a50) | 2;
  uVar12 = *(undefined4 *)(param_1 + 0x18358);
  iVar2 = *(int *)(param_1 + 0x169f0);
  uVar7 = *(undefined4 *)(param_1 + 0xd8);
  *(undefined4 *)(iVar2 + 0x28) = *(undefined4 *)(param_1 + 0x18354);
  *(undefined4 *)(iVar2 + 0x30) = uVar7;
  *(undefined4 *)(iVar2 + 0x2c) = uVar12;
  *(undefined4 *)(iVar2 + 0x20) = 0x78b;
  *(undefined4 *)(iVar2 + 0x24) = 0x78c;
  **(uint **)(param_1 + 0x169f0) = **(uint **)(param_1 + 0x169f0) | 4;
  uVar12 = *(undefined4 *)(param_1 + 0x18358);
  iVar2 = *(int *)(param_1 + 0x169ec);
  uVar7 = *(undefined4 *)(param_1 + 0xd8);
  *(undefined4 *)(iVar2 + 0x28) = *(undefined4 *)(param_1 + 0x18354);
  *(undefined4 *)(iVar2 + 0x30) = uVar7;
  *(undefined4 *)(iVar2 + 0x2c) = uVar12;
  *(undefined4 *)(iVar2 + 0x20) = 0x78b;
  *(undefined4 *)(iVar2 + 0x24) = 0x78c;
  **(uint **)(param_1 + 0x169ec) = **(uint **)(param_1 + 0x169ec) | 4;
  uVar12 = *(undefined4 *)(param_1 + 0x18358);
  iVar2 = *(int *)(param_1 + 0x17210);
  uVar7 = *(undefined4 *)(param_1 + 0xd8);
  *(undefined4 *)(iVar2 + 0x28) = *(undefined4 *)(param_1 + 0x18354);
  *(undefined4 *)(iVar2 + 0x30) = uVar7;
  *(undefined4 *)(iVar2 + 0x2c) = uVar12;
  *(undefined4 *)(iVar2 + 0x20) = 0x78b;
  *(undefined4 *)(iVar2 + 0x24) = 0x78c;
  **(uint **)(param_1 + 0x17210) = **(uint **)(param_1 + 0x17210) & 0xfffffffb;
  iVar2 = *(int *)(param_1 + 0x16a3c);
  uVar12 = *(undefined4 *)(param_1 + 0xd8);
  *(undefined4 *)(iVar2 + 0x20) = 0x78b;
  *(undefined4 *)(iVar2 + 0x24) = 0x78c;
  *(undefined4 *)(iVar2 + 0x30) = uVar12;
  *(undefined4 *)(param_1 + 0xac) = 0x3c5a740e;
  *(undefined4 *)(param_1 + 0xb0) = 0x3f000000;
  *(undefined4 *)(param_1 + 0xb8) = 0x3c5a740e;
  *(undefined4 *)(param_1 + 0xbc) = 0x3f000000;
  *(undefined4 *)(param_1 + 0xc4) = 0x3c5a740e;
  *(undefined4 *)(param_1 + 200) = 0x3f000000;
  piVar5 = *(int **)(DAT_00661570 + 0x10);
  local_18 = piVar5;
  FUN_005ed530();
  if (*piVar5 == 0) {
    piVar9 = (int *)0x0;
    local_8 = (undefined4 *)0x0;
    if (0 < piVar5[0x86]) {
      local_c = 0;
      do {
        piVar1 = (int *)(piVar5[0x84] + local_c);
        if (*piVar1 == 0) {
          if (piVar9 == (int *)0x0) {
            piVar9 = piVar1;
          }
        }
        else {
          iVar2 = FUN_00520710(piVar1[2],s_caustic_caustic_tse_0060411c);
          puVar3 = local_8;
          if (iVar2 == 0) {
            piVar5 = (int *)(piVar5[0x84] + 4 + (int)local_8 * 0xc);
            *piVar5 = *piVar5 + 1;
            FUN_005216e0();
            puVar4 = (undefined1 *)((int)puVar3 + 1);
            goto LAB_00408b2e;
          }
        }
        local_8 = (undefined4 *)((int)local_8 + 1);
        local_c = local_c + 0xc;
      } while ((int)local_8 < piVar5[0x86]);
    }
    FUN_005209c0(local_124,piVar5 + 1,piVar5 + 2,s_caustic_caustic_tse_0060411c,0);
    local_c = FUN_00521ff0(local_124,(int)piVar5 + 0x109,piVar5[0x83]);
    if (local_c == 0) {
      TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,local_124);
      FUN_005216e0();
      puVar4 = (undefined1 *)0x0;
    }
    else {
      if (piVar5[0x86] <= piVar5[0x85]) {
        if (piVar5[0x88] == 0) {
          TERMINATION(s_CON_Cache<T>__Allocate_____cache_006040c8,s_caustic_caustic_tse_0060411c);
        }
        else {
          local_8 = (undefined4 *)operator_new(piVar5[0x86] * 0x18);
          piVar9 = local_18;
          puVar3 = (undefined4 *)piVar5[0x84];
          puVar10 = local_8;
          for (uVar8 = piVar5[0x86] * 3 & 0x3fffffff; uVar8 != 0; uVar8 = uVar8 - 1) {
            *puVar10 = *puVar3;
            puVar3 = puVar3 + 1;
            puVar10 = puVar10 + 1;
          }
          for (iVar2 = 0; iVar2 != 0; iVar2 = iVar2 + -1) {
            *(undefined1 *)puVar10 = *(undefined1 *)puVar3;
            puVar3 = (undefined4 *)((int)puVar3 + 1);
            puVar10 = (undefined4 *)((int)puVar10 + 1);
          }
          operator_delete(local_18[0x84]);
          piVar9[0x84] = (int)local_8;
          piVar9[0x86] = piVar9[0x86] << 1;
          piVar9 = local_8 + piVar9[0x85] * 3;
          piVar5 = local_18;
        }
      }
      piVar9[1] = 1;
      iVar2 = operator_new(8);
      if (iVar2 == 0) {
        iVar2 = 0;
      }
      else {
        iVar2 = FUN_005ed530();
      }
      *piVar9 = iVar2;
      iVar2 = str_len(s_caustic_caustic_tse_0060411c);
      iVar2 = operator_new(iVar2 + 1);
      piVar9[2] = iVar2;
      str_copy(iVar2,s_caustic_caustic_tse_0060411c);
      iVar2 = FUN_0043df40(local_c);
      if (iVar2 == 0) {
        iVar2 = *piVar9;
        if (iVar2 != 0) {
          FUN_0043df20();
          operator_delete(iVar2);
        }
        *piVar9 = 0;
        operator_delete(piVar9[2]);
        piVar9[2] = 0;
        TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,local_124);
        FUN_005216e0();
        puVar4 = (undefined1 *)0x0;
      }
      else {
        piVar5[0x85] = piVar5[0x85] + 1;
        puVar4 = (undefined1 *)(((int)piVar9 - piVar5[0x84]) / 0xc + 1);
        FUN_005216e0();
      }
    }
  }
  else {
    FUN_005216e0();
    puVar4 = (undefined1 *)0x0;
  }
LAB_00408b2e:
  *(undefined1 **)(param_1 + 0xf4) = puVar4;
  local_14 = 0;
  local_10 = 0;
  piVar5 = (int *)FUN_00412990(puVar4);
  local_18 = (int *)(DAT_0066d0c0 * _DAT_005f338c);
  local_8 = (undefined4 *)0xbefffffc;
  local_c = (int)ROUND((float)local_18 + -0.49999988);
  iVar2 = local_c % piVar5[1];
  if ((iVar2 < 0) || (piVar5[1] < iVar2)) {
    uVar12 = 0xffffffff;
  }
  else {
    uVar12 = *(undefined4 *)(*piVar5 + iVar2 * 4);
  }
  uVar7 = *(undefined4 *)(param_1 + 0xb0);
  iVar2 = *(int *)(param_1 + 0x16a50);
  uVar6 = *(undefined4 *)(param_1 + 0xac);
  *(undefined4 *)(iVar2 + 0x80) = uVar12;
  *(undefined4 *)(iVar2 + 0x8c) = uVar6;
  *(undefined4 *)(iVar2 + 0x84) = local_14;
  *(undefined4 *)(iVar2 + 0x90) = uVar7;
  *(undefined4 *)(iVar2 + 0x88) = local_10;
  *(undefined4 *)(iVar2 + 0x94) = 0x3f800000;
  local_14 = 0;
  local_10 = 0;
  piVar5 = (int *)FUN_00412990(*(undefined4 *)(param_1 + 0xf4));
  local_18 = (int *)(DAT_0066d0c0 * _DAT_005f338c);
  local_8 = (undefined4 *)0xbefffffc;
  local_c = (int)ROUND((float)local_18 + -0.49999988);
  iVar2 = local_c % piVar5[1];
  if ((iVar2 < 0) || (piVar5[1] < iVar2)) {
    uVar12 = 0xffffffff;
  }
  else {
    uVar12 = *(undefined4 *)(*piVar5 + iVar2 * 4);
  }
  uVar7 = *(undefined4 *)(param_1 + 0xbc);
  iVar2 = *(int *)(param_1 + 0x169f0);
  uVar6 = *(undefined4 *)(param_1 + 0xb8);
  *(undefined4 *)(iVar2 + 8) = uVar12;
  *(undefined4 *)(iVar2 + 0x14) = uVar6;
  *(undefined4 *)(iVar2 + 0xc) = local_14;
  *(undefined4 *)(iVar2 + 0x18) = uVar7;
  *(undefined4 *)(iVar2 + 0x10) = local_10;
  *(undefined4 *)(iVar2 + 0x1c) = 0x3f800000;
  local_14 = 0;
  local_10 = 0;
  piVar5 = (int *)FUN_00412990(*(undefined4 *)(param_1 + 0xf4));
  local_18 = (int *)(DAT_0066d0c0 * _DAT_005f338c);
  local_8 = (undefined4 *)0xbefffffc;
  local_c = (int)ROUND((float)local_18 + -0.49999988);
  iVar2 = local_c % piVar5[1];
  if ((iVar2 < 0) || (piVar5[1] < iVar2)) {
    uVar12 = 0xffffffff;
  }
  else {
    uVar12 = *(undefined4 *)(*piVar5 + iVar2 * 4);
  }
  uVar7 = *(undefined4 *)(param_1 + 0xbc);
  iVar2 = *(int *)(param_1 + 0x169ec);
  uVar6 = *(undefined4 *)(param_1 + 0xb8);
  *(undefined4 *)(iVar2 + 8) = uVar12;
  *(undefined4 *)(iVar2 + 0x14) = uVar6;
  *(undefined4 *)(iVar2 + 0xc) = local_14;
  *(undefined4 *)(iVar2 + 0x18) = uVar7;
  *(undefined4 *)(iVar2 + 0x10) = local_10;
  *(undefined4 *)(iVar2 + 0x1c) = 0x3f800000;
  local_14 = 0;
  local_10 = 0;
  iVar2 = FUN_00412990(*(undefined4 *)(param_1 + 0xf4));
  local_18 = (int *)(DAT_0066d0c0 * _DAT_005f338c);
  local_8 = (undefined4 *)0xbefffffc;
  local_c = (int)ROUND((float)local_18 + -0.49999988);
  uVar6 = FUN_00409070(local_c % *(int *)(iVar2 + 4));
  uVar12 = *(undefined4 *)(param_1 + 0xbc);
  iVar2 = *(int *)(param_1 + 0x17210);
  uVar7 = *(undefined4 *)(param_1 + 0xb8);
  *(undefined4 *)(iVar2 + 8) = uVar6;
  *(undefined4 *)(iVar2 + 0x14) = uVar7;
  *(undefined4 *)(iVar2 + 0xc) = local_14;
  *(undefined4 *)(iVar2 + 0x18) = uVar12;
  *(undefined4 *)(iVar2 + 0x10) = local_10;
  *(undefined4 *)(iVar2 + 0x1c) = 0x3f800000;
  iVar2 = FUN_00520f10();
  if ((iVar2 != 0) &&
     ((FUN_0050c980(&local_1c,&local_20), 1 < local_1c || ((local_1c == 1 && (0 < local_20)))))) {
    **(uint **)(param_1 + 0x16a50) = **(uint **)(param_1 + 0x16a50) | 0x10;
    **(uint **)(param_1 + 0x169ec) = **(uint **)(param_1 + 0x169ec) | 8;
    **(uint **)(param_1 + 0x16a3c) = **(uint **)(param_1 + 0x16a3c) | 0x10;
  }
  DSP_Display__Texture_Create(0x7a2,8,9,1);
  DSP_Display__Texture_Create(0x7a3,8,8,1);
  DSP_Display__Texture_Create(0x7a4,8,8,1);
  DSP_Display__Texture_Create(0x7a5,8,8,1);
  DSP_Display__Texture_Create(0x7a6,8,5,1);
  DSP_Display__Texture_Create(0x7a7,8,6,1);
  DSP_Display__Texture_Create(0x7a8,8,6,1);
  DSP_Display__Texture_Create(0x7a9,8,6,1);
  DSP_Display__Texture_Create(0x7aa,8,7,1);
  DSP_Display__Texture_Create(0x7ab,8,6,1);
  DSP_Display__Texture_Create(0x7ac,8,6,1);
  DSP_Display__Texture_Create(0x7ad,8,6,1);
  DSP_Display__Texture_Create(0x7ae,8,6,1);
  DSP_Display__Texture_Create(0x7af,8,10,1);
  DSP_Display__Texture_Create(0x7b0,8,6,1);
  DSP_Display__Texture_Create(0x7b3,8,6,1);
  iVar2 = DSP_Display__IsTextureTypeSupported(7);
  if (iVar2 == 0) {
    iVar2 = DSP_Display__IsTextureTypeSupported(8);
    if (iVar2 == 0) {
      TERMINATION(s_Aqua_Renderer__LoadTextures___00604028,
                  s_rgba8888_or_rgba4444_texture_for_00603ff8);
      goto LAB_00408f5f;
    }
    uVar12 = 8;
  }
  else {
    uVar12 = 7;
  }
  DSP_Display__Texture_Create(0x7b1,uVar12,9,1);
LAB_00408f5f:
  if (*(int *)(param_1 + 0x17220) != 0) {
    iVar2 = DSP_Display__IsTextureTypeSupported(7);
    if (iVar2 == 0) {
      uVar12 = 8;
    }
    else {
      uVar12 = 7;
    }
    DSP_Display__Texture_Create(0x7b2,uVar12,10,1);
  }
  FUN_00520650(param_1 + 0x18370,&DAT_00661574,0x104);
  *(undefined1 *)(param_1 + 0x18473) = 0;
  *(undefined4 *)(param_1 + 0xa8) = 6;
  *(undefined4 *)(param_1 + 0x1835c) = 0xbf800000;
  *(undefined4 *)(param_1 + 0x18e40) = 0xffffffff;
  uVar12 = FUN_00520f10();
  uVar7 = FUN_00520f10(uVar12);
  FUN_0050e090(uVar7,uVar12);
  uVar12 = FUN_00520f10();
  FUN_0050e150(uVar12);
  uVar12 = 1;
  fVar11 = (float10)FUN_00520f60(1);
  fVar14 = (float)fVar11;
  fVar11 = (float10)FUN_00520f60(fVar14);
  fVar13 = (float)fVar11;
  fVar11 = (float10)FUN_00520f60(fVar13);
  FUN_0050c180((float)fVar11,fVar13,fVar14,uVar12);
  puVar3 = (undefined4 *)(param_1 + 0x48ac);
  iVar2 = 10;
  do {
    *puVar3 = 0;
    puVar3 = puVar3 + 0x801;
    iVar2 = iVar2 + -1;
  } while (iVar2 != 0);
  return;
}



// --------------------------------------------
// Aqua_Renderer__AddPermanentBody   ab 0x0040c750   57 Byte
// Texte: Aqua_Renderer::AddPermanentBody(), array overflow
// --------------------------------------------

void __thiscall Aqua_Renderer__AddPermanentBody(int param_1,undefined4 param_2)

{
  if (0x1f < *(int *)(param_1 + 0x16954)) {
    TERMINATION(s_Aqua_Renderer__AddPermanentBody__00604180,s_array_overflow_006041a4);
  }
  *(undefined4 *)(param_1 + 0x168d4 + *(int *)(param_1 + 0x16954) * 4) = param_2;
  *(int *)(param_1 + 0x16954) = *(int *)(param_1 + 0x16954) + 1;
  return;
}



// --------------------------------------------
// Aqua_Renderer__Terrain_SetMaterial   ab 0x0040e130   94 Byte
// Texte: Aqua_Renderer::Terrain_SetMaterial(), index is out of range
// --------------------------------------------

void __thiscall
Aqua_Renderer__Terrain_SetMaterial(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  
  if ((param_2 < 0) || (3 < param_2)) {
    TERMINATION(s_Aqua_Renderer__Terrain_SetMateri_006041b4,s_index_is_out_of_range_006041dc);
  }
  if (DAT_0066d188 != 0) {
    uVar2 = REB_TextureCache__RegisterTextureName(param_3,0x20);
    *(undefined4 *)(param_1 + 0x16a60 + param_2 * 4) = uVar2;
    iVar1 = *(int *)(param_1 + 0x16a50);
    *(undefined4 *)(iVar1 + 0x18 + param_2 * 4) = uVar2;
    *(undefined4 *)(iVar1 + 0x28 + param_2 * 4) = param_4;
  }
  return;
}



// --------------------------------------------
// Aqua_Renderer__Terrain_Triangulate   ab 0x0040e290   865 Byte
// Texte: Aqua_Renderer::Terrain_Triangulate(), terrain triangulation failed - index overflow, terrain triangulation failed - vertex overflow
// --------------------------------------------

void __thiscall Aqua_Renderer__Terrain_Triangulate(int param_1,undefined4 param_2,float param_3)

{
  uint *puVar1;
  short *psVar2;
  int iVar3;
  short sVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  int iVar8;
  float *local_58;
  int local_54;
  short *psStack_50;
  int local_4c;
  int local_48;
  uint uStack_44;
  undefined4 uStack_40;
  uint uStack_3c;
  undefined4 uStack_38;
  uint uStack_34;
  undefined4 uStack_30;
  uint uStack_2c;
  undefined4 uStack_28;
  float local_24;
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  float local_8;
  
  iVar5 = 0;
  local_54 = 0;
  local_4c = 0;
  local_48 = 0;
  if (DAT_0066d188 != 0) {
    FUN_005038c0();
    iVar3 = FUN_00503940();
    while (iVar3 != 0) {
      local_54 = 0;
      local_4c = 0;
      FUN_005028d0(*(undefined4 *)(param_1 + 0x16a54),&local_54,0x4000 - iVar5,
                   *(undefined4 *)(param_1 + 0x16a58),&local_4c,0x4000 - local_48);
      local_18 = *(float *)(iVar3 + 0x104);
      local_24 = *(float *)(iVar3 + 0x110);
      local_14 = *(float *)(iVar3 + 0x108);
      local_20 = *(float *)(iVar3 + 0x114);
      local_10 = *(float *)(iVar3 + 0x10c);
      local_1c = *(float *)(iVar3 + 0x118);
      local_c = (local_18 / local_24) * param_3;
      local_8 = (local_14 / local_20) * param_3;
      if (0 < local_54) {
        if (0x4000 < iVar5 + local_54) {
          TERMINATION(s_Aqua_Renderer__Terrain_Triangula_00604224,
                      s_terrain_triangulation_failed___v_0060424c);
        }
        if (iVar5 == 0) {
          uVar7 = *(undefined4 *)(*(int *)(*(int *)(param_1 + 0x16a5c) + 0x18) + 0xac);
          uVar6 = 1;
          iVar3 = 0;
        }
        else {
          uVar7 = *(undefined4 *)(*(int *)(*(int *)(param_1 + 0x16a5c) + 0x18) + 0xac);
          uVar6 = 2;
          iVar3 = iVar5;
        }
        DSP_Display__VertexBuffer_Lock(uVar7,uVar6,&local_58,iVar3,local_54);
        puVar1 = *(uint **)(param_1 + 0x16a54);
        for (iVar3 = local_54; iVar3 != 0; iVar3 = iVar3 + -1) {
          uStack_44 = *puVar1;
          uStack_40 = 0;
          uStack_38 = 0;
          uStack_30 = 0;
          uStack_28 = 0;
          *local_58 = (float)uStack_44 * local_24 + local_18;
          uStack_3c = puVar1[1];
          local_58[1] = (float)uStack_3c * local_20 + local_14;
          local_58[2] = local_1c * (float)puVar1[2] + local_10;
          local_58[3] = 0.0;
          local_58[4] = 0.0;
          local_58[5] = 1.0;
          local_58[6] = -NAN;
          uStack_34 = *puVar1;
          local_58[7] = (float)uStack_34 * param_3 + local_c;
          uStack_2c = puVar1[1];
          local_58[8] = (float)uStack_2c * param_3 + local_8;
          local_58[9] = 0.0;
          local_58 = local_58 + 10;
          puVar1 = puVar1 + 4;
        }
        DSP_Display__VertexBuffer_Lock_2
                  (*(undefined4 *)(*(int *)(*(int *)(param_1 + 0x16a5c) + 0x18) + 0xac));
      }
      iVar3 = local_48;
      if (0 < local_4c) {
        if (0x4000 < local_48 + local_4c) {
          TERMINATION(s_Aqua_Renderer__Terrain_Triangula_00604224,
                      s_terrain_triangulation_failed___i_006041f4);
        }
        if (iVar3 == 0) {
          iVar8 = 0;
          uVar7 = 1;
        }
        else {
          iVar8 = iVar3 * 3;
          uVar7 = 2;
        }
        DSP_Display__IndexBuffer_Lock
                  (*(undefined4 *)(*(int *)(*(int *)(param_1 + 0x16a5c) + 0x18) + 0xbc),uVar7,
                   &psStack_50,iVar8,local_4c * 3);
        psVar2 = *(short **)(param_1 + 0x16a58);
        for (iVar8 = local_4c; iVar8 != 0; iVar8 = iVar8 + -1) {
          sVar4 = (short)iVar5;
          *psStack_50 = sVar4 + *psVar2;
          psStack_50[1] = psVar2[1] + sVar4;
          psStack_50[2] = psVar2[2] + sVar4;
          psStack_50 = psStack_50 + 3;
          psVar2 = psVar2 + 4;
          iVar3 = local_48;
        }
        DSP_Display__IndexBuffer_Unlock
                  (*(undefined4 *)(*(int *)(*(int *)(param_1 + 0x16a5c) + 0x18) + 0xbc));
      }
      iVar5 = iVar5 + local_54;
      local_48 = iVar3 + local_4c;
      iVar3 = FUN_00503940();
    }
    *(int *)(*(int *)(*(int *)(param_1 + 0x16a5c) + 0x18) + 0xb8) = iVar5;
    *(int *)(*(int *)(*(int *)(param_1 + 0x16a5c) + 0x18) + 0xc4) = local_48 * 3;
  }
  return;
}



// --------------------------------------------
// Aqua_Renderer__Plankton_Set   ab 0x0040f240   313 Byte
// Texte: Aqua_Renderer::Plankton_Set(), already initialised, index is out of range
// --------------------------------------------

void __thiscall
Aqua_Renderer__Plankton_Set
          (int param_1,int param_2,undefined4 param_3,undefined4 *param_4,undefined4 param_5,
          undefined4 param_6,undefined4 param_7,undefined4 param_8,undefined4 param_9,
          undefined4 param_10)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 local_ac [40];
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  FUN_0040f380();
  FUN_0040f380();
  local_c = 0;
  local_8 = 0;
  local_4 = 0;
  if (DAT_0066d188 != 0) {
    if ((param_2 < 0) || (5 < param_2)) {
      TERMINATION(s_Aqua_Renderer__Plankton_Set___00604320,s_index_is_out_of_range_006041dc);
    }
    if (*(int *)(param_1 + 0x16a28 + param_2 * 4) != -1) {
      TERMINATION(s_Aqua_Renderer__Plankton_Set___00604320,s_already_initialised_0060430c);
    }
    puVar4 = local_ac;
    for (iVar3 = 0x2b; iVar3 != 0; iVar3 = iVar3 + -1) {
      *puVar4 = *param_4;
      param_4 = param_4 + 1;
      puVar4 = puVar4 + 1;
    }
    local_ac[0] = REB_TextureCache__RegisterTextureName(param_3,0x20);
    *(undefined4 *)(param_1 + 0x16a28 + param_2 * 4) = local_ac[0];
    iVar3 = FUN_00526690(local_ac,param_5,param_6,param_7,param_8,param_9,param_10);
    iVar1 = operator_new(0x38);
    if (iVar1 == 0) {
      uVar2 = 0;
    }
    else {
      uVar2 = FUN_005249b0(iVar3);
    }
    *(undefined4 *)(param_1 + 0x16a14 + param_2 * 4) = uVar2;
    if (iVar3 != 0) {
      FUN_0052b560();
      operator_delete(iVar3);
    }
  }
  return;
}



// --------------------------------------------
// Aqua_Renderer__Menu_InGame_AllocateResources   ab 0x00411530   1133 Byte
// Texte: Aqua_Renderer::Menu_InGame_AllocateResources(), Aqua_Renderer::Menu_InGame_AllocateResources() - des file open error, CON_Cache::Allocate() file not found, CON_Cache<T>::Allocate() - cache overflow, gfx\font\, menu.des, mesh\, must not be called more than 1 time, picture\, pla_avenger_sw.msh, pla_drowsymaggie_sw.msh, pla_phobocaster_sw.msh, ... (+7)
// --------------------------------------------

void __thiscall Aqua_Renderer__Menu_InGame_AllocateResources(int param_1,undefined4 param_2)

{
  int *piVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int iVar7;
  undefined4 *puVar8;
  uint uVar9;
  int iVar10;
  int *piVar11;
  undefined4 *puVar12;
  undefined4 *puVar13;
  undefined1 auStack_22c [16];
  undefined1 auStack_21c [280];
  undefined1 auStack_104 [260];
  
  FUN_00565ce0();
  if (DAT_0066d188 == 0) {
    FUN_00506890();
    return;
  }
  if (*(int *)(param_1 + 0x17b94) == 0) {
    FUN_00506890();
    return;
  }
  if (*(int *)(param_1 + 0x18330) != 0) {
    TERMINATION(s_Aqua_Renderer__Menu_InGame_Alloc_00604550,
                s_must_not_be_called_more_than_1_t_00604580);
  }
  uVar3 = FUN_005222c0(&DAT_006043b4,param_2,s_menu_des_00604544);
  iVar4 = FUN_00506640(auStack_22c,uVar3);
  if (iVar4 == 0) {
    TERMINATION(s_Aqua_Renderer__Menu_InGame_Alloc_006044fc,param_2);
  }
  FUN_00507980(auStack_21c,&DAT_006044f4);
  uVar3 = FUN_005222c0(&DAT_006043b4,param_2,s_picture__00604360);
  uVar5 = FUN_005222c0(&DAT_006043b4,param_2,s_texture__00604354,uVar3);
  uVar6 = FUN_005222c0(&DAT_006043b4,param_2,s_mesh__0060434c,uVar5);
  FUN_005670e0(auStack_21c,s_gfx_font__00604340,uVar6,uVar5,uVar3);
  FUN_0055dd90();
  piVar2 = *(int **)(DAT_00661570 + 4);
  FUN_005ed530();
  if (*piVar2 == 0) {
    piVar11 = (int *)0x0;
    iVar4 = 0;
    if (0 < piVar2[0x86]) {
      iVar10 = 0;
      do {
        piVar1 = (int *)(piVar2[0x84] + iVar10);
        if (*piVar1 == 0) {
          if (piVar11 == (int *)0x0) {
            piVar11 = piVar1;
          }
        }
        else {
          iVar7 = FUN_00520710(piVar1[2],s_pla_toiler_sw_msh_006044e0);
          if (iVar7 == 0) {
            piVar2 = (int *)(piVar2[0x84] + 4 + iVar4 * 0xc);
            *piVar2 = *piVar2 + 1;
            FUN_005216e0();
            iVar4 = iVar4 + 1;
            goto LAB_004118ab;
          }
        }
        iVar4 = iVar4 + 1;
        iVar10 = iVar10 + 0xc;
      } while (iVar4 < piVar2[0x86]);
    }
    FUN_005209c0(auStack_104,piVar2 + 1,piVar2 + 2,s_pla_toiler_sw_msh_006044e0,0);
    iVar4 = FUN_00521ff0(auStack_104,(int)piVar2 + 0x109,piVar2[0x83]);
    if (iVar4 == 0) {
      TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_104);
      FUN_005216e0();
      iVar4 = 0;
    }
    else {
      if (piVar2[0x86] <= piVar2[0x85]) {
        if (piVar2[0x88] == 0) {
          TERMINATION(s_CON_Cache<T>__Allocate_____cache_006040c8,s_pla_toiler_sw_msh_006044e0);
        }
        else {
          puVar8 = (undefined4 *)operator_new(piVar2[0x86] * 0x18);
          puVar12 = (undefined4 *)piVar2[0x84];
          puVar13 = puVar8;
          for (uVar9 = piVar2[0x86] * 3 & 0x3fffffff; uVar9 != 0; uVar9 = uVar9 - 1) {
            *puVar13 = *puVar12;
            puVar12 = puVar12 + 1;
            puVar13 = puVar13 + 1;
          }
          for (iVar10 = 0; iVar10 != 0; iVar10 = iVar10 + -1) {
            *(undefined1 *)puVar13 = *(undefined1 *)puVar12;
            puVar12 = (undefined4 *)((int)puVar12 + 1);
            puVar13 = (undefined4 *)((int)puVar13 + 1);
          }
          operator_delete(piVar2[0x84]);
          piVar2[0x84] = (int)puVar8;
          piVar11 = puVar8 + piVar2[0x85] * 3;
          piVar2[0x86] = piVar2[0x86] << 1;
        }
      }
      piVar11[1] = 1;
      iVar10 = operator_new(0x38);
      if (iVar10 == 0) {
        iVar10 = 0;
      }
      else {
        iVar10 = FUN_00524940();
      }
      *piVar11 = iVar10;
      iVar10 = str_len(s_pla_toiler_sw_msh_006044e0);
      iVar10 = operator_new(iVar10 + 1);
      piVar11[2] = iVar10;
      str_copy(iVar10,s_pla_toiler_sw_msh_006044e0);
      iVar4 = FUN_00524a80(iVar4);
      if (iVar4 == 0) {
        if (*piVar11 != 0) {
          FUN_0040b730(1);
        }
        *piVar11 = 0;
        operator_delete(piVar11[2]);
        piVar11[2] = 0;
        TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_104);
        FUN_005216e0();
        iVar4 = 0;
      }
      else {
        piVar2[0x85] = piVar2[0x85] + 1;
        iVar4 = ((int)piVar11 - piVar2[0x84]) / 0xc + 1;
        FUN_005216e0();
      }
    }
  }
  else {
    FUN_005216e0();
    iVar4 = 0;
  }
LAB_004118ab:
  *(int *)(param_1 + 0x18330) = iVar4;
  uVar3 = FUN_00412b10(s_pla_drowsymaggie_sw_msh_006044c8,1);
  *(undefined4 *)(param_1 + 0x18334) = uVar3;
  uVar3 = FUN_00412b10(s_pla_avenger_sw_msh_006044b4,1);
  *(undefined4 *)(param_1 + 0x18338) = uVar3;
  uVar3 = FUN_00412b10(s_pla_tiburon_sw_msh_006044a0,1);
  *(undefined4 *)(param_1 + 0x1833c) = uVar3;
  uVar3 = FUN_00412b10(s_pla_skipjack_sw_msh_0060448c,1);
  *(undefined4 *)(param_1 + 0x18340) = uVar3;
  uVar3 = FUN_00412b10(s_pla_vortex_sw_msh_00604478,1);
  *(undefined4 *)(param_1 + 0x18344) = uVar3;
  uVar3 = FUN_00412b10(s_pla_succubus2_sw_msh_00604460,1);
  *(undefined4 *)(param_1 + 0x18348) = uVar3;
  uVar3 = FUN_00412b10(s_pla_voodoobreath_sw_msh_00604448,1);
  *(undefined4 *)(param_1 + 0x1834c) = uVar3;
  uVar3 = FUN_00412b10(s_pla_phobocaster_sw_msh_00604430,1);
  *(undefined4 *)(param_1 + 0x18350) = uVar3;
  FUN_00506890();
  return;
}



// --------------------------------------------
// Aqua_Renderer__Clear_SetColors   ab 0x004125d0   79 Byte
// Texte: Aqua_Renderer::Clear_SetColors(), no clear renderpipe instance
// --------------------------------------------

void __thiscall Aqua_Renderer__Clear_SetColors(int param_1,undefined4 param_2,undefined4 param_3)

{
  if (DAT_0066d188 != 0) {
    if (*(int *)(param_1 + 0x169b8) == 0) {
      TERMINATION(s_Aqua_Renderer__Clear_SetColors___006045a4,
                  s_no_clear_renderpipe_instance_006045c8);
    }
    FUN_004faca0(0x406,0x407,0x14,2,param_2,param_3);
  }
  return;
}



