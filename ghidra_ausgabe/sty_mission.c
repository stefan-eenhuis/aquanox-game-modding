// ============================================
// Muster: STY_Mission
// Treffer: 1 Funktionen
// ============================================

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



