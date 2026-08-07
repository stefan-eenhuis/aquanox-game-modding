// Muster: GFX_Font   2 Funktionen, 899 Byte

// --------------------------------------------
// GFX_Font__Open   ab 0x00518820   198 Byte
// Texte: GFX_Font::Open(), font must be tga
// --------------------------------------------

bool __thiscall GFX_Font__Open(int *param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  int iVar2;
  undefined *puVar3;
  undefined1 local_100 [256];
  
  FUN_00520810(param_2,0,0,0,local_100);
  iVar1 = FUN_00520710(local_100,&DAT_00609024);
  if (iVar1 != 0) {
    TERMINATION(s_GFX_Font__Open___0063a940,s_font_must_be_tga_0063a954);
  }
  iVar1 = 0;
  puVar3 = &DAT_0066e99c;
  do {
    if (*(int *)(puVar3 + 0x104) != 0) {
      iVar2 = FUN_00520710(param_2,puVar3);
      if (iVar2 == 0) break;
    }
    puVar3 = puVar3 + 0x1918;
    iVar1 = iVar1 + 1;
  } while ((int)puVar3 < 0x67b25c);
  if ((iVar1 == 8) || (iVar1 == -1)) {
    iVar1 = GFX_Font__OpenFont(param_2,param_3);
    *param_1 = iVar1;
  }
  else {
    *param_1 = iVar1;
    (&DAT_0066eaa0)[iVar1 * 0x646] = (&DAT_0066eaa0)[iVar1 * 0x646] + 1;
  }
  return *param_1 != -1;
}



// --------------------------------------------
// GFX_Font__OpenFont   ab 0x00518a10   701 Byte
// Texte: GFX_Font::OpenFont(), font %s has corrupted character %d (%d,%d,%d,%d), special pixels (0,0)(0,1) are equal
// --------------------------------------------

int GFX_Font__OpenFont(undefined4 param_1,int param_2)

{
  short sVar1;
  short sVar2;
  short sVar3;
  int *piVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 *puVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  int *piVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  uint uVar16;
  int local_38;
  int local_34;
  int local_30;
  
  FUN_00518cd0();
  iVar13 = 0;
  local_30 = 0;
  piVar4 = &DAT_0066eaa0;
  do {
    if (*piVar4 == 0) break;
    piVar4 = piVar4 + 0x646;
    iVar13 = iVar13 + 1;
  } while ((int)piVar4 < 0x67b360);
  if ((iVar13 != 8) && (iVar13 != -1)) {
    iVar11 = iVar13 * 0x1918;
    (&DAT_0066eaa0)[iVar13 * 0x646] = (&DAT_0066eaa0)[iVar13 * 0x646] + 1;
    str_copy(&DAT_0066e99c + iVar11,param_1);
    FUN_00518d00(param_1,1);
    iVar5 = operator_new(0x10);
    if (iVar5 == 0) {
      puVar8 = (undefined4 *)0x0;
    }
    else {
      uVar6 = FUN_0051a0d0();
      uVar7 = FUN_0051a0c0(uVar6);
      puVar8 = (undefined4 *)GFX_Bitmap__GFX_Bitmap(uVar7,uVar6);
    }
    *(undefined4 **)(&DAT_0066d198 + iVar11) = puVar8;
    if (param_2 == 0) {
      GFX_PictureTGA__ReadData_ARGB1555(*puVar8,puVar8[2] << 1,0);
    }
    else if (param_2 == 1) {
      GFX_PictureTGA__ReadData_ARGB1555_2(*puVar8,puVar8[2] << 1,0);
    }
    FUN_00518e50();
    piVar4 = *(int **)(&DAT_0066d198 + iVar11);
    sVar1 = *(short *)*piVar4;
    sVar2 = ((short *)*piVar4)[1];
    if (sVar1 == sVar2) {
      TERMINATION(s_GFX_Font__OpenFont___0063a99c,s_special_pixels__0_0__0_1__are_eq_0063a9b4);
    }
    *(undefined2 *)(&DAT_0066eaa4 + iVar11) = *(undefined2 *)(*piVar4 + 4);
    iVar5 = 0;
    iVar10 = 0;
    iVar15 = 1;
    local_38 = 0;
    local_34 = 0;
    if (1 < piVar4[3]) {
      do {
        iVar9 = piVar4[2];
        iVar14 = 0;
        if (0 < iVar9) {
          piVar12 = (int *)(&DAT_0066d1b0 + iVar10 * 0x18 + iVar11);
          do {
            sVar3 = *(short *)(*piVar4 + (iVar9 * iVar15 + iVar14) * 2);
            if (sVar3 == sVar1) {
              FUN_0051a670(iVar14 + 1,iVar15 + 1);
              local_38 = local_38 + 1;
            }
            else if (sVar3 == sVar2) {
              FUN_0051a690(iVar14,iVar15);
              if (local_30 < *piVar12) {
                local_30 = *piVar12;
              }
              local_34 = local_34 + 1;
              piVar12 = piVar12 + 6;
            }
            iVar9 = piVar4[2];
            iVar14 = iVar14 + 1;
            iVar5 = local_38;
            iVar10 = local_34;
          } while (iVar14 < iVar9);
        }
        iVar15 = iVar15 + 1;
      } while (iVar15 < piVar4[3]);
    }
    uVar16 = 0;
    *(int *)(&DAT_0066eaa8 + iVar11) = local_30;
    *(int *)(&DAT_0066eaac + iVar11) = iVar5;
    if (iVar5 != 0) {
      puVar8 = (undefined4 *)(&DAT_0066d1a8 + iVar11);
      do {
        if ((int)puVar8[2] < 0) {
          uVar6 = FUN_005222c0(s_font__s_has_corrupted_character___0063a968,param_1,uVar16,
                               puVar8[-3],puVar8[-2],puVar8[-1],*puVar8);
          TERMINATION(s_GFX_Font__OpenFont___0063a99c,uVar6);
        }
        if ((int)puVar8[1] < 0) {
          uVar6 = FUN_005222c0(s_font__s_has_corrupted_character___0063a968,param_1,uVar16,
                               puVar8[-3],puVar8[-2],puVar8[-1],*puVar8);
          TERMINATION(s_GFX_Font__OpenFont___0063a99c,uVar6);
        }
        uVar16 = uVar16 + 1;
        puVar8 = puVar8 + 6;
      } while (uVar16 < *(uint *)(&DAT_0066eaac + iVar11));
    }
    FUN_00518ce0();
    return iVar13;
  }
  FUN_00518ce0();
  return -1;
}



