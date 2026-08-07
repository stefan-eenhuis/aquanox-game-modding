// Muster: GUI_Menu__Parse   2 Funktionen, 2850 Byte

// --------------------------------------------
// GUI_Menu__Parse   ab 0x0059f1b0   1021 Byte
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, DES FILE ERROR, GUI_Menu::Parse(), HeightOfTextItem, LineOfFirstTextItem, NumOfItems, NumOfPrimaryTextData, NumOfSecondaryTextData
// --------------------------------------------

void __thiscall
GUI_Menu__Parse(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined1 local_36c [16];
  int iStack_35c;
  int iStack_358;
  undefined1 auStack_354 [16];
  undefined1 local_344 [16];
  undefined1 auStack_334 [4];
  undefined1 local_330 [16];
  undefined1 local_320 [544];
  undefined1 auStack_100 [256];
  
  FUN_00565ce0();
  FUN_00565ce0();
  FUN_00506640(local_330,param_2);
  FUN_00506640(local_344,param_3);
  iVar2 = FUN_00507980(local_320,&DAT_00609394);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,s_GUI_Menu__Parse___0065d3b8,
                         &DAT_00609394,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507980(local_36c,&DAT_0065d3b0);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,s_GUI_Menu__Parse___0065d3b8,
                         &DAT_0065d3b0,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507710(&DAT_0065a060,auStack_100);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_GUI_Menu__Parse___0065d3b8,
                         &DAT_0065a060,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  piVar1 = (int *)(param_1 + 0xc);
  iVar2 = FUN_00507420(s_NumOfItems_0065d3a4,piVar1);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_GUI_Menu__Parse___0065d3b8,
                         s_NumOfItems_0065d3a4,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507420(s_HeightOfTextItem_0065d390,param_1 + 0x14);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_GUI_Menu__Parse___0065d3b8,
                         s_HeightOfTextItem_0065d390,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507420(s_LineOfFirstTextItem_0065d37c,param_1 + 0x18);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_GUI_Menu__Parse___0065d3b8,
                         s_LineOfFirstTextItem_0065d37c,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  GFX_Font__Open(auStack_100,0);
  FUN_0059ea30(param_1 + 0x30,10,param_4);
  iVar2 = 0;
  if (0 < *piVar1) {
    do {
      iVar4 = FUN_00507140(auStack_354,&DAT_006116a8,iVar2);
      if (iVar4 == 0) {
        FUN_0052e040();
        uVar3 = FUN_0052e130();
        uVar3 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                             s_GUI_Menu__Parse___0065d3b8,&DAT_006116a8,iVar2,uVar3);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
      }
      iVar4 = FUN_00507420(&DAT_0060d67c,auStack_334);
      if (iVar4 == 0) {
        FUN_0052e040();
        uVar3 = FUN_0052e130();
        uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                             s_GUI_Menu__Parse___0065d3b8,&DAT_0060d67c,uVar3);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
      }
      iVar4 = FUN_00507420(s_NumOfPrimaryTextData_0065d364,&iStack_358);
      if (iVar4 == 0) {
        FUN_0052e040();
        uVar3 = FUN_0052e130();
        uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                             s_GUI_Menu__Parse___0065d3b8,s_NumOfPrimaryTextData_0065d364,uVar3);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
      }
      iVar4 = FUN_00507420(s_NumOfSecondaryTextData_0065d34c,&iStack_35c);
      if (iVar4 == 0) {
        FUN_0052e040();
        uVar3 = FUN_0052e130();
        uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                             s_GUI_Menu__Parse___0065d3b8,s_NumOfSecondaryTextData_0065d34c,uVar3);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
      }
      iVar4 = operator_new(0x238);
      if (iVar4 == 0) {
        puVar5 = (undefined4 *)0x0;
      }
      else {
        puVar5 = (undefined4 *)FUN_0059ffa0();
      }
      iVar4 = iStack_358;
      if (iStack_358 < iStack_35c) {
        iVar4 = iStack_35c;
      }
      FUN_0059fff0(iVar4,*(undefined4 *)(param_1 + 0x10));
      (**(code **)*puVar5)(auStack_354,local_344);
      GUI_TextMenu__AddTextItem(iVar2,puVar5);
      iVar2 = iVar2 + 1;
    } while (iVar2 < *piVar1);
  }
  FUN_00506890();
  FUN_00506890();
  FUN_00506890();
  FUN_00506890();
  return;
}



// --------------------------------------------
// GUI_Menu__Parse_2   ab 0x005a0540   1829 Byte
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get "%s%d" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, DES FILE ERROR, Duration, Emission, EventButtonNext, EventButtonPrev, EventClose, EventEnter, EventLeave, EventOpen, ... (+12)
// --------------------------------------------

void __fastcall GUI_Menu__Parse_2(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iStack_388;
  int iStack_384;
  int iStack_380;
  undefined4 uStack_37c;
  undefined4 uStack_378;
  int iStack_374;
  undefined1 auStack_370 [16];
  undefined1 auStack_360 [16];
  undefined1 auStack_350 [16];
  undefined1 auStack_340 [16];
  undefined1 auStack_330 [16];
  undefined1 auStack_320 [16];
  undefined1 auStack_310 [16];
  undefined1 auStack_300 [256];
  undefined1 auStack_200 [256];
  undefined1 auStack_100 [256];
  
  auStack_300[0] = 0;
  iVar1 = FUN_00507980(auStack_350,s_EventOpen_0065d590);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,s_GUI_Menu__Parse___0065d3b8,
                         s_EventOpen_0065d590,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507980(auStack_360,s_EventClose_0065d584);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,s_GUI_Menu__Parse___0065d3b8,
                         s_EventClose_0065d584,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507980(auStack_340,s_EventEnter_0065d578);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,s_GUI_Menu__Parse___0065d3b8,
                         s_EventEnter_0065d578,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507980(auStack_330,s_EventLeave_0065d56c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,s_GUI_Menu__Parse___0065d3b8,
                         s_EventLeave_0065d56c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507980(auStack_320,s_EventButtonNext_0065d55c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,s_GUI_Menu__Parse___0065d3b8,
                         s_EventButtonNext_0065d55c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507980(auStack_310,s_EventButtonPrev_0065d54c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,s_GUI_Menu__Parse___0065d3b8,
                         s_EventButtonPrev_0065d54c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar4 = param_1 + 0x138;
  iVar1 = 4;
  do {
    iVar3 = FUN_00507610(s_Translation_00610978,iVar4 + -0xc);
    if (iVar3 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_GUI_TextItem__Parse___0065d534,s_Translation_00610978,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    iVar3 = FUN_00507610(s_Scale_006035a0,iVar4);
    if (iVar3 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_GUI_TextItem__Parse___0065d534,s_Scale_006035a0,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    iVar3 = FUN_00507800(s_Rotation_0065d528,iVar4 + -4);
    if (iVar3 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_GUI_TextItem__Parse___0065d534,s_Rotation_0065d528,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    iVar3 = FUN_00507800(s_Opacity_00611290,iVar4 + 0x14);
    if (iVar3 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_GUI_TextItem__Parse___0065d534,s_Opacity_00611290,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    iVar3 = FUN_00507800(s_Duration_0065d51c,iVar4 + 0x18);
    if (iVar3 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_GUI_TextItem__Parse___0065d534,s_Duration_0065d51c,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    iVar3 = FUN_00507510(s_Emission_0065d510,iVar4 + 8);
    if (iVar3 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_GUI_TextItem__Parse___0065d534,s_Emission_0065d510,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    iVar4 = iVar4 + 0x2c;
    iVar1 = iVar1 + -1;
  } while (iVar1 != 0);
  iVar1 = FUN_00507980(auStack_370,&DAT_00609394);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,s_GUI_Menu__Parse___0065d3b8,
                         &DAT_00609394,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507420(s_NumOfPrimaryTextData_0065d364,&iStack_384);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_GUI_Menu__Parse___0065d3b8,
                         s_NumOfPrimaryTextData_0065d364,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507420(s_NumOfSecondaryTextData_0065d34c,&iStack_388);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_GUI_Menu__Parse___0065d3b8,
                         s_NumOfSecondaryTextData_0065d34c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  if (iStack_384 == 0) {
    if (iStack_388 == 0) {
      return;
    }
  }
  else if (0 < iStack_384) goto LAB_005a09ce;
  if (iStack_388 != 1) {
    TERMINATION(s_GUI_TextItem__Parse___0065d534,s_invalid_number_combination_of_pr_0065d4c8);
  }
LAB_005a09ce:
  iStack_380 = 0;
  if (0 < iStack_384) {
    iStack_374 = 0;
    do {
      iVar4 = iStack_374;
      iVar1 = iStack_380;
      iVar3 = FUN_00506b40(s_PrimaryTextData_0065d4b8,iStack_380,&uStack_37c);
      if (iVar3 == 0) {
        FUN_0052e040();
        uVar2 = FUN_0052e130();
        uVar2 = FUN_005222c0(s___s___Get___s_d__in_file___s__fa_0061098c,
                             s_GUI_Menu__Parse___0065d3b8,s_PrimaryTextData_0065d4b8,iVar1,uVar2);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
      }
      iVar3 = FUN_00506de0(&DAT_00618e88,uStack_37c,auStack_200);
      if (iVar3 == 0) {
        FUN_0052e040();
        uVar2 = FUN_0052e130();
        uVar2 = FUN_005222c0(s___s___Get___s_d__in_file___s__fa_0061098c,
                             s_GUI_Menu__Parse___0065d3b8,&DAT_00618e88,uStack_37c,uVar2);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
      }
      if (iStack_388 == 0) {
        if (iVar4 < 0) {
          FUN_00522300(s_GUI_TextItem__GetTextData____No_t_0065bcb8);
          FUN_0059fc40(auStack_200);
        }
        else if (iVar1 < *(int *)(param_1 + 0xc)) {
          FUN_0059fc40(auStack_200);
        }
        else {
          FUN_00522300(s_GUI_TextItem__GetTextData____No_t_0065bcb8);
          FUN_0059fc40(auStack_200);
        }
      }
      else {
        iVar3 = 0;
        if (0 < iStack_388) {
          iVar5 = 0;
          do {
            iVar1 = FUN_00506b40(s_SecondaryTextData_0065d4a4,iVar3,&uStack_378);
            if (iVar1 == 0) {
              FUN_0052e040();
              uVar2 = FUN_0052e130();
              uVar2 = FUN_005222c0(s___s___Get___s_d__in_file___s__fa_0061098c,
                                   s_GUI_Menu__Parse___0065d3b8,s_SecondaryTextData_0065d4a4,iVar3,
                                   uVar2);
              TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
            }
            iVar1 = FUN_00506de0(&DAT_00618e88,uStack_378,auStack_100);
            if (iVar1 == 0) {
              FUN_0052e040();
              uVar2 = FUN_0052e130();
              uVar2 = FUN_005222c0(s___s___Get___s_d__in_file___s__fa_0061098c,
                                   s_GUI_Menu__Parse___0065d3b8,&DAT_00618e88,uStack_378,uVar2);
              TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
            }
            str_copy(auStack_300,auStack_200);
            FUN_00520670(auStack_300,auStack_100);
            if (iVar5 < 0) {
              FUN_00522300(s_GUI_TextItem__GetTextData____No_t_0065bcb8);
            }
            else if (*(int *)(param_1 + 0xc) <= iVar3) {
              FUN_00522300(s_GUI_TextItem__GetTextData____No_t_0065bcb8);
            }
            FUN_0059fc40(auStack_300);
            iVar3 = iVar3 + 1;
            iVar5 = iVar5 + 0x18;
            iVar4 = iStack_374;
            iVar1 = iStack_380;
          } while (iVar3 < iStack_388);
        }
      }
      iStack_380 = iVar1 + 1;
      iStack_374 = iVar4 + 0x18;
    } while (iStack_380 < iStack_384);
  }
  return;
}



