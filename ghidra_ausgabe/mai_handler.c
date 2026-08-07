// ============================================
// Muster: MAI_Handler
// Treffer: 10 Funktionen
// ============================================

// --------------------------------------------
// MAI_Handler__Handle   ab 0x00588650   994 Byte
// Texte: MAI_Handler::Handle(), MAI_Handler::Handle_Arrival(), MAI_Handler::Handle_Dialog(), MAI_Handler::Handle_Equip_Item(), MAI_Handler::Handle_Options(), MAI_Handler::Handle_Select_Dialog(), illegal handle state in MAI_Handler, illegal return state in MAI_Handler
// --------------------------------------------

undefined4 __thiscall MAI_Handler__Handle(int *param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  char *pcVar5;
  
  if (param_1[0x1b0] == 0x11) {
    (**(code **)(*param_1 + 4))(param_2,1);
    return 0;
  }
  MAI_Result__Init(DAT_00692f7c);
  switch(param_1[0x1b0]) {
  case 0:
    iVar1 = (**(code **)(param_1[0x216] + 8))(param_2,param_3);
    if (iVar1 == 0) goto LAB_005889f9;
    if (iVar1 != 1) {
      pcVar5 = s_MAI_Handler__Handle_Arrival___0065c5d4;
      break;
    }
    goto LAB_005886d1;
  case 1:
    MAI_Handler__Handle_Station(param_2,param_3);
    return 0;
  case 2:
    MAI_Handler__Handle_Options(param_2,param_3);
    return 0;
  case 3:
    MAI_Handler__Handle_Select_Dialog_3(param_2,param_3);
    return 0;
  case 4:
    MAI_Handler__Handle_Dialog(param_2,param_3);
    return 0;
  case 5:
    MAI_Handler__Handle_Select_Dialog_4(param_2,param_3);
    return 0;
  case 6:
    MAI_Handler__Handle_Dock(param_2,param_3);
    return 0;
  default:
    TERMINATION(s_MAI_Handler__Handle___0065c510,s_illegal_handle_state_in_MAI_Hand_0065c528);
    return 0;
  case 8:
    piVar2 = param_1 + 0x1663;
    goto LAB_00588794;
  case 9:
    piVar2 = param_1 + 0x1aca;
LAB_00588794:
    iVar1 = (**(code **)(*piVar2 + 8))(param_2,param_3);
    if (iVar1 == 0) goto LAB_005889f9;
    if (iVar1 == 1) {
LAB_005886d1:
      (**(code **)(param_1[0x3b9] + 4))(param_2,1);
      param_1[0x1b0] = 1;
      goto LAB_005889f9;
    }
    pcVar5 = s_MAI_Handler__Handle_Options___0065c5b4;
    break;
  case 10:
    MAI_Handler__Handle_Equip(param_2,param_3);
    return 0;
  case 0xb:
    iVar1 = (**(code **)(param_1[0x22be] + 8))(param_2,param_3);
    if (iVar1 != 0) {
      if (iVar1 != 1) {
        TERMINATION(s_MAI_Handler__Handle_Equip_Item___0065c590,
                    s_illegal_return_state_in_MAI_Hand_0065c5f4);
        MAI_Result__AddOrder(0,0,*(undefined4 *)(param_1[2] + 0x134c));
        return 0;
      }
      STY_Inventory__GetItemInfoByIndex_8();
      (**(code **)(param_1[0x1eca] + 4))(param_2,1);
      param_1[0x1b0] = 10;
    }
    MAI_Result__AddOrder(0,0,*(undefined4 *)(param_1[2] + 0x134c));
    return 0;
  case 0xc:
    MAI_Handler__Handle_Select_Dialog(param_2,param_3);
    return 0;
  case 0xd:
    MAI_Handler__Handle_Select_Dialog_2(param_2,param_3);
    return 0;
  case 0xe:
    iVar1 = (**(code **)(param_1[0x309e] + 8))(param_2,param_3);
    if (iVar1 == 0) goto LAB_005889f9;
    if (iVar1 == 1) {
      (**(code **)(param_1[0x98b] + 4))(param_2,1);
      param_1[0x1b0] = 2;
      goto LAB_005889f9;
    }
    pcVar5 = s_MAI_Handler__Handle_Select_Dialo_0065c56c;
    break;
  case 0xf:
    MAI_Result__Init(0);
    iVar1 = FUN_00574230(param_2);
    if (iVar1 == 0) {
      iVar1 = param_1[2];
      piVar2 = param_1 + 0x1e4;
      piVar4 = param_1 + 0x1b1;
      for (iVar3 = 0x32; iVar3 != 0; iVar3 = iVar3 + -1) {
        *piVar4 = *piVar2;
        piVar2 = piVar2 + 1;
        piVar4 = piVar4 + 1;
      }
      param_1[0x1b0] = param_1[0x1e3];
      FUN_00429450(iVar1);
      FUN_0051b740();
    }
    MAI_Result__AddOrder(0,0,*(undefined4 *)(param_1[2] + 0x134c));
    return 0;
  case 0x10:
    MAI_Result__Init(0);
    iVar1 = FUN_00588a80(param_2,param_3);
    if (iVar1 == 0) goto LAB_005889f9;
    if ((0 < iVar1) && (iVar1 < 4)) {
      piVar2 = param_1 + 0x1b1;
      piVar4 = param_1 + 0x1e4;
      for (iVar1 = 0x32; iVar1 != 0; iVar1 = iVar1 + -1) {
        *piVar4 = *piVar2;
        piVar2 = piVar2 + 1;
        piVar4 = piVar4 + 1;
      }
      param_1[0x1b0] = 1;
      param_1[0x3712] = 0;
      param_1[0x1e3] = 1;
      FUN_00574210(param_2,0x3f19999a);
      FUN_00573ac0(param_2);
      MAI_Result__Init(0);
      param_1[0x1b0] = 0xf;
      goto LAB_005889f9;
    }
    pcVar5 = s_MAI_Handler__Handle_Dialog___0065c54c;
  }
  TERMINATION(pcVar5,s_illegal_return_state_in_MAI_Hand_0065c5f4);
LAB_005889f9:
  MAI_Result__AddOrder(0,0,*(undefined4 *)(param_1[2] + 0x134c));
  return 0;
}



// --------------------------------------------
// MAI_Handler__Handle_Station   ab 0x00588b10   2227 Byte
// gerufen von: MAI_Handler__Handle
// Texte: MAI_Handler::Handle_Station(), illegal return state in MAI_Handler
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall MAI_Handler__Handle_Station(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  uint uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  float10 fVar6;
  undefined4 unaff_retaddr;
  undefined4 uStack_4;
  
  uVar1 = (**(code **)(*(int *)(param_1 + 0xee4) + 8))(param_2,param_3);
  switch(uVar1) {
  case 0:
    goto switchD_00588b3d_caseD_0;
  case 1:
    iVar3 = FUN_005893f0(0);
    if (iVar3 == 0) {
      (**(code **)(*(int *)(param_1 + 0x3640) + 4))(param_2,1);
      *(undefined4 *)(param_1 + 0x6c0) = 3;
      goto switchD_00588b3d_caseD_0;
    }
    FUN_00574270(param_2,0x3f000000);
    FUN_00573960(param_2);
    FUN_005678d0(param_2,0x3e800000,0xf8,0x10b);
    FUN_0056d630(param_2,*(undefined4 *)(param_1 + 0xdb20));
    FUN_0056d570(&DAT_00661574);
    FUN_0056d5b0(&DAT_00661574);
    FUN_0056d5f0(&DAT_00661574);
    FUN_0056d300(param_2);
    FUN_0056d3d0(param_2);
    FUN_0056d4a0(param_2);
    iVar3 = FUN_005610d0(0x5a);
    FUN_0056d7a0(*(undefined4 *)(iVar3 + 4),param_1 + 0xdb28);
    FUN_0056d740(param_1 + 0xdc28,*(undefined4 *)(param_1 + 0xdb24));
    CON_Cache<T>__Unlock_3(DAT_00692f98,2);
    uVar2 = FUN_0051f6c0();
    fVar6 = (float10)uVar2 * (float10)_DAT_005fa800 + (float10)_DAT_005f43c4;
    break;
  case 2:
    iVar3 = FUN_005893f0(0);
    if (iVar3 == 0) {
      FUN_005a3d20();
      (**(code **)(*(int *)(param_1 + 0x598c) + 4))(param_2,1);
      *(undefined4 *)(param_1 + 0x6c0) = 8;
      goto switchD_00588b3d_caseD_0;
    }
    FUN_00574270(param_2,0x3f000000);
    FUN_00573960(param_2);
    FUN_005678d0(param_2,0x3e800000,0xf8,0x10b);
    FUN_0056d630(param_2,*(undefined4 *)(param_1 + 0xdb20));
    FUN_0056d570(&DAT_00661574);
    FUN_0056d5b0(&DAT_00661574);
    FUN_0056d5f0(&DAT_00661574);
    FUN_0056d300(param_2);
    FUN_0056d3d0(param_2);
    FUN_0056d4a0(param_2);
    iVar3 = FUN_005610d0(0x5a);
    FUN_0056d7a0(*(undefined4 *)(iVar3 + 4),param_1 + 0xdb28);
    FUN_0056d740(param_1 + 0xdc28,*(undefined4 *)(param_1 + 0xdb24));
    CON_Cache<T>__Unlock_3(DAT_00692f98,2);
    uVar2 = FUN_0051f6c0();
    fVar6 = (float10)uVar2 * (float10)_DAT_005fa800 + (float10)_DAT_005f43c4;
    break;
  case 3:
    iVar3 = FUN_005893f0(0);
    if (iVar3 == 0) {
      STY_Inventory__GetItemInfoByIndex_8();
      (**(code **)(*(int *)(param_1 + 0x7b28) + 4))(param_2,1);
      *(undefined4 *)(param_1 + 0x6c0) = 10;
      goto switchD_00588b3d_caseD_0;
    }
    FUN_00574270(param_2,0x3f000000);
    FUN_00573960(param_2);
    FUN_005678d0(param_2,0x3e800000,0xf8,0x10b);
    FUN_0056d630(param_2,*(undefined4 *)(param_1 + 0xdb20));
    FUN_0056d570(&DAT_00661574);
    FUN_0056d5b0(&DAT_00661574);
    FUN_0056d5f0(&DAT_00661574);
    FUN_0056d300(param_2);
    FUN_0056d3d0(param_2);
    FUN_0056d4a0(param_2);
    iVar3 = FUN_005610d0(0x5a);
    FUN_0056d7a0(*(undefined4 *)(iVar3 + 4),param_1 + 0xdb28);
    FUN_0056d740(param_1 + 0xdc28,*(undefined4 *)(param_1 + 0xdb24));
    CON_Cache<T>__Unlock_3(DAT_00692f98,2);
    uVar2 = FUN_0051f6c0();
    fVar6 = (float10)uVar2 * (float10)_DAT_005fa800 + (float10)_DAT_005f43c4;
    break;
  case 4:
    iVar3 = FUN_005893f0(0);
    if (iVar3 == 0) {
      STY_Inventory__GetItemInfoByIndex_5();
      (**(code **)(*(int *)(param_1 + 0x6b28) + 4))(param_2,1);
      *(undefined4 *)(param_1 + 0x6c0) = 9;
      goto switchD_00588b3d_caseD_0;
    }
    FUN_00574270(param_2,0x3f000000);
    FUN_00573960(param_2);
    FUN_005678d0(param_2,0x3e800000,0xf8,0x10b);
    FUN_0056d630(param_2,*(undefined4 *)(param_1 + 0xdb20));
    FUN_0056d570(&DAT_00661574);
    FUN_0056d5b0(&DAT_00661574);
    FUN_0056d5f0(&DAT_00661574);
    FUN_0056d300(param_2);
    FUN_0056d3d0(param_2);
    FUN_0056d4a0(param_2);
    iVar3 = FUN_005610d0(0x5a);
    FUN_0056d7a0(*(undefined4 *)(iVar3 + 4),param_1 + 0xdb28);
    FUN_0056d740(param_1 + 0xdc28,*(undefined4 *)(param_1 + 0xdb24));
    CON_Cache<T>__Unlock_3(DAT_00692f98,2);
    uVar2 = FUN_0051f6c0();
    fVar6 = (float10)uVar2 * (float10)_DAT_005fa800 + (float10)_DAT_005f43c4;
    break;
  case 5:
    iVar3 = FUN_005893f0(0);
    if (iVar3 == 0) {
      FUN_005a5b50();
      (**(code **)(*(int *)(param_1 + 0x4600) + 4))(param_2,1);
      *(undefined4 *)(param_1 + 0x6c0) = 6;
      goto switchD_00588b3d_caseD_0;
    }
    FUN_00574270(param_2,0x3f000000);
    FUN_00573960(param_2);
    FUN_005678d0(param_2,0x3e800000,0xf8,0x10b);
    FUN_0056d630(param_2,*(undefined4 *)(param_1 + 0xdb20));
    FUN_0056d570(&DAT_00661574);
    FUN_0056d5b0(&DAT_00661574);
    FUN_0056d5f0(&DAT_00661574);
    FUN_0056d300(param_2);
    FUN_0056d3d0(param_2);
    FUN_0056d4a0(param_2);
    iVar3 = FUN_005610d0(0x5a);
    FUN_0056d7a0(*(undefined4 *)(iVar3 + 4),param_1 + 0xdb28);
    FUN_0056d740(param_1 + 0xdc28,*(undefined4 *)(param_1 + 0xdb24));
    goto LAB_005891c3;
  case 6:
    iVar3 = FUN_005893f0(0);
    if (iVar3 == 0) {
      (**(code **)(*(int *)(param_1 + 0x262c) + 4))(param_2,1);
      *(undefined4 *)(param_1 + 0x6c0) = 2;
      goto switchD_00588b3d_caseD_0;
    }
    FUN_00574270(param_2,0x3f000000);
    FUN_00573960(param_2);
    FUN_005678d0(param_2,0x3e800000,0xf8,0x10b);
    FUN_0056d630(param_2,*(undefined4 *)(param_1 + 0xdb20));
    FUN_0056d570(&DAT_00661574);
    FUN_0056d5b0(&DAT_00661574);
    FUN_0056d5f0(&DAT_00661574);
    FUN_0056d300(param_2);
    FUN_0056d3d0(param_2);
    FUN_0056d4a0(param_2);
    iVar3 = FUN_005610d0(0x5a);
    FUN_0056d7a0(*(undefined4 *)(iVar3 + 4),param_1 + 0xdb28);
    FUN_0056d740(param_1 + 0xdc28,*(undefined4 *)(param_1 + 0xdb24));
LAB_005891c3:
    CON_Cache<T>__Unlock_3(DAT_00692f98,2);
    fVar6 = (float10)FUN_00415f60(0x41700000,0x41a00000);
    break;
  case 7:
    iVar3 = FUN_005893f0(0);
    if (iVar3 == 0) {
      MAI_Result__AddOrder(1,0,*(undefined4 *)(*(int *)(param_1 + 8) + 0x134c));
      CON_Cache<T>__Unlock(*(undefined4 *)(param_1 + 0x6a0));
      *(undefined4 *)(param_1 + 0x6a0) = 0;
      CON_Cache<T>__Unlock(*(undefined4 *)(param_1 + 0x6bc));
      *(undefined4 *)(param_1 + 0x6bc) = 0;
      CON_Cache<T>__Unlock_27();
      *(int *)(param_1 + 0xdc48) = param_1 + 0xee4;
      puVar4 = (undefined4 *)(param_1 + 0x6c4);
      puVar5 = (undefined4 *)(param_1 + 0x790);
      for (iVar3 = 0x32; iVar3 != 0; iVar3 = iVar3 + -1) {
        *puVar5 = *puVar4;
        puVar4 = puVar4 + 1;
        puVar5 = puVar5 + 1;
      }
      *(undefined4 *)(param_1 + 0x6c0) = 1;
      *(undefined4 *)(param_1 + 0x78c) = 1;
      FUN_00574210(param_2,0x3f19999a);
      FUN_00573ac0(param_2);
      MAI_Result__Init(0);
      *(undefined4 *)(param_1 + 0x6c0) = 0xf;
    }
    else {
      FUN_005899c0(param_2,1);
      *(undefined4 *)(param_1 + 0x6c0) = 0x10;
    }
    goto switchD_00588b3d_caseD_0;
  case 8:
    uVar1 = FUN_00573c80(&uStack_4);
    MAI_Result__AddOrder(1,uVar1,uStack_4);
    FUN_00563f80(uVar1);
    STY_Command__GetCommand(uVar1);
    CON_Cache<T>__Unlock(*(undefined4 *)(param_1 + 0x6a0));
    *(undefined4 *)(param_1 + 0x6a0) = 0;
    CON_Cache<T>__Unlock(*(undefined4 *)(param_1 + 0x6bc));
    *(undefined4 *)(param_1 + 0x6bc) = 0;
    CON_Cache<T>__Unlock_27();
    *(undefined4 *)(param_1 + 0x6c0) = 1;
    *(int *)(param_1 + 0xdc48) = param_1 + 0xee4;
    FUN_0058ac10(param_2,unaff_retaddr);
    goto switchD_00588b3d_caseD_0;
  default:
    TERMINATION(s_MAI_Handler__Handle_Station___0065c618,s_illegal_return_state_in_MAI_Hand_0065c5f4
               );
    goto switchD_00588b3d_caseD_0;
  }
  FUN_00574210(param_2,(float)fVar6);
  *(undefined4 *)(param_1 + 0x6c0) = 0x10;
switchD_00588b3d_caseD_0:
  MAI_Result__AddOrder(0,0,*(undefined4 *)(*(int *)(param_1 + 8) + 0x134c));
  return;
}



// --------------------------------------------
// MAI_Handler__Handle_Options   ab 0x00589ae0   1152 Byte
// gerufen von: MAI_Handler__Handle
// Texte: MAI_Handler::Handle_Options(), illegal return state in MAI_Handler
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall MAI_Handler__Handle_Options(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  uint uVar2;
  int iVar3;
  float10 fVar4;
  
  uVar1 = (**(code **)(*(int *)(param_1 + 0x262c) + 8))(param_2,param_3);
  switch(uVar1) {
  case 0:
    break;
  case 1:
    iVar3 = FUN_005893f0(0);
    if (iVar3 == 0) {
      (**(code **)(*(int *)(param_1 + 0x3f34) + 4))(param_2,1);
      *(undefined4 *)(param_1 + 0x6c0) = 5;
      break;
    }
    FUN_00574270(param_2,0x3f000000);
    FUN_00573960(param_2);
    FUN_005678d0(param_2,0x3e800000,0xf8,0x10b);
    FUN_0056d630(param_2,*(undefined4 *)(param_1 + 0xdb20));
    FUN_0056d570(&DAT_00661574);
    FUN_0056d5b0(&DAT_00661574);
    FUN_0056d5f0(&DAT_00661574);
    FUN_0056d300(param_2);
    FUN_0056d3d0(param_2);
    FUN_0056d4a0(param_2);
    iVar3 = FUN_005610d0(0x5a);
    FUN_0056d7a0(*(undefined4 *)(iVar3 + 4),param_1 + 0xdb28);
    FUN_0056d740(param_1 + 0xdc28,*(undefined4 *)(param_1 + 0xdb24));
    CON_Cache<T>__Unlock_3(DAT_00692f98,2);
    uVar2 = FUN_0051f6c0();
    fVar4 = (float10)uVar2 * (float10)_DAT_005fa800 + (float10)_DAT_005f43c4;
    goto LAB_00589e58;
  case 2:
    iVar3 = FUN_005893f0(0);
    if (iVar3 == 0) {
      FUN_005a3500();
      (**(code **)(*(int *)(param_1 + 0xa0ec) + 4))(param_2,1);
      *(undefined4 *)(param_1 + 0x6c0) = 0xc;
      break;
    }
    FUN_00574270(param_2,0x3f000000);
    FUN_00573960(param_2);
    FUN_005678d0(param_2,0x3e800000,0xf8,0x10b);
    FUN_0056d630(param_2,*(undefined4 *)(param_1 + 0xdb20));
    FUN_0056d570(&DAT_00661574);
    FUN_0056d5b0(&DAT_00661574);
    FUN_0056d5f0(&DAT_00661574);
    FUN_0056d300(param_2);
    FUN_0056d3d0(param_2);
    FUN_0056d4a0(param_2);
    iVar3 = FUN_005610d0(0x5a);
    FUN_0056d7a0(*(undefined4 *)(iVar3 + 4),param_1 + 0xdb28);
    FUN_0056d740(param_1 + 0xdc28,*(undefined4 *)(param_1 + 0xdb24));
    CON_Cache<T>__Unlock_3(DAT_00692f98,2);
    uVar2 = FUN_0051f6c0();
    fVar4 = (float10)uVar2 * (float10)_DAT_005fa800 + (float10)_DAT_005f43c4;
    goto LAB_00589e58;
  case 3:
    iVar3 = FUN_005893f0(0);
    if (iVar3 == 0) {
      FUN_005a2ed0();
      (**(code **)(*(int *)(param_1 + 0xb054) + 4))(param_2,1);
      *(undefined4 *)(param_1 + 0x6c0) = 0xd;
      break;
    }
    FUN_00574270(param_2,0x3f000000);
    FUN_00573960(param_2);
    FUN_005678d0(param_2,0x3e800000,0xf8,0x10b);
    FUN_0056d630(param_2,*(undefined4 *)(param_1 + 0xdb20));
    FUN_0056d570(&DAT_00661574);
    FUN_0056d5b0(&DAT_00661574);
    FUN_0056d5f0(&DAT_00661574);
    FUN_0056d300(param_2);
    FUN_0056d3d0(param_2);
    FUN_0056d4a0(param_2);
    iVar3 = FUN_005610d0(0x5a);
    FUN_0056d7a0(*(undefined4 *)(iVar3 + 4),param_1 + 0xdb28);
    FUN_0056d740(param_1 + 0xdc28,*(undefined4 *)(param_1 + 0xdb24));
    CON_Cache<T>__Unlock_3(DAT_00692f98,2);
    fVar4 = (float10)FUN_00415f60(0x41700000,0x41a00000);
LAB_00589e58:
    FUN_00574210(param_2,(float)fVar4);
    *(undefined4 *)(param_1 + 0x6c0) = 0x10;
    break;
  case 4:
    iVar3 = FUN_005893f0(0);
    if (iVar3 == 0) {
      FUN_005a24b0();
      (**(code **)(*(int *)(param_1 + 0xc278) + 4))(param_2,1);
      *(undefined4 *)(param_1 + 0x6c0) = 0xe;
    }
    else {
      FUN_005899c0(param_2,1);
      *(undefined4 *)(param_1 + 0x6c0) = 0x10;
    }
    break;
  case 5:
    iVar3 = FUN_005893f0(0);
    if (iVar3 == 0) {
      (**(code **)(*(int *)(param_1 + 0xee4) + 4))(param_2,1);
      *(undefined4 *)(param_1 + 0x6c0) = 1;
    }
    else {
      FUN_005899c0(param_2,1);
      *(undefined4 *)(param_1 + 0x6c0) = 0x10;
    }
    break;
  default:
    TERMINATION(s_MAI_Handler__Handle_Options___0065c5b4,s_illegal_return_state_in_MAI_Hand_0065c5f4
               );
  }
  MAI_Result__AddOrder(0,0,*(undefined4 *)(*(int *)(param_1 + 8) + 0x134c));
  return;
}



// --------------------------------------------
// MAI_Handler__Handle_Select_Dialog_3   ab 0x00589f80   270 Byte
// gerufen von: MAI_Handler__Handle
// Texte: MAI_Handler::Handle_Select_Dialog(), illegal return state in MAI_Handler
// --------------------------------------------

void __thiscall
MAI_Handler__Handle_Select_Dialog_3(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int *piVar2;
  
  uVar1 = (**(code **)(*(int *)(param_1 + 0x3640) + 8))(param_2,param_3);
  switch(uVar1) {
  case 0:
    break;
  case 1:
    *(int **)(param_1 + 0x3f30) = *(int **)(param_1 + 0x3ec8);
    (**(code **)(**(int **)(param_1 + 0x3ec8) + 4))(param_2,1);
    *(undefined4 *)(param_1 + 0x6c0) = 4;
    break;
  case 2:
    piVar2 = *(int **)(param_1 + 0x3ed8);
    goto LAB_0058a026;
  case 3:
    *(int **)(param_1 + 0x3f30) = *(int **)(param_1 + 0x3ee8);
    (**(code **)(**(int **)(param_1 + 0x3ee8) + 4))(param_2,1);
    *(undefined4 *)(param_1 + 0x6c0) = 4;
    break;
  case 4:
    piVar2 = *(int **)(param_1 + 0x3ef8);
    goto LAB_0058a026;
  case 5:
    *(int **)(param_1 + 0x3f30) = *(int **)(param_1 + 0x3f08);
    (**(code **)(**(int **)(param_1 + 0x3f08) + 4))(param_2,1);
    *(undefined4 *)(param_1 + 0x6c0) = 4;
    break;
  case 6:
    piVar2 = *(int **)(param_1 + 0x3f18);
LAB_0058a026:
    *(int **)(param_1 + 0x3f30) = piVar2;
    (**(code **)(*piVar2 + 4))(param_2,1);
    *(undefined4 *)(param_1 + 0x6c0) = 4;
    break;
  case 7:
    (**(code **)(*(int *)(param_1 + 0xee4) + 4))(param_2,1);
    *(undefined4 *)(param_1 + 0x6c0) = 1;
    break;
  default:
    TERMINATION(s_MAI_Handler__Handle_Select_Dialo_0065c56c,
                s_illegal_return_state_in_MAI_Hand_0065c5f4);
  }
  MAI_Result__AddOrder(0,0,*(undefined4 *)(*(int *)(param_1 + 8) + 0x134c));
  return;
}



// --------------------------------------------
// MAI_Handler__Handle_Dialog   ab 0x0058a120   687 Byte
// gerufen von: MAI_Handler__Handle
// Texte: MAI_Handler::Handle_Dialog(), illegal return state in MAI_Handler
// --------------------------------------------

void __thiscall MAI_Handler__Handle_Dialog(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 unaff_retaddr;
  
  iVar1 = (**(code **)(**(int **)(param_1 + 0x3f30) + 8))(param_2,param_3);
  if (iVar1 != 0) {
    if (iVar1 == 1) {
      uVar2 = FUN_00573f40(**(undefined2 **)(*(int *)(param_1 + 0x3f30) + 0x684));
      FUN_00563f80(uVar2);
      STY_Command__GetCommand(uVar2);
      iVar1 = FUN_00573ce0(&stack0x00000000);
      if (iVar1 == 0) {
        iVar1 = (**(code **)(*(int *)(param_1 + 0x3640) + 4))(param_2,1);
        if (iVar1 == 0) {
          *(undefined4 *)(param_1 + 0x6c0) = 3;
        }
        else {
          (**(code **)(*(int *)(param_1 + 0xee4) + 4))(param_2,1);
          *(undefined4 *)(param_1 + 0x6c0) = 1;
        }
      }
      else {
        iVar3 = FUN_00561260(iVar1);
        MAI_Result__AddOrder(2,*(undefined2 *)(iVar3 + 4),unaff_retaddr);
        iVar3 = FUN_00561260(iVar1);
        STY_Player__AddMovie(*(undefined2 *)(iVar3 + 4));
        FUN_00563f80(iVar1);
        STY_Command__GetCommand(iVar1);
        iVar1 = FUN_00561260(iVar1);
        STY_Player__AddMovie(*(undefined2 *)(iVar1 + 4));
        if (DAT_0065c3dc == 0) {
          (*(code *)PTR_FUN_0065c3e4)();
        }
        iVar1 = (**(code **)(*(int *)(param_1 + 0x3640) + 4))(param_1,1);
        if (iVar1 == 0) {
          CON_Cache<T>__Unlock(*(undefined4 *)(param_1 + 0x6a0));
          *(undefined4 *)(param_1 + 0x6a0) = 0;
          CON_Cache<T>__Unlock(*(undefined4 *)(param_1 + 0x6bc));
          *(undefined4 *)(param_1 + 0x6bc) = 0;
          CON_Cache<T>__Unlock_27();
          *(int *)(param_1 + 0xdc48) = param_1 + 0x3640;
          puVar4 = (undefined4 *)(param_1 + 0x6c4);
          puVar5 = (undefined4 *)(param_1 + 0x790);
          for (iVar1 = 0x32; iVar1 != 0; iVar1 = iVar1 + -1) {
            *puVar5 = *puVar4;
            puVar4 = puVar4 + 1;
            puVar5 = puVar5 + 1;
          }
          *(undefined4 *)(param_1 + 0x6c0) = 3;
          *(undefined4 *)(param_1 + 0x78c) = 3;
          FUN_00574210(param_1,0x3f19999a);
          FUN_00573ac0(param_1);
          MAI_Result__Init(0);
          *(undefined4 *)(param_1 + 0x6c0) = 0xf;
        }
        else {
          CON_Cache<T>__Unlock(*(undefined4 *)(param_1 + 0x6a0));
          *(undefined4 *)(param_1 + 0x6a0) = 0;
          CON_Cache<T>__Unlock(*(undefined4 *)(param_1 + 0x6bc));
          *(undefined4 *)(param_1 + 0x6bc) = 0;
          CON_Cache<T>__Unlock_27();
          puVar4 = (undefined4 *)(param_1 + 0x6c4);
          puVar5 = (undefined4 *)(param_1 + 0x790);
          for (iVar1 = 0x32; iVar1 != 0; iVar1 = iVar1 + -1) {
            *puVar5 = *puVar4;
            puVar4 = puVar4 + 1;
            puVar5 = puVar5 + 1;
          }
          *(undefined4 *)(param_1 + 0x6c0) = 1;
          *(int *)(param_1 + 0xdc48) = param_1 + 0xee4;
          *(undefined4 *)(param_1 + 0x78c) = 1;
          FUN_00574210(param_1,0x3f19999a);
          FUN_00573ac0(param_1);
          MAI_Result__Init(0);
          *(undefined4 *)(param_1 + 0x6c0) = 0xf;
        }
      }
    }
    else {
      TERMINATION(s_MAI_Handler__Handle_Dialog___0065c54c,
                  s_illegal_return_state_in_MAI_Hand_0065c5f4);
    }
  }
  MAI_Result__AddOrder(0,0,*(undefined4 *)(*(int *)(param_1 + 8) + 0x134c));
  return;
}



// --------------------------------------------
// MAI_Handler__Handle_Select_Dialog_4   ab 0x0058a3d0   415 Byte
// gerufen von: MAI_Handler__Handle
// Texte: MAI_Handler::Handle_Select_Dialog(), MAI_Select_Movie_Handle::GetSelectedDialog(), illegal return state in MAI_Handler, no dialog selected
// --------------------------------------------

void __thiscall
MAI_Handler__Handle_Select_Dialog_4(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 unaff_EBX;
  undefined4 *puVar3;
  uint uVar4;
  undefined4 *puVar5;
  
  uVar1 = (**(code **)(*(int *)(param_1 + 0x3f34) + 8))(param_2,param_3);
  switch(uVar1) {
  case 0:
    goto switchD_0058a3f9_caseD_0;
  case 1:
    uVar4 = 0;
    break;
  case 2:
    uVar4 = 1;
    break;
  case 3:
    uVar4 = 2;
    break;
  case 4:
    uVar4 = 3;
    break;
  case 5:
    uVar4 = 4;
    break;
  case 6:
    uVar4 = 5;
    break;
  case 7:
    uVar4 = 6;
    break;
  case 8:
    uVar4 = 7;
    break;
  case 9:
    (**(code **)(*(int *)(param_1 + 0x262c) + 4))(param_2,1);
    *(undefined4 *)(param_1 + 0x6c0) = 2;
    goto switchD_0058a3f9_caseD_0;
  default:
    TERMINATION(s_MAI_Handler__Handle_Select_Dialo_0065c56c,
                s_illegal_return_state_in_MAI_Hand_0065c5f4);
    goto switchD_0058a3f9_caseD_0;
  }
  uVar1 = *(undefined4 *)(*(int *)(param_1 + 8) + 0x134c);
  if (7 < uVar4) {
    TERMINATION(s_MAI_Select_Movie_Handle__GetSele_0065c694,s_no_dialog_selected_0065c6c4);
  }
  MAI_Result__AddOrder(2,*(undefined4 *)(param_1 + 0x45b8 + uVar4 * 8),uVar1);
  CON_Cache<T>__Unlock(*(undefined4 *)(param_1 + 0x6a0));
  *(undefined4 *)(param_1 + 0x6a0) = 0;
  CON_Cache<T>__Unlock(*(undefined4 *)(param_1 + 0x6bc));
  *(undefined4 *)(param_1 + 0x6bc) = 0;
  CON_Cache<T>__Unlock_27();
  uVar1 = *(undefined4 *)(param_1 + 0x6c0);
  *(int *)(param_1 + 0xdc48) = param_1 + 0x3f34;
  puVar3 = (undefined4 *)(param_1 + 0x6c4);
  puVar5 = (undefined4 *)(param_1 + 0x790);
  for (iVar2 = 0x32; iVar2 != 0; iVar2 = iVar2 + -1) {
    *puVar5 = *puVar3;
    puVar3 = puVar3 + 1;
    puVar5 = puVar5 + 1;
  }
  *(undefined4 *)(param_1 + 0x78c) = uVar1;
  FUN_00574210(unaff_EBX,0x3f19999a);
  FUN_00573ac0(unaff_EBX);
  MAI_Result__Init(0);
  *(undefined4 *)(param_1 + 0x6c0) = 0xf;
switchD_0058a3f9_caseD_0:
  MAI_Result__AddOrder(0,0,*(undefined4 *)(*(int *)(param_1 + 8) + 0x134c));
  return;
}



// --------------------------------------------
// MAI_Handler__Handle_Dock   ab 0x0058a5a0   807 Byte
// gerufen von: MAI_Handler__Handle
// Texte: MAI_Handler::Handle_Dock(), illegal return state in MAI_Handler
// --------------------------------------------

/* WARNING: Type propagation algorithm not settling */

void __thiscall MAI_Handler__Handle_Dock(int param_1,undefined4 param_2,undefined4 param_3)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  undefined2 *puVar4;
  int *piVar5;
  uint uVar6;
  uint uVar7;
  undefined4 *puVar8;
  undefined4 *puVar9;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined1 auStack_44 [4];
  int iStack_40;
  uint auStack_3c [9];
  int iStack_18;
  int iStack_14;
  
  iVar2 = (**(code **)(*(int *)(param_1 + 0x4600) + 8))(param_2,param_3);
  if (iVar2 != 0) {
    if (iVar2 == 1) {
      (**(code **)(*(int *)(param_1 + 0xee4) + 4))(param_2,1);
      *(undefined4 *)(param_1 + 0x6c0) = 1;
    }
    else if (iVar2 == 3) {
      uVar3 = FUN_00573e20(&uStack_54);
      iVar2 = FUN_00561260(uVar3);
      if (iVar2 != 0) {
        MAI_Result__AddOrder(2,*(undefined2 *)(iVar2 + 4),uStack_54);
      }
      uVar3 = FUN_00573dc0(&uStack_50);
      iVar2 = FUN_00561260(uVar3);
      if (iVar2 != 0) {
        MAI_Result__AddOrder(3,*(undefined2 *)(iVar2 + 4),uStack_50);
      }
      uVar3 = FUN_00573e80(&uStack_4c);
      iVar2 = FUN_00561260(uVar3);
      if (iVar2 != 0) {
        MAI_Result__AddOrder(4,*(undefined2 *)(iVar2 + 4),uStack_4c);
      }
      uVar3 = FUN_00573c80(&uStack_48);
      puVar4 = (undefined2 *)FUN_00561260(uVar3);
      if (puVar4 != (undefined2 *)0x0) {
        MAI_Result__AddOrder(6,*puVar4,uStack_48);
      }
      iStack_40 = FUN_00573dc0(auStack_3c);
      uVar7 = (uint)(iStack_40 != 0);
      iVar2 = FUN_00573e20((int)auStack_3c + uVar7 * 8);
      (&iStack_40)[uVar7 * 2] = iVar2;
      if (iVar2 != 0) {
        uVar7 = uVar7 + 1;
      }
      iVar2 = FUN_00573e80((int)auStack_3c + uVar7 * 8);
      (&iStack_40)[uVar7 * 2] = iVar2;
      if (iVar2 != 0) {
        uVar7 = uVar7 + 1;
      }
      iVar2 = FUN_00573ee0((int)auStack_3c + uVar7 * 8);
      (&iStack_40)[uVar7 * 2] = iVar2;
      if (iVar2 != 0) {
        uVar7 = uVar7 + 1;
      }
      iVar2 = FUN_00573c80((int)auStack_3c + uVar7 * 8);
      (&iStack_40)[uVar7 * 2] = iVar2;
      if (iVar2 != 0) {
        uVar7 = uVar7 + 1;
      }
      iVar2 = FUN_00573e20(auStack_44);
      if (iVar2 != 0) {
        iVar2 = FUN_00561260(iVar2);
        STY_Player__AddMovie(*(undefined2 *)(iVar2 + 4));
      }
      iVar2 = FUN_00573e80(auStack_44);
      if (iVar2 != 0) {
        iVar2 = FUN_00561260(iVar2);
        *(uint *)(*(int *)(param_1 + 8) + 0x28) = (uint)*(ushort *)(iVar2 + 4);
      }
      do {
        iVar2 = uVar7 - 1;
        bVar1 = false;
        if (iVar2 < 1) break;
        piVar5 = &iStack_40;
        do {
          if ((uint)piVar5[3] <= (uint)piVar5[1]) {
            iStack_18 = *piVar5;
            iStack_14 = piVar5[1];
            *piVar5 = piVar5[2];
            piVar5[1] = piVar5[3];
            piVar5[2] = iStack_18;
            piVar5[3] = iStack_14;
            bVar1 = true;
          }
          piVar5 = piVar5 + 2;
          iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
      } while (bVar1);
      if (uVar7 != 0) {
        piVar5 = &iStack_40;
        uVar6 = uVar7;
        do {
          FUN_00563f80(*piVar5);
          piVar5 = piVar5 + 2;
          uVar6 = uVar6 - 1;
        } while (uVar6 != 0);
        if (uVar7 != 0) {
          piVar5 = &iStack_40;
          do {
            STY_Command__GetCommand(*piVar5);
            piVar5 = piVar5 + 2;
            uVar7 = uVar7 - 1;
          } while (uVar7 != 0);
        }
      }
      CON_Cache<T>__Unlock(*(undefined4 *)(param_1 + 0x6a0));
      *(undefined4 *)(param_1 + 0x6a0) = 0;
      CON_Cache<T>__Unlock(*(undefined4 *)(param_1 + 0x6bc));
      uVar3 = *(undefined4 *)(param_1 + 0x6c0);
      *(undefined4 *)(param_1 + 0x6bc) = 0;
      puVar8 = (undefined4 *)(param_1 + 0x6c4);
      puVar9 = (undefined4 *)(param_1 + 0x790);
      for (iVar2 = 0x32; iVar2 != 0; iVar2 = iVar2 + -1) {
        *puVar9 = *puVar8;
        puVar8 = puVar8 + 1;
        puVar9 = puVar9 + 1;
      }
      *(undefined4 *)(param_1 + 0x78c) = uVar3;
      FUN_00574210(param_2,0x3f19999a);
      FUN_00573ac0(param_2);
      MAI_Result__Init(0);
      *(undefined4 *)(param_1 + 0x6c0) = 0xf;
      *(int *)(param_1 + 0xdc48) = param_1 + 0xee4;
    }
    else {
      TERMINATION(s_MAI_Handler__Handle_Dock___0065c6d8,s_illegal_return_state_in_MAI_Hand_0065c5f4)
      ;
    }
  }
  MAI_Result__AddOrder(0,0,*(undefined4 *)(*(int *)(param_1 + 8) + 0x134c));
  return;
}



// --------------------------------------------
// MAI_Handler__Handle_Equip   ab 0x0058a8d0   198 Byte
// gerufen von: MAI_Handler__Handle
// Texte: MAI_Handler::Handle_Equip(), illegal return state in MAI_Handler
// --------------------------------------------

void __thiscall MAI_Handler__Handle_Equip(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)(param_1 + 0x7b28) + 8))(param_2,param_3);
  switch(uVar1) {
  case 0:
    goto switchD_0058a8f6_caseD_0;
  case 1:
    uVar1 = 0;
    break;
  case 2:
    uVar1 = 1;
    break;
  case 3:
    uVar1 = 2;
    break;
  case 4:
    uVar1 = 3;
    break;
  case 5:
    uVar1 = 4;
    break;
  case 6:
    uVar1 = 5;
    break;
  case 7:
    (**(code **)(*(int *)(param_1 + 0xee4) + 4))(param_2,1);
    *(undefined4 *)(param_1 + 0x6c0) = 1;
    goto switchD_0058a8f6_caseD_0;
  default:
    TERMINATION(s_MAI_Handler__Handle_Equip___0065c6f4,s_illegal_return_state_in_MAI_Hand_0065c5f4);
    goto switchD_0058a8f6_caseD_0;
  }
  FUN_00570ae0(uVar1);
  (**(code **)(*(int *)(param_1 + 0x8af8) + 4))(param_2,1);
  *(undefined4 *)(param_1 + 0x6c0) = 0xb;
switchD_0058a8f6_caseD_0:
  MAI_Result__AddOrder(0,0,*(undefined4 *)(*(int *)(param_1 + 8) + 0x134c));
  return;
}



// --------------------------------------------
// MAI_Handler__Handle_Select_Dialog   ab 0x0058a9c0   191 Byte
// gerufen von: MAI_Handler__Handle
// Texte: MAI_Handler::Handle_Select_Dialog(), illegal return state in MAI_Handler
// --------------------------------------------

void __thiscall MAI_Handler__Handle_Select_Dialog(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)(param_1 + 0xa0ec) + 8))(param_2,param_3);
  switch(uVar1) {
  case 0:
    break;
  case 1:
    *(undefined4 *)(*(int *)(param_1 + 8) + 0x24) = 0;
    break;
  case 2:
    *(undefined4 *)(*(int *)(param_1 + 8) + 0x24) = 1;
    break;
  case 3:
    *(undefined4 *)(*(int *)(param_1 + 8) + 0x24) = 2;
    break;
  case 4:
    *(undefined4 *)(*(int *)(param_1 + 8) + 0x24) = 3;
    break;
  case 5:
    *(undefined4 *)(*(int *)(param_1 + 8) + 0x24) = 4;
    break;
  case 6:
    *(undefined4 *)(*(int *)(param_1 + 8) + 0x24) = 5;
    break;
  case 7:
    (**(code **)(*(int *)(param_1 + 0x262c) + 4))(param_2,1);
    *(undefined4 *)(param_1 + 0x6c0) = 2;
    break;
  default:
    TERMINATION(s_MAI_Handler__Handle_Select_Dialo_0065c56c,
                s_illegal_return_state_in_MAI_Hand_0065c5f4);
  }
  MAI_Result__AddOrder(0,0,*(undefined4 *)(*(int *)(param_1 + 8) + 0x134c));
  return;
}



// --------------------------------------------
// MAI_Handler__Handle_Select_Dialog_2   ab 0x0058aaa0   335 Byte
// gerufen von: MAI_Handler__Handle
// Texte: MAI_Handler::Handle_Select_Dialog(), illegal return state in MAI_Handler
// --------------------------------------------

void __thiscall
MAI_Handler__Handle_Select_Dialog_2(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  
  uVar1 = (**(code **)(*(int *)(param_1 + 0xb054) + 8))(param_2,param_3);
  switch(uVar1) {
  case 0:
    goto switchD_0058aac8_caseD_0;
  case 1:
    uVar1 = *(undefined4 *)(*(int *)(param_1 + 8) + 0x134c);
    uVar5 = 0;
    break;
  case 2:
    uVar1 = *(undefined4 *)(*(int *)(param_1 + 8) + 0x134c);
    uVar5 = 1;
    break;
  case 3:
    uVar1 = *(undefined4 *)(*(int *)(param_1 + 8) + 0x134c);
    uVar5 = 2;
    break;
  case 4:
    uVar1 = *(undefined4 *)(*(int *)(param_1 + 8) + 0x134c);
    uVar5 = 3;
    break;
  case 5:
    uVar1 = *(undefined4 *)(*(int *)(param_1 + 8) + 0x134c);
    uVar5 = 4;
    break;
  case 6:
    uVar1 = *(undefined4 *)(*(int *)(param_1 + 8) + 0x134c);
    uVar5 = 5;
    break;
  case 7:
    (**(code **)(*(int *)(param_1 + 0x262c) + 4))(param_2,1);
    *(undefined4 *)(param_1 + 0x6c0) = 2;
    goto switchD_0058aac8_caseD_0;
  default:
    TERMINATION(s_MAI_Handler__Handle_Select_Dialo_0065c56c,
                s_illegal_return_state_in_MAI_Hand_0065c5f4);
    goto switchD_0058aac8_caseD_0;
  }
  MAI_Result__AddOrder(5,uVar5,uVar1);
  uVar1 = *(undefined4 *)(param_1 + 0x6c0);
  puVar3 = (undefined4 *)(param_1 + 0x6c4);
  puVar4 = (undefined4 *)(param_1 + 0x790);
  for (iVar2 = 0x32; iVar2 != 0; iVar2 = iVar2 + -1) {
    *puVar4 = *puVar3;
    puVar3 = puVar3 + 1;
    puVar4 = puVar4 + 1;
  }
  *(undefined4 *)(param_1 + 0xdc48) = 0;
  *(undefined4 *)(param_1 + 0x78c) = uVar1;
  FUN_00574210(param_2,0x3f19999a);
  FUN_00573ac0(param_2);
  MAI_Result__Init(0);
  *(undefined4 *)(param_1 + 0x6c0) = 0xf;
switchD_0058aac8_caseD_0:
  MAI_Result__AddOrder(0,0,*(undefined4 *)(*(int *)(param_1 + 8) + 0x134c));
  return;
}



