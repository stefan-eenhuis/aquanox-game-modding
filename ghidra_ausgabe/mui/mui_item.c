// Muster: MUI_Item   10 Funktionen, 2704 Byte

// --------------------------------------------
// MUI_Item__Parse   ab 0x0055d5c0   312 Byte
// Texte: (%s): Get "%s" in file "%s" failed, DES FILE ERROR, MUI_Item::Parse()
// --------------------------------------------

void __thiscall MUI_Item__Parse(int param_1,int *param_2,undefined4 param_3)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  undefined1 local_408 [4];
  undefined1 local_404 [260];
  undefined1 local_300 [256];
  undefined1 local_200 [256];
  undefined1 local_100 [256];
  
  iVar2 = FUN_00507710(&DAT_0060d3a4,local_404);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_MUI_Item__Parse___00659fe4,
                         &DAT_0060d3a4,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  FUN_00520810(local_404,local_408,local_100,local_200,local_300);
  str_copy(local_404,local_200);
  FUN_00520670(local_404,local_300);
  piVar1 = *(int **)(param_1 + 0x174);
  iVar2 = *piVar1;
  iVar4 = 0;
  while ((iVar2 != 0 && (iVar2 = FUN_005206d0(piVar1[iVar4],local_404), iVar2 != 0))) {
    piVar1 = *(int **)(param_1 + 0x174);
    iVar2 = piVar1[iVar4 + 1];
    iVar4 = iVar4 + 1;
  }
  if (*(int *)(*(int *)(param_1 + 0x174) + iVar4 * 4) == 0) {
    iVar2 = str_len(local_404);
    uVar3 = operator_new(iVar2 + 1);
    *(undefined4 *)(*(int *)(param_1 + 0x174) + iVar4 * 4) = uVar3;
    str_copy(*(undefined4 *)(*(int *)(param_1 + 0x174) + iVar4 * 4),local_404);
  }
  param_2[4] = iVar4;
  param_2[3] = 0;
  (**(code **)(*param_2 + 4))(param_3);
  return;
}



// --------------------------------------------
// MUI_Item_OBJECT__Parse   ab 0x0055e810   247 Byte
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, DES FILE ERROR, MUI_Item_OBJECT::Parse(), Position1, Position2
// --------------------------------------------

void __thiscall MUI_Item_OBJECT__Parse(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_10 [16];
  
  MUI_Item__Parse_2(param_2);
  iVar1 = FUN_00507980(auStack_10,&DAT_006586a4);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_MUI_Item_OBJECT__Parse___0065a260,&DAT_006586a4,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Position1_0065a254,param_1 + 0xc0);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_MUI_Item_OBJECT__Parse___0065a260,s_Position1_0065a254,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Position2_0065a248,param_1 + 0xcc);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_MUI_Item_OBJECT__Parse___0065a260,s_Position2_0065a248,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  return;
}



// --------------------------------------------
// MUI_Item_OBJECT__RelocateResources   ab 0x0055e910   62 Byte
// Texte: MUI_Item_OBJECT::RelocateResources(), no mesh has been created and uploaded before this function was called.
// --------------------------------------------

void __fastcall MUI_Item_OBJECT__RelocateResources(int param_1)

{
  if (*(int *)(param_1 + 0xc) == 0) {
    TERMINATION(s_MUI_Item_OBJECT__RelocateResourc_0065a27c,
                s_no_mesh_has_been_created_and_upl_0065a200);
  }
  if (*(int *)(param_1 + 0x20) == 0) {
    TERMINATION(s_MUI_Item_OBJECT__RelocateResourc_0065a27c,
                s_no_texture_has_been_created_and_u_0065a144);
  }
  *(undefined4 *)(param_1 + 0x24) = 1;
  return;
}



// --------------------------------------------
// MUI_Item__Parse_2   ab 0x0055eca0   420 Byte
// Texte: (%s): Get "%s" in file "%s" failed, DES FILE ERROR, Diffuse, MUI_Item::Parse(), Material, Opacity
// --------------------------------------------

void __fastcall MUI_Item__Parse_2(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined1 local_100 [256];
  
  iVar1 = FUN_00507710(&DAT_0060d32c,local_100);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_MUI_Item__Parse___00659fe4,
                         &DAT_0060d32c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  if (*(int *)(param_1 + 8) == 0) {
    iVar1 = str_len(local_100);
    uVar2 = operator_new(iVar1 + 1);
  }
  else {
    iVar1 = str_len(*(int *)(param_1 + 8));
    iVar3 = str_len(local_100);
    if (iVar3 <= iVar1) goto LAB_0055ed4f;
    operator_delete(*(undefined4 *)(param_1 + 8));
    iVar1 = str_len(local_100);
    uVar2 = operator_new(iVar1 + 1);
  }
  *(undefined4 *)(param_1 + 8) = uVar2;
LAB_0055ed4f:
  str_copy(*(undefined4 *)(param_1 + 8),local_100);
  iVar1 = FUN_00507420(s_Material_00645388,param_1 + 0x14);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_MUI_Item__Parse___00659fe4,
                         s_Material_00645388,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507420(s_Diffuse_00655e2c,param_1 + 0x1c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_MUI_Item__Parse___00659fe4,
                         s_Diffuse_00655e2c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_Opacity_00611290,param_1 + 0x74);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_MUI_Item__Parse___00659fe4,
                         s_Opacity_00611290,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  *(undefined4 *)(param_1 + 0x9c) = 0x3f800000;
  return;
}



// --------------------------------------------
// MUI_Item_TEXT__Parse   ab 0x0055fc80   813 Byte
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, Alignment, DES FILE ERROR, Diffuse, Height, MUI_Item_TEXT::Parse(), Position, Width, invalid text alignment (only left, right and middle are allowed)., middle, right
// --------------------------------------------

void __thiscall MUI_Item_TEXT__Parse(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_28 [8];
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [8];
  undefined1 auStack_10 [16];
  
  MUI_Item__Parse_2(param_2);
  iVar1 = FUN_00507980(auStack_10,&DAT_006586a4);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_MUI_Item_TEXT__Parse___0065a318,&DAT_006586a4,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507420(&DAT_0065a060,&param_2);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_MUI_Item_TEXT__Parse___0065a318,&DAT_0065a060,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507610(s_Position_0065a30c,auStack_18);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_MUI_Item_TEXT__Parse___0065a318,s_Position_0065a30c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_Width_0065a304,auStack_20);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_MUI_Item_TEXT__Parse___0065a318,s_Width_0065a304,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_Height_0065a2fc,auStack_1c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_MUI_Item_TEXT__Parse___0065a318,s_Height_0065a2fc,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507710(s_Alignment_0065a2f0,auStack_28);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_MUI_Item_TEXT__Parse___0065a318,s_Alignment_0065a2f0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507710(&DAT_00609394,param_1 + 0x2c0);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_MUI_Item_TEXT__Parse___0065a318,&DAT_00609394,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507420(s_Diffuse_00655e2c,param_1 + 0x340);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_MUI_Item_TEXT__Parse___0065a318,s_Diffuse_00655e2c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  *(undefined4 *)(param_1 + 0x344) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x350) = param_2;
  iVar1 = FUN_00520710(auStack_28,&DAT_00603a10);
  if (iVar1 == 0) {
    *(undefined4 *)(param_1 + 0x348) = 0;
  }
  else {
    iVar1 = FUN_00520710(auStack_28,s_right_00603a08);
    if (iVar1 == 0) {
      *(undefined4 *)(param_1 + 0x348) = 2;
    }
    else {
      iVar1 = FUN_00520710(auStack_28,s_middle_0065a2e8);
      if (iVar1 == 0) {
        *(undefined4 *)(param_1 + 0x348) = 1;
      }
      else {
        TERMINATION(s_MUI_Item_TEXT__Parse___0065a318,s_invalid_text_alignment__only_lef_0065a2a4);
      }
    }
  }
  uVar2 = __ftol();
  *(undefined4 *)(param_1 + 0x370) = uVar2;
  uVar2 = __ftol();
  *(undefined4 *)(param_1 + 0x374) = uVar2;
  uVar2 = __ftol();
  *(undefined4 *)(param_1 + 0x378) = uVar2;
  uVar2 = __ftol();
  *(undefined4 *)(param_1 + 0x37c) = uVar2;
  return;
}



// --------------------------------------------
// MUI_Item_TEXT__RelocateResources   ab 0x0055ffb0   118 Byte
// Texte: MUI_Item_TEXT::RelocateResources(), no mesh has been created and uploaded before this function was called.
// --------------------------------------------

void __fastcall MUI_Item_TEXT__RelocateResources(int param_1)

{
  if (*(int *)(param_1 + 0xc) == 0) {
    TERMINATION(s_MUI_Item_TEXT__RelocateResources_0065a3dc,
                s_no_mesh_has_been_created_and_upl_0065a200);
  }
  if (*(int *)(param_1 + 0x20) == 0) {
    TERMINATION(s_MUI_Item_TEXT__RelocateResources_0065a3dc,
                s_no_texture_has_been_created_and_u_0065a144);
  }
  if (*(int *)(param_1 + 0x34c) == 0) {
    TERMINATION(s_MUI_Item_TEXT__RelocateResources_0065a3dc,
                s_no_texture_has_been_created_and_s_0065a384);
  }
  if (*(int *)(param_1 + 0x350) == 0) {
    TERMINATION(s_MUI_Item_TEXT__RelocateResources_0065a3dc,
                s_no_font_has_been_created_and_set_0065a330);
  }
  *(undefined4 *)(param_1 + 0x24) = 1;
  return;
}



// --------------------------------------------
// MUI_Item_BAR__Parse   ab 0x005606c0   431 Byte
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, DES FILE ERROR, Height, MUI_Item_BAR::Parse(), Position, Width
// --------------------------------------------

void __thiscall MUI_Item_BAR__Parse(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [8];
  undefined1 auStack_10 [16];
  
  MUI_Item__Parse_2(param_2);
  iVar1 = FUN_00507980(auStack_10,&DAT_006586a4);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_MUI_Item_BAR__Parse___0065a400,&DAT_006586a4,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507610(s_Position_0065a30c,auStack_18);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_MUI_Item_BAR__Parse___0065a400,s_Position_0065a30c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_Width_0065a304,auStack_20);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_MUI_Item_BAR__Parse___0065a400,s_Width_0065a304,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_Height_0065a2fc,auStack_1c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_MUI_Item_BAR__Parse___0065a400,s_Height_0065a2fc,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  uVar2 = __ftol();
  *(undefined4 *)(param_1 + 0xcc) = uVar2;
  uVar2 = __ftol();
  *(undefined4 *)(param_1 + 0xd0) = uVar2;
  uVar2 = __ftol();
  *(undefined4 *)(param_1 + 0xd4) = uVar2;
  uVar2 = __ftol();
  *(undefined4 *)(param_1 + 0xd8) = uVar2;
  operator_delete(*(undefined4 *)(param_1 + 200));
  uVar2 = operator_new(*(int *)(param_1 + 0xd4) * *(int *)(param_1 + 0xd8) * 2);
  *(undefined4 *)(param_1 + 200) = uVar2;
  *(undefined4 *)(param_1 + 0xc0) = *(undefined4 *)(param_1 + 0xd4);
  return;
}



// --------------------------------------------
// MUI_Item_BAR__RelocateResources   ab 0x00560870   177 Byte
// Texte: MUI_Item_BAR::RelocateResources(), no mesh has been created and uploaded before this function was called.
// --------------------------------------------

void __fastcall MUI_Item_BAR__RelocateResources(int param_1)

{
  int iVar1;
  undefined2 *puVar2;
  undefined2 *puVar3;
  int iVar4;
  int iVar5;
  
  if (*(int *)(param_1 + 0xc) == 0) {
    TERMINATION(s_MUI_Item_BAR__RelocateResources__0065a418,
                s_no_mesh_has_been_created_and_upl_0065a200);
  }
  if (*(int *)(param_1 + 0x20) == 0) {
    TERMINATION(s_MUI_Item_BAR__RelocateResources__0065a418,
                s_no_texture_has_been_created_and_u_0065a144);
  }
  puVar3 = *(undefined2 **)(param_1 + 200);
  iVar5 = *(int *)(*(int *)(param_1 + 0x20) + 0xc) - *(int *)(param_1 + 0xd0);
  iVar4 = 0;
  if (*(int *)(param_1 + 0xd8) < 1) {
    *(undefined4 *)(param_1 + 0x24) = 1;
    return;
  }
  do {
    iVar5 = iVar5 + -1;
    iVar1 = 0;
    puVar2 = puVar3;
    if (0 < *(int *)(param_1 + 0xd4)) {
      do {
        puVar3 = puVar2 + 1;
        *puVar2 = *(undefined2 *)
                   (**(int **)(param_1 + 0x20) +
                   ((*(int **)(param_1 + 0x20))[2] * iVar5 + iVar1 + *(int *)(param_1 + 0xcc)) * 2);
        iVar1 = iVar1 + 1;
        puVar2 = puVar3;
      } while (iVar1 < *(int *)(param_1 + 0xd4));
    }
    iVar4 = iVar4 + 1;
  } while (iVar4 < *(int *)(param_1 + 0xd8));
  *(undefined4 *)(param_1 + 0x24) = 1;
  return;
}



// --------------------------------------------
// MUI_Item_PICTURE__RelocateResources   ab 0x00560ae0   62 Byte
// Texte: MUI_Item_PICTURE::RelocateResources(), no mesh has been created and uploaded before this function was called.
// --------------------------------------------

void __fastcall MUI_Item_PICTURE__RelocateResources(int param_1)

{
  if (*(int *)(param_1 + 0xc) == 0) {
    TERMINATION(s_MUI_Item_PICTURE__RelocateResour_0065a43c,
                s_no_mesh_has_been_created_and_upl_0065a200);
  }
  if (*(int *)(param_1 + 0x20) == 0) {
    TERMINATION(s_MUI_Item_PICTURE__RelocateResour_0065a43c,
                s_no_texture_has_been_created_and_u_0065a144);
  }
  *(undefined4 *)(param_1 + 0x24) = 1;
  return;
}



// --------------------------------------------
// MUI_Item_TURN__RelocateResources   ab 0x00560c00   62 Byte
// Texte: MUI_Item_TURN::RelocateResources(), no mesh has been created and uploaded before this function was called.
// --------------------------------------------

void __fastcall MUI_Item_TURN__RelocateResources(int param_1)

{
  if (*(int *)(param_1 + 0xc) == 0) {
    TERMINATION(s_MUI_Item_TURN__RelocateResources_0065a464,
                s_no_mesh_has_been_created_and_upl_0065a200);
  }
  if (*(int *)(param_1 + 0x20) == 0) {
    TERMINATION(s_MUI_Item_TURN__RelocateResources_0065a464,
                s_no_texture_has_been_created_and_u_0065a144);
  }
  *(undefined4 *)(param_1 + 0x24) = 1;
  return;
}



