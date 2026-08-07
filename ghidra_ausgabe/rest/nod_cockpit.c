// Muster: NOD_Cockpit   2 Funktionen, 4862 Byte

// --------------------------------------------
// NOD_Cockpit__RadioMessage_HeartBeat   ab 0x004483d0   674 Byte
// Texte: NOD_Cockpit::RadioMessage_HeartBeat(), illegal radiomessage state
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall NOD_Cockpit__RadioMessage_HeartBeat(int param_1)

{
  int iVar1;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined1 local_c;
  undefined1 local_b;
  undefined1 local_a;
  undefined4 local_8;
  undefined4 local_4;
  
  local_18 = 0;
  local_14 = 0;
  local_10 = 0;
  local_c = 0;
  local_b = 0;
  local_a = 0;
  local_8 = 0;
  local_4 = 0;
  switch(*(undefined4 *)(param_1 + 0x70)) {
  case 0:
    break;
  case 1:
    if (*(int *)(param_1 + 0x88) == 0) {
      iVar1 = param_1 + 0x8c;
    }
    else {
      iVar1 = param_1 + 0xbc;
    }
    CON_Cache<T>__Unlock_10(iVar1);
    *(undefined4 *)(param_1 + 0x70) = 2;
    *(float *)(param_1 + 0x74) = DAT_0066d0e0;
    CON_Cache<T>__Unlock_14();
    return;
  case 2:
    iVar1 = FUN_00415880();
    if (iVar1 == 0) {
      *(undefined4 *)(param_1 + 0x70) = 3;
      *(float *)(param_1 + 0x74) = DAT_0066d0e0;
      CON_Cache<T>__Unlock_14();
      return;
    }
    break;
  case 3:
    if ((*(int *)(param_1 + 0x84) != 0) && (iVar1 = FUN_005efc40(), iVar1 != 0)) {
      CON_Cache<T>__Unlock_28(*(undefined4 *)(param_1 + 0x84),0xac44,0,0xff,0,1,0,0);
      CON_Cache<T>__Unlock_10(&local_18);
      *(undefined4 *)(param_1 + 0x70) = 4;
      *(float *)(param_1 + 0x74) = DAT_0066d0e0;
      CON_Cache<T>__Unlock_14();
      return;
    }
    *(undefined4 *)(param_1 + 0x70) = 5;
    *(float *)(param_1 + 0x74) = DAT_0066d0e0;
    CON_Cache<T>__Unlock_14();
    return;
  case 4:
    iVar1 = FUN_00415880();
    if (iVar1 == 0) {
      *(undefined4 *)(param_1 + 0x70) = 6;
      *(float *)(param_1 + 0x74) = DAT_0066d0e0;
      CON_Cache<T>__Unlock_14();
      return;
    }
    break;
  case 5:
    if ((float)(*(int *)(param_1 + 0x80) + -2) * _DAT_005f3374 + *(float *)(param_1 + 0x74) <=
        DAT_0066d0e0) {
      *(undefined4 *)(param_1 + 0x70) = 6;
      *(float *)(param_1 + 0x74) = DAT_0066d0e0;
      CON_Cache<T>__Unlock_14();
      return;
    }
    break;
  case 6:
    if (*(int *)(param_1 + 0x88) == 0) {
      iVar1 = param_1 + 0xa4;
    }
    else {
      iVar1 = param_1 + 0xd4;
    }
    CON_Cache<T>__Unlock_10(iVar1);
    *(undefined4 *)(param_1 + 0x70) = 7;
    *(float *)(param_1 + 0x74) = DAT_0066d0e0;
    CON_Cache<T>__Unlock_14();
    return;
  case 7:
    iVar1 = FUN_00415880();
    if (iVar1 == 0) {
      *(undefined4 *)(param_1 + 0x70) = 8;
      *(float *)(param_1 + 0x74) = DAT_0066d0e0;
      FUN_005446e0(DAT_0066d0e0);
      FUN_005448c0(DAT_0066d0e0);
      CON_Cache<T>__Unlock_14();
      return;
    }
    break;
  case 8:
    if (*(float *)(param_1 + 0x74) + _DAT_005f3350 <= DAT_0066d0e0) {
      *(undefined4 *)(param_1 + 0x70) = 0;
      *(float *)(param_1 + 0x74) = DAT_0066d0e0;
      *(undefined4 *)(param_1 + 0x78) = 0xffffffff;
      *(undefined4 *)(param_1 + 0x7c) = 0;
      CON_Cache<T>__Unlock_14();
      return;
    }
    break;
  default:
    TERMINATION(s_NOD_Cockpit__RadioMessage_HeartB_0060ea20,s_illegal_radiomessage_state_0060ea48);
  }
  CON_Cache<T>__Unlock_14();
  return;
}



// --------------------------------------------
// NOD_Cockpit__Update   ab 0x00449760   4188 Byte
// Texte: %d/%d, NOD_Cockpit::Update(), illegal booster state
// --------------------------------------------

/* WARNING: Type propagation algorithm not settling */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall NOD_Cockpit__Update(int param_1)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  undefined1 *puVar4;
  undefined4 uVar5;
  float *pfVar6;
  uint uVar7;
  float10 fVar8;
  float fVar9;
  float fStack_90;
  int *piStack_8c;
  int *piStack_88;
  int *local_84;
  float local_80 [5];
  undefined4 uStack_6c;
  float fStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  int iStack_5c;
  float fStack_58;
  int local_54;
  int iStack_50;
  int aiStack_4c [3];
  undefined4 local_40;
  int iStack_3c;
  int local_38;
  undefined1 local_34 [4];
  float local_30;
  float fStack_2c;
  float local_28;
  undefined1 local_24 [36];
  
  FUN_004010f0(local_24,0xc,3,FUN_00407f60);
  local_54 = 0;
  aiStack_4c[1] = 0;
  if (*(int *)(param_1 + 0x6c) == 0) {
    return;
  }
  iVar1 = thunk_FUN_004414d0();
  local_38 = FUN_0045cce0(*(undefined4 *)(param_1 + 0x60));
  if (local_38 == 0) {
    return;
  }
  FUN_00465300(&local_30);
  FUN_004653f0(local_80);
  FUN_00543b20(DAT_0066d0e0,local_80[0],0x39);
  FUN_00465410(local_80);
  FUN_00543b20(DAT_0066d0e0,local_80[0],0x38);
  FUN_00465460(local_80);
  FUN_00543b20(DAT_0066d0e0,local_80[0],0x3a);
  FUN_004654c0(local_80);
  FUN_00543b20(DAT_0066d0e0,local_80[0],0x3b);
  FUN_00465510(local_80);
  FUN_00543b20(DAT_0066d0e0,local_80[0],0x3c);
  fVar9 = local_28;
  if ((iVar1 != 0) && (*(float *)(iVar1 + 0x180) != _DAT_005f3368)) {
    fVar9 = *(float *)(iVar1 + 0x180) - local_28;
  }
  local_80[3] = 1.0;
  local_80[2] = 1.0;
  local_80[1] = 1.0;
  FUN_00544400(DAT_0066d0e0,0,fVar9,local_80 + 1,0x2d);
  FUN_00465340(local_80);
  if (local_80[0] < _DAT_005f336c) {
    local_80[2] = 0.0;
    local_80[3] = 0.0;
  }
  else {
    local_80[2] = 1.0;
    local_80[3] = 1.0;
  }
  local_80[1] = 1.0;
  FUN_00544400(DAT_0066d0e0,0,local_80[0],local_80 + 1,0x23);
  if (local_28 < *(float *)(iVar1 + 0x17c) - _DAT_005f43c4) {
    FUN_00543d80(DAT_0066d0e0,0x3d);
  }
  else {
    FUN_00543d20(DAT_0066d0e0,0x3d);
  }
  FUN_00465740(*(undefined4 *)(param_1 + 0xec),*(undefined4 *)(param_1 + 0xf0),param_1 + 0xf4);
  FUN_00465560(&local_84,local_34);
  if (local_84 == (int *)0x0) {
    FUN_00448980(0);
  }
  else {
    FUN_00448980(local_84);
    piVar2 = (int *)FUN_0048b890(local_84);
    if (piVar2 != (int *)0x0) {
      iVar3 = (**(code **)(*piVar2 + 0x70))();
      FUN_00543b20(DAT_0066d0e0,(float)*(int *)(iVar3 + 0x40) / (float)*(int *)(iVar3 + 100),0x11);
      (**(code **)(*piVar2 + 0x70))();
      fVar8 = (float10)FUN_005ed4d0();
      local_80[4] = (float)fVar8;
      FUN_00543b20(DAT_0066d0e0,local_80[4],0x12);
    }
    if (iVar1 == 0) {
      fStack_90 = 1.0;
      piStack_8c = (int *)0x3f800000;
      piStack_88 = (int *)0x3f800000;
      FUN_005444a0(DAT_0066d0e0,0,&DAT_00661574,&fStack_90,0x1c);
      fStack_90 = 1.0;
      piStack_8c = (int *)0x3f800000;
      piStack_88 = (int *)0x3f800000;
      FUN_005444a0(DAT_0066d0e0,1,&DAT_00661574,&fStack_90,0x1c);
      fStack_90 = 1.0;
      piStack_8c = (int *)0x3f800000;
      piStack_88 = (int *)0x3f800000;
      FUN_005444a0(DAT_0066d0e0,2,&DAT_00661574,&fStack_90,0x1c);
      pfVar6 = &fStack_90;
      puVar4 = &DAT_00661574;
      fStack_90 = 1.0;
      piStack_8c = (int *)0x3f800000;
      piStack_88 = (int *)0x3f800000;
    }
    else {
      iVar3 = 0;
      iVar1 = 0x314;
      do {
        puVar4 = (undefined1 *)FUN_00454fc0(*(undefined4 *)((int)local_84 + iVar1));
        if (puVar4 == (undefined1 *)0x0) {
          pfVar6 = &fStack_90;
          fStack_90 = 1.0;
          piStack_8c = (int *)0x3f800000;
          piStack_88 = (int *)0x3f800000;
          puVar4 = &DAT_00661574;
        }
        else {
          pfVar6 = local_80 + 1;
          local_80[1] = 1.0;
          local_80[2] = 1.0;
          local_80[3] = 1.0;
        }
        FUN_005444a0(DAT_0066d0e0,iVar3,puVar4,pfVar6,0x1c);
        iVar1 = iVar1 + 4;
        iVar3 = iVar3 + 1;
      } while (iVar1 < 800);
      switch(*(undefined4 *)(param_1 + 0x2134)) {
      case 1:
        iVar1 = FUN_00544c10();
        fStack_68 = *(float *)(iVar1 + 0xd8);
        uStack_64 = *(undefined4 *)(iVar1 + 0xdc);
        uStack_60 = *(undefined4 *)(iVar1 + 0xe0);
        break;
      case 2:
        iVar1 = FUN_00544c10();
        fStack_68 = *(float *)(iVar1 + 0xe4);
        uStack_64 = *(undefined4 *)(iVar1 + 0xe8);
        uStack_60 = *(undefined4 *)(iVar1 + 0xec);
        break;
      case 3:
        iVar1 = FUN_00544c10();
        fStack_68 = *(float *)(iVar1 + 0xf0);
        uStack_64 = *(undefined4 *)(iVar1 + 0xf4);
        uStack_60 = *(undefined4 *)(iVar1 + 0xf8);
        break;
      case 4:
        iVar1 = FUN_00544c10();
        fStack_68 = *(float *)(iVar1 + 0xfc);
        uStack_64 = *(undefined4 *)(iVar1 + 0x100);
        uStack_60 = *(undefined4 *)(iVar1 + 0x104);
        break;
      default:
        uStack_60 = 0x3f800000;
        uStack_64 = 0x3f800000;
        fStack_68 = 1.0;
      }
      if ((((*(int *)(DAT_00661984 + 0x28) == 0) && (*(int *)(DAT_00661984 + 0x520) == 0)) ||
          (*(int *)(DAT_00661984 + 0x5a4) == 0)) || (iVar1 = FUN_0045cce0(local_84), iVar1 == 0)) {
        puVar4 = (undefined1 *)FUN_00454fc0(local_84[0xc4]);
        if (puVar4 == (undefined1 *)0x0) {
          pfVar6 = &fStack_68;
          puVar4 = &DAT_00661574;
        }
        else {
          pfVar6 = &fStack_68;
        }
      }
      else {
        FUN_0045cce0(local_84);
        uVar5 = FUN_004652d0();
        iVar1 = FUN_00532a20(uVar5);
        pfVar6 = &fStack_68;
        puVar4 = (undefined1 *)(iVar1 + 4);
      }
    }
    FUN_005444a0(DAT_0066d0e0,0,puVar4,pfVar6,0x10);
    if ((DAT_0066d100 & 1) == 0) {
      iVar1 = FUN_00500130(DAT_0066d100);
    }
    else {
      iVar1 = FUN_005001f0(DAT_0066d100);
    }
    pfVar6 = (float *)(**(code **)(*local_84 + 0x7c))(&fStack_90);
    local_80[3] = ABS(*pfVar6 * *(float *)(iVar1 + 0xc) +
                      pfVar6[1] * *(float *)(iVar1 + 0x10) + pfVar6[2] * *(float *)(iVar1 + 0x14));
    if ((DAT_0066d100 & 1) == 0) {
      iVar1 = FUN_00500130(DAT_0066d100);
    }
    else {
      iVar1 = FUN_005001f0(DAT_0066d100);
    }
    pfVar6 = (float *)(**(code **)(*piStack_88 + 0x7c))(&stack0xffffff6c);
    local_80[2] = *pfVar6 * *(float *)(iVar1 + 0x18) +
                  pfVar6[1] * *(float *)(iVar1 + 0x1c) + pfVar6[2] * *(float *)(iVar1 + 0x20) +
                  local_80[2];
    if ((DAT_0066d100 & 1) == 0) {
      iVar1 = FUN_00500130(DAT_0066d100);
    }
    else {
      iVar1 = FUN_005001f0(DAT_0066d100);
    }
    pfVar6 = (float *)(**(code **)(*piStack_8c + 0x7c))(&stack0xffffff68);
    local_80[4] = (ABS(*pfVar6 * *(float *)(iVar1 + 0x24) +
                       pfVar6[1] * *(float *)(iVar1 + 0x28) + pfVar6[2] * *(float *)(iVar1 + 0x2c))
                  + local_80[4]) * _DAT_005f43c0;
    if (local_80[4] < _DAT_005f336c) {
      piStack_8c = (int *)0x0;
      piStack_88 = (int *)0x0;
    }
    else {
      piStack_8c = (int *)0x3f800000;
      piStack_88 = (int *)0x3f800000;
    }
    fStack_90 = 1.0;
    FUN_00544400(DAT_0066d0e0,0,local_80[4],&fStack_90,0x18);
    fStack_90 = 1.0;
    piStack_8c = (int *)0x3f800000;
    piStack_88 = (int *)0x3f800000;
    if ((DAT_0066d100 & 1) == 0) {
      pfVar6 = (float *)FUN_00500130(DAT_0066d100);
    }
    else {
      pfVar6 = (float *)FUN_005001f0(DAT_0066d100);
    }
    FUN_00544400(DAT_0066d0e0,0,
                 SQRT((pfVar6[1] - fStack_2c) * (pfVar6[1] - fStack_2c) +
                      (pfVar6[2] - local_28) * (pfVar6[2] - local_28) +
                      (*pfVar6 - local_30) * (*pfVar6 - local_30)),&fStack_90,0x1a);
  }
  iVar1 = local_38;
  FUN_00465650(&local_40);
  FUN_0043e670(local_40);
  if ((*(int *)(param_1 + 0x70) == 0) && (FUN_00465670(&iStack_50), iStack_50 != 0)) {
    FUN_004486a0(iStack_50,0);
  }
  iVar3 = FUN_00465700();
  if (iVar3 == 0) {
    FUN_00543d80(DAT_0066d0e0,0x3f);
    *(undefined4 *)(param_1 + 0x2188) = 0xff7fffff;
  }
  else {
    FUN_00543d20(DAT_0066d0e0,0x3f);
    iVar3 = FUN_00414820();
    if ((iVar3 != 0) && (*(float *)(param_1 + 0x2188) + _DAT_005f3350 < DAT_0066d0e0)) {
      *(float *)(param_1 + 0x2188) = DAT_0066d0e0;
      CON_Cache<T>__Unlock_3(param_1 + 0x2170,1);
    }
  }
  iVar3 = FUN_00465710();
  if (iVar3 == 0) {
    FUN_00543d80(DAT_0066d0e0,0x40);
    *(undefined4 *)(param_1 + 0x216c) = 1;
  }
  else {
    FUN_00543d20(DAT_0066d0e0,0x40);
    iVar3 = FUN_00414820();
    if ((iVar3 != 0) && (*(int *)(param_1 + 0x216c) != 0)) {
      CON_Cache<T>__Unlock_3(param_1 + 0x2154,1);
    }
    *(undefined4 *)(param_1 + 0x216c) = 0;
  }
  iVar3 = FUN_00465af0();
  if (iVar3 == 0) {
    FUN_00543d80(DAT_0066d0e0,0x3e);
    *(undefined4 *)(param_1 + 0x21a4) = 1;
  }
  else {
    FUN_00543d20(DAT_0066d0e0,0x3e);
    iVar3 = FUN_00414820();
    if ((iVar3 != 0) && (*(int *)(param_1 + 0x21a4) != 0)) {
      CON_Cache<T>__Unlock_3(param_1 + 0x218c,1);
    }
    *(undefined4 *)(param_1 + 0x21a4) = 0;
  }
  iVar3 = FUN_004655b0(&iStack_3c);
  if (iVar3 == 0) {
    fVar9 = 0.0;
  }
  else {
    fVar9 = (float)iStack_3c;
  }
  piStack_88 = (int *)0x3f800000;
  piStack_8c = (int *)0x3f800000;
  fStack_90 = 1.0;
  FUN_00544400(DAT_0066d0e0,0,fVar9,&fStack_90,0x2a);
  iVar3 = *(int *)(iVar1 + 0x300);
  if (((iVar3 == 0) || (iVar3 = *(int *)(iVar3 + 0xb4), iVar3 == 0)) ||
     ((*(byte *)(iVar3 + 0x48) & 0x40) == 0)) {
    FUN_00544360(DAT_0066d0e0,0x16);
  }
  else {
    FUN_00544300(DAT_0066d0e0,0x16);
  }
  iVar1 = *(int *)(iVar1 + 0x300);
  if (((iVar1 == 0) || (iVar1 = *(int *)(iVar1 + 0xb4), iVar1 == 0)) ||
     ((*(byte *)(iVar1 + 0x48) & 0x80) == 0)) {
    FUN_00544360(DAT_0066d0e0,0x17);
  }
  else {
    FUN_00544300(DAT_0066d0e0,0x17);
  }
  iVar1 = FUN_00465760(aiStack_4c + 2,aiStack_4c,&local_54,aiStack_4c + 1);
  if (iVar1 != 0) {
    if (local_54 != 0) {
      fStack_90 = 1.0;
      piStack_8c = (int *)0x3f800000;
      piStack_88 = (int *)0x3f800000;
      FUN_005444a0(DAT_0066d0e0,0,local_54,&fStack_90,0x2b);
    }
    if ((aiStack_4c[2] != *(int *)(param_1 + 0x214c)) ||
       (aiStack_4c[0] != *(int *)(param_1 + 0x2150))) {
      *(int *)(param_1 + 0x214c) = aiStack_4c[2];
      *(int *)(param_1 + 0x2150) = aiStack_4c[0];
      if (aiStack_4c[0] < 0) {
        if (aiStack_4c[2] < 0) {
LAB_0044a297:
          fStack_90 = 1.0;
          piStack_8c = (int *)0x3f800000;
          piStack_88 = (int *)0x3f800000;
          puVar4 = &DAT_00661574;
        }
        else {
          fStack_90 = 1.0;
          piStack_8c = (int *)0x3f800000;
          piStack_88 = (int *)0x3f800000;
          puVar4 = (undefined1 *)FUN_005222c0(&DAT_0060eac8,aiStack_4c[2]);
        }
      }
      else {
        if (aiStack_4c[2] < 0) goto LAB_0044a297;
        fStack_90 = 1.0;
        piStack_8c = (int *)0x3f800000;
        piStack_88 = (int *)0x3f800000;
        puVar4 = (undefined1 *)FUN_005222c0(s__d__d_0060eac0,aiStack_4c[2],aiStack_4c[0]);
      }
      FUN_005444a0(DAT_0066d0e0,1,puVar4,&fStack_90,0x2b);
    }
  }
  iVar1 = FUN_00465a40(&fStack_58);
  if ((iVar1 != 0) && (_DAT_005f336c < fStack_58)) {
    fStack_90 = fStack_58 * _DAT_005f43bc;
    local_80[1] = 0.0;
    local_80[2] = 0.0;
    local_80[3] = 0.0;
    piStack_8c = (int *)fStack_90;
    piStack_88 = (int *)fStack_90;
    FUN_00545030(DAT_0066d0e0,0x3f800000,local_80 + 1,&fStack_90);
  }
  iVar1 = FUN_00465a90(&uStack_6c);
  if (iVar1 != 0) {
    FUN_00543b20(DAT_0066d0e0,uStack_6c,0x35);
  }
  iVar1 = FUN_00465ab0(&uStack_6c);
  if (iVar1 != 0) {
    FUN_00543b20(DAT_0066d0e0,uStack_6c,0x33);
  }
  iVar1 = FUN_00465ad0(&uStack_6c);
  if (iVar1 != 0) {
    FUN_00543b20(DAT_0066d0e0,uStack_6c,0x37);
  }
  iVar1 = FUN_00465600(&iStack_5c);
  if (iVar1 == 0) {
    piStack_8c = (int *)0x3f800000;
    piStack_88 = (int *)0x3f800000;
    fVar9 = 0.0;
  }
  else if (iStack_5c < 1) {
    fVar9 = (float)iStack_5c;
    piStack_8c = (int *)0x0;
    piStack_88 = (int *)0x0;
  }
  else {
    fVar9 = (float)iStack_5c;
    piStack_8c = (int *)0x3f800000;
    piStack_88 = (int *)0x3f800000;
  }
  fStack_90 = 1.0;
  FUN_00544400(DAT_0066d0e0,0,fVar9,&fStack_90,0x2f);
  iVar1 = FUN_00465b10();
  if (iVar1 == -1) {
LAB_0044a4d3:
    FUN_00543d80(DAT_0066d0e0,0x25);
  }
  else if (iVar1 == 0) {
    FUN_00544300(DAT_0066d0e0,0x25);
  }
  else if (iVar1 == 1) {
    uVar7 = __ftol();
    if ((uVar7 & 1) != 0) goto LAB_0044a4d3;
    FUN_00544300(DAT_0066d0e0,0x25);
  }
  else {
    TERMINATION(s_NOD_Cockpit__Update___0060ea90,s_illegal_booster_state_0060eaa8);
  }
  uVar5 = FUN_004652f0();
  switch(uVar5) {
  case 0:
    FUN_00543d80(DAT_0066d0e0,0x47);
    FUN_00543d80(DAT_0066d0e0,0x48);
    FUN_00543d80(DAT_0066d0e0,0x49);
    FUN_00543d80(DAT_0066d0e0,0x4a);
    FUN_00543d80(DAT_0066d0e0,0x4b);
    break;
  case 1:
    FUN_00543d80(DAT_0066d0e0,0x47);
    FUN_00543d80(DAT_0066d0e0,0x48);
    FUN_00543d80(DAT_0066d0e0,0x49);
    FUN_00543d80(DAT_0066d0e0,0x4a);
    FUN_00543d80(DAT_0066d0e0,0x4b);
    FUN_00543d20(DAT_0066d0e0,0x4c);
    goto LAB_0044a789;
  case 2:
    FUN_00543d80(DAT_0066d0e0,0x47);
    FUN_00543d80(DAT_0066d0e0,0x48);
    FUN_00543d80(DAT_0066d0e0,0x49);
    FUN_00543d80(DAT_0066d0e0,0x4a);
    FUN_00543d80(DAT_0066d0e0,0x4b);
    FUN_00543d80(DAT_0066d0e0,0x4c);
    FUN_00543d20(DAT_0066d0e0,0x4d);
    goto LAB_0044a79d;
  case 3:
    FUN_00543d80(DAT_0066d0e0,0x47);
    FUN_00543d80(DAT_0066d0e0,0x48);
    FUN_00543d80(DAT_0066d0e0,0x49);
    FUN_00543d80(DAT_0066d0e0,0x4a);
    FUN_00543d80(DAT_0066d0e0,0x4b);
    FUN_00543d80(DAT_0066d0e0,0x4c);
    FUN_00543d80(DAT_0066d0e0,0x4d);
    FUN_00543d20(DAT_0066d0e0,0x4e);
    return;
  case 4:
    FUN_00543d20(DAT_0066d0e0,0x47);
    FUN_00543d20(DAT_0066d0e0,0x48);
    FUN_00543d20(DAT_0066d0e0,0x49);
    FUN_00543d20(DAT_0066d0e0,0x4a);
    FUN_00543d20(DAT_0066d0e0,0x4b);
    break;
  default:
    goto switchD_0044a4e8_default;
  }
  FUN_00543d80(DAT_0066d0e0,0x4c);
LAB_0044a789:
  FUN_00543d80(DAT_0066d0e0,0x4d);
LAB_0044a79d:
  FUN_00543d80(DAT_0066d0e0,0x4e);
switchD_0044a4e8_default:
  return;
}



