// Muster: NOD_PhysicalCharacter   1 Funktionen, 3145 Byte

// --------------------------------------------
// NOD_PhysicalCharacter__ParseIniFile   ab 0x004947a0   3145 Byte
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, Animation, AnimationFile, Attack, Avoidance, CON_Cache::Allocate() file not found, CON_Cache<T>::Allocate() - cache overflow, Child, ChildIndex, ChildTransformation, ... (+13)
// --------------------------------------------

void __thiscall NOD_PhysicalCharacter__ParseIniFile(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined4 *puVar4;
  int *piVar5;
  int *piVar6;
  undefined4 *puVar7;
  uint uVar8;
  int iVar9;
  int iVar10;
  undefined4 *puVar11;
  char *pcVar12;
  int iStack_300;
  int iStack_2fc;
  undefined1 auStack_2e8 [16];
  undefined1 auStack_2d8 [16];
  undefined1 auStack_2c8 [4];
  undefined1 auStack_2c4 [16];
  undefined1 auStack_2b4 [16];
  undefined1 auStack_2a4 [16];
  undefined1 auStack_294 [16];
  undefined1 auStack_284 [16];
  undefined1 auStack_274 [16];
  undefined1 auStack_264 [16];
  undefined1 auStack_254 [16];
  undefined1 auStack_244 [16];
  undefined1 auStack_234 [260];
  undefined1 auStack_130 [256];
  undefined1 auStack_30 [48];
  
  iVar1 = FUN_00507980(auStack_2c4,s_Animation_0060d354);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_PhysicalCharacter__ParseIniF_00613678,s_Animation_0060d354,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507710(s_AnimationFile_00613668,auStack_130);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_NOD_PhysicalCharacter__ParseIniF_00613678,s_AnimationFile_00613668,uVar2)
    ;
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  piVar5 = (int *)DAT_00661570[5];
  FUN_005ed530();
  if (*piVar5 == 0) {
    piVar6 = (int *)0x0;
    iVar1 = 0;
    if (0 < piVar5[0x86]) {
      iStack_300 = 0;
      do {
        piVar3 = (int *)(iStack_300 + piVar5[0x84]);
        if (*piVar3 == 0) {
          if (piVar6 == (int *)0x0) {
            piVar6 = piVar3;
          }
        }
        else {
          iVar10 = FUN_00520710(piVar3[2],auStack_130);
          if (iVar10 == 0) {
            piVar5 = (int *)(piVar5[0x84] + 4 + iVar1 * 0xc);
            *piVar5 = *piVar5 + 1;
            FUN_005216e0();
            iVar1 = iVar1 + 1;
            goto LAB_00494acd;
          }
        }
        iVar1 = iVar1 + 1;
        iStack_300 = iStack_300 + 0xc;
      } while (iVar1 < piVar5[0x86]);
    }
    FUN_005209c0(auStack_234,piVar5 + 1,piVar5 + 2,auStack_130,0);
    iVar1 = FUN_00521ff0(auStack_234,(int)piVar5 + 0x109,piVar5[0x83]);
    if (iVar1 == 0) {
      TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_234);
      FUN_005216e0();
      iVar1 = 0;
    }
    else {
      if (piVar5[0x86] <= piVar5[0x85]) {
        if (piVar5[0x88] == 0) {
          TERMINATION(s_CON_Cache<T>__Allocate_____cache_006040c8,auStack_130);
        }
        else {
          puVar4 = (undefined4 *)operator_new(piVar5[0x86] * 0x18);
          puVar7 = (undefined4 *)piVar5[0x84];
          puVar11 = puVar4;
          for (uVar8 = piVar5[0x86] * 3 & 0x3fffffff; uVar8 != 0; uVar8 = uVar8 - 1) {
            *puVar11 = *puVar7;
            puVar7 = puVar7 + 1;
            puVar11 = puVar11 + 1;
          }
          for (iVar10 = 0; iVar10 != 0; iVar10 = iVar10 + -1) {
            *(undefined1 *)puVar11 = *(undefined1 *)puVar7;
            puVar7 = (undefined4 *)((int)puVar7 + 1);
            puVar11 = (undefined4 *)((int)puVar11 + 1);
          }
          operator_delete(piVar5[0x84]);
          piVar5[0x84] = (int)puVar4;
          piVar5[0x86] = piVar5[0x86] << 1;
          piVar6 = puVar4 + piVar5[0x85] * 3;
        }
      }
      piVar6[1] = 1;
      iVar10 = operator_new(0x114);
      if (iVar10 == 0) {
        iVar10 = 0;
      }
      else {
        iVar10 = FUN_00434750();
      }
      *piVar6 = iVar10;
      iVar10 = str_len(auStack_130);
      iVar10 = operator_new(iVar10 + 1);
      piVar6[2] = iVar10;
      str_copy(iVar10,auStack_130);
      iVar1 = NOD_Character__ParseIniFile(iVar1);
      if (iVar1 == 0) {
        iVar1 = *piVar6;
        if (iVar1 != 0) {
          CON_Cache<T>__Unlock_26();
          operator_delete(iVar1);
        }
        *piVar6 = 0;
        operator_delete(piVar6[2]);
        piVar6[2] = 0;
        TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_234);
        FUN_005216e0();
        iVar1 = 0;
      }
      else {
        iVar1 = ((int)piVar6 - piVar5[0x84]) / 0xc + 1;
        piVar5[0x85] = piVar5[0x85] + 1;
        FUN_005216e0();
      }
    }
  }
  else {
    FUN_005216e0();
    iVar1 = 0;
  }
LAB_00494acd:
  *(int *)(param_1 + 0x3b8) = iVar1;
  piVar5 = (int *)DAT_00661570[5];
  if (((*piVar5 == 0) && (0 < iVar1)) && (iVar1 <= piVar5[0x86])) {
    iVar1 = *(int *)(piVar5[0x84] + -0xc + iVar1 * 0xc);
  }
  else {
    iVar1 = 0;
  }
  *(undefined4 *)(param_1 + 0x62c) = *(undefined4 *)(iVar1 + 0x10c);
  *(undefined4 *)(param_1 + 0x628) = *(undefined4 *)(iVar1 + 0x108);
  FUN_004cfea0(iVar1,*(undefined4 *)(iVar1 + 0x110));
  FUN_004cf820(param_1 + 0x3bc);
  uVar2 = operator_new(*(int *)(iVar1 + 0x108) << 2);
  *(undefined4 *)(param_1 + 0x3c8) = uVar2;
  iVar10 = 0;
  if (0 < *(int *)(iVar1 + 0x108)) {
    do {
      uVar2 = FUN_004cf880(*(int *)(iVar1 + 0x104) + iVar10 * 8);
      *(undefined4 *)(*(int *)(param_1 + 0x3c8) + iVar10 * 4) = uVar2;
      iVar10 = iVar10 + 1;
    } while (iVar10 < *(int *)(iVar1 + 0x108));
  }
  iVar10 = FUN_00507980(auStack_254,s_Control_00610500);
  if (iVar10 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_PhysicalCharacter__ParseIniF_00613678,s_Control_00610500,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  MOT_OldOne__Parse(auStack_254);
  iVar10 = FUN_00507980(auStack_2b4,s_Collision_006104f4);
  if (iVar10 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_PhysicalCharacter__ParseIniF_00613678,s_Collision_006104f4,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_004c9670(auStack_2b4,**(undefined4 **)(param_1 + 0x3c4),*(undefined4 **)(param_1 + 0x3c4),
               param_1 + 0x3bc);
  piVar5 = (int *)*DAT_00661570;
  FUN_005ed530();
  if (*piVar5 == 0) {
    piVar6 = (int *)0x0;
    iVar10 = 0;
    if (0 < piVar5[0x86]) {
      iStack_2fc = 0;
      do {
        piVar3 = (int *)(iStack_2fc + piVar5[0x84]);
        if (*piVar3 == 0) {
          if (piVar6 == (int *)0x0) {
            piVar6 = piVar3;
          }
        }
        else {
          iVar9 = FUN_00520710(piVar3[2],s_box_msh_00613660);
          if (iVar9 == 0) {
            piVar5 = (int *)(piVar5[0x84] + 4 + iVar10 * 0xc);
            *piVar5 = *piVar5 + 1;
            FUN_005216e0();
            iVar10 = iVar10 + 1;
            goto LAB_00494ec9;
          }
        }
        iVar10 = iVar10 + 1;
        iStack_2fc = iStack_2fc + 0xc;
      } while (iVar10 < piVar5[0x86]);
    }
    FUN_005209c0(auStack_234,piVar5 + 1,piVar5 + 2,s_box_msh_00613660,0);
    iVar10 = FUN_00521ff0(auStack_234,(int)piVar5 + 0x109,piVar5[0x83]);
    if (iVar10 == 0) {
      TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_234);
      FUN_005216e0();
      iVar10 = 0;
    }
    else {
      if (piVar5[0x86] <= piVar5[0x85]) {
        if (piVar5[0x88] == 0) {
          TERMINATION(s_CON_Cache<T>__Allocate_____cache_006040c8,s_box_msh_00613660);
        }
        else {
          puVar4 = (undefined4 *)operator_new(piVar5[0x86] * 0x18);
          puVar7 = (undefined4 *)piVar5[0x84];
          puVar11 = puVar4;
          for (uVar8 = piVar5[0x86] * 3 & 0x3fffffff; uVar8 != 0; uVar8 = uVar8 - 1) {
            *puVar11 = *puVar7;
            puVar7 = puVar7 + 1;
            puVar11 = puVar11 + 1;
          }
          for (iVar9 = 0; iVar9 != 0; iVar9 = iVar9 + -1) {
            *(undefined1 *)puVar11 = *(undefined1 *)puVar7;
            puVar7 = (undefined4 *)((int)puVar7 + 1);
            puVar11 = (undefined4 *)((int)puVar11 + 1);
          }
          operator_delete(piVar5[0x84]);
          piVar5[0x84] = (int)puVar4;
          piVar5[0x86] = piVar5[0x86] << 1;
          piVar6 = puVar4 + piVar5[0x85] * 3;
        }
      }
      piVar6[1] = 1;
      iVar9 = operator_new(0x24);
      if (iVar9 == 0) {
        iVar9 = 0;
      }
      else {
        iVar9 = FUN_00528f10();
      }
      *piVar6 = iVar9;
      iVar9 = str_len(s_box_msh_00613660);
      iVar9 = operator_new(iVar9 + 1);
      piVar6[2] = iVar9;
      str_copy(iVar9,s_box_msh_00613660);
      iVar10 = FUN_005290c0(iVar10);
      if (iVar10 == 0) {
        iVar10 = *piVar6;
        if (iVar10 != 0) {
          FUN_00528f40();
          operator_delete(iVar10);
        }
        *piVar6 = 0;
        operator_delete(piVar6[2]);
        piVar6[2] = 0;
        TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_234);
        FUN_005216e0();
        iVar10 = 0;
      }
      else {
        piVar5[0x85] = piVar5[0x85] + 1;
        iVar10 = ((int)piVar6 - piVar5[0x84]) / 0xc + 1;
        FUN_005216e0();
      }
    }
  }
  else {
    FUN_005216e0();
    iVar10 = 0;
  }
LAB_00494ec9:
  *(int *)(param_1 + 0xb70) = iVar10;
  FUN_004c9f30(0);
  FUN_004ca240();
  piVar5 = (int *)*DAT_00661570;
  iVar10 = *(int *)(iVar1 + 0x100);
  if (((*piVar5 == 0) && (0 < iVar10)) && (iVar10 <= piVar5[0x86])) {
    uVar2 = *(undefined4 *)(piVar5[0x84] + -0xc + iVar10 * 0xc);
  }
  else {
    uVar2 = 0;
  }
  FUN_004c9b40(uVar2);
  iVar10 = FUN_00507980(auStack_284,s_Emitter_006104e0);
  if (iVar10 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_PhysicalCharacter__ParseIniF_00613678,s_Emitter_006104e0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  piVar5 = (int *)*DAT_00661570;
  iVar1 = *(int *)(iVar1 + 0x100);
  if (((*piVar5 == 0) && (0 < iVar1)) && (iVar1 <= piVar5[0x86])) {
    uVar2 = *(undefined4 *)(piVar5[0x84] + -0xc + iVar1 * 0xc);
  }
  else {
    uVar2 = 0;
  }
  FUN_004c9d80(auStack_284,uVar2);
  iVar1 = FUN_00507980(auStack_244,s_Avoidance_006104e8);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_PhysicalCharacter__ParseIniF_00613678,s_Avoidance_006104e8,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_004c9bf0(auStack_244);
  iVar1 = FUN_00507980(auStack_264,s_Attack_00611558);
  if (iVar1 != 0) {
    BHV_PhysicalCharacter_A_Attack__ParseIniFile(auStack_264);
  }
  iVar1 = FUN_00507980(auStack_2a4,s_PhysicalAnimation_0061364c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_PhysicalCharacter__ParseIniF_00613678,s_PhysicalAnimation_0061364c,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_005d0a60(auStack_2a4,param_1 + 0x3cc,param_1 + 0x3bc,*(undefined4 *)(param_1 + 0x3c4));
  iVar1 = FUN_00507980(auStack_294,s_DipolBehaviour_0061213c);
  if (iVar1 != 0) {
    BHV_Vessel_A_DipolIn__ParseIniFile(auStack_294);
  }
  FUN_00546140(param_1);
  iVar1 = FUN_00507980(auStack_274,s_Dying_006104d0);
  if (iVar1 == 0) {
    FUN_005466f0(s_std_character_des_00613638);
  }
  else {
    FUN_00546160(auStack_274);
  }
  NOD_ShieldedBody__ParseIniFile(param_2);
  NOD_Node__LoadSons(param_2);
  iVar1 = FUN_00507980(auStack_2d8,s_ChildTransformation_00613624);
  if (iVar1 == 0) {
    *(undefined4 *)(param_1 + 0xb68) = 0;
  }
  else {
    iVar1 = FUN_00507420(s_NumOfChild_00613618,(int *)(param_1 + 0xb68));
    if (iVar1 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_PhysicalCharacter__ParseIniF_00613678,s_NumOfChild_00613618,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    iVar1 = *(int *)(param_1 + 0xb68);
    piVar5 = (int *)operator_new(iVar1 * 0x44 + 4);
    if (piVar5 == (int *)0x0) {
      piVar6 = (int *)0x0;
    }
    else {
      *piVar5 = iVar1;
      piVar6 = piVar5 + 1;
      if (-1 < iVar1 + -1) {
        piVar5 = piVar5 + 0xd;
        do {
          FUN_004010f0(piVar5 + -9,0xc,3,FUN_00407f60);
          FUN_00486bd0(0);
          piVar5 = piVar5 + 0x11;
          iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
      }
    }
    *(int **)(param_1 + 0xb6c) = piVar6;
    iStack_2fc = 0;
    if (0 < *(int *)(param_1 + 0xb68)) {
      iVar1 = 0;
      do {
        iVar10 = FUN_00507140(auStack_2e8,s_Child_0060e160,iStack_2fc);
        if (iVar10 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_NOD_PhysicalCharacter__ParseIniF_00613678,s_Child_0060e160,
                               iStack_2fc,uVar2);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        iVar10 = FUN_00507420(s_ChildIndex_0061360c,auStack_2c8);
        if (iVar10 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                               s_NOD_PhysicalCharacter__ParseIniF_00613678,s_ChildIndex_0061360c,
                               uVar2);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        uVar2 = FUN_00441a50(iStack_2fc);
        uVar2 = FUN_004670f0(uVar2);
        FUN_0043e670(uVar2);
        iVar10 = FUN_00507420(s_ConnectBoneIndex_006135f8,*(int *)(param_1 + 0xb6c) + 0x40 + iVar1);
        if (iVar10 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                               s_NOD_PhysicalCharacter__ParseIniF_00613678,
                               s_ConnectBoneIndex_006135f8,uVar2);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        iVar10 = *(int *)(*(int *)(param_1 + 0xb6c) + 0x34 + iVar1);
        if (iVar10 != 0) {
          puVar7 = (undefined4 *)FUN_0051f9c0(auStack_30,iVar10 + 0xfc);
          puVar11 = (undefined4 *)(*(int *)(param_1 + 0xb6c) + iVar1);
          for (iVar10 = 0xc; iVar10 != 0; iVar10 = iVar10 + -1) {
            *puVar11 = *puVar7;
            puVar7 = puVar7 + 1;
            puVar11 = puVar11 + 1;
          }
        }
        iStack_2fc = iStack_2fc + 1;
        iVar1 = iVar1 + 0x44;
      } while (iStack_2fc < *(int *)(param_1 + 0xb68));
    }
  }
  FUN_0043e670(0);
  iVar1 = 0;
  if (*(short *)(param_1 + 0x56) != 0) {
    do {
      pcVar12 = s_Sonar_006135f0;
      FUN_00441a50(iVar1);
      iVar10 = FUN_004cdfc0(pcVar12);
      if (iVar10 != 0) {
        uVar2 = FUN_00441a50(iVar1);
        FUN_0043e670(uVar2);
      }
      iVar1 = iVar1 + 1;
    } while (iVar1 < (int)(uint)*(ushort *)(param_1 + 0x56));
  }
  *(uint *)(param_1 + 0x640) = (uint)(*(int *)(param_1 + 0x634) == 0);
  FUN_00494440();
  return;
}



