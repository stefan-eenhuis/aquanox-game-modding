// Muster: COS_   4 Funktionen, 996 Byte

// --------------------------------------------
// COS_LIST_BoxAttributes__COS_LIST_BoxAttributes   ab 0x00438bc0   118 Byte
// Texte: COS_LIST_BoxAttributes::COS_LIST_BoxAttributes(), Maximum number of 32 type allowed in current release
// --------------------------------------------

void __thiscall
COS_LIST_BoxAttributes__COS_LIST_BoxAttributes
          (int param_1,undefined4 param_2,uint param_3,int param_4,undefined4 param_5)

{
  undefined4 uVar1;
  uint local_14;
  int local_10;
  int local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  *(uint *)(param_4 + 8) = param_3;
  uVar1 = *(undefined4 *)(param_1 + 0x9c + param_3 * 4);
  if (0x1f < param_3) {
    TERMINATION(s_Maximum_number_of_32_type_allowe_0060d71c,
                s_COS_LIST_BoxAttributes__COS_LIST_0060d754);
  }
  local_10 = 1 << ((byte)param_3 & 0x1f);
  local_8 = param_5;
  local_14 = param_3;
  local_c = param_4;
  local_4 = uVar1;
  FUN_004d2350(param_2,&local_14);
  return;
}



// --------------------------------------------
// COS_LIST_BoxAttributes__COS_LIST_BoxAttributes_2   ab 0x00438c40   123 Byte
// Texte: COS_LIST_BoxAttributes::COS_LIST_BoxAttributes(), Maximum number of 32 type allowed in current release
// --------------------------------------------

void __thiscall
COS_LIST_BoxAttributes__COS_LIST_BoxAttributes_2
          (int param_1,undefined4 param_2,uint param_3,int param_4,undefined4 param_5,
          undefined4 param_6)

{
  undefined4 uVar1;
  uint local_14;
  int local_10;
  int local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  *(uint *)(param_4 + 8) = param_3;
  uVar1 = *(undefined4 *)(param_1 + 0x9c + param_3 * 4);
  if (0x1f < param_3) {
    TERMINATION(s_Maximum_number_of_32_type_allowe_0060d71c,
                s_COS_LIST_BoxAttributes__COS_LIST_0060d754);
  }
  local_10 = 1 << ((byte)param_3 & 0x1f);
  local_8 = param_5;
  local_14 = param_3;
  local_c = param_4;
  local_4 = uVar1;
  FUN_004d26c0(param_2,&local_14,param_6);
  return;
}



// --------------------------------------------
// COS_OBBS_Tree_Cache__AllocateTree   ab 0x004d11c0   430 Byte
// Texte: COS_OBBS_Tree_Cache::AllocateTree(), COS_OBBS_Tree_Cache::AllocateTree() : name too long, tree cache overflow
// --------------------------------------------

undefined4 __thiscall COS_OBBS_Tree_Cache__AllocateTree(int param_1,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  int iVar4;
  undefined1 auStack_104 [260];
  
  iVar1 = str_len(param_2);
  if (0x20 < iVar1) {
    TERMINATION(s_COS_OBBS_Tree_Cache__AllocateTre_00618f2c,param_2);
  }
  iVar1 = 0;
  if (0 < *(int *)(param_1 + 0x5904)) {
    iVar4 = param_1 + 0x10c;
    do {
      iVar2 = FUN_00520710(iVar4,param_2);
      if (iVar2 == 0) {
        iVar4 = iVar1 * 0xb + 0x42;
        *(int *)(param_1 + iVar4 * 4) = *(int *)(param_1 + iVar4 * 4) + 1;
        return *(undefined4 *)(param_1 + 0x104 + iVar1 * 0x2c);
      }
      iVar1 = iVar1 + 1;
      iVar4 = iVar4 + 0x2c;
    } while (iVar1 < *(int *)(param_1 + 0x5904));
  }
  if (0x1ff < *(int *)(param_1 + 0x5904)) {
    TERMINATION(s_COS_OBBS_Tree_Cache__AllocateTre_00618ef4,s_tree_cache_overflow_00618f18);
  }
  FUN_005ab484(auStack_104,param_1,param_1 + 3,param_2,0);
  FUN_00520650(param_1 + 0x10c + *(int *)(param_1 + 0x5904) * 0x2c,param_2,0x21);
  puVar3 = (undefined4 *)operator_new(0x28);
  if (puVar3 == (undefined4 *)0x0) {
    puVar3 = (undefined4 *)0x0;
  }
  else {
    iVar1 = operator_new(0x40);
    if (iVar1 == 0) {
      puVar3[2] = 0;
      *puVar3 = 0;
      puVar3[1] = 0;
      puVar3[3] = 0;
    }
    else {
      *(undefined4 *)(iVar1 + 0x18) = 0;
      *(undefined4 *)(iVar1 + 0x1c) = 0;
      *(undefined4 *)(iVar1 + 0x20) = 0;
      *(undefined4 *)(iVar1 + 0x34) = 0;
      *(undefined4 *)(iVar1 + 0x3c) = 0;
      *(undefined4 *)(iVar1 + 0x28) = 0;
      *(undefined4 *)(iVar1 + 0x30) = 0;
      *(undefined4 *)(iVar1 + 0x38) = 0;
      *(undefined4 *)(iVar1 + 0x24) = 0;
      *(undefined4 *)(iVar1 + 0x2c) = 0;
      puVar3[2] = iVar1;
      *puVar3 = 0;
      puVar3[1] = 0;
      puVar3[3] = 0;
    }
  }
  *(undefined4 **)(param_1 + 0x104 + *(int *)(param_1 + 0x5904) * 0x2c) = puVar3;
  *(undefined4 *)(param_1 + (*(int *)(param_1 + 0x5904) + 6) * 0x2c) = 1;
  FUN_004dcb80(auStack_104);
  iVar1 = *(int *)(param_1 + 0x5904) + 1;
  *(int *)(param_1 + 0x5904) = iVar1;
  return *(undefined4 *)(param_1 + 0xd8 + iVar1 * 0x2c);
}



// --------------------------------------------
// COS_OBBS_Tree_Cache__AllocateTree_2   ab 0x004d1370   325 Byte
// Texte: COS_OBBS_Tree_Cache::AllocateTree(), COS_OBBS_Tree_Cache::AllocateTree() : name too long, tree cache overflow
// --------------------------------------------

undefined4 __thiscall COS_OBBS_Tree_Cache__AllocateTree_2(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 *puVar2;
  undefined1 auStack_104 [260];
  
  iVar1 = str_len(param_2);
  if (0x20 < iVar1) {
    TERMINATION(s_COS_OBBS_Tree_Cache__AllocateTre_00618f2c,param_2);
  }
  if (0x1ff < *(int *)(param_1 + 0x5904)) {
    TERMINATION(s_COS_OBBS_Tree_Cache__AllocateTre_00618ef4,s_tree_cache_overflow_00618f18);
  }
  FUN_005ab484(auStack_104,param_1,param_1 + 3,param_2,0);
  FUN_00520650(param_1 + 0x10c + *(int *)(param_1 + 0x5904) * 0x2c,&DAT_00618f60,0x21);
  puVar2 = (undefined4 *)operator_new(0x28);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    iVar1 = operator_new(0x40);
    if (iVar1 == 0) {
      puVar2[2] = 0;
      *puVar2 = 0;
      puVar2[1] = 0;
      puVar2[3] = 0;
    }
    else {
      *(undefined4 *)(iVar1 + 0x18) = 0;
      *(undefined4 *)(iVar1 + 0x1c) = 0;
      *(undefined4 *)(iVar1 + 0x20) = 0;
      *(undefined4 *)(iVar1 + 0x34) = 0;
      *(undefined4 *)(iVar1 + 0x3c) = 0;
      *(undefined4 *)(iVar1 + 0x28) = 0;
      *(undefined4 *)(iVar1 + 0x30) = 0;
      *(undefined4 *)(iVar1 + 0x38) = 0;
      *(undefined4 *)(iVar1 + 0x24) = 0;
      *(undefined4 *)(iVar1 + 0x2c) = 0;
      puVar2[2] = iVar1;
      *puVar2 = 0;
      puVar2[1] = 0;
      puVar2[3] = 0;
    }
  }
  *(undefined4 **)(param_1 + 0x104 + *(int *)(param_1 + 0x5904) * 0x2c) = puVar2;
  *(undefined4 *)(param_1 + (*(int *)(param_1 + 0x5904) + 6) * 0x2c) = 1;
  FUN_004dcb80(auStack_104);
  iVar1 = *(int *)(param_1 + 0x5904) + 1;
  *(int *)(param_1 + 0x5904) = iVar1;
  return *(undefined4 *)(param_1 + 0xd8 + iVar1 * 0x2c);
}



