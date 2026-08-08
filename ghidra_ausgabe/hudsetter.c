// --------------------------------------------
// FUN_00543d80   ab 0x00543d80   87 Byte
// gerufen von: FUN_005426c0, NOD_Cockpit__Update
// --------------------------------------------

void __thiscall FUN_00543d80(int param_1,undefined4 param_2,int param_3)

{
  if (*(int *)(param_1 + 0x904 + param_3 * 4) != 0) {
    FUN_0055f060(param_2,0x3e800000,0x3f800000);
    FUN_0055f160(param_2,0x3e800000,0x3f800000,0);
    *(undefined4 *)(param_1 + 0x904 + param_3 * 4) = 0;
  }
  return;
}



// --------------------------------------------
// FUN_00543d20   ab 0x00543d20   91 Byte
// gerufen von: NOD_Cockpit__Update
// --------------------------------------------

void __thiscall FUN_00543d20(int param_1,undefined4 param_2,int param_3)

{
  if (*(int *)(param_1 + 0x904 + param_3 * 4) != 1) {
    FUN_0055f060(param_2,0x3e800000,0x3f800000);
    FUN_0055f100(param_2,0x49742400,0x3f000000,0x3f800000,0);
    *(undefined4 *)(param_1 + 0x904 + param_3 * 4) = 1;
  }
  return;
}



// --------------------------------------------
// FUN_00543b20   ab 0x00543b20   511 Byte
// gerufen von: FUN_005426c0, NOD_Cockpit__Update
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall FUN_00543b20(int param_1,undefined4 param_2,float param_3,int param_4)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  iVar1 = *(int *)(*(int *)(param_1 + 4) + param_4 * 4);
  if (ABS(param_3 - *(float *)(iVar1 + 0xc4)) <= _DAT_005f4324) {
    return;
  }
  if (param_3 <= (float)_DAT_005f40e0) {
    if ((float)_DAT_005fa290 < param_3) {
      puVar4 = &local_18;
      puVar3 = &local_c;
      local_18 = 0x3f000000;
      local_c = 0x3f800000;
      local_8 = 0x3f000000;
      local_4 = 0x3e000000;
      uVar2 = 0x3f000000;
    }
    else if ((float)_DAT_005fa288 < param_3) {
      puVar4 = &local_c;
      puVar3 = &local_18;
      local_c = 0;
      local_8 = 0;
      local_4 = 0;
      local_18 = 0x3f800000;
      uVar2 = 0x3f000000;
    }
    else {
      if (param_3 <= (float)_DAT_005f33a0) {
        local_c = 0;
        local_8 = 0;
        local_4 = 0;
        FUN_0055eff0(param_2,0x3e800000,0x3f800000,&local_c);
        FUN_0055f160(param_2,0x3e800000,0x3f800000,0);
        goto LAB_00543ced;
      }
      puVar4 = &local_c;
      puVar3 = &local_18;
      local_c = 0;
      local_8 = 0;
      local_4 = 0;
      local_18 = 0x3f800000;
      uVar2 = 0x3e800000;
    }
    local_10 = 0;
    local_14 = 0;
    FUN_0055ef80(param_2,0x49742400,uVar2,0x3f800000,puVar3,puVar4);
  }
  else {
    FUN_0055f060(param_2,0x3e800000,0x3f800000);
  }
  FUN_0055f1c0(param_2,0x3e800000,0x3f800000);
LAB_00543ced:
  *(undefined4 *)(iVar1 + 0xdc) = 0x70000000;
  FUN_00560930(param_3);
  return;
}



// --------------------------------------------
// FUN_005444a0   ab 0x005444a0   146 Byte
// gerufen von: FUN_005426c0, NOD_Cockpit__Update
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_005444a0(undefined4 param_1,undefined4 param_2,undefined4 param_3,float *param_4)

{
  undefined1 uStack00000014;
  undefined1 uStack00000015;
  undefined1 uStack00000016;
  undefined1 uStack00000017;
  undefined1 local_c;
  undefined1 local_8;
  
  local_c = (undefined1)(int)ROUND(*param_4 * _DAT_005f3394 + -0.49999988);
  uStack00000016 = local_c;
  local_8 = (undefined1)(int)ROUND(param_4[1] * _DAT_005f3394 + -0.49999988);
  uStack00000015 = local_8;
  local_8 = (undefined1)(int)ROUND(param_4[2] * _DAT_005f3394 + -0.49999988);
  uStack00000014 = local_8;
  uStack00000017 = 0xff;
  FUN_00560080(param_2,param_3,&stack0x00000014);
  return;
}



// --------------------------------------------
// FUN_00544400   ab 0x00544400   159 Byte
// gerufen von: FUN_005426c0, NOD_Cockpit__Update
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00544400(undefined4 param_1,undefined4 param_2,undefined4 param_3,float *param_4)

{
  undefined4 uVar1;
  undefined1 uStack00000014;
  undefined1 uStack00000015;
  undefined1 uStack00000016;
  undefined1 uStack00000017;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined1 *puVar4;
  undefined1 local_c;
  undefined1 local_8;
  
  local_c = (undefined1)(int)ROUND(*param_4 * _DAT_005f3394 + -0.49999988);
  uStack00000016 = local_c;
  local_8 = (undefined1)(int)ROUND(param_4[1] * _DAT_005f3394 + -0.49999988);
  uStack00000015 = local_8;
  local_8 = (undefined1)(int)ROUND(param_4[2] * _DAT_005f3394 + -0.49999988);
  puVar4 = &stack0x00000014;
  uVar3 = 0;
  uStack00000014 = local_8;
  uStack00000017 = 0xff;
  uVar2 = 0;
  uVar1 = __ftol(0,0,puVar4);
  FUN_005602d0(param_2,uVar1,uVar2,uVar3,puVar4);
  return;
}



