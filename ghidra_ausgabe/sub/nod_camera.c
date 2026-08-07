// Muster: NOD_Camera   4 Funktionen, 2295 Byte

// --------------------------------------------
// NOD_Camera__HeartBeat   ab 0x00444420   1191 Byte
// Texte: NOD_Camera::HeartBeat(), illegal cut mode, illegal look mode, illegal move mode, illegal roll mode, illegal shake mode, illegal zoom mode
// --------------------------------------------

void __fastcall NOD_Camera__HeartBeat(int param_1)

{
  uint uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined1 auStack_58 [12];
  undefined1 auStack_4c [12];
  undefined1 auStack_40 [12];
  undefined1 auStack_34 [52];
  
  if ((*(byte *)(param_1 + 0xc) & 2) == 0) {
    return;
  }
  switch(*(undefined4 *)(param_1 + 0xd64)) {
  case 0:
    FUN_00445f20();
    break;
  case 1:
    FUN_00446340();
    break;
  case 2:
    FUN_00446ff0();
    break;
  case 3:
    FUN_004473d0();
    break;
  case 4:
    break;
  default:
    TERMINATION(s_NOD_Camera__HeartBeat___0060e428,s_illegal_move_mode_0060e440);
  }
  switch(*(undefined4 *)(param_1 + 0xd9c)) {
  case 0:
    FUN_00445800();
    break;
  case 1:
    FUN_00445b80();
    break;
  case 2:
    FUN_00548ab0(*(undefined4 *)(param_1 + 0xdb0),*(undefined4 *)(param_1 + 0xdc4));
    FUN_00548ab0(*(undefined4 *)(param_1 + 0xdb0),*(undefined4 *)(param_1 + 0xdc4));
    (*(code *)**(undefined4 **)(param_1 + 0x954))(&DAT_0066d0e0,param_1 + 0x698,6);
    (*(code *)**(undefined4 **)(param_1 + 0x968))(&DAT_0066d0e0,param_1 + 0x698,8);
    break;
  case 3:
    break;
  default:
    TERMINATION(s_NOD_Camera__HeartBeat___0060e428,s_illegal_look_mode_0060e414);
  }
  switch(*(undefined4 *)(param_1 + 0xdc8)) {
  case 0:
    if (*(int *)(param_1 + 0xde0) != 0) {
      uStack_64 = *(undefined4 *)(param_1 + 0xde4);
      uVar3 = *(undefined4 *)(param_1 + 0xddc);
      goto LAB_004445c9;
    }
    FUN_00549620(*(undefined4 *)(param_1 + 0xddc),*(undefined4 *)(param_1 + 0xde4));
    goto LAB_004445d0;
  case 1:
    FUN_004010f0(auStack_34,0xc,3,FUN_00407f60);
    FUN_00444910();
    FUN_00444910();
    FUN_00444910();
    iVar4 = FUN_00445580(*(undefined4 *)(param_1 + 0xdd0),auStack_40);
    if (iVar4 == 0) break;
    FUN_0051d920(auStack_4c,auStack_58,&uStack_64);
    uVar3 = 0;
LAB_004445c9:
    FUN_005495f0(uVar3,uStack_64);
LAB_004445d0:
    (*(code *)**(undefined4 **)(param_1 + 0xa0c))(&DAT_0066d0e0,param_1 + 0x698,10);
    break;
  case 2:
    FUN_00549860(*(undefined4 *)(param_1 + 0xddc),*(undefined4 *)(param_1 + 0xde8),
                 *(undefined4 *)(param_1 + 0xdec),*(undefined4 *)(param_1 + 0xdf0));
    (*(code *)**(undefined4 **)(param_1 + 0x9e4))(&DAT_0066d0e0,param_1 + 0x698,10);
    break;
  case 3:
    break;
  default:
    TERMINATION(s_NOD_Camera__HeartBeat___0060e428,s_illegal_roll_mode_0060e400);
  }
  switch(*(undefined4 *)(param_1 + 0xdf4)) {
  case 0:
    iVar4 = param_1 + 0x698;
    (*(code *)**(undefined4 **)(param_1 + 0xb84))(&DAT_0066d0e0,iVar4,7);
    (*(code *)**(undefined4 **)(param_1 + 0xbb4))(&DAT_0066d0e0,iVar4,9);
    (*(code *)**(undefined4 **)(param_1 + 0xbe4))(&DAT_0066d0e0,iVar4,0xb);
    (*(code *)**(undefined4 **)(param_1 + 0xc14))(&DAT_0066d0e0,iVar4,0x11);
    (*(code *)**(undefined4 **)(param_1 + 0xc44))(&DAT_0066d0e0,iVar4,0x13);
    break;
  case 1:
    FUN_004467f0();
    break;
  case 2:
    FUN_00447760();
    break;
  case 3:
    break;
  default:
    TERMINATION(s_NOD_Camera__HeartBeat___0060e428,s_illegal_shake_mode_0060e3ec);
  }
  iVar4 = *(int *)(param_1 + 0xe58);
  if (iVar4 == 0) {
    FUN_00549ca0(*(undefined4 *)(param_1 + 0xe6c),*(undefined4 *)(param_1 + 0xe74));
    FUN_00549ca0(*(undefined4 *)(param_1 + 0xe6c),*(undefined4 *)(param_1 + 0xe78));
    (*(code *)**(undefined4 **)(param_1 + 0xa6c))(&DAT_0066d0e0,param_1 + 0x698,0x10);
    (*(code *)**(undefined4 **)(param_1 + 0xa80))(&DAT_0066d0e0,param_1 + 0x698,0x12);
  }
  else if (iVar4 == 1) {
    FUN_00446ab0();
  }
  else if (iVar4 != 2) {
    TERMINATION(s_NOD_Camera__HeartBeat___0060e428,s_illegal_zoom_mode_0060e3d8);
  }
  if (*(int *)(param_1 + 0xe7c) == 0) {
    FUN_00447600();
  }
  else if (*(int *)(param_1 + 0xe7c) != 1) {
    TERMINATION(s_NOD_Camera__HeartBeat___0060e428,s_illegal_cut_mode_0060e3c4);
  }
  puVar2 = (undefined4 *)FUN_00549fd0(auStack_40);
  puVar5 = puVar2;
  puVar6 = (undefined4 *)(param_1 + 0xfc);
  for (iVar4 = 0xc; iVar4 != 0; iVar4 = iVar4 + -1) {
    *puVar6 = *puVar5;
    puVar5 = puVar5 + 1;
    puVar6 = puVar6 + 1;
  }
  *(undefined4 *)(param_1 + 100) = *puVar2;
  *(undefined4 *)(param_1 + 0x78) = puVar2[1];
  *(undefined4 *)(param_1 + 0x8c) = puVar2[2];
  FUN_0051d920(param_1 + 0xd8,(undefined4 *)(param_1 + 0xa0),(undefined4 *)(param_1 + 0xbc));
  *(undefined4 *)(param_1 + 0xf0) = *(undefined4 *)(param_1 + 0xa0);
  *(undefined4 *)(param_1 + 0xf4) = *(undefined4 *)(param_1 + 0xbc);
  *(undefined4 *)(param_1 + 0xf8) = *(undefined4 *)(param_1 + 0xd8);
  FUN_00500050(DAT_0066d100 + 1,param_1 + 0xfc);
  uVar3 = FUN_0054a280(auStack_40,*(undefined4 *)(param_1 + 800),*(undefined4 *)(param_1 + 0x324),
                       0x3faaaaab);
  FUN_0052a140(uVar3);
  puVar5 = (undefined4 *)(param_1 + 0x3ac);
  puVar6 = (undefined4 *)((DAT_0066d100 & 1) * 0x40 + 0x60c + param_1);
  for (iVar4 = 0x10; iVar4 != 0; iVar4 = iVar4 + -1) {
    *puVar6 = *puVar5;
    puVar5 = puVar5 + 1;
    puVar6 = puVar6 + 1;
  }
  uVar1 = DAT_0066d100 + 1;
  uStack_64 = 0;
  uStack_60 = 0;
  uStack_5c = 0;
  if ((uVar1 & 1) == 0) {
    uVar3 = FUN_00500130(uVar1);
  }
  else {
    uVar3 = FUN_005001f0(uVar1);
  }
  FUN_004caec0(uVar3,&uStack_64);
  return;
}



// --------------------------------------------
// NOD_Camera__GetVisibleObjects   ab 0x00444fd0   627 Byte
// Texte: NOD_Camera::GetVisibleObjects(), illegal render order
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall NOD_Camera__GetVisibleObjects(int param_1,undefined4 *param_2,int *param_3)

{
  int iVar1;
  int *piVar2;
  float fVar3;
  float fVar4;
  bool bVar5;
  undefined4 *puVar6;
  float *pfVar7;
  undefined4 uVar8;
  int iVar9;
  int iVar10;
  float *pfVar11;
  int local_64;
  undefined4 *local_5c;
  int local_58;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined1 auStack_40 [16];
  float afStack_30 [4];
  float fStack_20;
  float fStack_1c;
  undefined1 local_18 [24];
  
  iVar1 = *(int *)(*(int *)(param_1 + 0x300) + 0xc0);
  local_58 = *param_3;
  if (*(int *)(iVar1 + 0xc) <= *param_3) {
    local_58 = *(int *)(iVar1 + 0xc);
  }
  if ((DAT_0066d100 & 1) == 0) {
    puVar6 = (undefined4 *)FUN_00500130(DAT_0066d100);
  }
  else {
    puVar6 = (undefined4 *)FUN_005001f0(DAT_0066d100);
  }
  local_4c = *puVar6;
  local_48 = puVar6[1];
  local_44 = puVar6[2];
  if ((*(int *)(DAT_00661984 + 0x28) == 0) && (*(int *)(DAT_00661984 + 0x520) == 0)) {
    bVar5 = false;
  }
  else {
    bVar5 = true;
  }
  local_64 = 0;
  if (local_58 < 1) {
    *param_3 = 0;
    return;
  }
  iVar10 = 0;
  local_5c = param_2;
  do {
    piVar2 = *(int **)(*(int *)(iVar1 + 0x10) + 4 + iVar10);
    if (piVar2 == (int *)0x0) goto switchD_00445130_caseD_a;
    pfVar7 = (float *)(**(code **)(*piVar2 + 0x6c))(local_18);
    pfVar11 = afStack_30;
    for (iVar9 = 6; iVar9 != 0; iVar9 = iVar9 + -1) {
      *pfVar11 = *pfVar7;
      pfVar7 = pfVar7 + 1;
      pfVar11 = pfVar11 + 1;
    }
    fVar4 = (afStack_30[3] - afStack_30[0]) * (afStack_30[3] - afStack_30[0]) +
            (fStack_20 - afStack_30[1]) * (fStack_20 - afStack_30[1]) +
            (fStack_1c - afStack_30[2]) * (fStack_1c - afStack_30[2]);
    if ((DAT_0066d100 & 1) == 0) {
      uVar8 = FUN_00500130(DAT_0066d100);
    }
    else {
      uVar8 = FUN_005001f0(DAT_0066d100);
    }
    iVar9 = FUN_004fa370(auStack_40,uVar8,&local_4c);
    fVar3 = *(float *)(iVar9 + 0xc);
    if (bVar5) goto switchD_00445130_caseD_0;
    switch(piVar2[0xc3]) {
    case 1:
      if ((((_DAT_005f4344 <= fVar4) || (fVar3 <= _DAT_005f4340)) &&
          ((_DAT_005f34a8 <= fVar4 || (fVar3 <= _DAT_005f433c)))) &&
         ((_DAT_005f4338 <= fVar4 || (fVar3 <= _DAT_005f4334)))) {
        if (fVar4 < _DAT_005f4330) goto switchD_00445130_caseD_6;
        goto switchD_00445130_caseD_0;
      }
      break;
    case 4:
      fVar4 = _DAT_005f4328;
      goto joined_r0x004451d8;
    case 6:
switchD_00445130_caseD_6:
      fVar4 = _DAT_005f432c;
joined_r0x004451d8:
      if (fVar3 <= fVar4) goto switchD_00445130_caseD_0;
      break;
    case 10:
      break;
    default:
      TERMINATION(s_NOD_Camera__GetVisibleObjects___0060e454,s_illegal_render_order_0060e474);
    case 0:
    case 2:
    case 3:
    case 5:
    case 7:
    case 8:
    case 9:
switchD_00445130_caseD_0:
      local_64 = local_64 + 1;
      *local_5c = *(undefined4 *)(*(int *)(iVar1 + 0x10) + 4 + iVar10);
      local_5c = local_5c + 1;
    }
switchD_00445130_caseD_a:
    iVar10 = iVar10 + 0x10;
    local_58 = local_58 + -1;
    if (local_58 == 0) {
      *param_3 = local_64;
      return;
    }
  } while( true );
}



// --------------------------------------------
// NOD_Camera__GetModeInfo   ab 0x00445270   121 Byte
// Texte: NOD_Camera::GetModeInfo(), illegal move mode
// --------------------------------------------

undefined4 * __thiscall NOD_Camera__GetModeInfo(int param_1,undefined4 *param_2,undefined4 *param_3)

{
  undefined4 uVar1;
  
  switch(*(undefined4 *)(param_1 + 0xd64)) {
  case 0:
    uVar1 = FUN_004670f0(*(undefined4 *)(param_1 + 0xd6c));
    *param_2 = uVar1;
    *param_3 = 0;
    return (undefined4 *)0x1;
  case 1:
  case 2:
  case 3:
    uVar1 = FUN_004670f0(*(undefined4 *)(param_1 + 0xd6c));
    *param_2 = uVar1;
    *param_3 = 0;
    return (undefined4 *)0x2;
  case 4:
    break;
  default:
    TERMINATION(s_NOD_Camera__GetModeInfo___0060e48c,s_illegal_move_mode_0060e440);
  }
  return param_2;
}



// --------------------------------------------
// NOD_Camera__GetRelativePositionFromName   ab 0x00445320   356 Byte
// Texte: NOD_Camera::GetRelativePositionFromName(), _Position encoding string contains more than 4 characters, invalid _Rotation encoding character, invalid x _Position encoding character, invalid y _Position encoding character, invalid z _Position encoding character
// --------------------------------------------

void NOD_Camera__GetRelativePositionFromName
               (undefined4 param_1,undefined4 *param_2,undefined4 *param_3)

{
  undefined1 *puVar1;
  int iVar2;
  
  puVar1 = (undefined1 *)FUN_004ce7a0();
  switch(*puVar1) {
  case 0x4c:
  case 0x6c:
    *param_2 = 0xbf800000;
    break;
  case 0x4d:
  case 0x6d:
    *param_2 = 0;
    break;
  default:
    TERMINATION(s_NOD_Camera__GetRelativePositionF_0060e55c,
                s_invalid_x__Position_encoding_cha_0060e588);
    break;
  case 0x52:
  case 0x72:
    *param_2 = 0x3f800000;
  }
  iVar2 = FUN_004ce7a0();
  switch(*(undefined1 *)(iVar2 + 1)) {
  case 0x42:
  case 0x62:
    param_2[1] = 0xbf800000;
    break;
  default:
    TERMINATION(s_NOD_Camera__GetRelativePositionF_0060e55c,
                s_invalid_y__Position_encoding_cha_0060e534);
    break;
  case 0x46:
  case 0x66:
    param_2[1] = 0x3f800000;
    break;
  case 0x4d:
  case 0x6d:
    param_2[1] = 0;
  }
  iVar2 = FUN_004ce7a0();
  switch(*(undefined1 *)(iVar2 + 2)) {
  case 0x42:
  case 0x62:
    param_2[2] = 0xbf800000;
    break;
  default:
    TERMINATION(s_NOD_Camera__GetRelativePositionF_0060e55c,
                s_invalid_z__Position_encoding_cha_0060e50c);
    break;
  case 0x4d:
  case 0x6d:
    param_2[2] = 0;
    break;
  case 0x54:
  case 0x74:
    param_2[2] = 0x3f800000;
  }
  iVar2 = FUN_004ce7a0();
  switch(*(undefined1 *)(iVar2 + 3)) {
  case 0x4e:
  case 0x6e:
    *param_3 = 0;
    break;
  default:
    TERMINATION(s_NOD_Camera__GetRelativePositionF_0060e55c,
                s_invalid__Rotation_encoding_chara_0060e4e4);
    break;
  case 0x59:
  case 0x79:
    *param_3 = 1;
  }
  iVar2 = FUN_004ce7a0();
  if (*(char *)(iVar2 + 4) != '\0') {
    TERMINATION(s_NOD_Camera__GetRelativePositionF_0060e55c,
                s__Position_encoding_string_contai_0060e4a8);
  }
  return;
}



