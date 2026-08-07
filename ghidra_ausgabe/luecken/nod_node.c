// Muster: NOD_Node   6 Funktionen, 1651 Byte

// --------------------------------------------
// NOD_Node__BindThread   ab 0x00441a60   86 Byte
// Texte: NOD_Node::BindThread(), node is not a script node
// --------------------------------------------

void __thiscall NOD_Node__BindThread(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  
  if (param_2 != 0) {
    iVar1 = FUN_0048d2f0(param_2);
    if (iVar1 == 0) {
      TERMINATION(s_NOD_Node__BindThread___0060e010,s_node_is_not_a_script_node_0060e028);
    }
    FUN_0043e670(param_2);
    *(undefined4 *)(param_1 + 0x4c) = param_3;
    return;
  }
  FUN_0043e670(0);
  *(undefined4 *)(param_1 + 0x4c) = 0xffffffff;
  return;
}



// --------------------------------------------
// NOD_Node__LoadSons   ab 0x00441dc0   719 Byte
// Texte: (%s): Get "%s" in file "%s" failed, Child, Class, DES FILE ERROR, NOD_Node::LoadSons(), NameCLA, NameNOD, NameOSD, NameSON, unknown class "%s" in des file "%s" for node "%s"
// --------------------------------------------

void __fastcall NOD_Node__LoadSons(int *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  int *piVar4;
  int *piVar5;
  int *piVar6;
  undefined1 local_350 [16];
  int local_340;
  undefined1 local_33c [16];
  int *local_32c;
  int iStack_324;
  int aiStack_320 [8];
  undefined1 auStack_300 [252];
  char acStack_204 [4];
  undefined1 local_200 [256];
  undefined1 local_100 [256];
  
  local_340 = 0;
  local_32c = param_1;
  do {
    iVar1 = FUN_00507140(local_350,s_Child_0060e160,local_340);
    if (iVar1 == 0) {
      return;
    }
    iVar1 = FUN_00507980(local_33c,s_Class_0060e158);
    if (iVar1 == 0) {
      iVar1 = FUN_005078f0(s_NameOSD_0060e150);
      if (iVar1 == 0) {
        local_200[0] = 0;
      }
      else {
        FUN_00507710(s_NameOSD_0060e150,local_200);
      }
      iVar1 = FUN_00507710(s_NameCLA_0060e148,local_100);
      if (iVar1 == 0) {
        FUN_0052e040();
        uVar2 = FUN_0052e130();
        uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                             s_NOD_Node__LoadSons___0060e130,s_NameCLA_0060e148,uVar2);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
      }
      iVar1 = FUN_005078f0(s_NameNOD_0060e128);
      if (iVar1 == 0) {
        iVar1 = FUN_005078f0(s_NameSON_0060e120);
        if (iVar1 == 0) goto LAB_00441faf;
        FUN_00507710(s_NameSON_0060e120,auStack_300);
      }
      else {
        FUN_00507710(s_NameNOD_0060e128,auStack_300);
      }
    }
    else {
      iVar1 = FUN_005078f0(s_NameOSD_0060e150);
      if (iVar1 == 0) {
        local_200[0] = 0;
      }
      else {
        FUN_00507710(s_NameOSD_0060e150,local_200);
      }
      iVar1 = FUN_00507710(s_NameCLA_0060e148,local_100);
      if (iVar1 == 0) {
        FUN_0052e040();
        uVar2 = FUN_0052e130();
        uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                             s_NOD_Node__LoadSons___0060e130,s_NameCLA_0060e148,uVar2);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
      }
      iVar1 = FUN_005078f0(s_NameNOD_0060e128);
      if (iVar1 == 0) {
        iVar1 = FUN_005078f0(s_NameSON_0060e120);
        if (iVar1 == 0) {
LAB_00441faf:
          auStack_300[0] = 0;
        }
        else {
          FUN_00507710(s_NameSON_0060e120,auStack_300);
        }
      }
      else {
        FUN_00507710(s_NameNOD_0060e128,auStack_300);
      }
    }
    puVar3 = (undefined4 *)FUN_0043e3d0(local_100);
    if (puVar3 == (undefined4 *)0x0) {
      piVar4 = (int *)0x0;
LAB_00442002:
      FUN_0052e040(auStack_300);
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s_unknown_class___s__in_des_file___0060e0ec,local_100,uVar2);
      TERMINATION(s_NOD_Node__LoadSons___0060e130,uVar2);
    }
    else {
      piVar4 = (int *)(*(code *)*puVar3)();
      FUN_004cdf50(auStack_300);
      piVar4[5] = iStack_324;
      piVar5 = aiStack_320;
      piVar6 = piVar4 + 6;
      for (iVar1 = 8; iVar1 != 0; iVar1 = iVar1 + -1) {
        *piVar6 = *piVar5;
        piVar5 = piVar5 + 1;
        piVar6 = piVar6 + 1;
      }
      FUN_0043e570();
      if (piVar4 == (int *)0x0) goto LAB_00442002;
    }
    (**(code **)(*local_32c + 0x34))(piVar4);
    if (acStack_204[0] == '\0') {
      (**(code **)(*piVar4 + 0x10))(&stack0xfffffcac,&stack0xfffffcac);
    }
    else {
      (**(code **)(*piVar4 + 0x14))(&stack0xfffffcac,acStack_204);
    }
    local_340 = local_340 + 1;
    if (0x1f < local_340) {
      return;
    }
  } while( true );
}



// --------------------------------------------
// NOD_Node__SubSon_2   ab 0x00442190   130 Byte
// Texte: NOD_Node::SubSon(), son not found
// --------------------------------------------

int * __thiscall NOD_Node__SubSon_2(int param_1,int *param_2)

{
  undefined4 *puVar1;
  uint uVar2;
  int *piVar3;
  int iVar4;
  
  if (param_2 == (int *)0x0) {
    return (int *)0x0;
  }
  if (param_2[0xe] == param_1) {
    uVar2 = (uint)*(ushort *)(param_1 + 0x56);
    iVar4 = 0;
    if (uVar2 != 0) {
      piVar3 = *(int **)(param_1 + 0x50);
      do {
        if ((int *)*piVar3 == param_2) break;
        iVar4 = iVar4 + 1;
        piVar3 = piVar3 + 1;
      } while (iVar4 < (int)uVar2);
    }
    if ((int)uVar2 <= iVar4) {
      TERMINATION(s_NOD_Node__SubSon___0060e168,s_son_not_found_0060e17c);
    }
    iVar4 = iVar4 + 1;
    if (iVar4 < (int)(uint)*(ushort *)(param_1 + 0x56)) {
      do {
        puVar1 = (undefined4 *)(*(int *)(param_1 + 0x50) + iVar4 * 4);
        puVar1[-1] = *puVar1;
        iVar4 = iVar4 + 1;
      } while (iVar4 < (int)(uint)*(ushort *)(param_1 + 0x56));
    }
    *(short *)(param_1 + 0x56) = *(short *)(param_1 + 0x56) + -1;
    (**(code **)(*param_2 + 0x30))(0);
  }
  return param_2;
}



// --------------------------------------------
// NOD_Node__GC_AddNode   ab 0x00442220   78 Byte
// Texte: NOD_Node::GC_AddNode(), gc overflow
// --------------------------------------------

void NOD_Node__GC_AddNode(int param_1)

{
  if (0x400 < DAT_006676c4) {
    TERMINATION(s_NOD_Node__GC_AddNode___0060e18c,s_gc_overflow_0060e1a4);
  }
  DAT_006676c4 = DAT_006676c4 + 1;
  FUN_0043e670(param_1);
  if (*(int *)(param_1 + 8) != 0) {
    FUN_00537320(param_1);
  }
  return;
}



// --------------------------------------------
// NOD_Node__GC_DoGarbageCollection   ab 0x00442270   505 Byte
// Texte: /garbage, NOD_Node::GC_DoGarbageCollection(), illegal gc state, no garbage node
// --------------------------------------------

void NOD_Node__GC_DoGarbageCollection(void)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iStack00000004;
  int *piStack00000008;
  int in_stack_000000b8;
  
  FUN_0042a460();
  piStack00000008 = *(int **)(DAT_0066323c + 0x90);
  if (*(int **)(DAT_0066323c + 0x90) == (int *)0x0) {
    FUN_004ce1b0(s__garbage_0060e1f8);
    piVar2 = (int *)FUN_004418d0(&stack0x0000000c);
    iVar6 = 4;
    do {
      FUN_0043e570();
      iVar6 = iVar6 + -1;
    } while (iVar6 != 0);
    FUN_0043e570();
    piStack00000008 = piVar2;
    if (piVar2 == (int *)0x0) {
      TERMINATION(s_NOD_Node__GC_DoGarbageCollection_0060e1c4,s_no_garbage_node_0060e1e8);
    }
  }
  do {
    do {
      if (DAT_006676c4 == 0) {
        return;
      }
      iVar5 = 0;
      DAT_006676c4 = DAT_006676c4 + -1;
      iVar6 = *(int *)(&DAT_006636c4 + DAT_006676c4 * 0x10);
    } while ((iVar6 == 0) || ((*(byte *)(iVar6 + 0xc) & 4) != 0));
    iVar8 = 0;
    iVar7 = 0;
    if (*(short *)(iVar6 + 0x56) != 0) {
      do {
        iVar3 = FUN_00442470(*(undefined4 *)(*(int *)(iVar6 + 0x50) + iVar7 * 4),&stack0x000000b8,
                             &stack0x00000000,0x1000);
        if (iVar3 == 0) goto LAB_00442369;
        iVar7 = iVar7 + 1;
      } while (iVar7 < (int)(uint)*(ushort *)(iVar6 + 0x56));
    }
    in_stack_000000b8 = iVar6;
    iVar8 = 1;
LAB_00442369:
    iStack00000004 = 0;
    if (iVar8 != 0) {
      piVar2 = &stack0x000000b8;
      piVar4 = &stack0x000000b8;
      do {
        piVar1 = (int *)*piVar4;
        if ((*(byte *)(piVar1 + 3) & 4) == 0) {
          iVar6 = (**(code **)(*piVar1 + 0x48))();
          if (iVar6 == 0) {
            iStack00000004 = iStack00000004 + 1;
            piVar1[3] = piVar1[3] | 4;
            *piVar2 = (int)piVar1;
            piVar2 = piVar2 + 1;
          }
          else if (iVar6 == 1) {
            if ((int *)piVar1[0xe] != (int *)0x0) {
              (**(code **)(*(int *)piVar1[0xe] + 0x38))(piVar1);
            }
            (**(code **)(*piStack00000008 + 0x34))(piVar1);
          }
          else if (iVar6 != 2) {
            TERMINATION(s_NOD_Node__GC_DoGarbageCollection_0060e1c4,s_illegal_gc_state_0060e1b0);
          }
        }
        iVar5 = iVar5 + 1;
        piVar4 = piVar4 + 1;
      } while (iVar5 < iVar8);
      if (0 < iStack00000004) {
        piVar2 = &stack0x000000b8;
        iVar6 = iStack00000004;
        do {
          if ((*(byte *)((int *)*piVar2 + 3) & 2) != 0) {
            (**(code **)(*(int *)*piVar2 + 0x28))();
          }
          piVar2 = piVar2 + 1;
          iVar6 = iVar6 + -1;
        } while (iVar6 != 0);
        piVar2 = &stack0x000000b8;
        iVar6 = iStack00000004;
        do {
          piVar4 = *(int **)(*piVar2 + 0x38);
          if (piVar4 != (int *)0x0) {
            (**(code **)(*piVar4 + 0x38))(*piVar2);
          }
          piVar2 = piVar2 + 1;
          iVar6 = iVar6 + -1;
        } while (iVar6 != 0);
        piVar2 = &stack0x000000b8;
        do {
          if ((int *)*piVar2 != (int *)0x0) {
            (**(code **)(*(int *)*piVar2 + 4))(1);
          }
          piVar2 = piVar2 + 1;
          iStack00000004 = iStack00000004 + -1;
        } while (iStack00000004 != 0);
      }
    }
  } while( true );
}



// --------------------------------------------
// NOD_Node__SubSon   ab 0x004424e0   133 Byte
// Texte: NOD_Node::SubSon(), son not found
// --------------------------------------------

void __thiscall NOD_Node__SubSon(int param_1,int param_2)

{
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  int *piVar5;
  
  iVar2 = param_2;
  NOD_Message__Allocate_94(param_2,&param_2);
  if (param_2 != 0) {
    uVar3 = (uint)*(ushort *)(param_1 + 0x56);
    iVar4 = 0;
    if (uVar3 != 0) {
      piVar5 = *(int **)(param_1 + 0x50);
      do {
        if (*piVar5 == param_2) break;
        iVar4 = iVar4 + 1;
        piVar5 = piVar5 + 1;
      } while (iVar4 < (int)uVar3);
    }
    if (iVar4 < (int)uVar3) {
      iVar4 = iVar4 + 1;
      if (iVar4 < (int)uVar3) {
        do {
          puVar1 = (undefined4 *)(*(int *)(param_1 + 0x50) + iVar4 * 4);
          puVar1[-1] = *puVar1;
          iVar4 = iVar4 + 1;
        } while (iVar4 < (int)(uint)*(ushort *)(param_1 + 0x56));
      }
      *(short *)(param_1 + 0x56) = *(short *)(param_1 + 0x56) + -1;
    }
    else {
      TERMINATION(s_NOD_Node__SubSon___0060e168,s_son_not_found_0060e17c);
    }
  }
  NOD_Message__Allocate_25(iVar2,&param_2);
  return;
}



