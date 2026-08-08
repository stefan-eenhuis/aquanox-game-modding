// Muster: Aqua_Locale   3 Funktionen, 2739 Byte

// --------------------------------------------
// Aqua_Locale__Aqua_Locale   ab 0x00406260   468 Byte
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, -lang_english, -lang_french, -lang_german, Aqua_Locale::Aqua_Locale(), Aqua_Locale::Aqua_Locale() - illegal language type, DES FILE ERROR, Language, Locale, dat\version\locale.des, english, ... (+2)
// --------------------------------------------

undefined4 * __fastcall Aqua_Locale__Aqua_Locale(undefined4 *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 local_328 [16];
  undefined1 local_318 [280];
  undefined1 local_200 [512];
  
  FUN_00565ce0();
  FUN_005ed530();
  *param_1 = 0;
  iVar1 = FUN_00521950(s_dat_version_locale_des_00603c7c);
  if (iVar1 != 0) {
    iVar1 = FUN_00506640(local_318,s_dat_version_locale_des_00603c7c);
    if (iVar1 != 0) {
      iVar1 = FUN_00507980(local_328,s_Locale_00603c74);
      if (iVar1 == 0) {
        FUN_0052e040();
        uVar2 = FUN_0052e130();
        uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                             s_Aqua_Locale__Aqua_Locale___00603c58,s_Locale_00603c74,uVar2);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
      }
      iVar1 = FUN_00507710(s_Language_00603c4c,local_200);
      if (iVar1 == 0) {
        FUN_0052e040();
        uVar2 = FUN_0052e130();
        uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                             s_Aqua_Locale__Aqua_Locale___00603c58,s_Language_00603c4c,uVar2);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
      }
      iVar1 = FUN_005206d0(local_200,s_german_00603c44);
      if (iVar1 == 0) {
        *param_1 = 0;
      }
      else {
        iVar1 = FUN_005206d0(local_200,s_english_00603c3c);
        if (iVar1 == 0) {
          *param_1 = 1;
        }
        else {
          iVar1 = FUN_005206d0(local_200,s_french_00603c34);
          if (iVar1 == 0) {
            *param_1 = 2;
          }
          else {
            TERMINATION(s_Aqua_Locale__Aqua_Locale_____ill_00603c00,local_200);
          }
        }
      }
    }
  }
  uVar2 = FUN_00523060(s__lang_german_00603bf0);
  iVar1 = FUN_00520770(uVar2);
  if (iVar1 == 0) {
    uVar2 = FUN_00523060(s__lang_english_00603be0);
    iVar1 = FUN_00520770(uVar2);
    if (iVar1 == 0) {
      uVar2 = FUN_00523060(s__lang_french_00603bd0);
      iVar1 = FUN_00520770(uVar2);
      if (iVar1 != 0) {
        *param_1 = 2;
      }
    }
    else {
      *param_1 = 1;
    }
  }
  else {
    *param_1 = 0;
  }
  FUN_005216e0();
  FUN_00506890();
  return param_1;
}



// --------------------------------------------
// Aqua_Locale__GetLanguageTpye   ab 0x00406440   336 Byte
// Texte: Aqua_Locale::GetLanguageTpye(), illegal language type
// --------------------------------------------

int * __thiscall Aqua_Locale__GetLanguageTpye(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined *puVar2;
  undefined1 local_304 [2];
  char acStack_302 [258];
  undefined1 local_200 [256];
  undefined1 local_100 [256];
  
  FUN_00520810(param_2,local_304,local_100,acStack_302 + 2,local_200);
  iVar1 = str_len(acStack_302 + 2);
  if (2 < iVar1) {
    iVar1 = str_len(acStack_302 + 2);
    if (acStack_302[iVar1] == '_') {
      iVar1 = str_len(acStack_302 + 2);
      if (acStack_302[iVar1 + 1] != 'd') goto LAB_004064b9;
LAB_0040650f:
      iVar1 = str_len(acStack_302 + 2);
      acStack_302[iVar1] = '\0';
    }
    else {
LAB_004064b9:
      iVar1 = str_len(acStack_302 + 2);
      if (acStack_302[iVar1] == '_') {
        iVar1 = str_len(acStack_302 + 2);
        if (acStack_302[iVar1 + 1] == 'e') goto LAB_0040650f;
      }
      iVar1 = str_len(acStack_302 + 2);
      if (acStack_302[iVar1] == '_') {
        iVar1 = str_len(acStack_302 + 2);
        if (acStack_302[iVar1 + 1] == 'f') goto LAB_0040650f;
      }
    }
  }
  iVar1 = *param_1;
  if (iVar1 != 0) {
    if (iVar1 == 1) {
      puVar2 = &DAT_00603c94;
      goto LAB_00406544;
    }
    if (iVar1 == 2) {
      puVar2 = &DAT_00603c98;
      goto LAB_00406544;
    }
    TERMINATION(s_Aqua_Locale__GetLanguageTpye___00603ca0,s_illegal_language_type_00603cc0);
  }
  puVar2 = &DAT_00603c9c;
LAB_00406544:
  FUN_00520670(acStack_302 + 2,puVar2);
  FUN_005209c0(param_1 + 1,local_304,local_100,acStack_302 + 2,local_200);
  return param_1 + 1;
}



// --------------------------------------------
// Aqua_Locale__GetLanguageTpye_2   ab 0x004252b0   1935 Byte
// Texte: -difficulty0, -difficulty1, -difficulty2, -difficulty3, -difficulty4, Aqua_Locale::GetLanguageTpye(), Aqua_State_SinglePlayer::StartGame(), Aqua_State_SinglePlayer::StartGame() - illegal difficulty level, INFO: aqua input created, INFO: aqua scene graph created, INFO: aqua simulation created, INFO: aqua spawner created, ... (+28)
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall Aqua_Locale__GetLanguageTpye_2(int param_1,undefined4 param_2)

{
  undefined *puVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  char *pcVar5;
  undefined1 local_204 [260];
  undefined1 local_100 [256];
  
  FUN_005ed530();
  FUN_00522fc0(1,1);
  FUN_0050d000(0x3f800000);
  FUN_00426670();
  FUN_00520810(param_2,0,0,local_100,0);
  str_copy(local_204,s_gfx_picture_loading_sp_loading__0060902c);
  FUN_00520670(local_204,local_100);
  iVar2 = *DAT_0066157c;
  if (iVar2 == 0) {
LAB_00425353:
    puVar1 = &DAT_00603c9c;
  }
  else if (iVar2 == 1) {
    puVar1 = &DAT_00603c94;
  }
  else {
    if (iVar2 != 2) {
      TERMINATION(s_Aqua_Locale__GetLanguageTpye___00603ca0,s_illegal_language_type_00603cc0);
      goto LAB_00425353;
    }
    puVar1 = &DAT_00603c98;
  }
  FUN_00520670(local_204,puVar1);
  FUN_00520670(local_204,&DAT_00609024);
  iVar2 = FUN_00521950(local_204);
  if (iVar2 == 0) {
    str_copy(local_204,s_gfx_picture_loading_sp_loading_t_006087ec);
  }
  FUN_0040cc10(local_204,s_gfx_picture_loading_bar_tga_00608810);
  FUN_0040cd00(&DAT_00661574,&DAT_00661574,&DAT_00661574,&DAT_00661574,&DAT_00661574,&DAT_00661574,
               &DAT_00661574);
  FUN_0040d0f0(0);
  FUN_004e4900(s_INFO__creating_aqua_simulation_006087cc);
  iVar2 = operator_new(0xbf8);
  if (iVar2 == 0) {
    DAT_0066323c = 0;
  }
  else {
    DAT_0066323c = FUN_00412fd0();
  }
  if (*(int *)(param_1 + 0x18) == 0) {
    uVar3 = FUN_00523060(s__difficulty0_00608fc8);
    iVar2 = FUN_00520770(uVar3);
    if (iVar2 == 0) {
      uVar3 = FUN_00523060(s__difficulty1_00608fb8);
      iVar2 = FUN_00520770(uVar3);
      if (iVar2 == 0) {
        uVar3 = FUN_00523060(s__difficulty2_00608fa8);
        iVar2 = FUN_00520770(uVar3);
        if (iVar2 == 0) {
          uVar3 = FUN_00523060(s__difficulty3_00608f98);
          iVar2 = FUN_00520770(uVar3);
          if (iVar2 == 0) {
            uVar3 = FUN_00523060(s__difficulty4_00608f88);
            iVar2 = FUN_00520770(uVar3);
            if (iVar2 == 0) goto LAB_00425551;
            *(undefined4 *)(DAT_0066323c + 0xbf4) = 4;
          }
          else {
            *(undefined4 *)(DAT_0066323c + 0xbf4) = 3;
          }
        }
        else {
LAB_00425551:
          *(undefined4 *)(DAT_0066323c + 0xbf4) = 2;
        }
      }
      else {
        *(undefined4 *)(DAT_0066323c + 0xbf4) = 1;
      }
    }
    else {
      *(undefined4 *)(DAT_0066323c + 0xbf4) = 0;
    }
  }
  else {
    iVar2 = *(int *)(*(int *)(param_1 + 0x18) + 0x24);
    if (iVar2 == 0) {
      *(undefined4 *)(DAT_0066323c + 0xbf4) = 0;
    }
    else if (iVar2 == 1) {
      *(undefined4 *)(DAT_0066323c + 0xbf4) = 1;
    }
    else {
      if (iVar2 == 2) goto LAB_00425551;
      if (iVar2 == 3) {
        *(undefined4 *)(DAT_0066323c + 0xbf4) = 3;
      }
      else if (iVar2 == 4) {
        *(undefined4 *)(DAT_0066323c + 0xbf4) = 4;
      }
      else {
        uVar3 = FUN_005222c0(s_level___d_00609018,iVar2);
        TERMINATION(s_Aqua_State_SinglePlayer__StartGa_00608fd8,uVar3);
      }
    }
  }
  FUN_004e4900(s_INFO__aqua_simulation_created_006087ac);
  FUN_004e4900(s_INFO__creating_aqua_story_0060807c);
  iVar2 = operator_new(0xc);
  if (iVar2 == 0) {
    DAT_00663248 = 0;
  }
  else {
    DAT_00663248 = FUN_004274f0();
  }
  uVar3 = Aqua_Locale__GetLanguageTpye(s_dat_sty_mood_d_des_00608798);
  STY_Base__Mood_LoadTable(uVar3);
  uVar3 = Aqua_Locale__GetLanguageTpye(s_dat_sty_person_d_des_00608780);
  STY_Base__Person_LoadTable(uVar3);
  uVar3 = Aqua_Locale__GetLanguageTpye(s_dat_sty_mission_d_des_00608718);
  STY_Base__Mission_LoadTable(uVar3);
  uVar3 = Aqua_Locale__GetLanguageTpye(s_dat_sty_station_d_des_00608064);
  STY_Base__Station_LoadTable(uVar3);
  uVar3 = Aqua_Locale__GetLanguageTpye(s_dat_sty_item_d_des_00608704);
  STY_Base__Item_LoadTable(uVar3);
  uVar3 = Aqua_Locale__GetLanguageTpye(s_dat_sty_movie_d_des_0060803c);
  STY_Base__Movie_LoadTable(uVar3);
  FUN_004e4900(s_INFO__aqua_story_created_00608020);
  FUN_004e4900(s_INFO__creating_aqua_spawner_00608694);
  iVar2 = operator_new(0x4d8);
  if (iVar2 == 0) {
    DAT_00663244 = 0;
  }
  else {
    DAT_00663244 = FUN_004179e0();
  }
  FUN_004192b0();
  FUN_004e4900(s_INFO__aqua_spawner_created_00608678);
  FUN_004e4900(s_INFO__creating_aqua_input_00607e50);
  iVar2 = operator_new(0x2ad8);
  if (iVar2 == 0) {
    DAT_00661578 = 0;
  }
  else {
    DAT_00661578 = FUN_00401cb0();
  }
  if ((*(int *)(param_1 + 0x28) == 0) ||
     (iVar2 = FUN_00521950(*(int *)(param_1 + 0x28)), iVar2 == 0)) {
    pcVar5 = s_ini_ctrlsp_des_00608f78;
  }
  else {
    pcVar5 = *(char **)(param_1 + 0x28);
  }
  FUN_00401d50(pcVar5);
  FUN_004e4900(s_INFO__aqua_input_created_00607e1c);
  FUN_00522f50(0,0);
  DAT_0066d0e0 = 0;
  DAT_0066d0e4 = 0x3d4ccccd;
  DAT_0066d0e8 = 0x41a00000;
  _DAT_0066d0ec = 0x3ccccccd;
  _DAT_0066d0f0 = 0x3aa3d70b;
  _DAT_0066d0f4 = 0x37aec33f;
  _DAT_0066d0f8 = 0x44480000;
  DAT_0066d0c0 = 0;
  DAT_0066d0c4 = 0x3d4ccccd;
  _DAT_0066d0c8 = 0x41a00000;
  _DAT_0066d0cc = 0x3ccccccd;
  _DAT_0066d0d0 = 0x3aa3d70b;
  _DAT_0066d0d4 = 0x37aec33f;
  _DAT_0066d0d8 = 0x44480000;
  DAT_0066d100 = 0;
  FUN_004e4900(s_INFO__creating_aqua_scene_graph_00608654);
  if (*(int *)(param_1 + 0x18) == 0) {
    FUN_00413320(param_2,1,1);
    goto LAB_0042595f;
  }
  switch(*(undefined4 *)(*(int *)(param_1 + 0x18) + 0x2c)) {
  case 1:
    if (s_osd_pla_pla_toiler_osd_00608f60[0] != '\0') {
      pcVar5 = s_osd_pla_pla_toiler_osd_00608f60;
      break;
    }
LAB_004258ec:
    DAT_00667f4c = 0;
    DAT_00668060 = 0;
    goto LAB_0042590c;
  case 2:
    if (s_osd_pla_pla_drowsymaggie_osd_00608f40[0] == '\0') goto LAB_004258ec;
    pcVar5 = s_osd_pla_pla_drowsymaggie_osd_00608f40;
    break;
  case 3:
    if (s_osd_pla_pla_avenger_osd_00608f28[0] == '\0') goto LAB_004258ec;
    pcVar5 = s_osd_pla_pla_avenger_osd_00608f28;
    break;
  case 4:
    if (s_osd_pla_pla_tiburon_osd_00608f10[0] == '\0') goto LAB_004258ec;
    pcVar5 = s_osd_pla_pla_tiburon_osd_00608f10;
    break;
  case 5:
    if (s_osd_pla_pla_skipjack_osd_00608ef4[0] == '\0') goto LAB_004258ec;
    pcVar5 = s_osd_pla_pla_skipjack_osd_00608ef4;
    break;
  case 6:
    if (s_osd_pla_pla_vortex_osd_00608edc[0] == '\0') goto LAB_004258ec;
    pcVar5 = s_osd_pla_pla_vortex_osd_00608edc;
    break;
  case 7:
    if (s_osd_pla_pla_succubus2_osd_00608ec0[0] == '\0') goto LAB_004258ec;
    pcVar5 = s_osd_pla_pla_succubus2_osd_00608ec0;
    break;
  case 8:
    if (s_osd_pla_pla_voodoobreath_osd_00608ea0[0] == '\0') goto LAB_004258ec;
    pcVar5 = s_osd_pla_pla_voodoobreath_osd_00608ea0;
    break;
  case 9:
    if (s_osd_pla_pla_phobocaster_osd_00608e84[0] == '\0') goto LAB_004258ec;
    pcVar5 = s_osd_pla_pla_phobocaster_osd_00608e84;
    break;
  default:
    TERMINATION(s_Aqua_State_SinglePlayer__StartGa_00608e44,s_illegal_player_ship_key_00608e6c);
    goto LAB_0042590c;
  }
  FUN_00520650(&DAT_00667f4c,pcVar5,0x104);
  DAT_0066804f = 0;
  DAT_00668060 = 1;
LAB_0042590c:
  DAT_0060fec0 = 0;
  FUN_00413320(param_2,1,0);
  DAT_00667f4c = 0;
  DAT_00668060 = 0;
  DAT_0060fec0 = 1;
  uVar3 = *(undefined4 *)(param_1 + 0x18);
  uVar4 = FUN_00414760(uVar3);
  Aqua_State_SinglePlayer__EquipPlayerToEngine(uVar4,uVar3);
  DAT_0060fec0 = 0;
LAB_0042595f:
  FUN_004e4900(s_INFO__aqua_scene_graph_created_006085b4);
  FUN_00522f50(0,0);
  DAT_0066d0e0 = 0;
  DAT_0066d0e4 = 0x3d4ccccd;
  DAT_0066d0e8 = 0x41a00000;
  _DAT_0066d0ec = 0x3ccccccd;
  _DAT_0066d0f0 = 0x3aa3d70b;
  _DAT_0066d0f4 = 0x37aec33f;
  _DAT_0066d0f8 = 0x44480000;
  DAT_0066d0c0 = 0;
  DAT_0066d0c4 = 0x3d4ccccd;
  _DAT_0066d0c8 = 0x41a00000;
  _DAT_0066d0cc = 0x3ccccccd;
  _DAT_0066d0d0 = 0x3aa3d70b;
  _DAT_0066d0d4 = 0x37aec33f;
  _DAT_0066d0d8 = 0x44480000;
  DAT_0066d100 = 0;
  FUN_00401020(0);
  *(undefined4 *)(param_1 + 0x2c) = 0;
  FUN_00407690();
  FUN_00412680();
  FUN_005216e0();
  return;
}



