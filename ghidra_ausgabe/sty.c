// ============================================
// Muster: STY_
// Treffer: 56 Funktionen
// ============================================

// --------------------------------------------
// STY_Base__Take_LoadTable_2   ab 0x005614b0   540 Byte
// gerufen von: FUN_0045a150
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, DES FILE ERROR, NumOfTake, STY_Base::Take_LoadTable(), STY_Base::Take_LoadTable() - file not found, Table
// --------------------------------------------

void __thiscall STY_Base__Take_LoadTable_2(int param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  int iVar7;
  int local_140;
  undefined1 local_138 [16];
  undefined1 local_128 [16];
  undefined1 auStack_118 [280];
  
  FUN_00565ce0();
  if ((*(int *)(param_1 + 0x40) == 0) || (*(int *)(param_1 + 0x44) != 0)) {
    local_140 = 0;
    iVar6 = 0;
  }
  else {
    iVar6 = 1;
    local_140 = 1;
  }
  iVar2 = *(int *)(param_1 + 0x40 + iVar6 * 4);
  if (iVar2 != 0) {
    iVar7 = *(int *)(iVar2 + -4);
    if (-1 < iVar7 + -1) {
      do {
        FUN_00564ef0();
        iVar7 = iVar7 + -1;
        iVar6 = local_140;
      } while (iVar7 != 0);
    }
    operator_delete(iVar2 + -4);
  }
  *(undefined4 *)(param_1 + 0x40 + iVar6 * 4) = 0;
  iVar2 = FUN_00506640(local_128,param_2);
  if (iVar2 == 0) {
    TERMINATION(s_STY_Base__Take_LoadTable_____fil_0065a4b8,param_2);
  }
  iVar2 = FUN_00507980(local_138,s_Table_006093d0);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_STY_Base__Take_LoadTable___0065a49c,s_Table_006093d0,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  piVar1 = (int *)(param_1 + 0x48 + iVar6 * 4);
  iVar6 = FUN_00507420(s_NumOfTake_0065a490,piVar1);
  if (iVar6 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Base__Take_LoadTable___0065a49c,s_NumOfTake_0065a490,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar6 = *piVar1;
  if (iVar6 != 0) {
    piVar4 = (int *)operator_new(iVar6 * 0x10 + 4);
    if (piVar4 == (int *)0x0) {
      piVar5 = (int *)0x0;
    }
    else {
      piVar5 = piVar4 + 1;
      *piVar4 = iVar6;
      if (-1 < iVar6 + -1) {
        do {
          FUN_00564ec0();
          iVar6 = iVar6 + -1;
        } while (iVar6 != 0);
      }
    }
    *(int **)(param_1 + 0x40 + local_140 * 4) = piVar5;
    iVar6 = 0;
    if (0 < *piVar1) {
      do {
        iVar2 = FUN_00507140(auStack_118,&DAT_0065a488,iVar6);
        if (iVar2 == 0) {
          FUN_0052e040();
          uVar3 = FUN_0052e130();
          uVar3 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_STY_Base__Take_LoadTable___0065a49c,&DAT_0065a488,iVar6,uVar3);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
        }
        STY_Take__Load(auStack_118);
        iVar6 = iVar6 + 1;
      } while (iVar6 < *piVar1);
    }
    FUN_00506890();
  }
  FUN_00506890();
  return;
}



// --------------------------------------------
// STY_Base__Mood_LoadTable   ab 0x005616d0   495 Byte
// gerufen von: Aqua_Locale__GetLanguageTpye_2, FUN_004213e0
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, DES FILE ERROR, NumOfMood, STY_Base::Mood_LoadTable(), STY_Base::Mood_LoadTable() - file not found, Table
// --------------------------------------------

void __thiscall STY_Base__Mood_LoadTable(int param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  undefined1 auStack_138 [16];
  undefined1 local_128 [16];
  undefined1 auStack_118 [280];
  
  FUN_00565ce0();
  iVar2 = FUN_00506640(local_128,param_2);
  if (iVar2 == 0) {
    TERMINATION(s_STY_Base__Mood_LoadTable_____fil_0065a514,param_2);
  }
  iVar2 = *(int *)(param_1 + 0x28);
  if (iVar2 != 0) {
    iVar6 = *(int *)(iVar2 + -4);
    if (-1 < iVar6 + -1) {
      do {
        FUN_005660e0();
        iVar6 = iVar6 + -1;
      } while (iVar6 != 0);
    }
    operator_delete(iVar2 + -4);
  }
  *(undefined4 *)(param_1 + 0x28) = 0;
  iVar2 = FUN_00507980(auStack_138,s_Table_006093d0);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_STY_Base__Mood_LoadTable___0065a4f8,s_Table_006093d0,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  piVar1 = (int *)(param_1 + 0x2c);
  iVar2 = FUN_00507420(s_NumOfMood_0065a4ec,piVar1);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Base__Mood_LoadTable___0065a4f8,s_NumOfMood_0065a4ec,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = *piVar1;
  if (iVar2 != 0) {
    piVar4 = (int *)operator_new(iVar2 * 0xc + 4);
    if (piVar4 == (int *)0x0) {
      piVar5 = (int *)0x0;
    }
    else {
      piVar5 = piVar4 + 1;
      *piVar4 = iVar2;
      if (-1 < iVar2 + -1) {
        do {
          FUN_005660c0();
          iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
      }
    }
    iVar2 = 0;
    *(int **)(param_1 + 0x28) = piVar5;
    if (0 < *piVar1) {
      do {
        iVar6 = FUN_00507140(auStack_118,&DAT_0065a4e4,iVar2);
        if (iVar6 == 0) {
          FUN_0052e040();
          uVar3 = FUN_0052e130();
          uVar3 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_STY_Base__Mood_LoadTable___0065a4f8,&DAT_0065a4e4,iVar2,uVar3);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
        }
        STY_Mood__Load(auStack_118);
        iVar2 = iVar2 + 1;
      } while (iVar2 < *piVar1);
    }
    FUN_00506890();
  }
  FUN_00506890();
  return;
}



// --------------------------------------------
// STY_Base__Person_LoadTable   ab 0x005618c0   507 Byte
// gerufen von: Aqua_Locale__GetLanguageTpye_2, FUN_004213e0
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, DES FILE ERROR, NumOfPerson, Person, STY_Base::Person_LoadTable(), STY_Base::Person_LoadTable() - file not found, Table
// --------------------------------------------

void __thiscall STY_Base__Person_LoadTable(int param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  undefined1 auStack_138 [16];
  undefined1 local_128 [16];
  undefined1 auStack_118 [280];
  
  FUN_00565ce0();
  iVar2 = FUN_00506640(local_128,param_2);
  if (iVar2 == 0) {
    TERMINATION(s_STY_Base__Person_LoadTable_____f_0065a574,param_2);
  }
  iVar2 = *(int *)(param_1 + 0x30);
  if (iVar2 != 0) {
    iVar6 = *(int *)(iVar2 + -4);
    if (-1 < iVar6 + -1) {
      do {
        FUN_00565110();
        iVar6 = iVar6 + -1;
      } while (iVar6 != 0);
    }
    operator_delete(iVar2 + -4);
  }
  *(undefined4 *)(param_1 + 0x30) = 0;
  iVar2 = FUN_00507980(auStack_138,s_Table_006093d0);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_STY_Base__Person_LoadTable___0065a554,s_Table_006093d0,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  piVar1 = (int *)(param_1 + 0x34);
  iVar2 = FUN_00507420(s_NumOfPerson_0065a548,piVar1);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Base__Person_LoadTable___0065a554,s_NumOfPerson_0065a548,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = *piVar1;
  if (iVar2 != 0) {
    piVar4 = (int *)operator_new(iVar2 * 0x1c + 4);
    if (piVar4 == (int *)0x0) {
      piVar5 = (int *)0x0;
    }
    else {
      piVar5 = piVar4 + 1;
      *piVar4 = iVar2;
      if (-1 < iVar2 + -1) {
        do {
          FUN_005650d0();
          iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
      }
    }
    iVar2 = 0;
    *(int **)(param_1 + 0x30) = piVar5;
    if (0 < *piVar1) {
      do {
        iVar6 = FUN_00507140(auStack_118,s_Person_0065a540,iVar2);
        if (iVar6 == 0) {
          FUN_0052e040();
          uVar3 = FUN_0052e130();
          uVar3 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_STY_Base__Person_LoadTable___0065a554,s_Person_0065a540,iVar2,uVar3
                              );
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
        }
        STY_Person__Load(auStack_118);
        iVar2 = iVar2 + 1;
      } while (iVar2 < *piVar1);
    }
    FUN_00506890();
  }
  FUN_00506890();
  return;
}



// --------------------------------------------
// STY_Base__Take_LoadTable   ab 0x00561ac0   490 Byte
// gerufen von: FUN_004213e0
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, DES FILE ERROR, NumOfTake, STY_Base::Take_LoadTable(), STY_Base::Take_LoadTable() - file not found, Table
// --------------------------------------------

void __thiscall STY_Base__Take_LoadTable(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  undefined1 local_138 [16];
  undefined1 local_128 [16];
  undefined1 auStack_118 [280];
  
  FUN_00565ce0();
  iVar1 = *(int *)(param_1 + 0x38);
  if (iVar1 != 0) {
    iVar6 = *(int *)(iVar1 + -4);
    if (-1 < iVar6 + -1) {
      do {
        FUN_00564ef0();
        iVar6 = iVar6 + -1;
      } while (iVar6 != 0);
    }
    operator_delete(iVar1 + -4);
  }
  *(undefined4 *)(param_1 + 0x38) = 0;
  iVar1 = FUN_00506640(local_128,param_2);
  if (iVar1 == 0) {
    TERMINATION(s_STY_Base__Take_LoadTable_____fil_0065a4b8,param_2);
  }
  iVar1 = FUN_00507980(local_138,s_Table_006093d0);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_STY_Base__Take_LoadTable___0065a49c,s_Table_006093d0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  piVar5 = (int *)(param_1 + 0x3c);
  iVar1 = FUN_00507420(s_NumOfTake_0065a490,piVar5);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Base__Take_LoadTable___0065a49c,s_NumOfTake_0065a490,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = *piVar5;
  if (iVar1 != 0) {
    piVar3 = (int *)operator_new(iVar1 * 0x10 + 4);
    if (piVar3 == (int *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = piVar3 + 1;
      *piVar3 = iVar1;
      if (-1 < iVar1 + -1) {
        do {
          FUN_00564ec0();
          iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
      }
    }
    *(int **)(param_1 + 0x38) = piVar4;
    iVar1 = 0;
    if (0 < *piVar5) {
      do {
        iVar6 = FUN_00507140(auStack_118,&DAT_0065a488,iVar1);
        if (iVar6 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_STY_Base__Take_LoadTable___0065a49c,&DAT_0065a488,iVar1,uVar2);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        STY_Take__Load(auStack_118);
        iVar1 = iVar1 + 1;
      } while (iVar1 < *piVar5);
    }
    FUN_00506890();
  }
  FUN_00506890();
  return;
}



// --------------------------------------------
// STY_Base__D_LoadTable   ab 0x00561cb0   609 Byte
// gerufen von: FUN_004213e0
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, DES FILE ERROR, Dialog, Dialog_LoadTable(), NumOfDialog, STY_Base::D_LoadTable(), STY_Base::Dialog_LoadTable(), STY_Base::Dialog_LoadTable() - file not found, ... (+2)
// --------------------------------------------

void __thiscall STY_Base__D_LoadTable(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  short *psVar6;
  int *piVar7;
  int iVar8;
  undefined1 local_138 [16];
  undefined1 local_128 [16];
  undefined1 auStack_118 [280];
  
  FUN_00565ce0();
  iVar1 = *(int *)(param_1 + 0x50);
  if (iVar1 != 0) {
    iVar8 = *(int *)(iVar1 + -4);
    if (-1 < iVar8 + -1) {
      do {
        FUN_00565da0();
        iVar8 = iVar8 + -1;
      } while (iVar8 != 0);
    }
    operator_delete(iVar1 + -4);
  }
  piVar7 = (int *)0x0;
  *(undefined4 *)(param_1 + 0x50) = 0;
  iVar1 = FUN_00506640(local_128,param_2);
  if (iVar1 == 0) {
    TERMINATION(s_STY_Base__Dialog_LoadTable_____f_0065a670,param_2);
  }
  iVar1 = FUN_00507980(local_138,s_Table_006093d0);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_STY_Base__Dialog_LoadTable___0065a650,s_Table_006093d0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507420(s_NumOfDialog_0065a644,(int *)(param_1 + 0x54));
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Base__D_LoadTable___0065a62c,s_NumOfDialog_0065a644,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = *(int *)(param_1 + 0x54);
  if (iVar1 != 0) {
    piVar3 = (int *)operator_new(iVar1 * 0x38 + 4);
    if (piVar3 != (int *)0x0) {
      piVar7 = piVar3 + 1;
      *piVar3 = iVar1;
      if (-1 < iVar1 + -1) {
        do {
          FUN_00565d70();
          iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
      }
    }
    iVar1 = 0;
    *(int **)(param_1 + 0x50) = piVar7;
    if (0 < *(int *)(param_1 + 0x54)) {
      do {
        iVar8 = FUN_00507140(auStack_118,s_Dialog_0065a624,iVar1);
        if (iVar8 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_STY_Base__Dialog_LoadTable___0065a650,s_Dialog_0065a624,iVar1,uVar2
                              );
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        STY_Dialog__Load(auStack_118);
        iVar1 = iVar1 + 1;
      } while (iVar1 < *(int *)(param_1 + 0x54));
    }
    FUN_00506890();
    if (*(int *)(param_1 + 0x68) == 0) {
      TERMINATION(s_Dialog_LoadTable___0065a5b0,s_please_loaf_room_table_before_di_0065a5c4);
    }
    iVar1 = 0;
    if (0 < *(int *)(param_1 + 0x54)) {
      iVar8 = 0;
      do {
        iVar5 = *(int *)(param_1 + 0x6c);
        iVar4 = 0;
        if (0 < iVar5) {
          psVar6 = *(short **)(param_1 + 0x68);
          do {
            if (*psVar6 == *(short *)(iVar8 + 10 + *(int *)(param_1 + 0x50))) break;
            iVar4 = iVar4 + 1;
            psVar6 = psVar6 + 8;
          } while (iVar4 < iVar5);
        }
        if ((iVar5 <= iVar4) || (iVar5 = iVar4 * 0x10 + *(int *)(param_1 + 0x68), iVar5 == 0))
        break;
        iVar5 = FUN_00520710(*(undefined4 *)(iVar5 + 4),s_intercom_0065a5a4);
        if (iVar5 == 0) {
          *(undefined2 *)(iVar8 + 2 + *(int *)(param_1 + 0x50)) = 3;
        }
        iVar1 = iVar1 + 1;
        iVar8 = iVar8 + 0x38;
      } while (iVar1 < *(int *)(param_1 + 0x54));
    }
  }
  FUN_00506890();
  return;
}



// --------------------------------------------
// STY_Base__Room_LoadTable   ab 0x00561f20   490 Byte
// gerufen von: FUN_004213e0
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, DES FILE ERROR, NumOfRoom, STY_Base::Room_LoadTable(), STY_Base::Room_LoadTable() - file not found, Table
// --------------------------------------------

void __thiscall STY_Base__Room_LoadTable(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  undefined1 local_138 [16];
  undefined1 local_128 [16];
  undefined1 auStack_118 [280];
  
  FUN_00565ce0();
  iVar1 = *(int *)(param_1 + 0x68);
  if (iVar1 != 0) {
    iVar6 = *(int *)(iVar1 + -4);
    if (-1 < iVar6 + -1) {
      do {
        FUN_005663d0();
        iVar6 = iVar6 + -1;
      } while (iVar6 != 0);
    }
    operator_delete(iVar1 + -4);
  }
  *(undefined4 *)(param_1 + 0x68) = 0;
  iVar1 = FUN_00506640(local_128,param_2);
  if (iVar1 == 0) {
    TERMINATION(s_STY_Base__Room_LoadTable_____fil_0065a6d0,param_2);
  }
  iVar1 = FUN_00507980(local_138,s_Table_006093d0);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_STY_Base__Room_LoadTable___0065a6b4,s_Table_006093d0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  piVar5 = (int *)(param_1 + 0x6c);
  iVar1 = FUN_00507420(s_NumOfRoom_0065a6a8,piVar5);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Base__Room_LoadTable___0065a6b4,s_NumOfRoom_0065a6a8,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = *piVar5;
  if (iVar1 != 0) {
    piVar3 = (int *)operator_new(iVar1 * 0x10 + 4);
    if (piVar3 == (int *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = piVar3 + 1;
      *piVar3 = iVar1;
      if (-1 < iVar1 + -1) {
        do {
          FUN_005663a0();
          iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
      }
    }
    *(int **)(param_1 + 0x68) = piVar4;
    iVar1 = 0;
    if (0 < *piVar5) {
      do {
        iVar6 = FUN_00507140(auStack_118,&DAT_0065a6a0,iVar1);
        if (iVar6 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_STY_Base__Room_LoadTable___0065a6b4,&DAT_0065a6a0,iVar1,uVar2);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        STY_Room__Load(auStack_118);
        iVar1 = iVar1 + 1;
      } while (iVar1 < *piVar5);
    }
    FUN_00506890();
  }
  FUN_00506890();
  return;
}



// --------------------------------------------
// STY_Base__Option_LoadTable_3   ab 0x00562110   462 Byte
// gerufen von: FUN_004213e0
// Texte: (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, DES FILE ERROR, Option, STY_Base::Option_LoadTable(), STY_Base::Option_LoadTable() - file not found, Table
// --------------------------------------------

void __thiscall STY_Base__Option_LoadTable_3(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  int *piVar5;
  undefined1 local_138 [16];
  undefined1 auStack_128 [16];
  undefined1 local_118 [280];
  
  FUN_00565ce0();
  iVar1 = *(int *)(param_1 + 0x78);
  if (iVar1 != 0) {
    iVar4 = *(int *)(iVar1 + -4);
    if (-1 < iVar4 + -1) {
      do {
        FUN_005668b0();
        iVar4 = iVar4 + -1;
      } while (iVar4 != 0);
    }
    operator_delete(iVar1 + -4);
  }
  *(undefined4 *)(param_1 + 0x78) = 0;
  iVar1 = FUN_00506640(local_118,param_2);
  if (iVar1 == 0) {
    TERMINATION(s_STY_Base__Option_LoadTable_____f_0065a724,param_2);
  }
  iVar1 = FUN_00507980(local_138,s_Table_006093d0);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_STY_Base__Option_LoadTable___0065a704,s_Table_006093d0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  piVar5 = (int *)0x0;
  *(undefined4 *)(param_1 + 0x7c) = 0;
  for (iVar1 = FUN_00507140(auStack_128,s_Option_0065a6fc,0); iVar1 != 0;
      iVar1 = FUN_00507140(auStack_128,s_Option_0065a6fc,iVar1)) {
    iVar1 = *(int *)(param_1 + 0x7c) + 1;
    *(int *)(param_1 + 0x7c) = iVar1;
  }
  iVar1 = *(int *)(param_1 + 0x7c);
  if (iVar1 != 0) {
    piVar3 = (int *)operator_new(iVar1 * 0xc + 4);
    if (piVar3 != (int *)0x0) {
      piVar5 = piVar3 + 1;
      *piVar3 = iVar1;
      if (-1 < iVar1 + -1) {
        do {
          FUN_00566890();
          iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
      }
    }
    *(int **)(param_1 + 0x78) = piVar5;
    iVar1 = 0;
    if (0 < *(int *)(param_1 + 0x7c)) {
      do {
        iVar4 = FUN_00507140(auStack_128,s_Option_0065a6fc,iVar1);
        if (iVar4 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_STY_Base__Option_LoadTable___0065a704,s_Option_0065a6fc,iVar1,uVar2
                              );
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        STY_Option__Load(auStack_128);
        iVar1 = iVar1 + 1;
      } while (iVar1 < *(int *)(param_1 + 0x7c));
    }
    FUN_00506890();
  }
  FUN_00506890();
  return;
}



// --------------------------------------------
// STY_Base__Movie_LoadTable   ab 0x005622e0   490 Byte
// gerufen von: Aqua_Locale__GetLanguageTpye_2, FUN_0041eaa0, FUN_004213e0
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, DES FILE ERROR, Movie, NumOfMovie, STY_Base::Movie_LoadTable(), STY_Base::Movie_LoadTable() - file not found, Table
// --------------------------------------------

void __thiscall STY_Base__Movie_LoadTable(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  undefined1 local_138 [16];
  undefined1 local_128 [16];
  undefined1 auStack_118 [280];
  
  FUN_00565ce0();
  iVar1 = *(int *)(param_1 + 0x60);
  if (iVar1 != 0) {
    iVar6 = *(int *)(iVar1 + -4);
    if (-1 < iVar6 + -1) {
      do {
        FUN_005663d0();
        iVar6 = iVar6 + -1;
      } while (iVar6 != 0);
    }
    operator_delete(iVar1 + -4);
  }
  *(undefined4 *)(param_1 + 0x60) = 0;
  iVar1 = FUN_00506640(local_128,param_2);
  if (iVar1 == 0) {
    TERMINATION(s_STY_Base__Movie_LoadTable_____fi_0065a784,param_2);
  }
  iVar1 = FUN_00507980(local_138,s_Table_006093d0);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_STY_Base__Movie_LoadTable___0065a768,s_Table_006093d0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  piVar5 = (int *)(param_1 + 100);
  iVar1 = FUN_00507420(s_NumOfMovie_0065a75c,piVar5);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Base__Movie_LoadTable___0065a768,s_NumOfMovie_0065a75c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = *piVar5;
  if (iVar1 != 0) {
    piVar3 = (int *)operator_new(iVar1 * 0x10 + 4);
    if (piVar3 == (int *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = piVar3 + 1;
      *piVar3 = iVar1;
      if (-1 < iVar1 + -1) {
        do {
          FUN_00566210();
          iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
      }
    }
    *(int **)(param_1 + 0x60) = piVar4;
    iVar1 = 0;
    if (0 < *piVar5) {
      do {
        iVar6 = FUN_00507140(auStack_118,s_Movie_0065a754,iVar1);
        if (iVar6 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_STY_Base__Movie_LoadTable___0065a768,s_Movie_0065a754,iVar1,uVar2);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        STY_Movie__Load(auStack_118);
        iVar1 = iVar1 + 1;
      } while (iVar1 < *piVar5);
    }
    FUN_00506890();
  }
  FUN_00506890();
  return;
}



// --------------------------------------------
// STY_Base__Mission_LoadTable   ab 0x005624d0   491 Byte
// gerufen von: Aqua_Locale__GetLanguageTpye_2, FUN_004213e0
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, DES FILE ERROR, Mission, NumOfMission, STY_Base::Mission_LoadTable(), STY_Base::Mission_LoadTable() - file not found, Table
// --------------------------------------------

void __thiscall STY_Base__Mission_LoadTable(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  undefined1 local_138 [16];
  undefined1 local_128 [16];
  undefined1 auStack_118 [280];
  
  FUN_00565ce0();
  iVar1 = *(int *)(param_1 + 0x58);
  if (iVar1 != 0) {
    iVar6 = *(int *)(iVar1 + -4);
    if (-1 < iVar6 + -1) {
      do {
        FUN_005660e0();
        iVar6 = iVar6 + -1;
      } while (iVar6 != 0);
    }
    operator_delete(iVar1 + -4);
  }
  *(undefined4 *)(param_1 + 0x58) = 0;
  iVar1 = FUN_00506640(local_128,param_2);
  if (iVar1 == 0) {
    TERMINATION(s_STY_Base__Mission_LoadTable_____f_0065a7ec,param_2);
  }
  iVar1 = FUN_00507980(local_138,s_Table_006093d0);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_STY_Base__Mission_LoadTable___0065a7cc,s_Table_006093d0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  piVar5 = (int *)(param_1 + 0x5c);
  iVar1 = FUN_00507420(s_NumOfMission_0065a7bc,piVar5);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Base__Mission_LoadTable___0065a7cc,s_NumOfMission_0065a7bc,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = *piVar5;
  if (iVar1 != 0) {
    piVar3 = (int *)operator_new(iVar1 * 0xc + 4);
    if (piVar3 == (int *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = piVar3 + 1;
      *piVar3 = iVar1;
      if (-1 < iVar1 + -1) {
        do {
          FUN_005660c0();
          iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
      }
    }
    iVar1 = 0;
    *(int **)(param_1 + 0x58) = piVar4;
    if (0 < *piVar5) {
      do {
        iVar6 = FUN_00507140(auStack_118,s_Mission_0065a7b4,iVar1);
        if (iVar6 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_STY_Base__Mission_LoadTable___0065a7cc,s_Mission_0065a7b4,iVar1,
                               uVar2);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        STY_Mission__Load(auStack_118);
        iVar1 = iVar1 + 1;
      } while (iVar1 < *piVar5);
    }
    FUN_00506890();
  }
  FUN_00506890();
  return;
}



// --------------------------------------------
// STY_Base__Station_LoadTable   ab 0x005626c0   509 Byte
// gerufen von: Aqua_Locale__GetLanguageTpye_2, FUN_0041eaa0, FUN_004213e0
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, DES FILE ERROR, NumOfStation, STY_Base::Station_LoadTable(), STY_Base::Station_LoadTable() - file not found, Station, Table
// --------------------------------------------

void __thiscall STY_Base__Station_LoadTable(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  undefined1 local_138 [16];
  undefined1 local_128 [16];
  undefined1 auStack_118 [280];
  
  FUN_00565ce0();
  iVar1 = *(int *)(param_1 + 0x70);
  if (iVar1 != 0) {
    iVar6 = *(int *)(iVar1 + -4);
    if (-1 < iVar6 + -1) {
      do {
        FUN_005665a0();
        iVar6 = iVar6 + -1;
      } while (iVar6 != 0);
    }
    operator_delete(iVar1 + -4);
  }
  *(undefined4 *)(param_1 + 0x70) = 0;
  iVar1 = FUN_00506640(local_128,param_2);
  if (iVar1 == 0) {
    TERMINATION(s_STY_Base__Station_LoadTable_____f_0065a854,param_2);
  }
  iVar1 = FUN_00507980(local_138,s_Table_006093d0);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_STY_Base__Station_LoadTable___0065a834,s_Table_006093d0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  piVar5 = (int *)(param_1 + 0x74);
  iVar1 = FUN_00507420(s_NumOfStation_0065a824,piVar5);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Base__Station_LoadTable___0065a834,s_NumOfStation_0065a824,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = *piVar5;
  if (iVar1 != 0) {
    piVar3 = (int *)operator_new(iVar1 * 0x420 + 4);
    if (piVar3 == (int *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = piVar3 + 1;
      *piVar3 = iVar1;
      if (-1 < iVar1 + -1) {
        do {
          FUN_00566550();
          iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
      }
    }
    *(int **)(param_1 + 0x70) = piVar4;
    iVar1 = 0;
    if (0 < *piVar5) {
      do {
        iVar6 = FUN_00507140(auStack_118,s_Station_0065a81c,iVar1);
        if (iVar6 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_STY_Base__Station_LoadTable___0065a834,s_Station_0065a81c,iVar1,
                               uVar2);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        STY_Station__Load(auStack_118);
        iVar1 = iVar1 + 1;
      } while (iVar1 < *piVar5);
    }
    FUN_00506890();
  }
  FUN_00506890();
  return;
}



// --------------------------------------------
// STY_Base__Item_LoadTable   ab 0x005628c0   491 Byte
// gerufen von: Aqua_Locale__GetLanguageTpye_2, FUN_004213e0
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, DES FILE ERROR, NumOfItem, STY_Base::Item_LoadTable(), STY_Base::Item_LoadTable() - file not found, Table
// --------------------------------------------

void __thiscall STY_Base__Item_LoadTable(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  undefined1 local_138 [16];
  undefined1 local_128 [16];
  undefined1 auStack_118 [280];
  
  FUN_00565ce0();
  iVar1 = *(int *)(param_1 + 0x20);
  if (iVar1 != 0) {
    iVar6 = *(int *)(iVar1 + -4);
    if (-1 < iVar6 + -1) {
      do {
        FUN_00564590();
        iVar6 = iVar6 + -1;
      } while (iVar6 != 0);
    }
    operator_delete(iVar1 + -4);
  }
  *(undefined4 *)(param_1 + 0x20) = 0;
  iVar1 = FUN_00506640(local_128,param_2);
  if (iVar1 == 0) {
    TERMINATION(s_STY_Base__Item_LoadTable_____fil_0065a8a0,param_2);
  }
  iVar1 = FUN_00507980(local_138,s_Table_006093d0);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_STY_Base__Item_LoadTable___0065a884,s_Table_006093d0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  piVar5 = (int *)(param_1 + 0x24);
  iVar1 = FUN_00507420(s_NumOfItem_006116b0,piVar5);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Base__Item_LoadTable___0065a884,s_NumOfItem_006116b0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = *piVar5;
  if (iVar1 != 0) {
    piVar3 = (int *)operator_new(iVar1 * 0x18 + 4);
    if (piVar3 == (int *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = piVar3 + 1;
      *piVar3 = iVar1;
      if (-1 < iVar1 + -1) {
        do {
          FUN_00564560();
          iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
      }
    }
    iVar1 = 0;
    *(int **)(param_1 + 0x20) = piVar4;
    if (0 < *piVar5) {
      do {
        iVar6 = FUN_00507140(auStack_118,&DAT_006116a8,iVar1);
        if (iVar6 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_STY_Base__Item_LoadTable___0065a884,&DAT_006116a8,iVar1,uVar2);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        STY_Item__Load(auStack_118);
        iVar1 = iVar1 + 1;
      } while (iVar1 < *piVar5);
    }
    FUN_00506890();
  }
  FUN_00506890();
  return;
}



// --------------------------------------------
// STY_Base__Ship_LoadTable   ab 0x00562ab0   497 Byte
// gerufen von: FUN_0041eaa0, FUN_004213e0
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, DES FILE ERROR, NumOfShip, STY_Base::Ship_LoadTable(), STY_Base::Ship_LoadTable() - file not found, Table
// --------------------------------------------

void __thiscall STY_Base__Ship_LoadTable(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  undefined1 local_138 [16];
  undefined1 local_128 [16];
  undefined1 auStack_118 [280];
  
  FUN_00565ce0();
  iVar1 = *(int *)(param_1 + 0x18);
  if (iVar1 != 0) {
    iVar6 = *(int *)(iVar1 + -4);
    if (-1 < iVar6 + -1) {
      do {
        FUN_005655a0();
        iVar6 = iVar6 + -1;
      } while (iVar6 != 0);
    }
    operator_delete(iVar1 + -4);
  }
  *(undefined4 *)(param_1 + 0x18) = 0;
  iVar1 = FUN_00506640(local_128,param_2);
  if (iVar1 == 0) {
    TERMINATION(s_STY_Base__Ship_LoadTable_____fil_0065a8f4,param_2);
  }
  iVar1 = FUN_00507980(local_138,s_Table_006093d0);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_STY_Base__Ship_LoadTable___0065a8d8,s_Table_006093d0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  piVar5 = (int *)(param_1 + 0x1c);
  iVar1 = FUN_00507420(s_NumOfShip_0065a8cc,piVar5);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Base__Ship_LoadTable___0065a8d8,s_NumOfShip_0065a8cc,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = *piVar5;
  if (iVar1 != 0) {
    piVar3 = (int *)operator_new(iVar1 * 0x3c + 4);
    if (piVar3 == (int *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = piVar3 + 1;
      *piVar3 = iVar1;
      if (-1 < iVar1 + -1) {
        do {
          FUN_00565550();
          iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
      }
    }
    iVar1 = 0;
    *(int **)(param_1 + 0x18) = piVar4;
    if (0 < *piVar5) {
      do {
        iVar6 = FUN_00507140(auStack_118,&DAT_00655fc8,iVar1);
        if (iVar6 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_STY_Base__Ship_LoadTable___0065a8d8,&DAT_00655fc8,iVar1,uVar2);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        STY_Ship__Load(auStack_118);
        iVar1 = iVar1 + 1;
      } while (iVar1 < *piVar5);
    }
    FUN_00506890();
  }
  FUN_00506890();
  return;
}



// --------------------------------------------
// STY_Base__Briefing_LoadTable   ab 0x00562cb0   491 Byte
// gerufen von: FUN_004213e0
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, Briefing, DES FILE ERROR, NumOfBriefing, STY_Base::Briefing_LoadTable(), STY_Base::Briefing_LoadTable() - file not found, Table
// --------------------------------------------

void __thiscall STY_Base__Briefing_LoadTable(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  undefined1 local_138 [16];
  undefined1 local_128 [16];
  undefined1 auStack_118 [280];
  
  FUN_00565ce0();
  iVar1 = *(int *)(param_1 + 0x10);
  if (iVar1 != 0) {
    iVar6 = *(int *)(iVar1 + -4);
    if (-1 < iVar6 + -1) {
      do {
        FUN_005660e0();
        iVar6 = iVar6 + -1;
      } while (iVar6 != 0);
    }
    operator_delete(iVar1 + -4);
  }
  *(undefined4 *)(param_1 + 0x10) = 0;
  iVar1 = FUN_00506640(local_128,param_2);
  if (iVar1 == 0) {
    TERMINATION(s_STY_Base__Briefing_LoadTable_____0065a95c,param_2);
  }
  iVar1 = FUN_00507980(local_138,s_Table_006093d0);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_STY_Base__Briefing_LoadTable___0065a93c,s_Table_006093d0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  piVar5 = (int *)(param_1 + 0x14);
  iVar1 = FUN_00507420(s_NumOfBriefing_0065a92c,piVar5);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Base__Briefing_LoadTable___0065a93c,s_NumOfBriefing_0065a92c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = *piVar5;
  if (iVar1 != 0) {
    piVar3 = (int *)operator_new(iVar1 * 0xc + 4);
    if (piVar3 == (int *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = piVar3 + 1;
      *piVar3 = iVar1;
      if (-1 < iVar1 + -1) {
        do {
          FUN_005660c0();
          iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
      }
    }
    iVar1 = 0;
    *(int **)(param_1 + 0x10) = piVar4;
    if (0 < *piVar5) {
      do {
        iVar6 = FUN_00507140(auStack_118,s_Briefing_0065a920,iVar1);
        if (iVar6 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_STY_Base__Briefing_LoadTable___0065a93c,s_Briefing_0065a920,iVar1,
                               uVar2);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        STY_Briefing__Load(auStack_118);
        iVar1 = iVar1 + 1;
      } while (iVar1 < *piVar5);
    }
    FUN_00506890();
  }
  FUN_00506890();
  return;
}



// --------------------------------------------
// STY_Base__Acknowledge_LoadTable   ab 0x00562ea0   524 Byte
// gerufen von: FUN_004213e0
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, Acknowledge, DES FILE ERROR, NumOfAcknowledge, STY_Base::Acknowledge_LoadTable(), STY_Base::Acknowledge_LoadTable() - file not found, Table
// --------------------------------------------

void __thiscall STY_Base__Acknowledge_LoadTable(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int *piVar4;
  int iVar5;
  undefined1 local_138 [16];
  undefined1 local_128 [16];
  undefined1 auStack_118 [280];
  
  FUN_00565ce0();
  iVar1 = *(int *)(param_1 + 8);
  if (iVar1 != 0) {
    iVar5 = *(int *)(iVar1 + -4);
    if (-1 < iVar5 + -1) {
      do {
        FUN_00565cf0();
        FUN_00565cf0();
        FUN_00565cf0();
        iVar5 = iVar5 + -1;
      } while (iVar5 != 0);
    }
    operator_delete(iVar1 + -4);
  }
  *(undefined4 *)(param_1 + 8) = 0;
  iVar1 = FUN_00506640(local_128,param_2);
  if (iVar1 == 0) {
    TERMINATION(s_STY_Base__Acknowledge_LoadTable__0065a9d0,param_2);
  }
  iVar1 = FUN_00507980(local_138,s_Table_006093d0);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_STY_Base__Acknowledge_LoadTable__0065a9ac,s_Table_006093d0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  piVar4 = (int *)(param_1 + 0xc);
  iVar1 = FUN_00507420(s_NumOfAcknowledge_0065a998,piVar4);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Base__Acknowledge_LoadTable__0065a9ac,s_NumOfAcknowledge_0065a998,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = *piVar4;
  if (iVar1 != 0) {
    piVar3 = (int *)operator_new(iVar1 * 0x10 + 4);
    if (piVar3 == (int *)0x0) {
      piVar3 = (int *)0x0;
    }
    else {
      *piVar3 = iVar1;
      piVar3 = piVar3 + 1;
      if (-1 < iVar1 + -1) {
        do {
          FUN_00565ce0();
          FUN_00565ce0();
          FUN_00565ce0();
          iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
      }
    }
    *(int **)(param_1 + 8) = piVar3;
    iVar1 = 0;
    if (0 < *piVar4) {
      do {
        iVar5 = FUN_00507140(auStack_118,s_Acknowledge_0065a98c,iVar1);
        if (iVar5 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_STY_Base__Acknowledge_LoadTable__0065a9ac,s_Acknowledge_0065a98c,
                               iVar1,uVar2);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        STY_Acknowledge__Load(auStack_118);
        iVar1 = iVar1 + 1;
      } while (iVar1 < *piVar4);
    }
    FUN_00506890();
  }
  FUN_00506890();
  return;
}



// --------------------------------------------
// STY_Base__Difficulty_LoadTable   ab 0x005630b0   489 Byte
// gerufen von: FUN_004213e0
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, DES FILE ERROR, Difficulty, NumOfDifficulty, STY_Base::Difficulty_LoadTable(), STY_Base::Difficulty_LoadTable() - file not found, Table
// --------------------------------------------

void __thiscall STY_Base__Difficulty_LoadTable(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  undefined1 local_138 [16];
  undefined1 local_128 [16];
  undefined1 auStack_118 [280];
  
  FUN_00565ce0();
  iVar1 = *param_1;
  if (iVar1 != 0) {
    iVar6 = *(int *)(iVar1 + -4);
    if (-1 < iVar6 + -1) {
      do {
        FUN_00565b00();
        iVar6 = iVar6 + -1;
      } while (iVar6 != 0);
    }
    operator_delete(iVar1 + -4);
  }
  *param_1 = 0;
  iVar1 = FUN_00506640(local_128,param_2);
  if (iVar1 == 0) {
    TERMINATION(s_STY_Base__Difficulty_LoadTable___0065aa44,param_2);
  }
  iVar1 = FUN_00507980(local_138,s_Table_006093d0);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_STY_Base__Difficulty_LoadTable___0065aa20,s_Table_006093d0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  piVar5 = param_1 + 1;
  iVar1 = FUN_00507420(s_NumOfDifficulty_0065aa10,piVar5);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Base__Difficulty_LoadTable___0065aa20,s_NumOfDifficulty_0065aa10,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = *piVar5;
  if (iVar1 != 0) {
    piVar3 = (int *)operator_new(iVar1 * 0x14 + 4);
    if (piVar3 == (int *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = piVar3 + 1;
      *piVar3 = iVar1;
      if (-1 < iVar1 + -1) {
        do {
          FUN_00565ac0();
          iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
      }
    }
    iVar1 = 0;
    *param_1 = (int)piVar4;
    if (0 < *piVar5) {
      do {
        iVar6 = FUN_00507140(auStack_118,s_Difficulty_0065aa04,iVar1);
        if (iVar6 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_STY_Base__Difficulty_LoadTable___0065aa20,s_Difficulty_0065aa04,
                               iVar1,uVar2);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        STY_Difficulty__Load(auStack_118);
        iVar1 = iVar1 + 1;
      } while (iVar1 < *piVar5);
    }
    FUN_00506890();
  }
  FUN_00506890();
  return;
}



// --------------------------------------------
// STY_Base__Option_LoadTable   ab 0x00563b90   489 Byte
// gerufen von: FUN_004212b0, FUN_00429450, FUN_00581460, FUN_005a66d0
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get "%s%d" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, DES FILE ERROR, MovieKey, NumOfFinishedMovies, STY_Base::Option_LoadTable(), STY_Player::LoadAndMergeMovies(), Table
// --------------------------------------------

void __thiscall STY_Base__Option_LoadTable(int param_1,undefined4 param_2)

{
  uint uVar1;
  bool bVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  uint *puVar7;
  int *piVar8;
  int local_138 [3];
  int iStack_12c;
  undefined1 local_128 [16];
  undefined1 local_118 [280];
  
  FUN_005ed530();
  FUN_00565ce0();
  iVar3 = FUN_00521950(param_2);
  if (iVar3 != 0) {
    iVar3 = FUN_00506640(local_118,param_2);
    if (iVar3 != 0) {
      iVar3 = FUN_00507980(local_128,s_Table_006093d0);
      if (iVar3 == 0) {
        FUN_0052e040();
        uVar4 = FUN_0052e130();
        uVar4 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                             s_STY_Base__Option_LoadTable___0065a704,s_Table_006093d0,uVar4);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
      }
      iVar3 = FUN_00507420(s_NumOfFinishedMovies_0065aad0,local_138);
      if (iVar3 == 0) {
        FUN_0052e040();
        uVar4 = FUN_0052e130();
        uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                             s_STY_Player__LoadAndMergeMovies___0065ab88,
                             s_NumOfFinishedMovies_0065aad0,uVar4);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
      }
      iVar3 = 0;
      if (0 < local_138[0]) {
        do {
          iVar5 = FUN_00506b40(s_MovieKey_0065aac4,iVar3,&iStack_12c);
          if (iVar5 == 0) {
            FUN_0052e040();
            uVar4 = FUN_0052e130();
            uVar4 = FUN_005222c0(s___s___Get___s_d__in_file___s__fa_0061098c,
                                 s_STY_Player__LoadAndMergeMovies___0065ab88,s_MovieKey_0065aac4,
                                 iVar3,uVar4);
            TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
          }
          iVar5 = *(int *)(param_1 + 0x1390);
          iVar6 = 0;
          if (0 < iVar5) {
            piVar8 = (int *)(param_1 + 0x1350);
            do {
              if (*piVar8 == iStack_12c) break;
              iVar6 = iVar6 + 1;
              piVar8 = piVar8 + 1;
            } while (iVar6 < iVar5);
          }
          if (iVar6 == iVar5) {
            *(int *)(param_1 + 0x1350 + iVar5 * 4) = iStack_12c;
            *(int *)(param_1 + 0x1390) = *(int *)(param_1 + 0x1390) + 1;
          }
          iVar3 = iVar3 + 1;
        } while (iVar3 < local_138[0]);
      }
      do {
        bVar2 = false;
        iVar3 = 0;
        if (*(int *)(param_1 + 0x1390) == 1 || *(int *)(param_1 + 0x1390) + -1 < 0) break;
        puVar7 = (uint *)(param_1 + 0x1354);
        do {
          uVar1 = puVar7[-1];
          if (*puVar7 < uVar1) {
            puVar7[-1] = *puVar7;
            *puVar7 = uVar1;
            bVar2 = true;
          }
          iVar3 = iVar3 + 1;
          puVar7 = puVar7 + 1;
        } while (iVar3 < *(int *)(param_1 + 0x1390) + -1);
      } while (bVar2);
      FUN_00506890();
      FUN_005216e0();
      return;
    }
  }
  FUN_00506890();
  FUN_005216e0();
  return;
}



// --------------------------------------------
// STY_Player__AddOption   ab 0x00563ea0   219 Byte
// gerufen von: STY_Command__GetCommand
// Texte: STY_Player::AddOption(), no more space in player to add more options
// --------------------------------------------

undefined4 __thiscall STY_Player__AddOption(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  
  if (0x3f < *(int *)(param_1 + 0x1348)) {
    TERMINATION(s_STY_Player__AddOption___0065abac,s_no_more_space_in_player_to_add_m_0065abc4);
  }
  iVar1 = *(int *)(param_1 + 0x1348);
  iVar2 = 0;
  if (0 < iVar1) {
    piVar3 = (int *)(param_1 + 0x1048);
    do {
      if (*piVar3 == param_2) {
        return 0;
      }
      iVar2 = iVar2 + 1;
      piVar3 = piVar3 + 3;
    } while (iVar2 < iVar1);
  }
  *(int *)(param_1 + 0x1048 + iVar1 * 0xc) = param_2;
  *(undefined4 *)(param_1 + 0x104c + *(int *)(param_1 + 0x1348) * 0xc) =
       *(undefined4 *)(param_1 + 0x134c);
  iVar1 = 0;
  *(int *)(param_1 + 0x134c) = *(int *)(param_1 + 0x134c) + 1;
  if (0 < *(int *)(param_1 + 0x1044)) {
    piVar3 = (int *)(param_1 + 0x844);
    do {
      if (*piVar3 == param_2) {
        *(undefined4 *)(param_1 + (*(int *)(param_1 + 0x1348) + 0x15c) * 0xc) = 1;
        goto LAB_00563f63;
      }
      iVar1 = iVar1 + 1;
      piVar3 = piVar3 + 1;
    } while (iVar1 < *(int *)(param_1 + 0x1044));
  }
  *(undefined4 *)(param_1 + (*(int *)(param_1 + 0x1348) + 0x15c) * 0xc) = 0;
LAB_00563f63:
  *(int *)(param_1 + 0x1348) = *(int *)(param_1 + 0x1348) + 1;
  return 1;
}



// --------------------------------------------
// STY_Player__AddMovie   ab 0x00564130   161 Byte
// gerufen von: FUN_00429450, FUN_0058a0d0, FUN_005a66d0, MAI_Handler__Handle_Dialog, MAI_Handler__Handle_Dock
// Texte: STY_Player::AddMovie(), no more space in player to add more Movies
// --------------------------------------------

undefined4 __thiscall STY_Player__AddMovie(int param_1,int param_2)

{
  uint uVar1;
  bool bVar2;
  uint *puVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  
  if (0xf < *(int *)(param_1 + 0x1390)) {
    TERMINATION(s_STY_Player__AddMovie___0065abf0,s_no_more_space_in_player_to_add_m_0065ac08);
  }
  iVar6 = *(int *)(param_1 + 0x1390);
  iVar4 = 0;
  if (0 < iVar6) {
    piVar5 = (int *)(param_1 + 0x1350);
    do {
      if (*piVar5 == param_2) break;
      iVar4 = iVar4 + 1;
      piVar5 = piVar5 + 1;
    } while (iVar4 < iVar6);
  }
  if (iVar4 != iVar6) {
    return 0;
  }
  *(int *)(param_1 + 0x1350 + iVar6 * 4) = param_2;
  *(int *)(param_1 + 0x1390) = *(int *)(param_1 + 0x1390) + 1;
  do {
    bVar2 = false;
    iVar6 = 0;
    if (*(int *)(param_1 + 0x1390) == 1 || *(int *)(param_1 + 0x1390) + -1 < 0) {
      return 1;
    }
    puVar3 = (uint *)(param_1 + 0x1354);
    do {
      uVar1 = puVar3[-1];
      if (*puVar3 < uVar1) {
        puVar3[-1] = *puVar3;
        *puVar3 = uVar1;
        bVar2 = true;
      }
      iVar6 = iVar6 + 1;
      puVar3 = puVar3 + 1;
    } while (iVar6 < *(int *)(param_1 + 0x1390) + -1);
  } while (bVar2);
  return 1;
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_17   ab 0x00564200   179 Byte
// gerufen von: FUN_00570ae0, FUN_005884b0, FUN_005a3d20
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
// gerufen von: FUN_00570ae0, FUN_00572e80, FUN_005a3d20
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
// gerufen von: STY_Station__Load, Savegame__Load
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
// STY_Item__Load   ab 0x005645b0   725 Byte
// gerufen von: STY_Base__Item_LoadTable
// Texte: (%s): Get "%s" in file "%s" failed, Class, DES FILE ERROR, Image, Price, STY_Item::Load(), STY_Item::Load(DES_Section& _Section)(), buzzer, generator, illegal item class, ... (+4)
// --------------------------------------------

void __fastcall STY_Item__Load(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 local_200 [512];
  
  iVar1 = FUN_00507330(&DAT_00609390,param_1);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Item__Load___0065acd0,
                         &DAT_00609390,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507710(&DAT_0060d32c,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Item__Load___0065acd0,
                         &DAT_0060d32c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = STY_Item__GetTypeByName_2(*(undefined4 *)(param_1 + 8));
  *(int *)(param_1 + 4) = iVar1;
  if (iVar1 == 0x21) {
    TERMINATION(s_STY_Item__Load___0065acd0,s_illegal_item_name_0065acbc);
  }
  iVar1 = FUN_00507710(s_Class_0060e158,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Item__Load___0065acd0,
                         s_Class_0060e158,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00520710(&DAT_006120d4,local_200);
  if (iVar1 == 0) {
    *(undefined2 *)(param_1 + 2) = 0;
  }
  else {
    iVar1 = FUN_00520710(s_torpedo_0065acb4,local_200);
    if (iVar1 == 0) {
      *(undefined2 *)(param_1 + 2) = 1;
    }
    else {
      iVar1 = FUN_00520710(s_buzzer_0065acac,local_200);
      if (iVar1 == 0) {
        *(undefined2 *)(param_1 + 2) = 2;
      }
      else {
        iVar1 = FUN_00520710(s_generator_0065aca0,local_200);
        if (iVar1 == 0) {
          *(undefined2 *)(param_1 + 2) = 3;
        }
        else {
          iVar1 = FUN_00520710(s_repairdevice_0065ac90,local_200);
          if (iVar1 == 0) {
            *(undefined2 *)(param_1 + 2) = 4;
          }
          else {
            iVar1 = FUN_00520710(s_specialitem_0065ac84,local_200);
            if (iVar1 == 0) {
              *(undefined2 *)(param_1 + 2) = 5;
            }
            else {
              TERMINATION(s_STY_Item__Load_DES_Section___Sec_0065ac5c,s_illegal_item_class_006107b8)
              ;
            }
          }
        }
      }
    }
  }
  iVar1 = FUN_00507710(s_Image_0065ac54,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Item__Load___0065acd0,
                         s_Image_0065ac54,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(&DAT_0061132c,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Item__Load___0065acd0,
                         &DAT_0061132c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507420(s_Price_0065ac4c,param_1 + 0x14);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Item__Load___0065acd0,
                         s_Price_0065ac4c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  return;
}



// --------------------------------------------
// STY_Item__GetTypeByName_2   ab 0x00564890   1200 Byte
// gerufen von: STY_Item__Load
// Texte: Big Block, Bigbang 1, Bigbang 2, Bloc Fusion, Bloc Moyen, Booster, Boosteur, Bullshark, Buzzer, Doommortar, ... (+34)
// --------------------------------------------

undefined4 STY_Item__GetTypeByName_2(undefined4 param_1)

{
  int iVar1;
  
  iVar1 = FUN_00520710(s_Vendetta_1_0065af4c,param_1);
  if (iVar1 == 0) {
    return 0;
  }
  iVar1 = FUN_00520710(s_Vendetta_2_0065af40,param_1);
  if (iVar1 == 0) {
    return 1;
  }
  iVar1 = FUN_00520710(s_Vendettagatling_0065af30,param_1);
  if (iVar1 == 0) {
    return 2;
  }
  iVar1 = FUN_00520710(s_Plasmagun_1_0065af24,param_1);
  if (iVar1 == 0) {
    return 3;
  }
  iVar1 = FUN_00520710(s_Plasmagun_2_0065af18,param_1);
  if (iVar1 == 0) {
    return 4;
  }
  iVar1 = FUN_00520710(s_Plasmagatling_0065af08,param_1);
  if (iVar1 == 0) {
    return 5;
  }
  iVar1 = FUN_00520710(s_Lasergatling_0065aef8,param_1);
  if (iVar1 == 0) {
    return 6;
  }
  iVar1 = FUN_00520710(s_Hitman_0065aef0,param_1);
  if (iVar1 == 0) {
    return 7;
  }
  iVar1 = FUN_00520710(s_Empactor_0065aee4,param_1);
  if (iVar1 == 0) {
    return 8;
  }
  iVar1 = FUN_00520710(s_Doommortar_0065aed8,param_1);
  if (iVar1 == 0) {
    return 9;
  }
  iVar1 = FUN_00520710(s_Mortierdoom_0065aecc,param_1);
  if (iVar1 == 0) {
    return 9;
  }
  iVar1 = FUN_00520710(s_Sizzler_0065aec4,param_1);
  if (iVar1 == 0) {
    return 10;
  }
  iVar1 = FUN_00520710(s_Skalarhaubitze_0065aeb4,param_1);
  if (iVar1 == 0) {
    return 0xb;
  }
  iVar1 = FUN_00520710(s_Scalarhowitzer_0065aea4,param_1);
  if (iVar1 == 0) {
    return 0xb;
  }
  iVar1 = FUN_00520710(s_Obusierscalaire_0065ae94,param_1);
  if (iVar1 == 0) {
    return 0xb;
  }
  iVar1 = FUN_00520710(s_Stanley_0065ae8c,param_1);
  if (iVar1 == 0) {
    return 0xc;
  }
  iVar1 = FUN_00520710(s_Threshershark_0065ae7c,param_1);
  if (iVar1 == 0) {
    return 0xd;
  }
  iVar1 = FUN_00520710(s_Bullshark_0065ae70,param_1);
  if (iVar1 == 0) {
    return 0xe;
  }
  iVar1 = FUN_00520710(s_Tigershark_0065ae64,param_1);
  if (iVar1 == 0) {
    return 0xf;
  }
  iVar1 = FUN_00520710(s_Maneater_0065ae58,param_1);
  if (iVar1 == 0) {
    return 0x10;
  }
  iVar1 = FUN_00520710(s_Hammerheadshark_0065ae48,param_1);
  if (iVar1 == 0) {
    return 0x11;
  }
  iVar1 = FUN_00520710(s_Flashshark_0065ae3c,param_1);
  if (iVar1 == 0) {
    return 0x12;
  }
  iVar1 = FUN_00520710(s_Bigbang_1_0065ae30,param_1);
  if (iVar1 == 0) {
    return 0x13;
  }
  iVar1 = FUN_00520710(s_Bigbang_2_0065ae24,param_1);
  if (iVar1 == 0) {
    return 0x14;
  }
  iVar1 = FUN_00520710(s_Leech_0065ae1c,param_1);
  if (iVar1 == 0) {
    return 0x15;
  }
  iVar1 = FUN_00520710(s_Buzzer_0065ae14,param_1);
  if (iVar1 == 0) {
    return 0x16;
  }
  iVar1 = FUN_00520710(&DAT_0065ae0c,param_1);
  if (iVar1 == 0) {
    return 0x16;
  }
  iVar1 = FUN_00520710(s_Small_Block_0065ae00,param_1);
  if (iVar1 == 0) {
    return 0x17;
  }
  iVar1 = FUN_00520710(s_Petit_Bloc_0065adf4,param_1);
  if (iVar1 == 0) {
    return 0x17;
  }
  iVar1 = FUN_00520710(s_Medium_Block_0065ade4,param_1);
  if (iVar1 == 0) {
    return 0x18;
  }
  iVar1 = FUN_00520710(s_Bloc_Moyen_0065add8,param_1);
  if (iVar1 == 0) {
    return 0x18;
  }
  iVar1 = FUN_00520710(s_Big_Block_0065adcc,param_1);
  if (iVar1 == 0) {
    return 0x19;
  }
  iVar1 = FUN_00520710(s_Gros_Bloc_0065adc0,param_1);
  if (iVar1 == 0) {
    return 0x19;
  }
  iVar1 = FUN_00520710(s_Fusion_Block_0065adb0,param_1);
  if (iVar1 == 0) {
    return 0x1a;
  }
  iVar1 = FUN_00520710(s_Bloc_Fusion_0065ada4,param_1);
  if (iVar1 == 0) {
    return 0x1a;
  }
  iVar1 = FUN_00520710(s_Patch_Kit_0065ad98,param_1);
  if (iVar1 == 0) {
    return 0x1b;
  }
  iVar1 = FUN_00520710(&DAT_0065ad8c,param_1);
  if (iVar1 == 0) {
    return 0x1b;
  }
  iVar1 = FUN_00520710(s_Robot_Repair_Kit_0065ad78,param_1);
  if (iVar1 == 0) {
    return 0x1c;
  }
  iVar1 = FUN_00520710(&DAT_0065ad68,param_1);
  if (iVar1 == 0) {
    return 0x1c;
  }
  iVar1 = FUN_00520710(s_Nano_Repair_Kit_1_0065ad54,param_1);
  if (iVar1 == 0) {
    return 0x1d;
  }
  iVar1 = FUN_00520710(&DAT_0065ad44,param_1);
  if (iVar1 == 0) {
    return 0x1d;
  }
  iVar1 = FUN_00520710(s_Nano_Repair_Kit_2_0065ad30,param_1);
  if (iVar1 == 0) {
    return 0x1e;
  }
  iVar1 = FUN_00520710(&DAT_0065ad20,param_1);
  if (iVar1 == 0) {
    return 0x1e;
  }
  iVar1 = FUN_00520710(s_Silator_0065ad18,param_1);
  if (iVar1 == 0) {
    return 0x1f;
  }
  iVar1 = FUN_00520710(s_Silencieux_0065ad0c,param_1);
  if (iVar1 == 0) {
    return 0x1f;
  }
  iVar1 = FUN_00520710(s_Booster_0061044c,param_1);
  if (iVar1 == 0) {
    return 0x20;
  }
  iVar1 = FUN_00520710(s_Boosteur_0065ad00,param_1);
  if (iVar1 == 0) {
    return 0x20;
  }
  TERMINATION(s_STY_Item__GetTypeByName___0065ace4,s_illegal_item_type_0060db70);
  return 0x21;
}



// --------------------------------------------
// STY_Item__GetTypeByName   ab 0x00564d40   239 Byte
// gerufen von: FUN_00425d40
// Texte: STY_Item::GetTypeByName(), illegal item type
// --------------------------------------------

undefined4 STY_Item__GetTypeByName(undefined4 param_1)

{
  switch(param_1) {
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
  case 6:
    return 7;
  case 7:
    return 8;
  case 8:
    return 9;
  case 9:
    return 10;
  case 10:
    return 0xb;
  case 0xb:
    return 0xc;
  case 0xc:
    return 0xd;
  case 0xd:
    return 0xe;
  case 0xe:
    return 0xf;
  case 0xf:
    return 0x10;
  case 0x10:
    return 0x11;
  case 0x11:
    return 0x12;
  case 0x12:
    return 0x13;
  case 0x13:
    return 0x14;
  case 0x14:
    return 0x15;
  case 0x15:
    return 0x16;
  case 0x16:
    return 0x17;
  case 0x17:
    return 0x18;
  case 0x18:
    return 0x19;
  case 0x19:
    return 0x1a;
  case 0x1a:
    return 0x1b;
  case 0x1b:
    return 0x1c;
  case 0x1c:
    return 0x1d;
  case 0x1d:
    return 0x1e;
  case 0x1e:
    return 0x1f;
  case 0x1f:
    return 0x20;
  case 0x20:
    return 0x21;
  default:
    TERMINATION(s_STY_Item__GetTypeByName___0065ace4,s_illegal_item_type_0060db70);
    return 0;
  }
}



// --------------------------------------------
// STY_Take__Load   ab 0x00564f10   438 Byte
// gerufen von: STY_Base__Take_LoadTable, STY_Base__Take_LoadTable_2
// Texte: (%s): Get "%s" in file "%s" failed, DES FILE ERROR, Person, STY_Take::Load()
// --------------------------------------------

void __fastcall STY_Take__Load(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 *puVar3;
  undefined1 auStack_400 [1024];
  
  iVar1 = FUN_00507330(&DAT_00609390,param_1);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Take__Load___0065af5c,
                         &DAT_00609390,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507330(s_Person_0065a540,param_1 + 2);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Take__Load___0065af5c,
                         s_Person_0065a540,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_005078f0(&DAT_00609394);
  if (iVar1 == 0) {
    puVar3 = (undefined1 *)0x0;
  }
  else {
    iVar1 = FUN_00507710(&DAT_00609394,auStack_400);
    if (iVar1 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Take__Load___0065af5c,
                           &DAT_00609394,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    puVar3 = auStack_400;
  }
  FUN_00565d00(puVar3);
  iVar1 = FUN_005078f0(&DAT_0065af58);
  if (iVar1 == 0) {
    puVar3 = (undefined1 *)0x0;
  }
  else {
    iVar1 = FUN_00507710(&DAT_0065af58,auStack_400);
    if (iVar1 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Take__Load___0065af5c,
                           &DAT_0065af58,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    puVar3 = auStack_400;
  }
  FUN_00565d00(puVar3);
  iVar1 = FUN_00507330(&DAT_0065a4e4,param_1 + 4);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Take__Load___0065af5c,
                         &DAT_0065a4e4,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  return;
}



// --------------------------------------------
// STY_Person__Load   ab 0x00565140   760 Byte
// gerufen von: STY_Base__Person_LoadTable
// Texte: (%s): Get "%s" in file "%s" failed, DES FILE ERROR, Image, ImageButton, ImageElf, ImageSmall, STY_Person::Load(), STY_Person::Load() - illegal sex type, ShortName, female
// --------------------------------------------

void __fastcall STY_Person__Load(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 local_200 [512];
  
  iVar1 = FUN_00507330(&DAT_00609390,param_1);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Person__Load___0065afdc,
                         &DAT_00609390,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507710(&DAT_0060d32c,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Person__Load___0065afdc,
                         &DAT_0060d32c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_ShortName_0065afd0,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Person__Load___0065afdc,
                         s_ShortName_0065afd0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_ImageElf_0065afc4,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Person__Load___0065afdc,
                         s_ImageElf_0065afc4,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_ImageButton_0065afb8,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Person__Load___0065afdc,
                         s_ImageButton_0065afb8,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_ImageSmall_0065afac,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Person__Load___0065afdc,
                         s_ImageSmall_0065afac,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_Image_0065ac54,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Person__Load___0065afdc,
                         s_Image_0065ac54,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(&DAT_0065afa8,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Person__Load___0065afdc,
                         &DAT_0065afa8,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00520710(local_200,&DAT_0065afa0);
  if (iVar1 == 0) {
    *(undefined2 *)(param_1 + 2) = 0;
    return;
  }
  iVar1 = FUN_00520710(local_200,s_female_0065af98);
  if (iVar1 == 0) {
    *(undefined2 *)(param_1 + 2) = 1;
    return;
  }
  TERMINATION(s_STY_Person__Load_____illegal_sex_0065af70,*(undefined4 *)(param_1 + 4));
  return;
}



// --------------------------------------------
// STY_Mood__Load   ab 0x00565440   260 Byte
// gerufen von: STY_Base__Mood_LoadTable
// Texte: (%s): Get "%s" in file "%s" failed, DES FILE ERROR, ImageF, ImageM, STY_Mood::Load()
// --------------------------------------------

void __fastcall STY_Mood__Load(undefined4 param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 local_200 [512];
  
  iVar1 = FUN_00507330(&DAT_00609390,param_1);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Mood__Load___0065b000,
                         &DAT_00609390,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507710(s_ImageM_0065aff8,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Mood__Load___0065b000,
                         s_ImageM_0065aff8,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_ImageF_0065aff0,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Mood__Load___0065b000,
                         s_ImageF_0065aff0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  return;
}



// --------------------------------------------
// STY_Ship__Load   ab 0x005655d0   978 Byte
// gerufen von: STY_Base__Ship_LoadTable
// Texte: (%s): Get "%s" in file "%s" failed, ArmorEMP, ArmorKIN, DES FILE ERROR, DisplayScale, Image, MaxNumOfBuzzers, MaxNumOfGuns, MaxNumOfTorpedos, MaxVelocity, ... (+3)
// --------------------------------------------

void __fastcall STY_Ship__Load(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 local_200 [512];
  
  iVar1 = FUN_00507330(&DAT_00609390,param_1);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Ship__Load___0065b080,
                         &DAT_00609390,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507710(&DAT_0060d32c,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Ship__Load___0065b080,
                         &DAT_0060d32c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_ShortDescription_0065b06c,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Ship__Load___0065b080,
                         s_ShortDescription_0065b06c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507420(s_Price_0065ac4c,param_1 + 0xc);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Ship__Load___0065b080,
                         s_Price_0065ac4c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_MaxVelocity_0065b060,param_1 + 0x10);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Ship__Load___0065b080,
                         s_MaxVelocity_0065b060,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507420(s_ArmorKIN_0065b054,param_1 + 0x1c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Ship__Load___0065b080,
                         s_ArmorKIN_0065b054,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507420(s_ArmorEMP_0065b048,param_1 + 0x20);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Ship__Load___0065b080,
                         s_ArmorEMP_0065b048,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507420(s_MaxNumOfTorpedos_0065b034,param_1 + 0x24);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Ship__Load___0065b080,
                         s_MaxNumOfTorpedos_0065b034,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507420(s_MaxNumOfBuzzers_0065b024,param_1 + 0x28);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Ship__Load___0065b080,
                         s_MaxNumOfBuzzers_0065b024,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507420(s_MaxNumOfGuns_0065b014,param_1 + 0x2c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Ship__Load___0065b080,
                         s_MaxNumOfGuns_0065b014,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507710(&DAT_0061132c,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Ship__Load___0065b080,
                         &DAT_0061132c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_Image_0065ac54,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Ship__Load___0065b080,
                         s_Image_0065ac54,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507800(s_DisplayScale_00613b24,param_1 + 0x38);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Ship__Load___0065b080,
                         s_DisplayScale_00613b24,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  return;
}



// --------------------------------------------
// STY_Briefing__Load   ab 0x005659b0   260 Byte
// gerufen von: STY_Base__Briefing_LoadTable
// Texte: (%s): Get "%s" in file "%s" failed, DES FILE ERROR, MapName, STY_Briefing::Load()
// --------------------------------------------

void __fastcall STY_Briefing__Load(undefined4 param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 local_400 [1024];
  
  iVar1 = FUN_00507330(&DAT_00609390,param_1);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Briefing__Load___0065b09c
                         ,&DAT_00609390,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507710(&DAT_00609394,local_400);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Briefing__Load___0065b09c
                         ,&DAT_00609394,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_400);
  iVar1 = FUN_00507710(s_MapName_0065b094,local_400);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Briefing__Load___0065b09c
                         ,s_MapName_0065b094,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_400);
  return;
}



// --------------------------------------------
// STY_Difficulty__Load   ab 0x00565b30   426 Byte
// gerufen von: STY_Base__Difficulty_LoadTable
// Texte: (%s): Get "%s" in file "%s" failed, DES FILE ERROR, Description, ImageOff, ImageOn, STY_Difficulty::Load()
// --------------------------------------------

void __fastcall STY_Difficulty__Load(undefined4 param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 local_200 [512];
  
  iVar1 = FUN_00507330(&DAT_00609390,param_1);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Difficulty__Load___0065b0c8,&DAT_00609390,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507710(&DAT_00609394,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Difficulty__Load___0065b0c8,&DAT_00609394,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_Description_0060d964,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Difficulty__Load___0065b0c8,s_Description_0060d964,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_ImageOn_0065b0c0,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Difficulty__Load___0065b0c8,s_ImageOn_0065b0c0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_ImageOff_0065b0b4,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Difficulty__Load___0065b0c8,s_ImageOff_0065b0b4,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  return;
}



// --------------------------------------------
// STY_Dialog__Load   ab 0x00565db0   778 Byte
// gerufen von: STY_Base__D_LoadTable
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get "%s%d" in file "%s" failed, DES FILE ERROR, NumOfTake, STY_Dialog::Load(), STY_Dialog::Load() - dialog %d, Station, illegal type, intercom, story, ... (+1)
// --------------------------------------------

void __fastcall STY_Dialog__Load(undefined2 *param_1)

{
  short sVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  undefined2 *puVar5;
  undefined1 *puVar6;
  undefined1 local_200 [512];
  
  iVar2 = FUN_00507330(&DAT_00609390,param_1);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Dialog__Load___0065b114,
                         &DAT_00609390,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507710(&DAT_0060d67c,local_200);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Dialog__Load___0065b114,
                         &DAT_0060d67c,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00520710(local_200,s_story_0065b10c);
  if (iVar2 == 0) {
    param_1[1] = 1;
  }
  else {
    iVar2 = FUN_00520710(local_200,s_substory_0065b100);
    if (iVar2 == 0) {
      param_1[1] = 2;
    }
    else {
      iVar2 = FUN_00520710(local_200,s_intercom_0065a5a4);
      if (iVar2 == 0) {
        param_1[1] = 3;
      }
      else {
        uVar3 = FUN_005222c0(s_STY_Dialog__Load_____dialog__d_0065b0e0,*param_1,
                             s_illegal_type_0060ff1c);
        TERMINATION(uVar3);
      }
    }
  }
  iVar2 = FUN_005078f0(&DAT_0060d32c);
  if (iVar2 == 0) {
    puVar6 = (undefined1 *)0x0;
  }
  else {
    iVar2 = FUN_00507710(&DAT_0060d32c,local_200);
    if (iVar2 == 0) {
      FUN_0052e040();
      uVar3 = FUN_0052e130();
      uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Dialog__Load___0065b114
                           ,&DAT_0060d32c,uVar3);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
    }
    puVar6 = local_200;
  }
  FUN_00565d00(puVar6);
  iVar2 = FUN_005078f0(s_Station_0065a81c);
  if ((iVar2 != 0) && (iVar2 = FUN_00507330(s_Station_0065a81c,param_1 + 4), iVar2 == 0)) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Dialog__Load___0065b114,
                         s_Station_0065a81c,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_005078f0(&DAT_0065a6a0);
  if ((iVar2 != 0) && (iVar2 = FUN_00507330(&DAT_0065a6a0,param_1 + 5), iVar2 == 0)) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s_STY_Dialog__Load_____dialog__d_0065b0e0,*param_1,&DAT_0065a6a0,uVar3);
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507330(s_NumOfTake_0065a490,param_1 + 0x1a);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s_STY_Dialog__Load_____dialog__d_0065b0e0,*param_1,s_NumOfTake_0065a490,
                         uVar3);
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  sVar1 = param_1[0x1a];
  if ((sVar1 != 0) && (iVar2 = 0, sVar1 != 0)) {
    puVar5 = param_1 + 6;
    do {
      iVar4 = FUN_00506a00(&DAT_0065a488,iVar2,puVar5);
      if (iVar4 == 0) {
        FUN_0052e040();
        uVar3 = FUN_0052e130();
        uVar3 = FUN_005222c0(s_STY_Dialog__Load_____dialog__d_0065b0e0,*param_1,&DAT_0065a488,iVar2,
                             uVar3);
        uVar3 = FUN_005222c0(s___s___Get___s_d__in_file___s__fa_0061098c,uVar3);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
      }
      iVar2 = iVar2 + 1;
      puVar5 = puVar5 + 1;
    } while (iVar2 < (int)(uint)(ushort)param_1[0x1a]);
  }
  return;
}



// --------------------------------------------
// STY_Mission__Load   ab 0x00566100   260 Byte
// gerufen von: STY_Base__Mission_LoadTable
// Texte: (%s): Get "%s" in file "%s" failed, DES FILE ERROR, EngineScript, STY_Mission::Load()
// --------------------------------------------

void __fastcall STY_Mission__Load(undefined4 param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 local_200 [512];
  
  iVar1 = FUN_00507330(&DAT_00609390,param_1);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Mission__Load___0065b138,
                         &DAT_00609390,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507710(&DAT_0060d32c,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Mission__Load___0065b138,
                         &DAT_0060d32c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_EngineScript_0065b128,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Mission__Load___0065b138,
                         s_EngineScript_0065b128,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  return;
}



// --------------------------------------------
// STY_Movie__Load   ab 0x00566240   343 Byte
// gerufen von: STY_Base__Movie_LoadTable
// Texte: (%s): Get "%s" in file "%s" failed, DES FILE ERROR, ImageName, MovieName, STY_Movie::Load()
// --------------------------------------------

void __fastcall STY_Movie__Load(undefined4 param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 local_200 [512];
  
  iVar1 = FUN_00507330(&DAT_00609390,param_1);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Movie__Load___0065b164,
                         &DAT_00609390,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507710(&DAT_0060d32c,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Movie__Load___0065b164,
                         &DAT_0060d32c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_ImageName_0065b158,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Movie__Load___0065b164,
                         s_ImageName_0065b158,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_MovieName_0065b14c,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Movie__Load___0065b164,
                         s_MovieName_0065b14c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  return;
}



// --------------------------------------------
// STY_Room__Load   ab 0x005663f0   343 Byte
// gerufen von: STY_Base__Room_LoadTable
// Texte: (%s): Get "%s" in file "%s" failed, DES FILE ERROR, Image, STY_Room::Load(), Sound
// --------------------------------------------

void __fastcall STY_Room__Load(undefined4 param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 local_200 [512];
  
  iVar1 = FUN_00507330(&DAT_00609390,param_1);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Room__Load___0065b178,
                         &DAT_00609390,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507710(&DAT_0060d32c,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Room__Load___0065b178,
                         &DAT_0060d32c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_Image_0065ac54,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Room__Load___0065b178,
                         s_Image_0065ac54,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_Sound_0061049c,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Room__Load___0065b178,
                         s_Sound_0061049c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  return;
}



// --------------------------------------------
// STY_Station__Load   ab 0x005665e0   678 Byte
// gerufen von: STY_Base__Station_LoadTable
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, BGSound, DES FILE ERROR, EngineScript, Image, InventoryItem, InventoryShip, STY_Station::Load()
// --------------------------------------------

void __fastcall STY_Station__Load(undefined4 param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_210 [16];
  undefined1 local_200 [512];
  
  iVar1 = FUN_00507330(&DAT_00609390,param_1);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Station__Load___0065b1bc,
                         &DAT_00609390,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507710(&DAT_0060d32c,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Station__Load___0065b1bc,
                         &DAT_0060d32c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(&DAT_0065b1b4,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Station__Load___0065b1bc,
                         &DAT_0065b1b4,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_Image_0065ac54,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Station__Load___0065b1bc,
                         s_Image_0065ac54,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507980(auStack_210,s_InventoryItem_0065b1a4);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,s_STY_Station__Load___0065b1bc,
                         s_InventoryItem_0065b1a4,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  STY_Inventory__Load(auStack_210);
  iVar1 = FUN_00507980(auStack_210,s_InventoryShip_0065b194);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,s_STY_Station__Load___0065b1bc,
                         s_InventoryShip_0065b194,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  STY_Inventory__Load(auStack_210);
  iVar1 = FUN_00507710(s_EngineScript_0065b128,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Station__Load___0065b1bc,
                         s_EngineScript_0065b128,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  iVar1 = FUN_00507710(s_BGSound_0065b18c,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Station__Load___0065b1bc,
                         s_BGSound_0065b18c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_200);
  return;
}



// --------------------------------------------
// STY_Option__Load   ab 0x005668f0   817 Byte
// gerufen von: STY_Base__Option_LoadTable_3
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, Command, DES FILE ERROR, NumOfCommand, STY_Option::Load(), STY_Option::Load() - %d option: %s, TypeKey, briefing, dialog, ... (+5)
// --------------------------------------------

void __fastcall STY_Option__Load(undefined2 *param_1)

{
  int iVar1;
  undefined4 uVar2;
  uint *puVar3;
  uint *puVar4;
  int iVar5;
  uint uVar6;
  undefined1 auStack_210 [16];
  undefined1 local_200 [512];
  
  iVar1 = FUN_00507330(&DAT_00609390,param_1);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Option__Load___0065b23c,
                         &DAT_00609390,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507710(&DAT_0060d67c,local_200);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Option__Load___0065b23c,
                         &DAT_0060d67c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00520710(local_200,s_dialog_0065b234);
  if (iVar1 == 0) {
    param_1[1] = 0;
  }
  else {
    iVar1 = FUN_00520710(local_200,s_mission_0065b22c);
    if (iVar1 == 0) {
      param_1[1] = 1;
    }
    else {
      iVar1 = FUN_00520710(local_200,s_movie_0065b224);
      if (iVar1 == 0) {
        param_1[1] = 2;
      }
      else {
        iVar1 = FUN_00520710(local_200,s_station_0065b21c);
        if (iVar1 == 0) {
          param_1[1] = 3;
        }
        else {
          iVar1 = FUN_00520710(local_200,s_briefing_0065b210);
          if (iVar1 == 0) {
            param_1[1] = 4;
          }
          else {
            iVar1 = FUN_00520710(local_200,&DAT_0065b208);
            if (iVar1 == 0) {
              param_1[1] = 5;
            }
            else {
              iVar1 = FUN_00520710(local_200,s_quitgame_0065b1fc);
              if (iVar1 == 0) {
                param_1[1] = 6;
              }
              else {
                uVar2 = FUN_005222c0(s_STY_Option__Load______d_option____0065b1d8,*param_1,local_200
                                     ,s_illegal_type_0060ff1c);
                TERMINATION(uVar2);
              }
            }
          }
        }
      }
    }
  }
  iVar1 = FUN_00507330(s_TypeKey_0065b1d0,param_1 + 2);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Option__Load___0065b23c,
                         s_TypeKey_0065b1d0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507330(s_NumOfCommand_00603580,param_1 + 3);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Option__Load___0065b23c,
                         s_NumOfCommand_00603580,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = *(int *)(param_1 + 4);
  if (iVar1 != 0) {
    iVar5 = *(int *)(iVar1 + -4);
    if (-1 < iVar5 + -1) {
      do {
        FUN_00403e50();
        iVar5 = iVar5 + -1;
      } while (iVar5 != 0);
    }
    operator_delete(iVar1 + -4);
  }
  *(undefined4 *)(param_1 + 4) = 0;
  if (param_1[3] != 0) {
    uVar6 = (uint)(ushort)param_1[3];
    puVar3 = (uint *)operator_new(uVar6 * 8 + 4);
    if (puVar3 == (uint *)0x0) {
      puVar4 = (uint *)0x0;
    }
    else {
      puVar4 = puVar3 + 1;
      *puVar3 = uVar6;
      if (-1 < (int)(uVar6 - 1)) {
        do {
          FUN_00566e30();
          uVar6 = uVar6 - 1;
        } while (uVar6 != 0);
      }
    }
    iVar1 = 0;
    *(uint **)(param_1 + 4) = puVar4;
    if (param_1[3] != 0) {
      do {
        iVar5 = FUN_00507140(auStack_210,s_Command_00603578,iVar1);
        if (iVar5 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_STY_Option__Load___0065b23c,s_Command_00603578,iVar1,uVar2);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        STY_Command__Load(auStack_210);
        iVar1 = iVar1 + 1;
      } while (iVar1 < (int)(uint)(ushort)param_1[3]);
    }
  }
  return;
}



// --------------------------------------------
// STY_Acknowledge__Load   ab 0x00566c30   509 Byte
// gerufen von: STY_Base__Acknowledge_LoadTable
// Texte: (%s): Get "%s" in file "%s" failed, DES FILE ERROR, RoomPicture, STY_Acknowledge::Load(), STY_Option::Load() - %d option: %s, illegal type, ok_cancel
// --------------------------------------------

void __fastcall STY_Acknowledge__Load(undefined2 *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 local_400 [1024];
  
  iVar1 = FUN_00507330(&DAT_00609390,param_1);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Acknowledge__Load___0065b268,&DAT_00609390,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507710(&DAT_0060d67c,local_400);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Acknowledge__Load___0065b268,&DAT_0060d67c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00520710(local_400,&DAT_00657bfc);
  if (iVar1 == 0) {
    param_1[1] = 0;
  }
  else {
    iVar1 = FUN_00520710(local_400,s_ok_cancel_0065b25c);
    if (iVar1 == 0) {
      param_1[1] = 1;
    }
    else {
      uVar2 = FUN_005222c0(s_STY_Option__Load______d_option____0065b1d8,*param_1,local_400,
                           s_illegal_type_0060ff1c);
      TERMINATION(uVar2);
    }
  }
  iVar1 = FUN_00507710(&DAT_00609394,local_400);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Acknowledge__Load___0065b268,&DAT_00609394,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_400);
  iVar1 = FUN_00507710(&DAT_0065a6a0,local_400);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Acknowledge__Load___0065b268,&DAT_0065a6a0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_400);
  iVar1 = FUN_00507710(s_RoomPicture_0065b250,local_400);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_STY_Acknowledge__Load___0065b268,s_RoomPicture_0065b250,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_00565d00(local_400);
  return;
}



// --------------------------------------------
// STY_Command__Load   ab 0x00566e40   555 Byte
// gerufen von: STY_Option__Load
// Texte: (%s): Get "%s" in file "%s" failed, ActivateOption, AddCredit, AddOption, ChangeShip, Command, DES FILE ERROR, DeactivateOption, EndGame, STY_Command::Load(), ... (+6)
// --------------------------------------------

void __fastcall STY_Command__Load(undefined4 *param_1)

{
  int iVar1;
  undefined4 uVar2;
  char *pcVar3;
  undefined1 local_80 [128];
  
  iVar1 = FUN_00507710(s_Command_00603578,local_80);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Command__Load___0065b340,
                         s_Command_00603578,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_005206d0(local_80,s_AddCredit_0065b334);
  if (iVar1 == 0) {
    *param_1 = 0;
  }
  else {
    iVar1 = FUN_005206d0(local_80,s_AddOption_0065b328);
    if (iVar1 == 0) {
      *param_1 = 1;
    }
    else {
      iVar1 = FUN_005206d0(local_80,s_SubOption_0065b31c);
      if (iVar1 == 0) {
        *param_1 = 2;
      }
      else {
        iVar1 = FUN_005206d0(local_80,s_SubAllOptions_0065b30c);
        if (iVar1 == 0) {
          *param_1 = 3;
        }
        else {
          iVar1 = FUN_005206d0(local_80,s_EndGame_0065b304);
          if (iVar1 == 0) {
            *param_1 = 4;
          }
          else {
            iVar1 = FUN_005206d0(local_80,s_ChangeShip_0065b2f8);
            if (iVar1 == 0) {
              *param_1 = 5;
            }
            else {
              iVar1 = FUN_005206d0(local_80,s_ActivateOption_0065b2e8);
              if (iVar1 == 0) {
                *param_1 = 6;
              }
              else {
                iVar1 = FUN_005206d0(local_80,s_DeactivateOption_0065b2d4);
                if (iVar1 == 0) {
                  *param_1 = 7;
                }
                else {
                  iVar1 = FUN_005206d0(local_80,s_SetSecondStationKey_0065b2c0);
                  if (iVar1 == 0) {
                    *param_1 = 8;
                  }
                  else {
                    TERMINATION(s_STY_Command__Load_____illegal_co_0065b298,local_80);
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  switch(*param_1) {
  case 0:
    iVar1 = FUN_00507420(s_Value_0063c350,param_1 + 1);
    if (iVar1 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      pcVar3 = s_Value_0063c350;
LAB_00567026:
      uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_STY_Command__Load___0065b340,pcVar3,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
      return;
    }
    break;
  case 1:
  case 2:
  case 5:
  case 6:
  case 7:
  case 8:
    iVar1 = FUN_00507420(&DAT_00609390,param_1 + 1);
    if (iVar1 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      pcVar3 = &DAT_00609390;
      goto LAB_00567026;
    }
    break;
  case 3:
  case 4:
    break;
  default:
    TERMINATION(s_STY_Command__Load___0065b340,s_illegal_command_type_0065b280);
  }
  return;
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_8   ab 0x00570050   323 Byte
// gerufen von: MAI_Handler__Handle, MAI_Handler__Handle_Station
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
// gerufen von: FUN_00570ae0
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
// gerufen von: FUN_005721e0, STY_Inventory__GetItemInfoByIndex_11
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
// gerufen von: FUN_005721e0, STY_Inventory__GetItemInfoByIndex_11
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
// gerufen von: STY_Inventory__GetItemInfoByIndex_11, STY_Inventory__GetItemInfoByIndex_3
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
// gerufen von: MAI_Handler__Handle_Station
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
// STY_Command__GetCommand_2   ab 0x00573fc0   74 Byte
// gerufen von: STY_Command__GetCommand
// Texte: STY_Command::GetCommand(), index out of range
// --------------------------------------------

void STY_Command__GetCommand_2(int param_1,int param_2,int param_3)

{
  if ((param_1 < 0) || ((int)(uint)*(ushort *)(param_2 + 6) <= param_1)) {
    TERMINATION(s_STY_Command__GetCommand___0065bafc,s_index_out_of_range_00604290);
  }
  *(int *)(param_3 + 0x30) =
       *(int *)(param_3 + 0x30) + *(int *)(*(int *)(param_2 + 8) + 4 + param_1 * 8);
  if (DAT_0065b9a4 == 0) {
                    /* WARNING: Could not recover jumptable at 0x00574003. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (*(code *)PTR_STY_Command__GetCommand_2_0065b9ac)();
    return;
  }
  return;
}



// --------------------------------------------
// STY_Command__GetCommand   ab 0x00574010   473 Byte
// gerufen von: FUN_0058a0d0, FUN_005a8940, MAI_Handler__Handle_Dialog, MAI_Handler__Handle_Dock, MAI_Handler__Handle_Station
// Texte: MAI_Handler::RunOptionCommands(), STY_Command::GetCommand(), illegal option type, index out of range
// --------------------------------------------

void __thiscall STY_Command__GetCommand(int param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  
  iVar3 = FUN_00561260(param_2);
  if (iVar3 != 0) {
    uVar4 = (uint)*(ushort *)(iVar3 + 6);
    uVar5 = 0;
    if (uVar4 != 0) {
      do {
        if (((int)uVar5 < 0) || ((int)uVar4 <= (int)uVar5)) {
          TERMINATION(s_STY_Command__GetCommand___0065bafc,s_index_out_of_range_00604290);
        }
        switch(*(undefined4 *)(*(int *)(iVar3 + 8) + uVar5 * 8)) {
        case 0:
          iVar2 = *(int *)(param_1 + 8);
          if (((int)uVar5 < 0) || ((int)(uint)*(ushort *)(iVar3 + 6) <= (int)uVar5)) {
            TERMINATION(s_STY_Command__GetCommand___0065bafc,s_index_out_of_range_00604290);
          }
          piVar1 = (int *)(iVar2 + 0x30);
          *piVar1 = *piVar1 + *(int *)(*(int *)(iVar3 + 8) + 4 + uVar5 * 8);
          if (DAT_0065b9a4 == 0) {
            (*(code *)PTR_STY_Command__GetCommand_2_0065b9ac)();
          }
          break;
        case 1:
          if (((int)uVar5 < 0) || ((int)(uint)*(ushort *)(iVar3 + 6) <= (int)uVar5)) {
            TERMINATION(s_STY_Command__GetCommand___0065bafc,s_index_out_of_range_00604290);
          }
          STY_Player__AddOption(*(undefined4 *)(*(int *)(iVar3 + 8) + 4 + uVar5 * 8));
          break;
        case 2:
          if (((int)uVar5 < 0) || ((int)(uint)*(ushort *)(iVar3 + 6) <= (int)uVar5)) {
            TERMINATION(s_STY_Command__GetCommand___0065bafc,s_index_out_of_range_00604290);
          }
          FUN_00563f80(*(undefined4 *)(*(int *)(iVar3 + 8) + 4 + uVar5 * 8));
          break;
        case 3:
          *(undefined4 *)(*(int *)(param_1 + 8) + 0x1348) = 0;
          break;
        case 4:
        case 5:
          break;
        case 6:
          if (((int)uVar5 < 0) || ((int)(uint)*(ushort *)(iVar3 + 6) <= (int)uVar5)) {
            TERMINATION(s_STY_Command__GetCommand___0065bafc,s_index_out_of_range_00604290);
          }
          FUN_005640a0(*(undefined4 *)(*(int *)(iVar3 + 8) + 4 + uVar5 * 8));
          break;
        case 7:
          if (((int)uVar5 < 0) || ((int)(uint)*(ushort *)(iVar3 + 6) <= (int)uVar5)) {
            TERMINATION(s_STY_Command__GetCommand___0065bafc,s_index_out_of_range_00604290);
          }
          FUN_00564010(*(undefined4 *)(*(int *)(iVar3 + 8) + 4 + uVar5 * 8));
          break;
        case 8:
          if (((int)uVar5 < 0) || ((int)(uint)*(ushort *)(iVar3 + 6) <= (int)uVar5)) {
            TERMINATION(s_STY_Command__GetCommand___0065bafc,s_index_out_of_range_00604290);
          }
          *(undefined4 *)(*(int *)(param_1 + 8) + 0x20) =
               *(undefined4 *)(*(int *)(iVar3 + 8) + 4 + uVar5 * 8);
          break;
        default:
          TERMINATION(s_MAI_Handler__RunOptionCommands___0065bb18,s_illegal_option_type_0065bb3c);
        }
        uVar4 = (uint)*(ushort *)(iVar3 + 6);
        uVar5 = uVar5 + 1;
      } while (uVar5 < uVar4);
    }
  }
  return;
}



// --------------------------------------------
// STY_Inventory__GetItemInfoByIndex_9   ab 0x005a4200   1118 Byte
// gerufen von: FUN_005a4910, STY_Inventory__GetItemInfoByIndex_14
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
// gerufen von: FUN_005a4910, STY_Inventory__GetItemInfoByIndex_14
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
// gerufen von: STY_Inventory__GetItemInfoByIndex_14
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
// gerufen von: STY_Inventory__GetItemInfoByIndex_18
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



