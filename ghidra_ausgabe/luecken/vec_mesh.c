// Muster: VEC_Mesh   1 Funktionen, 2485 Byte

// --------------------------------------------
// VEC_Mesh__Load   ab 0x00529180   2485 Byte
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get "%s%d" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, DES FILE ERROR, Material, NumOfM, NumOfP, NumOfV, Polygon, SortOrder, VEC_Mesh::Load, ... (+4)
// --------------------------------------------

undefined4 __thiscall VEC_Mesh__Load(undefined4 *param_1,undefined4 param_2)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  undefined4 *puVar7;
  undefined1 *puVar8;
  int iVar9;
  uint uVar10;
  undefined4 *puVar11;
  byte *pbVar12;
  char *pcVar13;
  bool bVar14;
  uint uStack_488;
  int iStack_484;
  undefined4 *puStack_480;
  int iStack_47c;
  int iStack_478;
  int iStack_474;
  int local_470;
  undefined4 uStack_46c;
  undefined4 uStack_468;
  int iStack_464;
  int iStack_460;
  undefined1 auStack_45c [16];
  undefined1 local_44c [16];
  undefined1 auStack_43c [16];
  undefined1 local_42c [16];
  undefined1 auStack_41c [16];
  undefined1 auStack_40c [16];
  undefined1 auStack_3fc [40];
  int iStack_3d4;
  int iStack_3cc;
  int iStack_3c8;
  undefined4 *puStack_3c0;
  char acStack_200 [256];
  byte abStack_100 [256];
  
  FUN_00565ce0();
  FUN_0052b470();
  iVar3 = FUN_00506640(local_44c,param_2);
  if (iVar3 == 0) {
    FUN_0052b560();
    FUN_00506890();
    return 0;
  }
  iVar3 = FUN_00507980(local_42c,s_Vertex_006453dc);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,s_VEC_Mesh__Load_006453cc,
                         s_Vertex_006453dc,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = FUN_00507420(s_NumOfV_006453c4,&local_470);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_VEC_Mesh__Load_006453cc,
                         s_NumOfV_006453c4,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = local_470;
  iVar5 = operator_new(local_470 * 0x28);
  if (iVar5 == 0) {
    iVar5 = 0;
  }
  else {
    iStack_47c = iVar3 + -1;
  }
  iVar3 = 0;
  iStack_474 = iVar5;
  if (0 < local_470) {
    do {
      iVar6 = FUN_00506c80(&DAT_00618ac8,iVar3,iVar5);
      if (iVar6 == 0) {
        FUN_0052e040();
        uVar4 = FUN_0052e130();
        uVar4 = FUN_005222c0(s___s___Get___s_d__in_file___s__fa_0061098c,s_VEC_Mesh__Load_006453cc,
                             &DAT_00618ac8,iVar3,uVar4);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
      }
      *(int *)(iVar5 + 0x24) = iVar3;
      iVar3 = iVar3 + 1;
      iVar5 = iVar5 + 0x28;
    } while (iVar3 < local_470);
  }
  iVar3 = FUN_00507980(auStack_41c,s_Polygon_006453bc);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,s_VEC_Mesh__Load_006453cc,
                         s_Polygon_006453bc,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = FUN_00507420(s_NumOfP_006453b4,&iStack_484);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_VEC_Mesh__Load_006453cc,
                         s_NumOfP_006453b4,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = iStack_484;
  puStack_480 = (undefined4 *)operator_new(iStack_484 * 8);
  if (puStack_480 == (undefined4 *)0x0) {
    puStack_480 = (undefined4 *)0x0;
  }
  else if (-1 < iVar3 + -1) {
    puVar8 = (undefined1 *)((int)puStack_480 + 7);
    do {
      puVar8[-1] = 0xff;
      *puVar8 = 0;
      puVar8 = puVar8 + 8;
      iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
  }
  iVar3 = iStack_484 * 3;
  iVar5 = operator_new(iStack_484 * 0x18);
  if (iVar5 == 0) {
    iVar5 = 0;
  }
  else {
    iStack_47c = iVar3 + -1;
  }
  iVar3 = iStack_484 * 3;
  iStack_460 = iVar5;
  iStack_478 = operator_new(iStack_484 * 0x18);
  if (iStack_478 == 0) {
    iStack_478 = 0;
  }
  else {
    iStack_47c = iVar3 + -1;
  }
  iVar3 = 0;
  if (0 < iStack_484) {
    iVar5 = iVar5 + 0x10;
    do {
      iVar6 = FUN_00507140(auStack_45c,&DAT_00618cc8,iVar3);
      if (iVar6 == 0) {
        FUN_0052e040();
        uVar4 = FUN_0052e130();
        uVar4 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,s_VEC_Mesh__Load_006453cc,
                             &DAT_00618cc8,iVar3,uVar4);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
      }
      FUN_0052daa0(auStack_45c);
      iVar6 = FUN_005078f0(&DAT_006453b0);
      if (iVar6 != 0) {
        iVar6 = FUN_00507610(&DAT_006453b0,iVar5 + -0x10);
        if (iVar6 == 0) {
          FUN_0052e040();
          uVar4 = FUN_0052e130();
          uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                               s_VEC_Mesh__Load___0064539c,&DAT_006453b0,uVar4);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
        }
        iVar6 = FUN_00507610(&DAT_00645398,iVar5 + -8);
        if (iVar6 == 0) {
          FUN_0052e040();
          uVar4 = FUN_0052e130();
          uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                               s_VEC_Mesh__Load___0064539c,&DAT_00645398,uVar4);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
        }
        iVar6 = FUN_00507610(&DAT_00645394,iVar5);
        if (iVar6 == 0) {
          FUN_0052e040();
          uVar4 = FUN_0052e130();
          uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                               s_VEC_Mesh__Load___0064539c,&DAT_00645394,uVar4);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
        }
      }
      iVar3 = iVar3 + 1;
      iVar5 = iVar5 + 0x18;
    } while (iVar3 < iStack_484);
  }
  iVar3 = FUN_00507980(auStack_43c,s_Material_00645388);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,s_VEC_Mesh__Load_006453cc,
                         s_Material_00645388,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = FUN_00507420(s_NumOfM_00645380,&uStack_488);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_VEC_Mesh__Load_006453cc,
                         s_NumOfM_00645380,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  if ((int)uStack_488 < 1) {
    TERMINATION(s_VEC_Mesh__Load_____numofmaterial_00645350,param_2);
  }
  if (0x100 < (int)uStack_488) {
    TERMINATION(s_VEC_Mesh__Load_____maximal_numbe_00645308,param_2);
  }
  uVar10 = uStack_488;
  iVar3 = operator_new(uStack_488 * 0xac);
  if (iVar3 == 0) {
    iVar3 = 0;
  }
  else if (-1 < (int)(uVar10 - 1)) {
    puVar11 = (undefined4 *)(iVar3 + 0xa0);
    do {
      FUN_0040f380();
      FUN_0040f380();
      *puVar11 = 0;
      puVar11[1] = 0;
      puVar11[2] = 0;
      puVar11 = puVar11 + 0x2b;
      uVar10 = uVar10 - 1;
    } while (uVar10 != 0);
  }
  iStack_47c = iVar3;
  iVar3 = FUN_00507980(auStack_3fc,s_SortOrder_006452fc);
  if (iVar3 == 0) {
    iVar3 = 0;
    if (0 < (int)uStack_488) {
      do {
        abStack_100[iVar3] = (byte)iVar3;
        iVar3 = iVar3 + 1;
      } while (iVar3 < (int)uStack_488);
    }
  }
  else {
    iVar3 = 0;
    if (0 < (int)uStack_488) {
      do {
        FUN_005068c0(&DAT_006452f8,iVar3,abStack_100 + iVar3);
        iVar3 = iVar3 + 1;
      } while (iVar3 < (int)uStack_488);
    }
  }
  iVar3 = 0;
  if (0 < (int)uStack_488) {
    do {
      iVar5 = FUN_00507140(auStack_40c,&DAT_006452f8,iVar3);
      if (iVar5 == 0) {
        FUN_0052e040();
        uVar4 = FUN_0052e130();
        uVar4 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,s_VEC_Mesh__Load_006453cc,
                             &DAT_006452f8,iVar3,uVar4);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
      }
      FUN_0052d2c0(auStack_40c);
      iVar3 = iVar3 + 1;
    } while (iVar3 < (int)uStack_488);
  }
  iStack_3cc = iStack_474;
  puStack_3c0 = puStack_480;
  iStack_3d4 = local_470;
  iStack_3c8 = iStack_484;
  FUN_0052b6d0(0);
  pcVar13 = acStack_200;
  for (uVar10 = uStack_488 >> 2; uVar10 != 0; uVar10 = uVar10 - 1) {
    pcVar13[0] = '\0';
    pcVar13[1] = '\0';
    pcVar13[2] = '\0';
    pcVar13[3] = '\0';
    pcVar13 = pcVar13 + 4;
  }
  iStack_3cc = 0;
  puStack_3c0 = (undefined4 *)0x0;
  iStack_3d4 = 0;
  iStack_3c8 = 0;
  for (uVar10 = uStack_488 & 3; uVar10 != 0; uVar10 = uVar10 - 1) {
    *pcVar13 = '\0';
    pcVar13 = pcVar13 + 1;
  }
  iVar3 = 0;
  if (0 < iStack_484) {
    pbVar12 = (byte *)((int)puStack_480 + 6);
    do {
      bVar1 = *pbVar12;
      if ((int)uStack_488 <= (int)(uint)bVar1) goto LAB_00529863;
      iVar3 = iVar3 + 1;
      pbVar12 = pbVar12 + 8;
      acStack_200[bVar1] = '\x01';
    } while (iVar3 < iStack_484);
  }
  iVar3 = 0;
  uVar10 = 0;
  if (0 < (int)uStack_488) {
    do {
      if (acStack_200[iVar3] == '\x01') {
        uVar10 = uVar10 + 1;
      }
      iVar3 = iVar3 + 1;
    } while (iVar3 < (int)uStack_488);
  }
  if (uVar10 != uStack_488) {
LAB_00529863:
    TERMINATION(s_VEC_Mesh__Load_____materials_may_00645288,param_2);
  }
  FUN_00528f80(uStack_488);
  param_1[8] = uStack_488;
  iStack_464 = 0;
  if (0 < (int)uStack_488) {
    iVar3 = 0;
    do {
      bVar1 = abStack_100[iStack_464];
      iVar5 = 0;
      uStack_46c = CONCAT31(uStack_46c._1_3_,bVar1);
      if (0 < iStack_484) {
        pbVar12 = (byte *)((int)puStack_480 + 6);
        iVar6 = iStack_484;
        do {
          if (*pbVar12 == bVar1) {
            iVar5 = iVar5 + 1;
          }
          pbVar12 = pbVar12 + 8;
          iVar6 = iVar6 + -1;
        } while (iVar6 != 0);
      }
      uVar4 = FUN_00529c10(puStack_480,iStack_484,uStack_46c);
      FUN_0052bef0(uVar4,iVar5);
      puVar11 = (undefined4 *)(iStack_47c + (uint)bVar1 * 0xac);
      puVar7 = (undefined4 *)(param_1[6] + 0x30 + iVar3);
      for (iVar5 = 0x2b; iVar5 != 0; iVar5 = iVar5 + -1) {
        *puVar7 = *puVar11;
        puVar11 = puVar11 + 1;
        puVar7 = puVar7 + 1;
      }
      uVar4 = FUN_00529ce0(iStack_474,puStack_480,iStack_484,uStack_46c,
                           *(undefined4 *)(param_1[6] + 0x20 + iVar3));
      *(undefined4 *)(param_1[6] + 0x18 + iVar3) = uVar4;
      puVar11 = *(undefined4 **)(param_1[6] + 0x2c + iVar3);
      iVar6 = 0;
      puVar7 = puStack_480;
      iVar5 = iStack_484;
      if (0 < iStack_484) {
        do {
          if (*(char *)((int)puVar7 + 6) == (char)uStack_46c) {
            *puVar11 = *puVar7;
            puVar11[1] = puVar7[1];
            iVar6 = iVar6 + 1;
            puVar11 = puVar11 + 2;
          }
          iVar5 = iVar5 + -1;
          puVar7 = puVar7 + 2;
        } while (iVar5 != 0);
      }
      *(int *)(param_1[6] + 0x24 + iVar3) = iVar6;
      if (0 < iStack_484) {
        puVar11 = (undefined4 *)(iStack_478 + 0x10);
        puVar7 = (undefined4 *)(iStack_460 + 0x10);
        pcVar13 = (char *)((int)puStack_480 + 6);
        iVar5 = iStack_484;
        do {
          if (*pcVar13 == (char)uStack_46c) {
            puVar11[-4] = puVar7[-4];
            puVar11[-3] = puVar7[-3];
            puVar11[-2] = puVar7[-2];
            puVar11[-1] = puVar7[-1];
            *puVar11 = *puVar7;
            puVar11[1] = puVar7[1];
            puVar11 = puVar11 + 6;
          }
          pcVar13 = pcVar13 + 8;
          puVar7 = puVar7 + 6;
          iVar5 = iVar5 + -1;
        } while (iVar5 != 0);
      }
      iVar5 = param_1[6] + iVar3;
      iVar6 = *(int *)(iVar5 + 0x18);
      do {
        do {
          iVar9 = *(int *)(iVar5 + 0x24);
          FUN_0052c630(iStack_478);
          FUN_0052c820();
          iVar5 = param_1[6] + iVar3;
          iVar2 = *(int *)(iVar5 + 0x18);
          bVar14 = iVar6 != iVar2;
          iVar6 = iVar2;
        } while (bVar14);
      } while (iVar9 != *(int *)(iVar5 + 0x24));
      FUN_0052bd70();
      iVar5 = iVar3 + param_1[6];
      iVar6 = 0;
      uStack_468 = 0xffffffff;
      if (0 < *(int *)(iVar3 + 0x18 + param_1[6])) {
        iVar9 = 0;
        do {
          *(undefined4 *)(iVar9 + 0x18 + *(int *)(iVar5 + 0x20)) = 0xffffffff;
          iVar6 = iVar6 + 1;
          iVar9 = iVar9 + 0x28;
        } while (iVar6 < *(int *)(iVar5 + 0x18));
      }
      FUN_0052c020(iStack_478,0x3c23d70a);
      FUN_0052c2b0(0x10);
      iStack_464 = iStack_464 + 1;
      iVar3 = iVar3 + 0xe4;
    } while (iStack_464 < (int)uStack_488);
  }
  iVar3 = param_1[8];
  if (iVar3 != 0) {
    puVar11 = (undefined4 *)param_1[6];
    puVar7 = param_1;
    for (iVar5 = 6; iVar5 != 0; iVar5 = iVar5 + -1) {
      *puVar7 = *puVar11;
      puVar11 = puVar11 + 1;
      puVar7 = puVar7 + 1;
    }
    iVar5 = 1;
    if (1 < iVar3) {
      iVar3 = 0xe4;
      do {
        FUN_005116b0(iVar3 + 0xc + param_1[6]);
        FUN_005116b0(iVar3 + param_1[6]);
        iVar5 = iVar5 + 1;
        iVar3 = iVar3 + 0xe4;
      } while (iVar5 < (int)param_1[8]);
    }
  }
  operator_delete(iStack_478);
  operator_delete(iStack_460);
  operator_delete(puStack_480);
  operator_delete(iStack_474);
  operator_delete(iStack_47c);
  FUN_0052b560();
  FUN_00506890();
  return 1;
}



