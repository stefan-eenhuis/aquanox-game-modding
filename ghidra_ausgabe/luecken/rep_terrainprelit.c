// Muster: REP_TerrainPrelit   1 Funktionen, 3602 Byte

// --------------------------------------------
// REP_TerrainPrelit__CreateAndUploadSelectors   ab 0x004fd960   3602 Byte
// Texte: At least material 0 has to be defined in selectormap., Height of map must be > 0., MOS_Map::Reconstruct(const s32 _Width, const s32 _Height), REP_TerrainPrelit::CreateAndUploadSelectors(), Width of map must be > 0., couldn't allocate data field (out of memory)., couldn't allocate dataline field (out of memory)., difference sizes of maps in copy operation., material_s.tga, void MOS_Map<T>::Copy(), void MOS_Map<T>::Reconstruct()
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

int __thiscall
REP_TerrainPrelit__CreateAndUploadSelectors
          (int param_1,undefined4 param_2,int param_3,float *param_4,float *param_5,float *param_6)

{
  int *piVar1;
  byte bVar2;
  undefined1 uVar3;
  undefined4 uVar4;
  int iVar5;
  int *piVar6;
  undefined4 *puVar7;
  ushort *puVar8;
  byte *pbVar9;
  int iVar10;
  ushort *puVar11;
  int iVar12;
  int iVar13;
  undefined1 *puVar14;
  undefined4 *puVar15;
  undefined4 *puVar16;
  undefined4 uVar17;
  int local_ac;
  int local_a8;
  undefined4 *local_a4;
  int *local_a0;
  int iStack_9c;
  int iStack_98;
  int iStack_94;
  undefined4 *puStack_90;
  int *piStack_8c;
  int iStack_88;
  int iStack_84;
  int iStack_80;
  undefined4 *puStack_7c;
  int *piStack_78;
  int iStack_74;
  int iStack_70;
  int iStack_6c;
  undefined4 *puStack_68;
  int *piStack_64;
  int iStack_60;
  int iStack_5c;
  int iStack_58;
  int iStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  
  piVar6 = &local_a8;
  iVar10 = 4;
  do {
    piVar6[-2] = 0;
    piVar6[-1] = 0;
    *piVar6 = 0;
    piVar6[1] = 0;
    piVar6[2] = 0;
    piVar6 = piVar6 + 5;
    iVar10 = iVar10 + -1;
  } while (iVar10 != 0);
  FUN_00518cd0();
  uVar17 = 1;
  uVar4 = FUN_005222c0(&DAT_006043b4,param_2,s_material_s_tga_00638b7c,1);
  FUN_00518d00(uVar4,uVar17);
  iVar10 = FUN_0051a0d0();
  iVar5 = FUN_0051a0c0();
  if (iVar5 < 1) {
    TERMINATION(s_Width_of_map_must_be_>_0__006046b4,s_MOS_Map__Reconstruct_const_s32___006046d0);
  }
  if (iVar10 < 1) {
    TERMINATION(s_Height_of_map_must_be_>_0__00604698,s_MOS_Map__Reconstruct_const_s32___006046d0);
  }
  iVar13 = iVar5 * iVar10;
  iStack_58 = iVar13;
  if (iVar13 - local_a8 != 0) {
    operator_delete(local_a4);
    local_a4 = (undefined4 *)operator_new(iVar13 * 4);
    if (local_a4 == (undefined4 *)0x0) {
      local_a4 = (undefined4 *)0x0;
    }
    if (local_a4 == (undefined4 *)0x0) {
      TERMINATION(s_couldn_t_allocate_data_field__ou_00604648,
                  s_void_MOS_Map<T>__Reconstruct___00604678);
    }
  }
  piVar6 = local_a0;
  if (iVar10 != local_ac) {
    operator_delete(local_a0);
    piVar6 = (int *)operator_new(iVar10 * 4);
    local_a0 = piVar6;
    if (piVar6 == (int *)0x0) {
      TERMINATION(s_couldn_t_allocate_dataline_field_00604614,
                  s_void_MOS_Map<T>__Reconstruct___00604678);
    }
  }
  puVar7 = local_a4;
  if (0 < iVar10) {
    do {
      *piVar6 = (int)puVar7;
      piVar6 = piVar6 + 1;
      iVar10 = iVar10 + -1;
      puVar7 = puVar7 + iVar5;
    } while (iVar10 != 0);
  }
  local_a8 = iVar13;
  iVar10 = FUN_0051a0d0();
  iVar5 = FUN_0051a0c0();
  if (iVar5 < 1) {
    TERMINATION(s_Width_of_map_must_be_>_0__006046b4,s_MOS_Map__Reconstruct_const_s32___006046d0);
  }
  if (iVar10 < 1) {
    TERMINATION(s_Height_of_map_must_be_>_0__00604698,s_MOS_Map__Reconstruct_const_s32___006046d0);
  }
  iVar13 = iVar5 * iVar10;
  puVar7 = puStack_90;
  iStack_5c = iVar13;
  if (iVar13 - iStack_94 != 0) {
    operator_delete(puStack_90);
    puVar7 = (undefined4 *)operator_new(iVar13 * 4);
    if (puVar7 == (undefined4 *)0x0) {
      puVar7 = (undefined4 *)0x0;
    }
    puStack_90 = puVar7;
    if (puVar7 == (undefined4 *)0x0) {
      TERMINATION(s_couldn_t_allocate_data_field__ou_00604648,
                  s_void_MOS_Map<T>__Reconstruct___00604678);
    }
  }
  piVar6 = piStack_8c;
  if (iVar10 != iStack_98) {
    operator_delete(piStack_8c);
    piVar6 = (int *)operator_new(iVar10 * 4);
    piStack_8c = piVar6;
    if (piVar6 == (int *)0x0) {
      TERMINATION(s_couldn_t_allocate_dataline_field_00604614,
                  s_void_MOS_Map<T>__Reconstruct___00604678);
    }
  }
  iVar13 = iVar10;
  if (0 < iVar10) {
    do {
      *piVar6 = (int)puVar7;
      puVar7 = puVar7 + iVar5;
      piVar6 = piVar6 + 1;
      iVar13 = iVar13 + -1;
    } while (iVar13 != 0);
  }
  iStack_94 = iStack_5c;
  iStack_9c = iVar5;
  iStack_98 = iVar10;
  iVar10 = FUN_0051a0d0();
  iVar5 = FUN_0051a0c0();
  if (iVar5 < 1) {
    TERMINATION(s_Width_of_map_must_be_>_0__006046b4,s_MOS_Map__Reconstruct_const_s32___006046d0);
  }
  if (iVar10 < 1) {
    TERMINATION(s_Height_of_map_must_be_>_0__00604698,s_MOS_Map__Reconstruct_const_s32___006046d0);
  }
  iVar13 = iVar5 * iVar10;
  puVar7 = puStack_7c;
  iStack_60 = iVar13;
  if (iVar13 - iStack_80 != 0) {
    operator_delete(puStack_7c);
    puVar7 = (undefined4 *)operator_new(iVar13 * 4);
    if (puVar7 == (undefined4 *)0x0) {
      puVar7 = (undefined4 *)0x0;
    }
    puStack_7c = puVar7;
    if (puVar7 == (undefined4 *)0x0) {
      TERMINATION(s_couldn_t_allocate_data_field__ou_00604648,
                  s_void_MOS_Map<T>__Reconstruct___00604678);
    }
  }
  piVar6 = piStack_78;
  if (iVar10 != iStack_84) {
    operator_delete(piStack_78);
    piVar6 = (int *)operator_new(iVar10 * 4);
    piStack_78 = piVar6;
    if (piVar6 == (int *)0x0) {
      TERMINATION(s_couldn_t_allocate_dataline_field_00604614,
                  s_void_MOS_Map<T>__Reconstruct___00604678);
    }
  }
  iVar13 = iVar10;
  if (0 < iVar10) {
    do {
      *piVar6 = (int)puVar7;
      puVar7 = puVar7 + iVar5;
      piVar6 = piVar6 + 1;
      iVar13 = iVar13 + -1;
    } while (iVar13 != 0);
  }
  iStack_80 = iStack_60;
  iStack_88 = iVar5;
  iStack_84 = iVar10;
  iVar10 = FUN_0051a0d0();
  iVar5 = FUN_0051a0c0();
  if (iVar5 < 1) {
    TERMINATION(s_Width_of_map_must_be_>_0__006046b4,s_MOS_Map__Reconstruct_const_s32___006046d0);
  }
  if (iVar10 < 1) {
    TERMINATION(s_Height_of_map_must_be_>_0__00604698,s_MOS_Map__Reconstruct_const_s32___006046d0);
  }
  iVar13 = iVar5 * iVar10;
  if (iVar13 - iStack_6c != 0) {
    operator_delete(puStack_68);
    puStack_68 = (undefined4 *)operator_new(iVar13 * 4);
    if (puStack_68 == (undefined4 *)0x0) {
      puStack_68 = (undefined4 *)0x0;
    }
    if (puStack_68 == (undefined4 *)0x0) {
      TERMINATION(s_couldn_t_allocate_data_field__ou_00604648,
                  s_void_MOS_Map<T>__Reconstruct___00604678);
    }
  }
  piVar6 = piStack_64;
  if (iVar10 != iStack_70) {
    operator_delete(piStack_64);
    piVar6 = (int *)operator_new(iVar10 * 4);
    piStack_64 = piVar6;
    if (piVar6 == (int *)0x0) {
      TERMINATION(s_couldn_t_allocate_dataline_field_00604614,
                  s_void_MOS_Map<T>__Reconstruct___00604678);
    }
  }
  puVar7 = puStack_68;
  iVar12 = iVar10;
  if (0 < iVar10) {
    do {
      *piVar6 = (int)puVar7;
      piVar6 = piVar6 + 1;
      iVar12 = iVar12 + -1;
      puVar7 = puVar7 + iVar5;
    } while (iVar12 != 0);
  }
  iVar12 = *local_a0;
  uVar4 = 1;
  iStack_74 = iVar5;
  iStack_70 = iVar10;
  iStack_6c = iVar13;
  iVar10 = FUN_0051a0c0(1);
  GFX_PictureTGA__ReadData_RGBA8888(iVar12,iVar10 << 2,uVar4);
  iVar10 = iStack_94;
  puVar7 = local_a4;
  puVar16 = puStack_90;
  if (local_a8 != iStack_94) {
    TERMINATION(s_difference_sizes_of_maps_in_copy_00638a20,s_void_MOS_Map<T>__Copy___00638a4c);
    iVar10 = iStack_94;
    puVar7 = local_a4;
    puVar16 = puStack_90;
  }
  for (; iVar12 = iStack_80, iVar5 = local_a8, iVar10 != 0; iVar10 = iVar10 + -1) {
    *puVar16 = *puVar7;
    puVar7 = puVar7 + 1;
    puVar16 = puVar16 + 1;
  }
  if (local_a8 != iStack_80) {
    TERMINATION(s_difference_sizes_of_maps_in_copy_00638a20,s_void_MOS_Map<T>__Copy___00638a4c);
  }
  puVar7 = local_a4;
  puVar16 = puStack_7c;
  for (; iVar12 != 0; iVar12 = iVar12 + -1) {
    *puVar16 = *puVar7;
    puVar7 = puVar7 + 1;
    puVar16 = puVar16 + 1;
  }
  iVar10 = iVar13;
  puVar7 = local_a4;
  puVar16 = puStack_68;
  if (iVar5 != iVar13) {
    TERMINATION(s_difference_sizes_of_maps_in_copy_00638a20,s_void_MOS_Map<T>__Copy___00638a4c);
    puVar7 = local_a4;
    puVar16 = puStack_68;
  }
  for (; iVar10 != 0; iVar10 = iVar10 + -1) {
    *puVar16 = *puVar7;
    puVar7 = puVar7 + 1;
    puVar16 = puVar16 + 1;
  }
  FUN_00518e50();
  puVar7 = (undefined4 *)*local_a0;
  puVar16 = (undefined4 *)*piStack_8c;
  puVar14 = (undefined1 *)*piStack_64;
  puVar15 = (undefined4 *)*piStack_78;
  *(undefined4 *)(param_1 + 8) = 0xffffffff;
  *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x14) = 0xfffffffe;
  fStack_50 = 3.4028235e+38;
  fStack_4c = 3.4028235e+38;
  fStack_48 = 3.4028235e+38;
  fStack_44 = 3.4028235e+38;
  fStack_40 = 3.4028235e+38;
  fStack_3c = 3.4028235e+38;
  fStack_38 = 3.4028235e+38;
  fStack_34 = 3.4028235e+38;
  if (*param_4 != _DAT_005f336c) {
    fStack_50 = _DAT_005f33b8 / *param_4;
  }
  if (param_4[1] != _DAT_005f336c) {
    fStack_4c = _DAT_005f33b8 / param_4[1];
  }
  if (param_4[2] != _DAT_005f336c) {
    fStack_48 = _DAT_005f33b8 / param_4[2];
  }
  if (*param_5 != _DAT_005f336c) {
    fStack_44 = _DAT_005f33b8 / *param_5;
  }
  if (param_5[1] != _DAT_005f336c) {
    fStack_40 = _DAT_005f33b8 / param_5[1];
  }
  if (param_5[2] != _DAT_005f336c) {
    fStack_3c = _DAT_005f33b8 / param_5[2];
  }
  if (*param_6 != _DAT_005f336c) {
    fStack_38 = _DAT_005f33b8 / *param_6;
  }
  if (param_6[1] != _DAT_005f336c) {
    fStack_34 = _DAT_005f33b8 / param_6[1];
  }
  if (*param_4 != _DAT_005f336c) {
    fStack_2c = _DAT_005f33b8 / *param_4;
  }
  if (param_4[1] != _DAT_005f336c) {
    fStack_28 = _DAT_005f33b8 / param_4[1];
  }
  if (param_4[2] != _DAT_005f336c) {
    fStack_24 = _DAT_005f33b8 / param_4[2];
  }
  if (iStack_58 != 0) {
    iStack_54 = iStack_58;
    do {
      bVar2 = *(byte *)((int)puVar7 + 3);
      if (bVar2 < 0x10) {
LAB_004fe0f9:
        *(undefined4 *)(param_1 + 8) = 0xfffffffe;
        *(undefined1 *)((int)puVar7 + 3) = 0xff;
        *puVar16 = 0;
LAB_004fe10e:
        *puVar15 = 0;
      }
      else {
        if (bVar2 < 0x30) {
          *(undefined4 *)(param_1 + 0xc) = 0xfffffffe;
          *puVar7 = 0;
          *(undefined1 *)((int)puVar16 + 3) = 0xff;
          goto LAB_004fe10e;
        }
        if (0x4f < bVar2) goto LAB_004fe0f9;
        *(undefined4 *)(param_1 + 0x10) = 0xfffffffe;
        *puVar7 = 0;
        *puVar16 = 0;
        *(undefined1 *)((int)puVar15 + 3) = 0xff;
      }
      uVar3 = *(undefined1 *)((int)puVar7 + 2);
      *(undefined1 *)((int)puVar7 + 2) = *(undefined1 *)puVar7;
      *(undefined1 *)puVar7 = uVar3;
      uVar3 = *(undefined1 *)puVar16;
      *(undefined1 *)puVar16 = *(undefined1 *)((int)puVar16 + 2);
      *(undefined1 *)((int)puVar16 + 2) = uVar3;
      uVar3 = *(undefined1 *)((int)puVar15 + 2);
      *(undefined1 *)((int)puVar15 + 2) = *(undefined1 *)puVar15;
      *(undefined1 *)puVar15 = uVar3;
      uVar3 = *puVar14;
      *puVar14 = puVar14[2];
      puVar14[2] = uVar3;
      uVar3 = __ftol();
      *(undefined1 *)((int)puVar7 + 2) = uVar3;
      uVar3 = __ftol();
      *(undefined1 *)((int)puVar7 + 1) = uVar3;
      uVar3 = __ftol();
      *(undefined1 *)puVar7 = uVar3;
      uVar3 = __ftol();
      *(undefined1 *)((int)puVar16 + 2) = uVar3;
      uVar3 = __ftol();
      *(undefined1 *)((int)puVar16 + 1) = uVar3;
      uVar3 = __ftol();
      *(undefined1 *)puVar16 = uVar3;
      uVar3 = __ftol();
      *(undefined1 *)((int)puVar15 + 2) = uVar3;
      uVar3 = __ftol();
      *(undefined1 *)((int)puVar15 + 1) = uVar3;
      uVar3 = __ftol();
      *(undefined1 *)puVar15 = uVar3;
      uVar3 = __ftol();
      puVar14[2] = uVar3;
      uVar3 = __ftol();
      puVar14[1] = uVar3;
      uVar3 = __ftol();
      *puVar14 = uVar3;
      puVar7 = puVar7 + 1;
      puVar16 = puVar16 + 1;
      puVar15 = puVar15 + 1;
      puVar14 = puVar14 + 4;
      iStack_54 = iStack_54 + -1;
    } while (iStack_54 != 0);
  }
  if (*(int *)(param_1 + 8) != -2) {
    TERMINATION(s_REP_TerrainPrelit__CreateAndUplo_00638b14,
                s_At_least_material_0_has_to_be_de_00638b44);
  }
  iVar10 = iStack_58;
  puVar8 = (ushort *)operator_new(iStack_58 * 2);
  iVar5 = 0;
  if (*(int *)(param_1 + 8) == -2) {
    if (0 < iVar10) {
      pbVar9 = (byte *)(*local_a0 + 2);
      puVar11 = puVar8;
      do {
        iVar10 = iVar10 + -1;
        *puVar11 = ((ushort)(pbVar9[1] & 0xf0) << 4 | *pbVar9 & 0xfff0) << 4 |
                   (ushort)(pbVar9[-2] >> 4) | pbVar9[-1] & 0xfff0;
        pbVar9 = pbVar9 + 4;
        puVar11 = puVar11 + 1;
      } while (iVar10 != 0);
    }
    DSP_Display__Texture_Create(param_3,8,8,1);
    DSP_Display__Texture_Unlock(param_3,puVar8);
    *(int *)(param_1 + 8) = param_3;
    iVar5 = 1;
  }
  if (*(int *)(param_1 + 0xc) == -2) {
    if (0 < iStack_5c) {
      pbVar9 = (byte *)(*piStack_8c + 2);
      puVar11 = puVar8;
      iVar10 = iStack_5c;
      do {
        iVar10 = iVar10 + -1;
        *puVar11 = ((ushort)(pbVar9[1] & 0xf0) << 4 | *pbVar9 & 0xfff0) << 4 |
                   (ushort)(pbVar9[-2] >> 4) | pbVar9[-1] & 0xfff0;
        pbVar9 = pbVar9 + 4;
        puVar11 = puVar11 + 1;
      } while (iVar10 != 0);
    }
    iVar10 = param_3 + iVar5;
    DSP_Display__Texture_Create(iVar10,8,8,1);
    DSP_Display__Texture_Unlock(iVar10,puVar8);
    *(int *)(param_1 + 0xc) = iVar10;
    iVar5 = iVar5 + 1;
  }
  if (*(int *)(param_1 + 0x10) == -2) {
    if (0 < iStack_60) {
      pbVar9 = (byte *)(*piStack_78 + 2);
      puVar11 = puVar8;
      iVar10 = iStack_60;
      do {
        iVar10 = iVar10 + -1;
        *puVar11 = ((ushort)(pbVar9[1] & 0xf0) << 4 | *pbVar9 & 0xfff0) << 4 |
                   (ushort)(pbVar9[-2] >> 4) | pbVar9[-1] & 0xfff0;
        pbVar9 = pbVar9 + 4;
        puVar11 = puVar11 + 1;
      } while (iVar10 != 0);
    }
    iVar10 = param_3 + iVar5;
    DSP_Display__Texture_Create(iVar10,8,8,1);
    DSP_Display__Texture_Unlock(iVar10,puVar8);
    *(int *)(param_1 + 0x10) = iVar10;
    iVar5 = iVar5 + 1;
  }
  if (*(int *)(param_1 + 0x14) == -2) {
    if (0 < iVar13) {
      pbVar9 = (byte *)(*piStack_64 + 2);
      puVar11 = puVar8;
      do {
        iVar13 = iVar13 + -1;
        *puVar11 = ((ushort)(pbVar9[1] & 0xf0) << 4 | *pbVar9 & 0xfff0) << 4 |
                   (ushort)(pbVar9[-2] >> 4) | pbVar9[-1] & 0xfff0;
        pbVar9 = pbVar9 + 4;
        puVar11 = puVar11 + 1;
      } while (iVar13 != 0);
    }
    param_3 = param_3 + iVar5;
    DSP_Display__Texture_Create(param_3,8,8,1);
    DSP_Display__Texture_Unlock(param_3,puVar8);
    *(int *)(param_1 + 0x14) = param_3;
    iVar5 = iVar5 + 1;
  }
  operator_delete(puVar8);
  FUN_00518ce0();
  piVar6 = &iStack_54;
  iVar10 = 4;
  do {
    piVar1 = piVar6 + -4;
    piVar6 = piVar6 + -5;
    operator_delete(*piVar1);
    operator_delete(*piVar6);
    iVar10 = iVar10 + -1;
  } while (iVar10 != 0);
  return iVar5;
}



