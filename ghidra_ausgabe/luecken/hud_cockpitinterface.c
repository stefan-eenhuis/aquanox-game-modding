// Muster: HUD_CockpitInterface   1 Funktionen, 2962 Byte

// --------------------------------------------
// HUD_CockpitInterface__Parse   ab 0x00542bc0   2962 Byte
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, AlphaSensitivity, AlphaSign, AlphaStiffness, BetaSensitivity, BetaSign, BetaStiffness, Compass_Scale, Compass_Translation, DES FILE ERROR, GammaSensitivity, ... (+30)
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall
HUD_CockpitInterface__Parse
          (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 local_10 [16];
  
  iVar1 = FUN_00507980(local_10,s_MOTION_00658538);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_HUD_CockpitInterface__Parse___00658518,s_MOTION_00658538,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_AlphaSensitivity_00658504,param_1 + 0x424);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_AlphaSensitivity_00658504,uVar2)
    ;
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_AlphaStiffness_006584f4,(float *)(param_1 + 0x430));
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_AlphaStiffness_006584f4,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_AlphaSign_006584e8,param_1 + 0x43c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_AlphaSign_006584e8,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  *(float *)(param_1 + 0x400) = _DAT_005f3350 / *(float *)(param_1 + 0x430);
  iVar1 = FUN_00507800(s_BetaSensitivity_006584d8,param_1 + 0x41c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_BetaSensitivity_006584d8,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_BetaStiffness_006584c8,(float *)(param_1 + 0x428));
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_BetaStiffness_006584c8,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_BetaSign_006584bc,param_1 + 0x434);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_BetaSign_006584bc,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  *(float *)(param_1 + 0x3f8) = _DAT_005f3350 / *(float *)(param_1 + 0x428);
  iVar1 = FUN_00507800(s_GammaSensitivity_006584a8,param_1 + 0x420);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_GammaSensitivity_006584a8,uVar2)
    ;
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_GammaStiffness_00658498,(float *)(param_1 + 0x42c));
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_GammaStiffness_00658498,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_GammaSign_0065848c,param_1 + 0x438);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_GammaSign_0065848c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  *(float *)(param_1 + 0x3fc) = _DAT_005f3350 / *(float *)(param_1 + 0x42c);
  iVar1 = FUN_00507980(local_10,s_Geometry_00658480);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_HUD_CockpitInterface__Parse___00658518,s_Geometry_00658480,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Visor_Translation_0065846c,param_1 + 0x2a8);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_Visor_Translation_0065846c,uVar2
                        );
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_Visor_Scale_00658460,param_1 + 0x2b4);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_Visor_Scale_00658460,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Compass_Translation_0065844c,param_1 + 0x298);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_Compass_Translation_0065844c,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_Compass_Scale_0065843c,param_1 + 0x2a4);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_Compass_Scale_0065843c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_Translation_00658428,param_1 + 0x3c0);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_Radar_Translation_00658428,uVar2
                        );
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507610(s_Radar_Scale_0065841c,param_1 + 0x3cc);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_Radar_Scale_0065841c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorTerrain_00658408,param_1 + 0x2b8);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_Radar_ColorTerrain_00658408,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorFinTop_006583f4,param_1 + 0x2c4);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_Radar_ColorFinTop_006583f4,uVar2
                        );
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorFinBottom_006583dc,param_1 + 0x2d0);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_Radar_ColorFinBottom_006583dc,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ClipObjectDimension_006583c0,param_1 + 0x2dc);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,
                         s_Radar_ClipObjectDimension_006583c0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorObjectFriend_006583a8,param_1 + 0x2f4);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_Radar_ColorObjectFriend_006583a8
                         ,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorObjectFriendOffset_00658388,param_1 + 0x300);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,
                         s_Radar_ColorObjectFriendOffset_00658388,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorObjectNeutral_0065836c,param_1 + 0x30c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,
                         s_Radar_ColorObjectNeutral_0065836c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorObjectNeutralOffset_0065834c,param_1 + 0x318);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,
                         s_Radar_ColorObjectNeutralOffset_0065834c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorObjectUnknown_00658330,param_1 + 0x324);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,
                         s_Radar_ColorObjectUnknown_00658330,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorObjectUnknownOffset_00658310,param_1 + 0x330);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,
                         s_Radar_ColorObjectUnknownOffset_00658310,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorObjectEnemy_006582f8,param_1 + 0x33c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_Radar_ColorObjectEnemy_006582f8,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorObjectEnemyOffset_006582d8,param_1 + 0x348);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,
                         s_Radar_ColorObjectEnemyOffset_006582d8,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorAnchorFriend_006582c0,param_1 + 0x354);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_Radar_ColorAnchorFriend_006582c0
                         ,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorAnchorNeutral_006582a4,param_1 + 0x360);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,
                         s_Radar_ColorAnchorNeutral_006582a4,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorAnchorUnknown_00658288,param_1 + 0x36c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,
                         s_Radar_ColorAnchorUnknown_00658288,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorAnchorEnemy_00658270,param_1 + 0x378);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_Radar_ColorAnchorEnemy_00658270,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorAnchorPlayer_00658258,param_1 + 900);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_Radar_ColorAnchorPlayer_00658258
                         ,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorLockedFriend_00658240,param_1 + 0x390);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_Radar_ColorLockedFriend_00658240
                         ,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorLockedNeutral_00658224,param_1 + 0x39c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,
                         s_Radar_ColorLockedNeutral_00658224,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorLockedUnknown_00658208,param_1 + 0x3a8);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,
                         s_Radar_ColorLockedUnknown_00658208,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507510(s_Radar_ColorLockedEnemy_006581f0,param_1 + 0x3b4);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_HUD_CockpitInterface__Parse___00658518,s_Radar_ColorLockedEnemy_006581f0,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  MUI_Menu__Parse(param_2,param_3,param_4,param_5);
  return;
}



