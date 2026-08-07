// Muster: MUI_Menu   2 Funktionen, 2225 Byte

// --------------------------------------------
// MUI_Menu__Parse   ab 0x0055d700   1668 Byte
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get "%s%d" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, COLOR, DES FILE ERROR, Diffuse0, Diffuse1, Diffuse2, Diffuse3, Diffuse4, Diffuse5, ... (+4)
// --------------------------------------------

void __thiscall
MUI_Menu__Parse(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  int iVar7;
  undefined1 local_11c [16];
  int local_10c;
  undefined4 uStack_108;
  undefined1 auStack_104 [260];
  
  str_copy(param_1 + 0x1c,param_4);
  str_copy(param_1 + 0x61,param_5);
  iVar2 = FUN_00507980(local_11c,&DAT_0065a088);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,s_MUI_Menu__Parse___0065a074,
                         &DAT_0065a088,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507420(s_NumOfFont_0065a068,&local_10c);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_MUI_Menu__Parse___0065a074,
                         s_NumOfFont_0065a068,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = param_1[0x5f];
  if (iVar2 != 0) {
    iVar7 = *(int *)(iVar2 + -4);
    if (-1 < iVar7 + -1) {
      do {
        FUN_005187c0();
        iVar7 = iVar7 + -1;
      } while (iVar7 != 0);
    }
    operator_delete(iVar2 + -4);
  }
  iVar2 = local_10c;
  piVar4 = (int *)operator_new(local_10c * 4 + 4);
  if (piVar4 == (int *)0x0) {
    piVar5 = (int *)0x0;
  }
  else {
    piVar5 = piVar4 + 1;
    *piVar4 = iVar2;
    if (-1 < iVar2 + -1) {
      do {
        FUN_00518760();
        iVar2 = iVar2 + -1;
      } while (iVar2 != 0);
    }
  }
  param_1[0x5f] = (int)piVar5;
  iVar7 = 0;
  iVar2 = 0;
  if (0 < local_10c) {
    do {
      str_copy(auStack_104,param_3);
      iVar6 = str_len(auStack_104);
      iVar6 = FUN_00506de0(&DAT_0065a060,iVar7,auStack_104 + iVar6);
      if (iVar6 == 0) {
        FUN_0052e040();
        uVar3 = FUN_0052e130();
        uVar3 = FUN_005222c0(s___s___Get___s_d__in_file___s__fa_0061098c,
                             s_MUI_Menu__Parse___0065a074,&DAT_0065a060,iVar7,uVar3);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
      }
      GFX_Font__Open(auStack_104,1);
      iVar6 = FUN_005189f0();
      if (iVar2 < iVar6) {
        iVar2 = FUN_005189f0();
      }
      iVar7 = iVar7 + 1;
    } while (iVar7 < local_10c);
  }
  iVar7 = param_1[0x60];
  if (iVar7 != 0) {
    FUN_00518030();
    operator_delete(iVar7);
  }
  iVar7 = operator_new(0x10);
  if (iVar7 == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = GFX_Bitmap__GFX_Bitmap(iVar2 << 7,iVar2 * 2);
  }
  param_1[0x60] = iVar2;
  iVar2 = FUN_00507980(local_11c,s_COLOR_0065a058);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,s_MUI_Menu__Parse___0065a074,
                         s_COLOR_0065a058,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507510(s_Diffuse0_0065a04c,param_1 + 2);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_MUI_Menu__Parse___0065a074,
                         s_Diffuse0_0065a04c,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507510(s_Diffuse1_0065a040,param_1 + 5);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_MUI_Menu__Parse___0065a074,
                         s_Diffuse1_0065a040,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507510(s_Diffuse2_0065a034,param_1 + 8);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_MUI_Menu__Parse___0065a074,
                         s_Diffuse2_0065a034,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507510(s_Diffuse3_0065a028,param_1 + 0xb);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_MUI_Menu__Parse___0065a074,
                         s_Diffuse3_0065a028,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507510(s_Diffuse4_0065a01c,param_1 + 0xe);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_MUI_Menu__Parse___0065a074,
                         s_Diffuse4_0065a01c,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507510(s_Diffuse5_0065a010,param_1 + 0x11);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_MUI_Menu__Parse___0065a074,
                         s_Diffuse5_0065a010,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507510(s_Diffuse6_0065a004,param_1 + 0x14);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_MUI_Menu__Parse___0065a074,
                         s_Diffuse6_0065a004,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507510(s_Diffuse7_00659ff8,param_1 + 0x17);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_MUI_Menu__Parse___0065a074,
                         s_Diffuse7_00659ff8,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = 0;
  if (0 < *param_1) {
    do {
      puVar1 = *(undefined4 **)(param_1[1] + iVar2 * 4);
      if (puVar1 != (undefined4 *)0x0) {
        (**(code **)*puVar1)(1);
      }
      operator_delete(*(undefined4 *)(param_1[0x5d] + iVar2 * 4));
      iVar2 = iVar2 + 1;
    } while (iVar2 < *param_1);
  }
  operator_delete(param_1[1]);
  operator_delete(param_1[0x5d]);
  *param_1 = 0;
  for (iVar2 = FUN_00507140(local_11c,&DAT_006116a8,0); iVar2 != 0;
      iVar2 = FUN_00507140(local_11c,&DAT_006116a8,iVar2 + 1)) {
    iVar2 = *param_1;
    *param_1 = iVar2 + 1;
  }
  iVar2 = operator_new(*param_1 << 2);
  param_1[1] = iVar2;
  iVar2 = operator_new(*param_1 << 2);
  param_1[0x5d] = iVar2;
  iVar2 = 0;
  if (0 < *param_1) {
    do {
      *(undefined4 *)(param_1[1] + iVar2 * 4) = 0;
      *(undefined4 *)(param_1[0x5d] + iVar2 * 4) = 0;
      iVar2 = iVar2 + 1;
    } while (iVar2 < *param_1);
  }
  iVar2 = 0;
  if (0 < *param_1) {
    do {
      iVar7 = FUN_00507140(local_11c,&DAT_006116a8,iVar2);
      if (iVar7 == 0) {
        FUN_0052e040();
        uVar3 = FUN_0052e130();
        uVar3 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                             s_MUI_Menu__Parse___0065a074,&DAT_006116a8,iVar2,uVar3);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
      }
      iVar7 = FUN_00507420(&DAT_0060d67c,&uStack_108);
      if (iVar7 == 0) {
        FUN_0052e040();
        uVar3 = FUN_0052e130();
        uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                             s_MUI_Menu__Parse___0065a074,&DAT_0060d67c,uVar3);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
      }
      uVar3 = FUN_0055d430(uStack_108);
      *(undefined4 *)(param_1[1] + iVar2 * 4) = uVar3;
      MUI_Item__Parse(*(undefined4 *)(param_1[1] + iVar2 * 4),local_11c);
      iVar2 = iVar2 + 1;
    } while (iVar2 < *param_1);
  }
  return;
}



// --------------------------------------------
// MUI_Menu__RelocateResources   ab 0x0055e4c0   557 Byte
// Texte: MUI_Menu::RelocateResources(), no font has been created and uploaded before this function was called., no mesh has been created and uploaded before this function was called.
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall MUI_Menu__RelocateResources(int *param_1)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined1 local_20;
  undefined1 local_18;
  undefined1 local_10;
  
  if (param_1[0x1a] == 0) {
    TERMINATION(s_MUI_Menu__RelocateResources___0065a1e0,s_no_mesh_has_been_created_and_upl_0065a200
               );
  }
  if (param_1[0xa2] == 0) {
    TERMINATION(s_MUI_Menu__RelocateResources___0065a1e0,s_no_textureflags_have_been_create_0065a190
               );
  }
  if (param_1[0xa3] == 0) {
    TERMINATION(s_MUI_Menu__RelocateResources___0065a1e0,
                s_no_texture_has_been_created_and_u_0065a144);
  }
  if (param_1[0x60] == 0) {
    TERMINATION(s_MUI_Menu__RelocateResources___0065a1e0,
                s_no_text_bitmap_has_been_created_a_0065a0f4);
  }
  if (param_1[0x5f] == 0) {
    TERMINATION(s_MUI_Menu__RelocateResources___0065a1e0,s_no_font_has_been_created_and_upl_0065a0ac
               );
  }
  iVar4 = 0;
  if (0 < *param_1) {
    do {
      iVar2 = *(int *)(param_1[1] + iVar4 * 4);
      *(uint *)(iVar2 + 0x18) =
           (uint)*(byte *)(*(int *)(param_1[0x5e] + 0xc + *(int *)(iVar2 + 0x10) * 0x14) +
                          *(int *)(iVar2 + 0x14));
      iVar2 = *(int *)(param_1[1] + iVar4 * 4);
      *(undefined4 *)(iVar2 + 0xc) = *(undefined4 *)(param_1[0x1b] + *(int *)(iVar2 + 0x10) * 4);
      iVar2 = *(int *)(param_1[1] + iVar4 * 4);
      piVar1 = param_1 + *(int *)(iVar2 + 0x1c) * 3 + 2;
      *(int *)(iVar2 + 0x2c) = *piVar1;
      *(int *)(iVar2 + 0x30) = piVar1[1];
      *(int *)(iVar2 + 0x34) = piVar1[2];
      iVar2 = *(int *)(param_1[1] + iVar4 * 4);
      *(undefined4 *)(iVar2 + 0x20) =
           *(undefined4 *)
            (param_1[0xa3] +
            (*(int *)(*(int *)(iVar2 + 0x18) * 0xe0 + *(int *)(*(int *)(iVar2 + 0xc) + 0x18)) -
            param_1[0xa4]) * 4);
      iVar2 = *(int *)(param_1[1] + iVar4 * 4);
      if (*(int *)(iVar2 + 4) == 2) {
        *(int *)(iVar2 + 0x350) = param_1[0x5f] + *(int *)(iVar2 + 0x350) * 4;
        *(int *)(*(int *)(param_1[1] + iVar4 * 4) + 0x34c) = param_1[0x60];
        iVar2 = *(int *)(param_1[1] + iVar4 * 4);
        iVar3 = *(int *)(iVar2 + 0x340);
        local_10 = (undefined1)
                   (int)ROUND((float)param_1[iVar3 * 3 + 2] * _DAT_005f3394 + -0.49999988);
        *(undefined1 *)(iVar2 + 0x346) = local_10;
        local_18 = (undefined1)
                   (int)ROUND((float)param_1[iVar3 * 3 + 3] * _DAT_005f3394 + -0.49999988);
        *(undefined1 *)(iVar2 + 0x345) = local_18;
        local_20 = (undefined1)
                   (int)ROUND((float)param_1[iVar3 * 3 + 4] * _DAT_005f3394 + -0.49999988);
        *(undefined1 *)(iVar2 + 0x344) = local_20;
        *(undefined1 *)(iVar2 + 0x347) = 0xff;
        FUN_005602b0(0);
      }
      (**(code **)(**(int **)(param_1[1] + iVar4 * 4) + 8))();
      iVar4 = iVar4 + 1;
    } while (iVar4 < *param_1);
  }
  iVar4 = 0;
  if (0 < *param_1) {
    do {
      (**(code **)(**(int **)(param_1[1] + iVar4 * 4) + 0x10))();
      iVar4 = iVar4 + 1;
    } while (iVar4 < *param_1);
  }
  return;
}



