// Muster: STY_Inventory   19 Funktionen, 13479 Byte

// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_17   ab 0x00564200   179 Byte
// Texte: STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

void __thiscall STY_Inventory__GetItemInfoByIndex_17(int *param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  int *piVar5;
  int local_4;
  
  param_1[0x80] = 0;
  iVar3 = param_2[0x80];
  local_4 = 0;
  piVar5 = param_2;
  if (0 < iVar3) {
    do {
      if (iVar3 <= local_4) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      iVar3 = param_1[0x80];
      iVar1 = piVar5[1];
      iVar2 = 0;
      piVar4 = param_1;
      if (0 < iVar3) {
        do {
          if (*piVar4 == *piVar5) {
            if (iVar1 == 0) {
              iVar3 = iVar3 + -1;
              param_1[0x80] = iVar3;
              param_1[iVar2 * 2] = param_1[iVar3 * 2];
              param_1[iVar2 * 2 + 1] = param_1[iVar3 * 2 + 1];
            }
            else {
              param_1[iVar2 * 2 + 1] = iVar1;
            }
            goto LAB_00564270;
          }
          iVar2 = iVar2 + 1;
          piVar4 = piVar4 + 2;
        } while (iVar2 < iVar3);
      }
      if (iVar1 != 0) {
        param_1[iVar3 * 2] = *piVar5;
        param_1[param_1[0x80] * 2 + 1] = iVar1;
        param_1[0x80] = param_1[0x80] + 1;
      }
LAB_00564270:
      iVar3 = param_2[0x80];
      local_4 = local_4 + 1;
      piVar5 = piVar5 + 2;
    } while (local_4 < iVar3);
  }
  return;
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_10   ab 0x005642c0   187 Byte
// Texte: STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

void __thiscall STY_Inventory__GetItemInfoByIndex_10(int *param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  int *piVar5;
  int local_4;
  
  iVar3 = param_2[0x80];
  local_4 = 0;
  piVar5 = param_2;
  if (0 < iVar3) {
    do {
      if (iVar3 <= local_4) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      iVar3 = param_1[0x80];
      iVar1 = piVar5[1];
      iVar2 = 0;
      piVar4 = param_1;
      if (0 < iVar3) {
        do {
          if (*piVar4 == *piVar5) {
            iVar3 = param_1[iVar2 * 2 + 1];
            param_1[iVar2 * 2 + 1] = iVar3 + iVar1;
            if (iVar3 + iVar1 < 1) {
              iVar3 = param_1[0x80] + -1;
              param_1[0x80] = iVar3;
              param_1[iVar2 * 2] = param_1[iVar3 * 2];
              param_1[iVar2 * 2 + 1] = param_1[iVar3 * 2 + 1];
            }
            goto LAB_0056432c;
          }
          iVar2 = iVar2 + 1;
          piVar4 = piVar4 + 2;
        } while (iVar2 < iVar3);
      }
      if (0 < iVar1) {
        param_1[iVar3 * 2] = *piVar5;
        param_1[param_1[0x80] * 2 + 1] = iVar1;
        param_1[0x80] = param_1[0x80] + 1;
      }
LAB_0056432c:
      iVar3 = param_2[0x80];
      local_4 = local_4 + 1;
      piVar5 = piVar5 + 2;
    } while (local_4 < iVar3);
  }
  return;
}



// --------------------------------------------
// STY_Inventory__Load   ab 0x00564380   320 Byte
// Texte: (%s): Get "%s%d" in file "%s" failed, Count, DES FILE ERROR, STY_Inventory::Load()
// --------------------------------------------

void __fastcall STY_Inventory__Load(int *param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int *piVar4;
  int iVar5;
  int local_c;
  int local_8 [2];
  
  iVar5 = 0;
  param_1[0x80] = 0;
  do {
    iVar1 = FUN_00507060(&DAT_00609390,iVar5);
    if (iVar1 == 0) {
      return;
    }
    iVar1 = FUN_00506b40(&DAT_00609390,iVar5,&local_c);
    if (iVar1 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get___s_d__in_file___s__fa_0061098c,
                           s_STY_Inventory__Load___0065ac34,&DAT_00609390,iVar5,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    iVar1 = FUN_00506b40(s_Count_00610c5c,iVar5,local_8);
    if (iVar1 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get___s_d__in_file___s__fa_0061098c,
                           s_STY_Inventory__Load___0065ac34,s_Count_00610c5c,iVar5,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    iVar1 = param_1[0x80];
    iVar3 = 0;
    piVar4 = param_1;
    if (0 < iVar1) {
      do {
        if (*piVar4 == local_c) {
          if (local_8[0] == 0) {
            iVar1 = iVar1 + -1;
            param_1[0x80] = iVar1;
            param_1[iVar3 * 2] = param_1[iVar1 * 2];
            param_1[iVar3 * 2 + 1] = param_1[iVar1 * 2 + 1];
          }
          else {
            param_1[iVar3 * 2 + 1] = local_8[0];
          }
          goto LAB_00564483;
        }
        iVar3 = iVar3 + 1;
        piVar4 = piVar4 + 2;
      } while (iVar3 < iVar1);
    }
    if (local_8[0] != 0) {
      param_1[iVar1 * 2] = local_c;
      param_1[param_1[0x80] * 2 + 1] = local_8[0];
      param_1[0x80] = param_1[0x80] + 1;
    }
LAB_00564483:
    iVar5 = iVar5 + 1;
    if (0x3f < iVar5) {
      return;
    }
  } while( true );
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_8   ab 0x00570050   323 Byte
// Texte: STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

void __fastcall STY_Inventory__GetItemInfoByIndex_8(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  
  FUN_00573940(*(undefined4 *)(param_1 + 4),*(undefined4 *)(param_1 + 8),
               *(undefined4 *)(param_1 + 0xc),*(undefined4 *)(param_1 + 0x10));
  puVar3 = (undefined4 *)(param_1 + 0x688);
  for (iVar1 = 6; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar3 = 0;
    puVar3 = puVar3 + 1;
  }
  *(undefined4 *)(param_1 + 0x6a0) = 1;
  iVar1 = *(int *)(param_1 + 8);
  iVar2 = 0;
  if (0 < *(int *)(iVar1 + 0x234)) {
    if (*(int *)(iVar1 + 0x234) < 1) {
      TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
    }
    do {
      iVar1 = FUN_00561370(*(undefined4 *)(iVar1 + 0x34 + iVar2 * 8));
      switch(*(undefined2 *)(iVar1 + 2)) {
      case 0:
        *(undefined4 *)(param_1 + 0x688) = 1;
        break;
      case 1:
        *(undefined4 *)(param_1 + 0x68c) = 1;
        break;
      case 2:
        *(undefined4 *)(param_1 + 0x690) = 1;
        break;
      case 3:
        *(undefined4 *)(param_1 + 0x694) = 1;
        break;
      case 4:
        *(undefined4 *)(param_1 + 0x698) = 1;
        break;
      case 5:
        *(undefined4 *)(param_1 + 0x69c) = 1;
      }
      iVar1 = *(int *)(param_1 + 8);
      iVar2 = iVar2 + 1;
    } while (iVar2 < *(int *)(iVar1 + 0x234));
  }
  iVar1 = *(int *)(param_1 + 8);
  iVar2 = 0;
  if (0 < *(int *)(iVar1 + 0x438)) {
    if (*(int *)(iVar1 + 0x438) < 1) {
      TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
    }
    do {
      iVar1 = FUN_00561370(*(undefined4 *)(iVar1 + 0x238 + iVar2 * 8));
      switch(*(undefined2 *)(iVar1 + 2)) {
      case 0:
        *(undefined4 *)(param_1 + 0x688) = 1;
        break;
      case 1:
        *(undefined4 *)(param_1 + 0x68c) = 1;
        break;
      case 2:
        *(undefined4 *)(param_1 + 0x690) = 1;
        break;
      case 3:
        *(undefined4 *)(param_1 + 0x694) = 1;
        break;
      case 4:
        *(undefined4 *)(param_1 + 0x698) = 1;
        break;
      case 5:
        *(undefined4 *)(param_1 + 0x69c) = 1;
      }
      iVar1 = *(int *)(param_1 + 8);
      iVar2 = iVar2 + 1;
    } while (iVar2 < *(int *)(iVar1 + 0x438));
  }
  return;
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_16   ab 0x005701d0   641 Byte
// Texte: STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

undefined4 __thiscall
STY_Inventory__GetItemInfoByIndex_16(int param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int aiStack_30 [6];
  int aiStack_18 [6];
  
  if (param_3 == 0) {
    FUN_00574270(param_2,0xbf800000);
  }
  else {
    FUN_00574270(param_2,0x3f000000);
  }
  FUN_00573960(param_2);
  if ((*(int *)(*(int *)(param_1 + 8) + 0x234) == 0) &&
     (*(int *)(*(int *)(param_1 + 8) + 0x438) == 0)) {
    *(undefined4 *)(param_1 + 0xfcc) = 0;
    uVar1 = FUN_00561430(3);
    FUN_0058ad80(uVar1);
    (**(code **)(*(int *)(param_1 + 0x6f0) + 4))(param_2,1);
    return 0;
  }
  *(undefined4 *)(param_1 + 0xfcc) = 2;
  FUN_005678d0(param_2,0x3e800000,0xa1,0xbf);
  FUN_0056fc50(0xa1,0xbf);
  uVar5 = 0;
  do {
    iVar3 = 0;
    iVar2 = *(int *)(param_1 + 8);
    iVar4 = *(int *)(iVar2 + 0x438);
    aiStack_30[uVar5] = 0;
    aiStack_18[uVar5] = 0;
    if (0 < iVar4) {
      if (iVar4 < 1) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      do {
        iVar4 = *(int *)(iVar2 + 0x23c + iVar3 * 8);
        iVar2 = FUN_00561370(*(undefined4 *)(iVar2 + 0x238 + iVar3 * 8));
        if (*(ushort *)(iVar2 + 2) == uVar5) {
          aiStack_30[uVar5] = aiStack_30[uVar5] + iVar4;
        }
        iVar2 = *(int *)(param_1 + 8);
        iVar3 = iVar3 + 1;
      } while (iVar3 < *(int *)(iVar2 + 0x438));
    }
    iVar2 = *(int *)(param_1 + 8);
    iVar4 = 0;
    if (0 < *(int *)(iVar2 + 0x234)) {
      if (*(int *)(iVar2 + 0x234) < 1) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      do {
        iVar3 = *(int *)(iVar2 + 0x38 + iVar4 * 8);
        iVar2 = FUN_00561370(*(undefined4 *)(iVar2 + 0x34 + iVar4 * 8));
        if (*(ushort *)(iVar2 + 2) == uVar5) {
          aiStack_18[uVar5] = aiStack_18[uVar5] + iVar3;
        }
        iVar2 = *(int *)(param_1 + 8);
        iVar4 = iVar4 + 1;
      } while (iVar4 < *(int *)(iVar2 + 0x234));
    }
    uVar5 = uVar5 + 1;
  } while ((int)uVar5 < 6);
  iVar2 = FUN_005613b0(*(undefined4 *)(*(int *)(param_1 + 8) + 0x2c));
  MAI_Display__EQU_BUT_Empty(0,aiStack_30[0],*(undefined4 *)(iVar2 + 0x2c));
  iVar2 = FUN_005613b0(*(undefined4 *)(*(int *)(param_1 + 8) + 0x2c));
  MAI_Display__EQU_BUT_Empty(1,aiStack_30[1],*(undefined4 *)(iVar2 + 0x24));
  iVar2 = FUN_005613b0(*(undefined4 *)(*(int *)(param_1 + 8) + 0x2c));
  MAI_Display__EQU_BUT_Empty(2,aiStack_30[2],*(undefined4 *)(iVar2 + 0x28));
  MAI_Display__EQU_BUT_Empty(3,aiStack_30[3],1);
  MAI_Display__EQU_BUT_Empty(4,aiStack_30[4],1);
  MAI_Display__EQU_BUT_Empty(5,aiStack_30[5],2);
  iVar2 = *(int *)(param_1 + 0x684);
  iVar4 = 0;
  do {
    if (iVar4 == iVar2) {
      MAI_Display__EQU_BUT_On(iVar4,param_2);
    }
    else {
      MAI_Display__EQU_BUT_Off(iVar4,param_2);
    }
    iVar4 = iVar4 + 1;
  } while (iVar4 < 7);
  CON_Cache<T>__Unlock_3(DAT_00692f8c,2);
  return 0;
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_2   ab 0x00571250   54 Byte
// Texte: STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

undefined4 __thiscall
STY_Inventory__GetItemInfoByIndex_2(int param_1,int param_2,undefined4 *param_3)

{
  if (*(int *)(param_1 + 0x200) <= param_2) {
    TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
  }
  *param_3 = *(undefined4 *)(param_1 + 4 + param_2 * 8);
  return *(undefined4 *)(param_1 + param_2 * 8);
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_3   ab 0x00571310   1130 Byte
// Texte: CON_Cache::Allocate() file not found, CON_Cache<T>::Allocate() - cache overflow, STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

void __thiscall STY_Inventory__GetItemInfoByIndex_3(int param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  uint uVar7;
  int iVar8;
  int *piVar9;
  int iVar10;
  int *piVar11;
  undefined4 *puVar12;
  undefined1 *puVar13;
  undefined1 *puVar14;
  int local_120;
  int iStack_11c;
  undefined1 auStack_104 [260];
  
  iVar10 = 0;
  if ((param_3 < 0) || (iVar2 = *(int *)(param_1 + 0x884), iVar2 <= param_3)) {
    FUN_0056eac0(&DAT_00661574,&DAT_00661574,0);
    return;
  }
  local_120 = 0;
  if (0 < iVar2) {
    if (iVar2 < 1) {
      TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
    }
    do {
      iVar2 = 0;
      piVar9 = (int *)(param_1 + 0x888);
      if (0 < *(int *)(param_1 + 0xa88)) {
        do {
          if (*piVar9 == *(int *)(param_1 + 0x684 + iVar10 * 8)) {
            iVar2 = *(int *)(param_1 + 0x88c + iVar2 * 8);
            goto LAB_00571382;
          }
          iVar2 = iVar2 + 1;
          piVar9 = piVar9 + 2;
        } while (iVar2 < *(int *)(param_1 + 0xa88));
      }
      iVar2 = 0;
LAB_00571382:
      local_120 = local_120 + iVar2;
      iVar10 = iVar10 + 1;
    } while (iVar10 < *(int *)(param_1 + 0x884));
  }
  FUN_0056ea30(local_120);
  if (*(int *)(param_1 + 0x884) <= param_3) {
    TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
  }
  uVar1 = *(undefined4 *)(param_1 + 0x684 + param_3 * 8);
  iVar10 = FUN_00561370(uVar1);
  if (iVar10 == 0) {
    puVar14 = &DAT_00661574;
    puVar13 = &DAT_00661574;
    uVar6 = 0;
  }
  else {
    uVar6 = *(undefined4 *)(iVar10 + 0xc);
    piVar9 = *(int **)(param_1 + 0x10);
    FUN_005ed530();
    if (*piVar9 == 0) {
      piVar11 = (int *)0x0;
      iVar2 = 0;
      if (0 < piVar9[0x86]) {
        iStack_11c = 0;
        do {
          piVar3 = (int *)(iStack_11c + piVar9[0x84]);
          if (*(int *)(iStack_11c + piVar9[0x84]) == 0) {
            if (piVar11 == (int *)0x0) {
              piVar11 = piVar3;
            }
          }
          else {
            iVar8 = FUN_00520710(piVar3[2],uVar6);
            if (iVar8 == 0) {
              piVar9 = (int *)(piVar9[0x84] + 4 + iVar2 * 0xc);
              *piVar9 = *piVar9 + 1;
              FUN_005216e0();
              iVar2 = iVar2 + 1;
              goto LAB_00571656;
            }
          }
          iVar2 = iVar2 + 1;
          iStack_11c = iStack_11c + 0xc;
        } while (iVar2 < piVar9[0x86]);
      }
      FUN_005209c0(auStack_104,piVar9 + 1,piVar9 + 2,uVar6,0);
      iVar2 = FUN_00521ff0(auStack_104,(int)piVar9 + 0x109,piVar9[0x83]);
      if (iVar2 == 0) {
        TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_104);
        FUN_005216e0();
        iVar2 = 0;
      }
      else {
        if (piVar9[0x86] <= piVar9[0x85]) {
          if (piVar9[0x88] == 0) {
            TERMINATION(s_CON_Cache<T>__Allocate_____cache_006040c8,uVar6);
          }
          else {
            puVar4 = (undefined4 *)operator_new(piVar9[0x86] * 0x18);
            puVar5 = (undefined4 *)piVar9[0x84];
            puVar12 = puVar4;
            for (uVar7 = piVar9[0x86] * 3 & 0x3fffffff; uVar7 != 0; uVar7 = uVar7 - 1) {
              *puVar12 = *puVar5;
              puVar5 = puVar5 + 1;
              puVar12 = puVar12 + 1;
            }
            for (iVar8 = 0; iVar8 != 0; iVar8 = iVar8 + -1) {
              *(undefined1 *)puVar12 = *(undefined1 *)puVar5;
              puVar5 = (undefined4 *)((int)puVar5 + 1);
              puVar12 = (undefined4 *)((int)puVar12 + 1);
            }
            operator_delete(piVar9[0x84]);
            piVar9[0x84] = (int)puVar4;
            piVar9[0x86] = piVar9[0x86] << 1;
            piVar11 = puVar4 + piVar9[0x85] * 3;
          }
        }
        piVar11[1] = 1;
        puVar5 = (undefined4 *)operator_new(8);
        if (puVar5 == (undefined4 *)0x0) {
          puVar5 = (undefined4 *)0x0;
        }
        else {
          *puVar5 = 0;
          puVar5[1] = 0;
        }
        *piVar11 = (int)puVar5;
        iVar8 = str_len(uVar6);
        iVar8 = operator_new(iVar8 + 1);
        piVar11[2] = iVar8;
        str_copy(iVar8,uVar6);
        iVar2 = FUN_0055eb60(iVar2);
        if (iVar2 == 0) {
          if (*piVar11 != 0) {
            FUN_00572a60(1);
          }
          *piVar11 = 0;
          operator_delete(piVar11[2]);
          piVar11[2] = 0;
          TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_104);
          FUN_005216e0();
          iVar2 = 0;
        }
        else {
          piVar9[0x85] = piVar9[0x85] + 1;
          iVar2 = ((int)piVar11 - piVar9[0x84]) / 0xc + 1;
          FUN_005216e0();
        }
      }
    }
    else {
      FUN_005216e0();
      iVar2 = 0;
    }
LAB_00571656:
    piVar9 = *(int **)(param_1 + 0x10);
    if (((*piVar9 == 0) && (0 < iVar2)) && (iVar2 <= piVar9[0x86])) {
      uVar6 = *(undefined4 *)(piVar9[0x84] + -0xc + iVar2 * 0xc);
    }
    else {
      uVar6 = 0;
    }
    puVar14 = *(undefined1 **)(iVar10 + 0x10);
    puVar13 = *(undefined1 **)(iVar10 + 8);
  }
  FUN_0056eac0(puVar13,puVar14,uVar6);
  uVar6 = FUN_00571780(uVar1);
  FUN_0056ed10(uVar6);
  iVar10 = STY_Inventory__GetItemInfoByIndex(uVar1);
  if (iVar10 == 0) {
    FUN_0056bbb0(param_2,0x139);
    FUN_00571fc0(uVar1);
  }
  else {
    FUN_0056bb80(param_2,0x139);
  }
  iVar10 = FUN_00571fc0(uVar1);
  if (iVar10 == 0) {
    FUN_0056bbb0(param_2,0x13a);
    STY_Inventory__GetItemInfoByIndex(uVar1);
  }
  else {
    FUN_0056bb80(param_2,0x13a);
  }
  if (*(int *)(param_1 + 0xcc0) < 1) {
    FUN_0056bb80(param_2,0x137);
  }
  else {
    FUN_0056bbb0(param_2,0x137);
  }
  if (*(int *)(param_1 + 0x884) + -1 <= *(int *)(param_1 + 0xcc0)) {
    FUN_0056bb80(param_2,0x138);
    return;
  }
  FUN_0056bbb0(param_2,0x138);
  return;
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_4   ab 0x005717b0   721 Byte
// Texte: STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

void __thiscall STY_Inventory__GetItemInfoByIndex_4(int param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  int *piVar6;
  
  if ((param_3 < 0) || (*(int *)(param_1 + 0x884) <= param_3)) {
    FUN_0056ebe0(param_2,0,0,0xffffffff);
    return;
  }
  if (*(int *)(param_1 + 0x884) <= param_3) {
    TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
  }
  iVar1 = *(int *)(param_1 + 0x684 + param_3 * 8);
  iVar3 = FUN_00561370(iVar1);
  if (iVar3 == 0) {
    FUN_0056ebe0(param_2,0,0,0xffffffff);
    return;
  }
  piVar6 = (int *)(param_1 + 0xa8c);
  iVar4 = 0;
  if (0 < *(int *)(param_1 + 0xc8c)) {
    do {
      if (*piVar6 == iVar1) {
        if (*(int *)(param_1 + 0xa90 + iVar4 * 8) != 0) {
          piVar6 = (int *)(param_1 + 0x888);
          iVar4 = 0;
          if (*(int *)(param_1 + 0xa88) < 1) goto LAB_00571887;
          goto LAB_0057187b;
        }
        break;
      }
      iVar4 = iVar4 + 1;
      piVar6 = piVar6 + 2;
    } while (iVar4 < *(int *)(param_1 + 0xc8c));
  }
  piVar6 = (int *)(param_1 + 0x888);
  iVar4 = 0;
  if (0 < *(int *)(param_1 + 0xa88)) {
    do {
      if (*piVar6 == iVar1) {
        uVar5 = *(undefined4 *)(param_1 + 0x88c + iVar4 * 8);
        goto LAB_0057197f;
      }
      iVar4 = iVar4 + 1;
      piVar6 = piVar6 + 2;
    } while (iVar4 < *(int *)(param_1 + 0xa88));
  }
  uVar5 = 0;
LAB_0057197f:
  uVar2 = *(undefined4 *)(iVar3 + 8);
  switch(*(undefined2 *)(iVar3 + 2)) {
  default:
    FUN_0056ebe0(param_2,*(undefined4 *)(param_1 + 0xc94),uVar2,uVar5);
    return;
  case 1:
    FUN_0056ebe0(param_2,*(undefined4 *)(param_1 + 0xc9c),uVar2,uVar5);
    return;
  case 2:
    FUN_0056ebe0(param_2,*(undefined4 *)(param_1 + 0xca4),uVar2,uVar5);
    return;
  case 3:
    FUN_0056ebe0(param_2,*(undefined4 *)(param_1 + 0xcac),uVar2,uVar5);
    return;
  case 4:
    FUN_0056ebe0(param_2,*(undefined4 *)(param_1 + 0xcb4),uVar2,uVar5);
    return;
  case 5:
    FUN_0056ebe0(param_2,*(undefined4 *)(param_1 + 0xcbc),uVar2,uVar5);
    return;
  }
  while( true ) {
    iVar4 = iVar4 + 1;
    piVar6 = piVar6 + 2;
    if (*(int *)(param_1 + 0xa88) <= iVar4) break;
LAB_0057187b:
    if (*piVar6 == iVar1) {
      uVar5 = *(undefined4 *)(param_1 + 0x88c + iVar4 * 8);
      goto LAB_00571889;
    }
  }
LAB_00571887:
  uVar5 = 0;
LAB_00571889:
  uVar2 = *(undefined4 *)(iVar3 + 8);
  switch(*(undefined2 *)(iVar3 + 2)) {
  default:
    FUN_0056ebe0(param_2,*(undefined4 *)(param_1 + 0xc90),uVar2,uVar5);
    return;
  case 1:
    FUN_0056ebe0(param_2,*(undefined4 *)(param_1 + 0xc98),uVar2,uVar5);
    return;
  case 2:
    FUN_0056ebe0(param_2,*(undefined4 *)(param_1 + 0xca0),uVar2,uVar5);
    return;
  case 3:
    FUN_0056ebe0(param_2,*(undefined4 *)(param_1 + 0xca8),uVar2,uVar5);
    return;
  case 4:
    FUN_0056ebe0(param_2,*(undefined4 *)(param_1 + 0xcb0),uVar2,uVar5);
    return;
  case 5:
    FUN_0056ebe0(param_2,*(undefined4 *)(param_1 + 0xcb8),uVar2,uVar5);
    return;
  }
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex   ab 0x00571ac0   1222 Byte
// Texte: STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

undefined8 __thiscall STY_Inventory__GetItemInfoByIndex(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  
  iVar1 = FUN_00561370(param_2);
  piVar6 = (int *)(param_1 + 0x888);
  iVar5 = 0;
  if (0 < *(int *)(param_1 + 0xa88)) {
    do {
      if (*piVar6 == param_2) {
        if (*(int *)(param_1 + 0x88c + iVar5 * 8) != 0) goto switchD_00571b0f_default;
        break;
      }
      iVar5 = iVar5 + 1;
      piVar6 = piVar6 + 2;
    } while (iVar5 < *(int *)(param_1 + 0xa88));
  }
  switch(*(undefined2 *)(iVar1 + 2)) {
  case 0:
    return 1;
  case 1:
    return 2;
  case 2:
    return 3;
  case 3:
    return 4;
  case 4:
    return 5;
  case 5:
    return 6;
  }
switchD_00571b0f_default:
  switch(*(undefined2 *)(iVar1 + 2)) {
  case 0:
    iVar1 = 0;
    iVar5 = 0;
    if (0 < *(int *)(param_1 + 0xc8c)) {
      if (*(int *)(param_1 + 0xc8c) < 1) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      do {
        iVar4 = *(int *)(param_1 + 0xa90 + iVar5 * 8);
        iVar2 = FUN_00561370(*(undefined4 *)(param_1 + 0xa8c + iVar5 * 8));
        if (*(short *)(iVar2 + 2) == 0) {
          iVar1 = iVar1 + iVar4;
        }
        iVar5 = iVar5 + 1;
      } while (iVar5 < *(int *)(param_1 + 0xc8c));
    }
    iVar5 = FUN_005613b0(*(undefined4 *)(*(int *)(param_1 + 8) + 0x2c));
    if (*(int *)(iVar5 + 0x2c) <= iVar1) {
      return 0xd;
    }
    piVar6 = (int *)(param_1 + 0xa8c);
    iVar1 = 0;
    if (0 < *(int *)(param_1 + 0xc8c)) {
      do {
        if (*piVar6 == param_2) {
          if (0 < *(int *)(param_1 + 0xa90 + iVar1 * 8)) {
            return CONCAT44(piVar6,0x10);
          }
          break;
        }
        iVar1 = iVar1 + 1;
        piVar6 = piVar6 + 2;
      } while (iVar1 < *(int *)(param_1 + 0xc8c));
    }
    break;
  case 1:
    iVar1 = 0;
    iVar5 = 0;
    if (0 < *(int *)(param_1 + 0xc8c)) {
      if (*(int *)(param_1 + 0xc8c) < 1) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      do {
        iVar4 = *(int *)(param_1 + 0xa90 + iVar5 * 8);
        iVar2 = FUN_00561370(*(undefined4 *)(param_1 + 0xa8c + iVar5 * 8));
        if (*(short *)(iVar2 + 2) == 1) {
          iVar1 = iVar1 + iVar4;
        }
        iVar5 = iVar5 + 1;
      } while (iVar5 < *(int *)(param_1 + 0xc8c));
    }
    iVar5 = FUN_005613b0(*(undefined4 *)(*(int *)(param_1 + 8) + 0x2c));
    if (*(int *)(iVar5 + 0x24) <= iVar1) {
      return 0xe;
    }
    break;
  case 2:
    iVar1 = 0;
    iVar5 = 0;
    if (0 < *(int *)(param_1 + 0xc8c)) {
      if (*(int *)(param_1 + 0xc8c) < 1) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      do {
        iVar4 = *(int *)(param_1 + 0xa90 + iVar5 * 8);
        iVar2 = FUN_00561370(*(undefined4 *)(param_1 + 0xa8c + iVar5 * 8));
        if (*(short *)(iVar2 + 2) == 2) {
          iVar1 = iVar1 + iVar4;
        }
        iVar5 = iVar5 + 1;
      } while (iVar5 < *(int *)(param_1 + 0xc8c));
    }
    iVar5 = FUN_005613b0(*(undefined4 *)(*(int *)(param_1 + 8) + 0x2c));
    if (*(int *)(iVar5 + 0x28) <= iVar1) {
      return 0xf;
    }
    break;
  case 3:
    iVar1 = 0;
    if (0 < *(int *)(param_1 + 0xc8c)) {
      if (*(int *)(param_1 + 0xc8c) < 1) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      do {
        iVar5 = FUN_00561370(*(undefined4 *)(param_1 + 0xa8c + iVar1 * 8));
        if (*(short *)(iVar5 + 2) == 3) {
          return 0x11;
        }
        iVar1 = iVar1 + 1;
      } while (iVar1 < *(int *)(param_1 + 0xc8c));
    }
    break;
  case 4:
    iVar1 = 0;
    if (0 < *(int *)(param_1 + 0xc8c)) {
      if (*(int *)(param_1 + 0xc8c) < 1) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      do {
        iVar5 = FUN_00561370(*(undefined4 *)(param_1 + 0xa8c + iVar1 * 8));
        if (*(short *)(iVar5 + 2) == 4) {
          return 0x12;
        }
        iVar1 = iVar1 + 1;
      } while (iVar1 < *(int *)(param_1 + 0xc8c));
    }
    break;
  case 5:
    piVar6 = (int *)(param_1 + 0xa8c);
    iVar1 = 0;
    if (0 < *(int *)(param_1 + 0xc8c)) {
      do {
        if (*piVar6 == param_2) {
          if (0 < *(int *)(param_1 + 0xa90 + iVar1 * 8)) {
            return CONCAT44(piVar6,0x13);
          }
          break;
        }
        iVar1 = iVar1 + 1;
        piVar6 = piVar6 + 2;
      } while (iVar1 < *(int *)(param_1 + 0xc8c));
    }
  }
  piVar6 = (int *)(param_1 + 0x888);
  iVar1 = 0;
  if (0 < *(int *)(param_1 + 0xa88)) {
    do {
      if (*piVar6 == param_2) {
        iVar5 = *(int *)(param_1 + 0x88c + iVar1 * 8) + -1;
        *(int *)(param_1 + 0x88c + iVar1 * 8) = iVar5;
        if (iVar5 < 1) {
          iVar5 = *(int *)(param_1 + 0xa88) + -1;
          *(int *)(param_1 + 0xa88) = iVar5;
          *(undefined4 *)(param_1 + 0x888 + iVar1 * 8) =
               *(undefined4 *)(param_1 + 0x888 + iVar5 * 8);
          *(undefined4 *)(param_1 + 0x88c + iVar1 * 8) =
               *(undefined4 *)(param_1 + 0x88c + iVar5 * 8);
        }
        break;
      }
      iVar1 = iVar1 + 1;
      piVar6 = piVar6 + 2;
    } while (iVar1 < *(int *)(param_1 + 0xa88));
  }
  iVar1 = *(int *)(param_1 + 0xc8c);
  piVar6 = (int *)(param_1 + 0xa8c);
  iVar5 = 0;
  piVar3 = piVar6;
  if (0 < iVar1) {
    do {
      if (*piVar3 == param_2) {
        iVar1 = *(int *)(param_1 + 0xa90 + iVar5 * 8) + 1;
        *(int *)(param_1 + 0xa90 + iVar5 * 8) = iVar1;
        if (iVar1 < 1) {
          iVar1 = *(int *)(param_1 + 0xc8c) + -1;
          *(int *)(param_1 + 0xc8c) = iVar1;
          piVar6[iVar5 * 2] = piVar6[iVar1 * 2];
          *(undefined4 *)(param_1 + 0xa90 + iVar5 * 8) =
               *(undefined4 *)(param_1 + 0xa90 + iVar1 * 8);
        }
        goto LAB_00571e98;
      }
      iVar5 = iVar5 + 1;
      piVar3 = piVar3 + 2;
    } while (iVar5 < iVar1);
  }
  piVar6[iVar1 * 2] = param_2;
  *(undefined4 *)(param_1 + 0xa90 + *(int *)(param_1 + 0xc8c) * 8) = 1;
  *(int *)(param_1 + 0xc8c) = *(int *)(param_1 + 0xc8c) + 1;
LAB_00571e98:
  iVar1 = *(int *)(param_1 + 8);
  piVar3 = (int *)(iVar1 + 0x34);
  iVar5 = 0;
  piVar6 = piVar3;
  if (0 < *(int *)(iVar1 + 0x234)) {
    do {
      if (*piVar6 == param_2) {
        iVar4 = *(int *)(iVar1 + 0x38 + iVar5 * 8) + -1;
        *(int *)(iVar1 + 0x38 + iVar5 * 8) = iVar4;
        if (iVar4 < 1) {
          iVar4 = *(int *)(iVar1 + 0x234) + -1;
          *(int *)(iVar1 + 0x234) = iVar4;
          piVar3[iVar5 * 2] = piVar3[iVar4 * 2];
          *(undefined4 *)(iVar1 + 0x38 + iVar5 * 8) = *(undefined4 *)(iVar1 + 0x38 + iVar4 * 8);
        }
        break;
      }
      iVar5 = iVar5 + 1;
      piVar6 = piVar6 + 2;
    } while (iVar5 < *(int *)(iVar1 + 0x234));
  }
  iVar1 = *(int *)(param_1 + 8);
  iVar5 = *(int *)(iVar1 + 0x438);
  piVar3 = (int *)(iVar1 + 0x238);
  iVar4 = 0;
  piVar6 = piVar3;
  if (0 < iVar5) {
    do {
      if (*piVar6 == param_2) {
        iVar5 = *(int *)(iVar1 + 0x23c + iVar4 * 8) + 1;
        *(int *)(iVar1 + 0x23c + iVar4 * 8) = iVar5;
        if (0 < iVar5) {
          return 0;
        }
        iVar5 = *(int *)(iVar1 + 0x438) + -1;
        *(int *)(iVar1 + 0x438) = iVar5;
        piVar3[iVar4 * 2] = piVar3[iVar5 * 2];
        *(undefined4 *)(iVar1 + 0x23c + iVar4 * 8) = *(undefined4 *)(iVar1 + 0x23c + iVar5 * 8);
        return 0;
      }
      iVar4 = iVar4 + 1;
      piVar6 = piVar6 + 2;
    } while (iVar4 < iVar5);
  }
  piVar3[iVar5 * 2] = param_2;
  *(undefined4 *)(iVar1 + 0x23c + *(int *)(iVar1 + 0x438) * 8) = 1;
  *(int *)(iVar1 + 0x438) = *(int *)(iVar1 + 0x438) + 1;
  return 0;
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_11   ab 0x00572300   1270 Byte
// Texte: STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

undefined4 __thiscall
STY_Inventory__GetItemInfoByIndex_11(int *param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  
  if (param_1[0x57c] == 0) {
    iVar1 = (**(code **)(param_1[0x345] + 8))(param_2,param_3);
    if (iVar1 < 1) {
      return 0;
    }
    if (3 < iVar1) {
      return 0;
    }
    uVar3 = (**(code **)(*param_1 + 4))(param_2,1);
    return uVar3;
  }
  if (param_3 == 2) {
    if (param_1[0x221] + -1 <= param_1[0x330]) {
LAB_00572452:
      CON_Cache<T>__Unlock_3(DAT_00692f84,2);
      return 0;
    }
    iVar1 = param_1[0x330] + 1;
    param_1[0x330] = iVar1;
    STY_Inventory__GetItemInfoByIndex_3(param_2,iVar1);
    STY_Inventory__GetItemInfoByIndex_4(0,param_1[0x330]);
    STY_Inventory__GetItemInfoByIndex_4(1,param_1[0x330] + 1);
    STY_Inventory__GetItemInfoByIndex_4(2,param_1[0x330] + 2);
    STY_Inventory__GetItemInfoByIndex_4(3,param_1[0x330] + 3);
    if (param_1[0x221] + -1 <= param_1[0x330]) goto LAB_00572435;
    uVar3 = 0x138;
LAB_0057242c:
    FUN_0056c280(param_2,uVar3);
LAB_00572435:
    CON_Cache<T>__Unlock_3(DAT_00692f88,2);
    return 0;
  }
  if (param_3 == 1) {
    if (param_1[0x330] < 1) goto LAB_00572452;
    iVar1 = param_1[0x330] + -1;
    param_1[0x330] = iVar1;
    STY_Inventory__GetItemInfoByIndex_3(param_2,iVar1);
    STY_Inventory__GetItemInfoByIndex_4(0,param_1[0x330]);
    STY_Inventory__GetItemInfoByIndex_4(1,param_1[0x330] + 1);
    STY_Inventory__GetItemInfoByIndex_4(2,param_1[0x330] + 2);
    STY_Inventory__GetItemInfoByIndex_4(3,param_1[0x330] + 3);
    if (param_1[0x330] < 1) goto LAB_00572435;
    uVar3 = 0x137;
    goto LAB_0057242c;
  }
  if (param_3 != 3) {
    if (param_3 != 4) {
      if ((param_3 != 5) && (param_3 != 6)) {
        return 0;
      }
      CON_Cache<T>__Unlock_3(DAT_00692f80,2);
      return 1;
    }
    iVar1 = param_1[0x330];
    if (param_1[0x221] <= iVar1) {
      TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
    }
    iVar1 = param_1[iVar1 * 2 + 0x1a1];
    uVar3 = FUN_00571fc0(iVar1);
    STY_Inventory__GetItemInfoByIndex_3(param_2,param_1[0x330]);
    STY_Inventory__GetItemInfoByIndex_4(0,param_1[0x330]);
    switch(uVar3) {
    case 0:
      CON_Cache<T>__Unlock_3(DAT_00692f9c,2);
      iVar2 = FUN_00571fc0(iVar1);
      if (iVar2 != 0) {
        return 0;
      }
      FUN_0056c280(param_2,0x13a);
      STY_Inventory__GetItemInfoByIndex(iVar1);
      return 0;
    default:
      goto switchD_005724da_caseD_7;
    case 7:
      param_1[0x57c] = 0;
      uVar3 = 0x17;
      break;
    case 8:
      param_1[0x57c] = 0;
      uVar3 = 0x18;
      goto LAB_0057275f;
    case 9:
      param_1[0x57c] = 0;
      uVar3 = 0x19;
      break;
    case 10:
      param_1[0x57c] = 0;
      uVar3 = 0x1a;
      goto LAB_0057275f;
    case 0xb:
      param_1[0x57c] = 0;
      uVar3 = 0x1b;
      break;
    case 0xc:
      param_1[0x57c] = 0;
      uVar3 = 0x1c;
LAB_0057275f:
      uVar3 = FUN_00561430(uVar3);
      FUN_0058ad80(uVar3);
      (**(code **)(param_1[0x345] + 4))(param_2,1);
      return 0;
    }
    goto LAB_00572541;
  }
  iVar1 = param_1[0x330];
  if (param_1[0x221] <= iVar1) {
    TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
  }
  iVar1 = param_1[iVar1 * 2 + 0x1a1];
  uVar3 = STY_Inventory__GetItemInfoByIndex(iVar1);
  STY_Inventory__GetItemInfoByIndex_3(param_2,param_1[0x330]);
  STY_Inventory__GetItemInfoByIndex_4(0,param_1[0x330]);
  switch(uVar3) {
  case 0:
    CON_Cache<T>__Unlock_3(DAT_00692f9c,2);
    iVar2 = STY_Inventory__GetItemInfoByIndex(iVar1);
    if (iVar2 != 0) {
      return 0;
    }
    FUN_0056c280(param_2,0x139);
    FUN_00571fc0(iVar1);
    return 0;
  case 1:
    param_1[0x57c] = 0;
    uVar3 = 10;
    break;
  case 2:
    param_1[0x57c] = 0;
    uVar3 = 0xb;
    goto LAB_00572541;
  case 3:
    param_1[0x57c] = 0;
    uVar3 = 0xc;
    break;
  case 4:
    param_1[0x57c] = 0;
    uVar3 = 0xd;
    goto LAB_00572541;
  case 5:
    param_1[0x57c] = 0;
    uVar3 = 0xe;
    break;
  case 6:
    param_1[0x57c] = 0;
    uVar3 = 0xf;
    goto LAB_00572541;
  default:
    goto switchD_005724da_caseD_7;
  case 0xd:
    param_1[0x57c] = 0;
    uVar3 = 0x10;
    break;
  case 0xe:
    param_1[0x57c] = 0;
    uVar3 = 0x11;
    goto LAB_00572541;
  case 0xf:
    param_1[0x57c] = 0;
    uVar3 = 0x12;
    break;
  case 0x10:
    param_1[0x57c] = 0;
    uVar3 = 0x13;
    goto LAB_00572541;
  case 0x11:
    param_1[0x57c] = 0;
    uVar3 = 0x14;
    break;
  case 0x12:
    param_1[0x57c] = 0;
    uVar3 = 0x15;
LAB_00572541:
    uVar3 = FUN_00561430(uVar3);
    FUN_0058ad80(uVar3);
    (**(code **)(param_1[0x345] + 4))(param_2,1);
switchD_005724da_caseD_7:
    return 0;
  case 0x13:
    param_1[0x57c] = 0;
    uVar3 = 0x16;
  }
  uVar3 = FUN_00561430(uVar3);
  FUN_0058ad80(uVar3);
  (**(code **)(param_1[0x345] + 4))(param_2,1);
  return 0;
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_5   ab 0x00572b90   106 Byte
// Texte: STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

void __fastcall STY_Inventory__GetItemInfoByIndex_5(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = *(int *)(param_1 + 8);
  *(undefined4 *)(param_1 + 0xffc) = 0;
  if (0 < *(int *)(iVar3 + 0x840)) {
    do {
      iVar2 = *(int *)(param_1 + 0xffc);
      iVar1 = *(int *)(iVar3 + 0x2c);
      if (*(int *)(iVar3 + 0x840) <= iVar2) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      if (iVar1 == *(int *)(iVar3 + 0x640 + iVar2 * 8)) {
        return;
      }
      iVar3 = *(int *)(param_1 + 8);
      iVar2 = *(int *)(param_1 + 0xffc) + 1;
      *(int *)(param_1 + 0xffc) = iVar2;
    } while (iVar2 < *(int *)(iVar3 + 0x840));
  }
  return;
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_6   ab 0x00572d50   293 Byte
// Texte: STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

undefined4 __thiscall
STY_Inventory__GetItemInfoByIndex_6(int param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  
  if (*(int *)(*(int *)(param_1 + 8) + 0x840) != 0) {
    if (param_3 == 0) {
      uVar3 = 0xbf800000;
    }
    else {
      uVar3 = 0x3f000000;
    }
    FUN_00574270(param_2,uVar3);
    FUN_00573960(param_2);
    FUN_005678d0(param_2,0x3e800000,0x84,0xa0);
    FUN_0056fc50(0x84,0xa0);
    while( true ) {
      iVar2 = *(int *)(param_1 + 8);
      iVar1 = *(int *)(param_1 + 0xffc);
      if (*(int *)(iVar2 + 0x840) <= iVar1) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      iVar2 = *(int *)(iVar2 + 0x640 + iVar1 * 8);
      if (iVar2 != 0) break;
      iVar2 = *(int *)(param_1 + 0xffc) + 1;
      *(int *)(param_1 + 0xffc) = iVar2;
      if (*(int *)(*(int *)(param_1 + 8) + 0x840) <= iVar2) {
        *(undefined4 *)(param_1 + 0xffc) = 0;
      }
    }
    FUN_00572c00(param_2,iVar2);
    uVar3 = DAT_00692f8c;
    if (*(int *)(param_1 + 0xff8) == 0) {
      uVar3 = DAT_00692fa0;
    }
    CON_Cache<T>__Unlock_3(uVar3,2);
    FUN_00573940(*(undefined4 *)(param_1 + 4),*(undefined4 *)(param_1 + 8),
                 *(undefined4 *)(param_1 + 0xc),*(undefined4 *)(param_1 + 0x10));
    *(undefined4 *)(param_1 + 0xff8) = 4;
    return 0;
  }
  return 1;
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_7   ab 0x00572f50   846 Byte
// Texte: STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

undefined4 __thiscall
STY_Inventory__GetItemInfoByIndex_7(int *param_1,undefined4 param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  
  iVar3 = param_1[2];
  if (*(int *)(iVar3 + 0x840) == 0) {
    return 1;
  }
  iVar2 = param_1[0x3fe];
  if (iVar2 == 0) {
    iVar3 = (**(code **)(param_1[0x1c7] + 8))(param_2,param_3);
    if (iVar3 == 1) {
      iVar3 = param_1[2];
      iVar2 = param_1[0x3ff];
      if (*(int *)(iVar3 + 0x840) <= iVar2) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      FUN_00572e80(*(undefined4 *)(iVar3 + 0x640 + iVar2 * 8));
      uVar4 = (**(code **)(*param_1 + 4))(param_2,1);
      return uVar4;
    }
    if ((1 < iVar3) && (iVar3 < 4)) {
      param_1[0x1a1] = param_1[0x1a2];
      param_1[0x1b4] = param_1[0x1b5];
      param_1[0x3fe] = 4;
      uVar4 = (**(code **)(*param_1 + 4))(param_2,1);
      return uVar4;
    }
  }
  else if ((iVar2 < 1) || (2 < iVar2)) {
    if (param_3 == 3) {
      do {
        piVar1 = param_1 + 0x3ff;
        *piVar1 = *piVar1 + -1;
        if (*piVar1 < 0) {
          param_1[0x3ff] = *(int *)(param_1[2] + 0x840) + -1;
        }
        iVar3 = param_1[2];
        iVar2 = param_1[0x3ff];
        if (*(int *)(iVar3 + 0x840) <= iVar2) {
          TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
        }
        iVar3 = *(int *)(iVar3 + 0x640 + iVar2 * 8);
      } while (iVar3 == 0);
      CON_Cache<T>__Unlock_3(DAT_00692f9c,2);
      FUN_00572c00(param_2,iVar3);
      FUN_0056c280(param_2,0x89);
      return 0;
    }
    if (param_3 == 4) {
      do {
        iVar3 = param_1[0x3ff];
        iVar2 = param_1[2];
        param_1[0x3ff] = iVar3 + 1;
        if (*(int *)(iVar2 + 0x840) <= iVar3 + 1) {
          param_1[0x3ff] = 0;
        }
        iVar3 = param_1[0x3ff];
        if (*(int *)(iVar2 + 0x840) <= iVar3) {
          TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
        }
        iVar3 = *(int *)(iVar2 + 0x640 + iVar3 * 8);
      } while (iVar3 == 0);
      CON_Cache<T>__Unlock_3(DAT_00692f9c,2);
      FUN_00572c00(param_2,iVar3);
      FUN_0056c280(param_2,0x8a);
      return 0;
    }
    if (param_3 == 5) {
      iVar2 = param_1[0x3ff];
      if (*(int *)(iVar3 + 0x840) <= iVar2) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      iVar3 = *(int *)(iVar3 + 0x640 + iVar2 * 8);
      if (iVar3 == *(int *)(param_1[2] + 0x2c)) {
        param_1[0x3fe] = 2;
        uVar4 = 0x35;
      }
      else {
        iVar2 = *(int *)(param_1[2] + 0x30);
        iVar3 = FUN_005613b0(iVar3);
        iVar3 = *(int *)(iVar3 + 0xc);
        iVar5 = FUN_005613b0(*(undefined4 *)(param_1[2] + 0x2c));
        if (iVar2 < iVar3 - *(int *)(iVar5 + 0xc)) {
          param_1[0x3fe] = 1;
          uVar4 = 0x36;
        }
        else {
          param_1[0x3fe] = 0;
          uVar4 = 0x37;
        }
      }
      uVar4 = FUN_00561430(uVar4);
      FUN_0058ad80(uVar4);
      param_1[0x1b5] = param_1[0x1b4];
      param_1[0x1a2] = param_1[0x1a1];
      (**(code **)(param_1[0x1c7] + 4))(param_2,1);
      return 0;
    }
    if (((param_3 == 6) || (param_3 == 1)) || (param_3 == 2)) {
      CON_Cache<T>__Unlock_3(DAT_00692f80,2);
      return 1;
    }
  }
  else {
    iVar3 = (**(code **)(param_1[0x1c7] + 8))(param_2,param_3);
    if ((0 < iVar3) && (iVar3 < 4)) {
      param_1[0x1b4] = param_1[0x1b5];
      param_1[0x1a1] = param_1[0x1a2];
      uVar4 = (**(code **)(*param_1 + 4))(param_2,1);
      return uVar4;
    }
  }
  return 0;
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_9   ab 0x005a4200   1118 Byte
// Texte: CON_Cache::Allocate() file not found, CON_Cache<T>::Allocate() - cache overflow, STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

void __thiscall STY_Inventory__GetItemInfoByIndex_9(int param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  uint uVar8;
  int iVar9;
  int *piVar10;
  int *piVar11;
  undefined4 *puVar12;
  int iStack_11c;
  undefined1 auStack_104 [260];
  
  if ((param_3 < 0) || (*(int *)(param_1 + 0x884) <= param_3)) {
    FUN_0056eac0(&DAT_00661574,&DAT_00661574,0);
    return;
  }
  if (*(int *)(param_1 + 0x884) <= param_3) {
    TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
  }
  iVar1 = *(int *)(param_1 + 0x684 + param_3 * 8);
  iVar2 = FUN_00561370(iVar1);
  if (iVar2 == 0) {
    FUN_0056eac0(&DAT_00661574,&DAT_00661574,0);
  }
  else {
    uVar7 = *(undefined4 *)(iVar2 + 0xc);
    piVar10 = *(int **)(param_1 + 0x10);
    FUN_005ed530();
    if (*piVar10 == 0) {
      piVar11 = (int *)0x0;
      iVar3 = 0;
      if (0 < piVar10[0x86]) {
        iStack_11c = 0;
        do {
          piVar4 = (int *)(iStack_11c + piVar10[0x84]);
          if (*piVar4 == 0) {
            if (piVar11 == (int *)0x0) {
              piVar11 = piVar4;
            }
          }
          else {
            iVar9 = FUN_00520710(piVar4[2],uVar7);
            if (iVar9 == 0) {
              piVar10 = (int *)(piVar10[0x84] + 4 + iVar3 * 0xc);
              *piVar10 = *piVar10 + 1;
              FUN_005216e0();
              iVar3 = iVar3 + 1;
              goto LAB_005a44d3;
            }
          }
          iVar3 = iVar3 + 1;
          iStack_11c = iStack_11c + 0xc;
        } while (iVar3 < piVar10[0x86]);
      }
      FUN_005209c0(auStack_104,piVar10 + 1,piVar10 + 2,uVar7,0);
      iVar3 = FUN_00521ff0(auStack_104,(int)piVar10 + 0x109,piVar10[0x83]);
      if (iVar3 == 0) {
        TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_104);
        FUN_005216e0();
        iVar3 = 0;
      }
      else {
        if (piVar10[0x86] <= piVar10[0x85]) {
          if (piVar10[0x88] == 0) {
            TERMINATION(s_CON_Cache<T>__Allocate_____cache_006040c8,uVar7);
          }
          else {
            puVar5 = (undefined4 *)operator_new(piVar10[0x86] * 0x18);
            puVar6 = (undefined4 *)piVar10[0x84];
            puVar12 = puVar5;
            for (uVar8 = piVar10[0x86] * 3 & 0x3fffffff; uVar8 != 0; uVar8 = uVar8 - 1) {
              *puVar12 = *puVar6;
              puVar6 = puVar6 + 1;
              puVar12 = puVar12 + 1;
            }
            for (iVar9 = 0; iVar9 != 0; iVar9 = iVar9 + -1) {
              *(undefined1 *)puVar12 = *(undefined1 *)puVar6;
              puVar6 = (undefined4 *)((int)puVar6 + 1);
              puVar12 = (undefined4 *)((int)puVar12 + 1);
            }
            operator_delete(piVar10[0x84]);
            piVar10[0x84] = (int)puVar5;
            piVar11 = puVar5 + piVar10[0x85] * 3;
            piVar10[0x86] = piVar10[0x86] << 1;
          }
        }
        piVar11[1] = 1;
        puVar6 = (undefined4 *)operator_new(8);
        if (puVar6 == (undefined4 *)0x0) {
          puVar6 = (undefined4 *)0x0;
        }
        else {
          *puVar6 = 0;
          puVar6[1] = 0;
        }
        *piVar11 = (int)puVar6;
        iVar9 = str_len(uVar7);
        iVar9 = operator_new(iVar9 + 1);
        piVar11[2] = iVar9;
        str_copy(iVar9,uVar7);
        iVar3 = FUN_0055eb60(iVar3);
        if (iVar3 == 0) {
          if (*piVar11 != 0) {
            FUN_00572a60(1);
          }
          *piVar11 = 0;
          operator_delete(piVar11[2]);
          piVar11[2] = 0;
          TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_104);
          FUN_005216e0();
          iVar3 = 0;
        }
        else {
          piVar10[0x85] = piVar10[0x85] + 1;
          iVar3 = ((int)piVar11 - piVar10[0x84]) / 0xc + 1;
          FUN_005216e0();
        }
      }
    }
    else {
      FUN_005216e0();
      iVar3 = 0;
    }
LAB_005a44d3:
    piVar10 = *(int **)(param_1 + 0x10);
    if (((*piVar10 == 0) && (0 < iVar3)) && (iVar3 <= piVar10[0x86])) {
      uVar7 = *(undefined4 *)(piVar10[0x84] + -0xc + iVar3 * 0xc);
    }
    else {
      uVar7 = 0;
    }
    FUN_0056eac0(*(undefined4 *)(iVar2 + 8),*(undefined4 *)(iVar2 + 0x10),uVar7);
    iVar2 = *(int *)(param_1 + 8);
    piVar10 = (int *)(iVar2 + 0x34);
    iVar3 = 0;
    if (0 < *(int *)(iVar2 + 0x234)) {
      do {
        if (*piVar10 == iVar1) {
          iVar3 = *(int *)(iVar2 + 0x38 + iVar3 * 8);
          goto LAB_005a4530;
        }
        iVar3 = iVar3 + 1;
        piVar10 = piVar10 + 2;
      } while (iVar3 < *(int *)(iVar2 + 0x234));
    }
    iVar3 = 0;
LAB_005a4530:
    piVar10 = (int *)(iVar2 + 0x238);
    iVar9 = 0;
    if (0 < *(int *)(iVar2 + 0x438)) {
      do {
        if (*piVar10 == iVar1) {
          iVar2 = *(int *)(iVar2 + 0x23c + iVar9 * 8);
          goto LAB_005a4560;
        }
        iVar9 = iVar9 + 1;
        piVar10 = piVar10 + 2;
      } while (iVar9 < *(int *)(iVar2 + 0x438));
    }
    iVar2 = 0;
LAB_005a4560:
    FUN_0056ed10(iVar2 + iVar3);
  }
  FUN_0056ea30(*(undefined4 *)(*(int *)(param_1 + 8) + 0x30));
  iVar2 = FUN_005a49f0(iVar1);
  if (iVar2 == 0) {
    FUN_0056bbb0(param_2,0x38);
    FUN_005a4c10(iVar1);
  }
  else {
    FUN_0056bb80(param_2,0x38);
  }
  iVar2 = FUN_005a4c10(iVar1);
  if (iVar2 == 0) {
    FUN_0056bbb0(param_2,0x39);
    FUN_005a49f0(iVar1);
  }
  else if ((iVar2 < 0x13) || (0x18 < iVar2)) {
    FUN_0056bb80(param_2,0x39);
  }
  else {
    FUN_0056bbe0(param_2,0x39);
  }
  if (*(int *)(param_1 + 0x8b8) < 1) {
    FUN_0056bb80(param_2,0x36);
  }
  else {
    FUN_0056bbb0(param_2,0x36);
  }
  if (*(int *)(param_1 + 0x884) + -1 <= *(int *)(param_1 + 0x8b8)) {
    FUN_0056bb80(param_2,0x37);
    return;
  }
  FUN_0056bbb0(param_2,0x37);
  return;
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_12   ab 0x005a4660   625 Byte
// Texte: STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

void __thiscall STY_Inventory__GetItemInfoByIndex_12(int param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  
  if ((param_3 < 0) || (*(int *)(param_1 + 0x884) <= param_3)) {
    uVar8 = 0xffffffff;
    uVar7 = 0;
    uVar6 = 0;
  }
  else {
    if (*(int *)(param_1 + 0x884) <= param_3) {
      TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
    }
    iVar1 = *(int *)(param_1 + 0x684 + param_3 * 8);
    iVar3 = FUN_00561370(iVar1);
    if (iVar3 == 0) {
      FUN_0056ba50(param_2,0,0,0xffffffff);
      return;
    }
    iVar2 = *(int *)(param_1 + 8);
    piVar5 = (int *)(iVar2 + 0x34);
    iVar4 = 0;
    if (0 < *(int *)(iVar2 + 0x234)) {
      do {
        if (*piVar5 == iVar1) {
          if (*(int *)(iVar2 + 0x38 + iVar4 * 8) != 0) goto LAB_005a47c5;
          break;
        }
        iVar4 = iVar4 + 1;
        piVar5 = piVar5 + 2;
      } while (iVar4 < *(int *)(iVar2 + 0x234));
    }
    piVar5 = (int *)(iVar2 + 0x238);
    iVar4 = 0;
    if (0 < *(int *)(iVar2 + 0x438)) {
      do {
        if (*piVar5 == iVar1) {
          if (*(int *)(iVar2 + 0x23c + iVar4 * 8) != 0) {
LAB_005a47c5:
            uVar8 = *(undefined4 *)(iVar3 + 0x14);
            uVar7 = *(undefined4 *)(iVar3 + 8);
            switch(*(undefined2 *)(iVar3 + 2)) {
            default:
              FUN_0056ba50(param_2,*(undefined4 *)(param_1 + 0x888),uVar7,uVar8);
              return;
            case 1:
              FUN_0056ba50(param_2,*(undefined4 *)(param_1 + 0x890),uVar7,uVar8);
              return;
            case 2:
              FUN_0056ba50(param_2,*(undefined4 *)(param_1 + 0x898),uVar7,uVar8);
              return;
            case 3:
              FUN_0056ba50(param_2,*(undefined4 *)(param_1 + 0x8a0),uVar7,uVar8);
              return;
            case 4:
              FUN_0056ba50(param_2,*(undefined4 *)(param_1 + 0x8a8),uVar7,uVar8);
              return;
            case 5:
              FUN_0056ba50(param_2,*(undefined4 *)(param_1 + 0x8b0),uVar7,uVar8);
              return;
            }
          }
          break;
        }
        iVar4 = iVar4 + 1;
        piVar5 = piVar5 + 2;
      } while (iVar4 < *(int *)(iVar2 + 0x438));
    }
    uVar8 = *(undefined4 *)(iVar3 + 0x14);
    uVar7 = *(undefined4 *)(iVar3 + 8);
    switch(*(undefined2 *)(iVar3 + 2)) {
    default:
      uVar6 = *(undefined4 *)(param_1 + 0x88c);
      break;
    case 1:
      uVar6 = *(undefined4 *)(param_1 + 0x894);
      break;
    case 2:
      uVar6 = *(undefined4 *)(param_1 + 0x89c);
      break;
    case 3:
      uVar6 = *(undefined4 *)(param_1 + 0x8a4);
      break;
    case 4:
      uVar6 = *(undefined4 *)(param_1 + 0x8ac);
      break;
    case 5:
      uVar6 = *(undefined4 *)(param_1 + 0x8b4);
    }
  }
  FUN_0056ba50(param_2,uVar6,uVar7,uVar8);
  return;
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_13   ab 0x005a4e40   614 Byte
// Texte: STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

undefined4 __thiscall STY_Inventory__GetItemInfoByIndex_13(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  int local_4;
  
  iVar2 = FUN_00561370(param_2);
  switch(*(undefined2 *)(iVar2 + 2)) {
  case 0:
    iVar2 = *(int *)(param_1 + 8);
    iVar3 = 0;
    local_4 = 0;
    if (0 < *(int *)(iVar2 + 0x438)) {
      if (*(int *)(iVar2 + 0x438) < 1) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      do {
        iVar1 = *(int *)(iVar2 + 0x23c + iVar3 * 8);
        iVar2 = FUN_00561370(*(undefined4 *)(iVar2 + 0x238 + iVar3 * 8));
        if (*(short *)(iVar2 + 2) == 0) {
          local_4 = local_4 + iVar1;
        }
        iVar2 = *(int *)(param_1 + 8);
        iVar3 = iVar3 + 1;
      } while (iVar3 < *(int *)(iVar2 + 0x438));
    }
    iVar2 = FUN_005613b0(*(undefined4 *)(*(int *)(param_1 + 8) + 0x2c));
    if (*(int *)(iVar2 + 0x2c) <= local_4) {
      return 0;
    }
    iVar2 = *(int *)(param_1 + 8);
    piVar4 = (int *)(iVar2 + 0x238);
    iVar3 = 0;
    if (0 < *(int *)(iVar2 + 0x438)) {
      do {
        if (*piVar4 == param_2) {
          if (*(int *)(iVar2 + 0x23c + iVar3 * 8) < 1) {
            return 1;
          }
          return 0;
        }
        iVar3 = iVar3 + 1;
        piVar4 = piVar4 + 2;
      } while (iVar3 < *(int *)(iVar2 + 0x438));
    }
    break;
  case 1:
    iVar2 = *(int *)(param_1 + 8);
    iVar3 = 0;
    local_4 = 0;
    if (0 < *(int *)(iVar2 + 0x438)) {
      if (*(int *)(iVar2 + 0x438) < 1) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      do {
        iVar1 = *(int *)(iVar2 + 0x23c + iVar3 * 8);
        iVar2 = FUN_00561370(*(undefined4 *)(iVar2 + 0x238 + iVar3 * 8));
        if (*(short *)(iVar2 + 2) == 1) {
          local_4 = local_4 + iVar1;
        }
        iVar2 = *(int *)(param_1 + 8);
        iVar3 = iVar3 + 1;
      } while (iVar3 < *(int *)(iVar2 + 0x438));
    }
    iVar2 = FUN_005613b0(*(undefined4 *)(*(int *)(param_1 + 8) + 0x2c));
    if (*(int *)(iVar2 + 0x24) <= local_4) {
      return 0;
    }
    break;
  case 2:
    iVar2 = *(int *)(param_1 + 8);
    iVar3 = 0;
    local_4 = 0;
    if (0 < *(int *)(iVar2 + 0x438)) {
      if (*(int *)(iVar2 + 0x438) < 1) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      do {
        iVar1 = *(int *)(iVar2 + 0x23c + iVar3 * 8);
        iVar2 = FUN_00561370(*(undefined4 *)(iVar2 + 0x238 + iVar3 * 8));
        if (*(short *)(iVar2 + 2) == 2) {
          local_4 = local_4 + iVar1;
        }
        iVar2 = *(int *)(param_1 + 8);
        iVar3 = iVar3 + 1;
      } while (iVar3 < *(int *)(iVar2 + 0x438));
    }
    iVar2 = FUN_005613b0(*(undefined4 *)(*(int *)(param_1 + 8) + 0x2c));
    if (*(int *)(iVar2 + 0x28) <= local_4) {
      return 0;
    }
    break;
  case 3:
    if (0 < *(int *)(*(int *)(param_1 + 8) + 0x438)) {
      return 0;
    }
    break;
  case 4:
    if (0 < *(int *)(*(int *)(param_1 + 8) + 0x438)) {
      return 0;
    }
    break;
  case 5:
    iVar2 = *(int *)(param_1 + 8);
    piVar4 = (int *)(iVar2 + 0x238);
    iVar3 = 0;
    if (0 < *(int *)(iVar2 + 0x438)) {
      while (*piVar4 != param_2) {
        iVar3 = iVar3 + 1;
        piVar4 = piVar4 + 2;
        if (*(int *)(iVar2 + 0x438) <= iVar3) {
          return 1;
        }
      }
      if (0 < *(int *)(iVar2 + 0x23c + iVar3 * 8)) {
        return 0;
      }
    }
  }
  return 1;
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_14   ab 0x005a50c0   2416 Byte
// Texte: STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

undefined4 __thiscall
STY_Inventory__GetItemInfoByIndex_14(int *param_1,undefined4 param_2,int param_3)

{
  short sVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int *piVar8;
  
  if (*(int *)(param_1[2] + 0x63c) == 0) {
    return 1;
  }
  iVar4 = param_1[0x466];
  if (iVar4 == 0) {
    iVar4 = (**(code **)(param_1[0x22f] + 8))(param_2,param_3);
    if (iVar4 < 1) {
      return 0;
    }
    if (3 < iVar4) {
      return 0;
    }
switchD_005a5116_caseD_2:
    uVar2 = (**(code **)(*param_1 + 4))(param_2,1);
    return uVar2;
  }
  if (iVar4 == 1) {
    uVar2 = (**(code **)(param_1[0x22f] + 8))(param_2,param_3);
    switch(uVar2) {
    case 0:
      goto switchD_005a5116_caseD_0;
    case 1:
      iVar4 = param_1[0x22e];
      if (param_1[0x221] <= iVar4) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      iVar5 = param_1[2];
      iVar4 = param_1[iVar4 * 2 + 0x1a1];
      piVar3 = (int *)(iVar5 + 0x238);
      iVar6 = 0;
      piVar8 = piVar3;
      if (0 < *(int *)(iVar5 + 0x438)) {
        do {
          if (*piVar8 == iVar4) {
            iVar7 = *(int *)(iVar5 + 0x23c + iVar6 * 8) + -1;
            *(int *)(iVar5 + 0x23c + iVar6 * 8) = iVar7;
            if (iVar7 < 1) {
              iVar7 = *(int *)(iVar5 + 0x438) + -1;
              *(int *)(iVar5 + 0x438) = iVar7;
              piVar3[iVar6 * 2] = piVar3[iVar7 * 2];
              *(undefined4 *)(iVar5 + 0x23c + iVar6 * 8) =
                   *(undefined4 *)(iVar5 + 0x23c + iVar7 * 8);
            }
            break;
          }
          iVar6 = iVar6 + 1;
          piVar8 = piVar8 + 2;
        } while (iVar6 < *(int *)(iVar5 + 0x438));
      }
      iVar5 = param_1[2];
      iVar6 = *(int *)(iVar5 + 0x234);
      piVar3 = (int *)(iVar5 + 0x34);
      iVar7 = 0;
      piVar8 = piVar3;
      if (0 < iVar6) {
        do {
          if (*piVar8 == iVar4) {
            iVar4 = *(int *)(iVar5 + 0x38 + iVar7 * 8) + 1;
            *(int *)(iVar5 + 0x38 + iVar7 * 8) = iVar4;
            if (0 < iVar4) goto LAB_005a52e2;
            iVar4 = *(int *)(iVar5 + 0x234) + -1;
            *(int *)(iVar5 + 0x234) = iVar4;
            piVar3[iVar7 * 2] = piVar3[iVar4 * 2];
            *(undefined4 *)(iVar5 + 0x38 + iVar7 * 8) = *(undefined4 *)(iVar5 + 0x38 + iVar4 * 8);
            (**(code **)(*param_1 + 4))(param_2,1);
            goto LAB_005a574c;
          }
          iVar7 = iVar7 + 1;
          piVar8 = piVar8 + 2;
        } while (iVar7 < iVar6);
      }
      piVar3[iVar6 * 2] = iVar4;
      *(undefined4 *)(iVar5 + 0x38 + *(int *)(iVar5 + 0x234) * 8) = 1;
      *(int *)(iVar5 + 0x234) = *(int *)(iVar5 + 0x234) + 1;
LAB_005a52e2:
      (**(code **)(*param_1 + 4))(param_2,1);
      break;
    case 2:
    case 3:
      goto switchD_005a5116_caseD_2;
    default:
      goto switchD_005a5116_default;
    }
LAB_005a574c:
    iVar4 = param_1[0x22e];
    if (param_1[0x221] <= iVar4) {
      TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
    }
    iVar4 = param_1[iVar4 * 2 + 0x1a1];
    uVar2 = FUN_005a4c10(iVar4);
    STY_Inventory__GetItemInfoByIndex_9(param_2,param_1[0x22e]);
    STY_Inventory__GetItemInfoByIndex_12(0,param_1[0x22e]);
    switch(uVar2) {
    case 0:
      CON_Cache<T>__Unlock_3(DAT_00692f9c,2);
      iVar5 = FUN_005a4c10(iVar4);
      if (iVar5 != 0) {
        return 0;
      }
      FUN_0056c280(param_2,0x39);
      FUN_005a49f0(iVar4);
      return 0;
    default:
      goto switchD_005a5116_caseD_0;
    case 0xd:
      param_1[0x466] = 0;
      uVar2 = FUN_00561430(0x2e);
      FUN_0058ad80(uVar2);
      (**(code **)(param_1[0x22f] + 4))(param_2,1);
      return 0;
    case 0xe:
      param_1[0x466] = 0;
      uVar2 = 0x2f;
      break;
    case 0xf:
      param_1[0x466] = 0;
      uVar2 = FUN_00561430(0x30);
      FUN_0058ad80(uVar2);
      (**(code **)(param_1[0x22f] + 4))(param_2,1);
      return 0;
    case 0x10:
      param_1[0x466] = 0;
      uVar2 = 0x31;
      break;
    case 0x11:
      param_1[0x466] = 0;
      uVar2 = FUN_00561430(0x32);
      FUN_0058ad80(uVar2);
      (**(code **)(param_1[0x22f] + 4))(param_2,1);
      return 0;
    case 0x12:
      param_1[0x466] = 0;
      uVar2 = 0x33;
      break;
    case 0x13:
      param_1[0x466] = 1;
      uVar2 = FUN_00561430(0x38);
      FUN_0058ad80(uVar2);
      (**(code **)(param_1[0x22f] + 4))(param_2,1);
      return 0;
    case 0x14:
      param_1[0x466] = 1;
      uVar2 = 0x39;
      break;
    case 0x15:
      param_1[0x466] = 1;
      uVar2 = FUN_00561430(0x3a);
      FUN_0058ad80(uVar2);
      (**(code **)(param_1[0x22f] + 4))(param_2,1);
      return 0;
    case 0x16:
      param_1[0x466] = 1;
      uVar2 = 0x3b;
      break;
    case 0x17:
      param_1[0x466] = 1;
      uVar2 = FUN_00561430(0x3c);
      FUN_0058ad80(uVar2);
      (**(code **)(param_1[0x22f] + 4))(param_2,1);
      return 0;
    case 0x18:
      param_1[0x466] = 1;
      uVar2 = 0x3d;
    }
LAB_005a54f2:
    uVar2 = FUN_00561430(uVar2);
    FUN_0058ad80(uVar2);
    (**(code **)(param_1[0x22f] + 4))(param_2,1);
switchD_005a5116_caseD_0:
    return 0;
  }
  if (iVar4 == 2) {
    uVar2 = (**(code **)(param_1[0x22f] + 8))(param_2,param_3);
    switch(uVar2) {
    case 0:
      goto switchD_005a5116_caseD_0;
    case 1:
      iVar4 = param_1[0x22e];
      if (param_1[0x221] <= iVar4) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      iVar5 = param_1[2];
      iVar4 = param_1[iVar4 * 2 + 0x1a1];
      piVar3 = (int *)(iVar5 + 0x34);
      iVar6 = 0;
      piVar8 = piVar3;
      if (0 < *(int *)(iVar5 + 0x234)) {
        do {
          if (*piVar8 == iVar4) {
            iVar7 = *(int *)(iVar5 + 0x38 + iVar6 * 8) + -1;
            *(int *)(iVar5 + 0x38 + iVar6 * 8) = iVar7;
            if (iVar7 < 1) {
              iVar7 = *(int *)(iVar5 + 0x234) + -1;
              *(int *)(iVar5 + 0x234) = iVar7;
              piVar3[iVar6 * 2] = piVar3[iVar7 * 2];
              *(undefined4 *)(iVar5 + 0x38 + iVar6 * 8) = *(undefined4 *)(iVar5 + 0x38 + iVar7 * 8);
            }
            break;
          }
          iVar6 = iVar6 + 1;
          piVar8 = piVar8 + 2;
        } while (iVar6 < *(int *)(iVar5 + 0x234));
      }
      iVar5 = param_1[2];
      iVar6 = *(int *)(iVar5 + 0x438);
      piVar3 = (int *)(iVar5 + 0x238);
      iVar7 = 0;
      piVar8 = piVar3;
      if (0 < iVar6) {
        do {
          if (*piVar8 == iVar4) {
            iVar4 = *(int *)(iVar5 + 0x23c + iVar7 * 8) + 1;
            *(int *)(iVar5 + 0x23c + iVar7 * 8) = iVar4;
            if (iVar4 < 1) {
              iVar4 = *(int *)(iVar5 + 0x438) + -1;
              *(int *)(iVar5 + 0x438) = iVar4;
              piVar3[iVar7 * 2] = piVar3[iVar4 * 2];
              *(undefined4 *)(iVar5 + 0x23c + iVar7 * 8) =
                   *(undefined4 *)(iVar5 + 0x23c + iVar4 * 8);
              uVar2 = (**(code **)(*param_1 + 4))(param_2,1);
              return uVar2;
            }
            goto LAB_005a51c9;
          }
          iVar7 = iVar7 + 1;
          piVar8 = piVar8 + 2;
        } while (iVar7 < iVar6);
      }
      piVar3[iVar6 * 2] = iVar4;
      *(undefined4 *)(iVar5 + 0x23c + *(int *)(iVar5 + 0x438) * 8) = 1;
      *(int *)(iVar5 + 0x438) = *(int *)(iVar5 + 0x438) + 1;
LAB_005a51c9:
      uVar2 = (**(code **)(*param_1 + 4))(param_2,1);
      return uVar2;
    case 2:
    case 3:
      goto switchD_005a5116_caseD_2;
    }
  }
switchD_005a5116_default:
  if (param_3 == 2) {
    if (param_1[0x221] + -1 <= param_1[0x22e]) {
LAB_005a5455:
      CON_Cache<T>__Unlock_3(DAT_00692f84,2);
      return 0;
    }
    iVar4 = param_1[0x22e] + 1;
    param_1[0x22e] = iVar4;
    STY_Inventory__GetItemInfoByIndex_9(param_2,iVar4);
    STY_Inventory__GetItemInfoByIndex_12(0,param_1[0x22e]);
    STY_Inventory__GetItemInfoByIndex_12(1,param_1[0x22e] + 1);
    STY_Inventory__GetItemInfoByIndex_12(2,param_1[0x22e] + 2);
    STY_Inventory__GetItemInfoByIndex_12(3,param_1[0x22e] + 3);
    if (param_1[0x221] + -1 <= param_1[0x22e]) goto LAB_005a5438;
    uVar2 = 0x37;
  }
  else {
    if (param_3 != 1) {
      if (param_3 != 3) {
        if (param_3 != 4) {
          if ((param_3 != 5) && (param_3 != 6)) {
            return 0;
          }
          CON_Cache<T>__Unlock_3(DAT_00692f80,2);
          return 1;
        }
        goto LAB_005a574c;
      }
      iVar4 = param_1[0x22e];
      if (param_1[0x221] <= iVar4) {
        TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
      }
      iVar4 = param_1[iVar4 * 2 + 0x1a1];
      iVar5 = FUN_005a49f0(iVar4);
      if (iVar5 == 0) {
        iVar6 = FUN_00561370(iVar4);
        sVar1 = *(short *)(iVar6 + 2);
        if (((((sVar1 == 0) || (sVar1 == 4)) || (sVar1 == 3)) || (sVar1 == 5)) &&
           (iVar6 = STY_Inventory__GetItemInfoByIndex_13(iVar4), iVar6 != 0)) {
          param_1[0x466] = 2;
          uVar2 = 0x3f;
          goto LAB_005a54f2;
        }
      }
      STY_Inventory__GetItemInfoByIndex_9(param_2,param_1[0x22e]);
      STY_Inventory__GetItemInfoByIndex_12(0,param_1[0x22e]);
      switch(iVar5) {
      case 0:
        CON_Cache<T>__Unlock_3(DAT_00692f9c,2);
        iVar5 = FUN_005a49f0(iVar4);
        if (iVar5 != 0) {
          return 0;
        }
        FUN_0056c280(param_2,0x38);
        FUN_005a4c10(iVar4);
        return 0;
      case 1:
        param_1[0x466] = 0;
        uVar2 = FUN_00561430(0x22);
        FUN_0058ad80(uVar2);
        (**(code **)(param_1[0x22f] + 4))(param_2,1);
        return 0;
      case 2:
        param_1[0x466] = 0;
        uVar2 = 0x23;
        break;
      case 3:
        param_1[0x466] = 0;
        uVar2 = FUN_00561430(0x24);
        FUN_0058ad80(uVar2);
        (**(code **)(param_1[0x22f] + 4))(param_2,1);
        return 0;
      case 4:
        param_1[0x466] = 0;
        uVar2 = 0x25;
        break;
      case 5:
        param_1[0x466] = 0;
        uVar2 = FUN_00561430(0x26);
        FUN_0058ad80(uVar2);
        (**(code **)(param_1[0x22f] + 4))(param_2,1);
        return 0;
      case 6:
        param_1[0x466] = 0;
        uVar2 = 0x27;
        break;
      case 7:
        param_1[0x466] = 0;
        uVar2 = FUN_00561430(0x28);
        FUN_0058ad80(uVar2);
        (**(code **)(param_1[0x22f] + 4))(param_2,1);
        return 0;
      case 8:
        param_1[0x466] = 0;
        uVar2 = 0x29;
        break;
      case 9:
        param_1[0x466] = 0;
        uVar2 = FUN_00561430(0x2a);
        FUN_0058ad80(uVar2);
        (**(code **)(param_1[0x22f] + 4))(param_2,1);
        return 0;
      case 10:
        param_1[0x466] = 0;
        uVar2 = 0x2b;
        break;
      case 0xb:
        param_1[0x466] = 0;
        uVar2 = FUN_00561430(0x2c);
        FUN_0058ad80(uVar2);
        (**(code **)(param_1[0x22f] + 4))(param_2,1);
        return 0;
      case 0xc:
        param_1[0x466] = 0;
        uVar2 = 0x2d;
        break;
      default:
        goto switchD_005a5116_caseD_0;
      }
      goto LAB_005a54f2;
    }
    if (param_1[0x22e] < 1) goto LAB_005a5455;
    iVar4 = param_1[0x22e] + -1;
    param_1[0x22e] = iVar4;
    STY_Inventory__GetItemInfoByIndex_9(param_2,iVar4);
    STY_Inventory__GetItemInfoByIndex_12(0,param_1[0x22e]);
    STY_Inventory__GetItemInfoByIndex_12(1,param_1[0x22e] + 1);
    STY_Inventory__GetItemInfoByIndex_12(2,param_1[0x22e] + 2);
    STY_Inventory__GetItemInfoByIndex_12(3,param_1[0x22e] + 3);
    if (param_1[0x22e] < 1) goto LAB_005a5438;
    uVar2 = 0x36;
  }
  FUN_0056c280(param_2,uVar2);
LAB_005a5438:
  CON_Cache<T>__Unlock_3(DAT_00692f88,2);
  return 0;
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_15   ab 0x005a6100   267 Byte
// Texte: STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

undefined4 __fastcall STY_Inventory__GetItemInfoByIndex_15(int param_1)

{
  bool bVar1;
  bool bVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  
  iVar4 = *(int *)(param_1 + 8);
  iVar5 = 0;
  bVar1 = false;
  bVar2 = false;
  if (0 < *(int *)(iVar4 + 0x438)) {
    if (*(int *)(iVar4 + 0x438) < 1) {
      TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
    }
    do {
      iVar4 = *(int *)(iVar4 + 0x238 + iVar5 * 8);
      iVar3 = FUN_00561370(iVar4);
      if ((*(short *)(iVar3 + 2) == 0) &&
         (((((bVar1 = true, iVar4 == 4 || (iVar4 == 5)) || (iVar4 == 6)) ||
           ((iVar4 == 7 || (iVar4 == 9)))) || ((iVar4 == 10 || ((iVar4 == 0xb || (iVar4 == 0xc))))))
         )) {
        bVar2 = true;
      }
      iVar4 = *(int *)(param_1 + 8);
      iVar5 = iVar5 + 1;
    } while (iVar5 < *(int *)(iVar4 + 0x438));
    if (bVar1) {
      if (bVar2) {
        iVar4 = *(int *)(param_1 + 8);
        iVar5 = 0;
        if (0 < *(int *)(iVar4 + 0x438)) {
          if (*(int *)(iVar4 + 0x438) < 1) {
            TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
          }
          do {
            iVar4 = FUN_00561370(*(undefined4 *)(iVar4 + 0x238 + iVar5 * 8));
            if (*(short *)(iVar4 + 2) == 3) break;
            iVar4 = *(int *)(param_1 + 8);
            iVar5 = iVar5 + 1;
          } while (iVar5 < *(int *)(iVar4 + 0x438));
        }
        if (iVar5 == *(int *)(*(int *)(param_1 + 8) + 0x438)) {
          return 2;
        }
      }
      return 0;
    }
  }
  return 1;
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_18   ab 0x005a6210   1147 Byte
// Texte: STY_Inventory::GetItemInfoByIndex(), illegal item index
// --------------------------------------------

undefined4 __thiscall
STY_Inventory__GetItemInfoByIndex_18(int *param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined2 *puVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  undefined2 uStack_414;
  undefined2 uStack_412;
  undefined4 uStack_404;
  char acStack_400 [1024];
  
  FUN_00565ce0();
  FUN_00565ce0();
  FUN_00565ce0();
  iVar5 = 0;
  if (param_1[0x4e2] == 0) {
    iVar5 = (**(code **)(param_1[0x2ab] + 8))(param_2,param_3);
    if ((0 < iVar5) && (iVar5 < 4)) {
      uVar4 = (**(code **)(*param_1 + 4))(param_2,1);
LAB_005a6660:
      FUN_00565cf0();
      FUN_00565cf0();
      FUN_00565cf0();
      return uVar4;
    }
    goto switchD_005a625e_default;
  }
  if (param_1[0x4e2] == 1) {
    iVar5 = (**(code **)(param_1[0x2ab] + 8))(param_2,param_3);
    if (iVar5 == 1) {
LAB_005a64c2:
      FUN_00565cf0();
      FUN_00565cf0();
      FUN_00565cf0();
      return 3;
    }
    if ((1 < iVar5) && (iVar5 < 4)) {
      uVar4 = (**(code **)(*param_1 + 4))(param_2,1);
      goto LAB_005a6660;
    }
    goto switchD_005a625e_default;
  }
  switch(param_3) {
  case 1:
  case 4:
    iVar5 = param_1[0x1a7];
    if (iVar5 == 0) {
      CON_Cache<T>__Unlock_3(DAT_00692f88,2);
      param_1[0x1a7] = 2;
      FUN_005a5f40(param_2);
      goto switchD_005a625e_default;
    }
    if ((0 < iVar5) && (iVar5 < 3)) {
LAB_005a6537:
      CON_Cache<T>__Unlock_3(DAT_00692f84,2);
    }
    break;
  case 2:
  case 3:
    iVar5 = param_1[0x1a7];
    if (-1 < iVar5) {
      if (iVar5 < 2) goto LAB_005a6537;
      if (iVar5 == 2) {
        CON_Cache<T>__Unlock_3(DAT_00692f88,2);
        param_1[0x1a7] = 0;
        FUN_005a5f40(param_2);
        goto switchD_005a625e_default;
      }
    }
    break;
  case 5:
    iVar1 = param_1[0x1a7];
    if (iVar1 == 0) {
      iVar1 = STY_Inventory__GetItemInfoByIndex_15();
      if (iVar1 == 0) {
        CON_Cache<T>__Unlock_3(DAT_00692f80,2);
        goto LAB_005a64c2;
      }
      if (iVar1 == 1) {
        param_1[0x4e2] = 0;
        uVar4 = FUN_00561430(1);
        FUN_0058ad80(uVar4);
        (**(code **)(param_1[0x2ab] + 4))(param_2,1);
      }
      else if (iVar1 == 2) {
        puVar2 = (undefined2 *)FUN_00561430(2);
        str_copy(acStack_400,*(undefined4 *)(puVar2 + 2));
        uStack_404 = 0;
        while (acStack_400[0] != '*') {
          iVar1 = uStack_404 + 1;
          uStack_404 = uStack_404 + 1;
          acStack_400[0] = acStack_400[iVar1];
        }
        acStack_400[uStack_404] = '\0';
        FUN_00520670(acStack_400,&DAT_00603db8);
        iVar1 = param_1[2];
        if (0 < *(int *)(iVar1 + 0x438)) {
          if (*(int *)(iVar1 + 0x438) < 1) {
            TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
          }
          do {
            iVar1 = *(int *)(iVar1 + 0x238 + iVar5 * 8);
            iVar3 = FUN_00561370(iVar1);
            if (((((iVar1 == 4) || (iVar1 == 5)) || (iVar1 == 6)) || ((iVar1 == 7 || (iVar1 == 9))))
               || ((iVar1 == 10 || ((iVar1 == 0xb || (iVar1 == 0xc)))))) {
              FUN_00520670(acStack_400,*(undefined4 *)(iVar3 + 8));
              FUN_00520670(acStack_400,&DAT_0065ab84);
            }
            iVar1 = param_1[2];
            iVar5 = iVar5 + 1;
          } while (iVar5 < *(int *)(iVar1 + 0x438));
        }
        iVar5 = str_len(acStack_400);
        acStack_400[iVar5 + -2] = '.';
        FUN_00520670(acStack_400,*(int *)(puVar2 + 2) + 1 + uStack_404);
        param_1[0x4e2] = 1;
        FUN_00565d00(acStack_400);
        uStack_414 = *puVar2;
        FUN_00565d00(*(undefined4 *)(puVar2 + 6));
        FUN_00565d00(*(undefined4 *)(puVar2 + 4));
        uStack_412 = puVar2[1];
        FUN_0058ad80(&uStack_414);
        (**(code **)(param_1[0x2ab] + 4))(param_2,1);
      }
    }
    else {
      if (iVar1 == 1) {
        CON_Cache<T>__Unlock_3(DAT_00692f80,2);
        FUN_00565cf0();
        FUN_00565cf0();
        FUN_00565cf0();
        return 2;
      }
      if (iVar1 == 2) goto LAB_005a65ac;
    }
    goto switchD_005a625e_default;
  case 6:
LAB_005a65ac:
    CON_Cache<T>__Unlock_3(DAT_00692f80,2);
    FUN_00565cf0();
    FUN_00565cf0();
    FUN_00565cf0();
    return 1;
  default:
    goto switchD_005a625e_default;
  }
  FUN_005a5f40(param_2);
switchD_005a625e_default:
  FUN_00565cf0();
  FUN_00565cf0();
  FUN_00565cf0();
  return 0;
}



