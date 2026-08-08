// Muster: Aqua_TextTable   1 Funktionen, 852 Byte

// --------------------------------------------
// Aqua_TextTable__LoadTable   ab 0x00427640   852 Byte
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, Aqua_TextTable::LoadTable(), Aqua_TextTable::LoadTable() - file not found, DES FILE ERROR, NumOfText, Table, TableName
// --------------------------------------------

undefined4 __thiscall Aqua_TextTable__LoadTable(undefined4 *param_1,undefined1 *param_2)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined1 local_538 [16];
  undefined1 auStack_528 [16];
  undefined1 local_518 [280];
  undefined1 auStack_400 [1024];
  
  FUN_00565ce0();
  operator_delete(*param_1);
  *param_1 = 0;
  if (param_1[1] != 0) {
    iVar5 = 0;
    if (0 < (int)param_1[2]) {
      do {
        operator_delete(*(undefined4 *)(param_1[1] + 4 + iVar5 * 8));
        iVar5 = iVar5 + 1;
      } while (iVar5 < (int)param_1[2]);
    }
    operator_delete(param_1[1]);
    param_1[1] = 0;
  }
  uVar2 = Aqua_Locale__GetLanguageTpye(param_2);
  iVar5 = FUN_00506640(local_518,uVar2);
  if (iVar5 == 0) {
    uVar2 = Aqua_Locale__GetLanguageTpye(param_2);
    TERMINATION(s_Aqua_TextTable__LoadTable_____fi_006093d8,uVar2);
  }
  iVar5 = FUN_00507980(local_538,s_Table_006093d0);
  if (iVar5 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_Aqua_TextTable__LoadTable___006093b4,s_Table_006093d0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar5 = FUN_005078f0(s_TableName_006093a8);
  if (iVar5 == 0) {
    iVar5 = str_len(param_2);
    uVar2 = operator_new(iVar5 + 1);
    *param_1 = uVar2;
  }
  else {
    iVar5 = FUN_00507710(s_TableName_006093a8,auStack_400);
    if (iVar5 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_Aqua_TextTable__LoadTable___006093b4,s_TableName_006093a8,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    iVar5 = str_len(auStack_400);
    uVar2 = operator_new(iVar5 + 1);
    param_2 = auStack_400;
    *param_1 = uVar2;
  }
  str_copy(uVar2,param_2);
  piVar1 = param_1 + 2;
  iVar5 = FUN_00507420(s_NumOfText_0060939c,piVar1);
  if (iVar5 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_Aqua_TextTable__LoadTable___006093b4,s_NumOfText_0060939c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  if (*piVar1 != 0) {
    uVar2 = operator_new(*piVar1 << 3);
    param_1[1] = uVar2;
    iVar5 = 0;
    if (0 < *piVar1) {
      do {
        iVar3 = FUN_00507140(auStack_528,&DAT_00609394,iVar5);
        if (iVar3 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                               s_Aqua_TextTable__LoadTable___006093b4,&DAT_00609394,iVar5,uVar2);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        iVar3 = iVar5 * 8;
        iVar4 = FUN_00507420(&DAT_00609390,param_1[1] + iVar3);
        if (iVar4 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                               s_Aqua_TextTable__LoadTable___006093b4,&DAT_00609390,uVar2);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        iVar4 = FUN_00507710(&DAT_00609394,auStack_400);
        if (iVar4 == 0) {
          FUN_0052e040();
          uVar2 = FUN_0052e130();
          uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                               s_Aqua_TextTable__LoadTable___006093b4,&DAT_00609394,uVar2);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
        }
        iVar4 = str_len(auStack_400);
        uVar2 = operator_new(iVar4 + 1);
        *(undefined4 *)(param_1[1] + 4 + iVar3) = uVar2;
        str_copy(*(undefined4 *)(param_1[1] + 4 + iVar3),auStack_400);
        iVar5 = iVar5 + 1;
      } while (iVar5 < *piVar1);
    }
    FUN_00506890();
    FUN_00506890();
    return 1;
  }
  FUN_00506890();
  return 0;
}



