// --------------------------------------------
// FUN_005610d0   ab 0x005610d0   66 Byte
// gerufen von: FUN_0043f4a0, FUN_004486a0, FUN_005893f0, FUN_005899c0, FUN_0058ad80, FUN_0058b1b0, FUN_005a5b50, FUN_005a5fe0, FUN_005a71f0, FUN_005a7570, ... (+4)
// --------------------------------------------

int __thiscall FUN_005610d0(int param_1,uint param_2)

{
  int iVar1;
  int iVar2;
  ushort *puVar3;
  
  iVar1 = *(int *)(param_1 + 0x34);
  iVar2 = 0;
  if (0 < iVar1) {
    puVar3 = *(ushort **)(param_1 + 0x30);
    do {
      if (*puVar3 == param_2) break;
      iVar2 = iVar2 + 1;
      puVar3 = puVar3 + 0xe;
    } while (iVar2 < iVar1);
  }
  if (iVar2 < iVar1) {
    return *(int *)(param_1 + 0x30) + iVar2 * 0x1c;
  }
  return 0;
}



// DB_Find_A ungueltig
// --------------------------------------------
// FUN_005612a0   ab 0x005612a0   59 Byte
// gerufen von: Aqua_State_Menu_InGame__HeartBeat, Aqua_State_SinglePlayer__HeartBeat, FUN_0041eef0, FUN_00581460, FUN_005a66d0, FUN_005a6ac0
// --------------------------------------------

int __thiscall FUN_005612a0(int param_1,uint param_2)

{
  int iVar1;
  int iVar2;
  ushort *puVar3;
  
  iVar1 = *(int *)(param_1 + 100);
  iVar2 = 0;
  if (0 < iVar1) {
    puVar3 = *(ushort **)(param_1 + 0x60);
    do {
      if (*puVar3 == param_2) break;
      iVar2 = iVar2 + 1;
      puVar3 = puVar3 + 8;
    } while (iVar2 < iVar1);
  }
  if (iVar2 < iVar1) {
    return *(int *)(param_1 + 0x60) + iVar2 * 0x10;
  }
  return 0;
}



// DB_Find_Movie ungueltig
// --------------------------------------------
// FUN_005612e0   ab 0x005612e0   60 Byte
// gerufen von: Aqua_State_Menu_InGame__HeartBeat, Aqua_State_SinglePlayer__HeartBeat
// --------------------------------------------

int __thiscall FUN_005612e0(int param_1,uint param_2)

{
  int iVar1;
  int iVar2;
  ushort *puVar3;
  
  iVar1 = *(int *)(param_1 + 0x5c);
  iVar2 = 0;
  if (0 < iVar1) {
    puVar3 = *(ushort **)(param_1 + 0x58);
    do {
      if (*puVar3 == param_2) break;
      iVar2 = iVar2 + 1;
      puVar3 = puVar3 + 6;
    } while (iVar2 < iVar1);
  }
  if (iVar2 < iVar1) {
    return *(int *)(param_1 + 0x58) + iVar2 * 0xc;
  }
  return 0;
}



// DB_Find_Mission ungueltig
// --------------------------------------------
// FUN_00561320   ab 0x00561320   69 Byte
// gerufen von: Aqua_State_Menu_InGame__HeartBeat, Aqua_State_SinglePlayer__HeartBeat, FUN_004213e0, FUN_00575470, FUN_005884b0, FUN_005a2cd0, FUN_005a81f0, FUN_005a8c30
// --------------------------------------------

int __thiscall FUN_00561320(int param_1,uint param_2)

{
  int iVar1;
  int iVar2;
  ushort *puVar3;
  
  iVar1 = *(int *)(param_1 + 0x74);
  iVar2 = 0;
  if (0 < iVar1) {
    puVar3 = *(ushort **)(param_1 + 0x70);
    do {
      if (*puVar3 == param_2) break;
      iVar2 = iVar2 + 1;
      puVar3 = puVar3 + 0x210;
    } while (iVar2 < iVar1);
  }
  if (iVar2 < iVar1) {
    return iVar2 * 0x420 + *(int *)(param_1 + 0x70);
  }
  return 0;
}



// DB_Find_Station ungueltig
