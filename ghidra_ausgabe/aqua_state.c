// ============================================
// Muster: Aqua_State
// Treffer: 10 Funktionen
// ============================================

// --------------------------------------------
// Aqua_State_Start__IPToString   ab 0x00407610   122 Byte
// gerufen von: FUN_00422710, FUN_00423380, FUN_004245d0, NOD_Hud_MP_Info__Update_DM, NOD_Hud_MP_Info__Update_TDM_CTF
// Texte: %d.%d.%d.%d:%d, Aqua_State_Start::IPToString(), buffersize must not be NULL
// --------------------------------------------

void Aqua_State_Start__IPToString(int param_1,int *param_2,uint param_3,undefined4 param_4)

{
  int iVar1;
  
  if (param_2 == (int *)0x0) {
    TERMINATION(s_Aqua_State_Start__IPToString___00603dcc,s_buffersize_must_not_be_NULL_00603dec);
  }
  iVar1 = FUN_005222c0(s__d__d__d__d__d_00603dbc,param_3 >> 0x18,param_3 >> 0x10 & 0xff,
                       param_3 >> 8 & 0xff,param_3 & 0xff,param_4);
  if (param_1 != 0) {
    FUN_00520650(param_1,iVar1,*param_2);
    *(undefined1 *)(*param_2 + -1 + param_1) = 0;
  }
  iVar1 = str_len(iVar1 + 1);
  *param_2 = iVar1;
  return;
}



// --------------------------------------------
// Aqua_State_Menu__GetNameByType   ab 0x0041f430   342 Byte
// gerufen von: Aqua_State_Menu__LoadBackgroundPictures
// Texte: Aqua_State_Menu::GetNameByType(), MT_CAMERA, MT_CDKEY, MT_CINEMATICS, MT_CONTROLS, MT_FURTHERMOVE, MT_GAMEOPTIONS, MT_INFOLIST, MT_INFOLIST_HEADLINE, MT_INSTANTFIGHT, ... (+29)
// --------------------------------------------

char * Aqua_State_Menu__GetNameByType(undefined4 param_1)

{
  switch(param_1) {
  case 0:
    return s_MT_MAIN_0060831c;
  case 1:
    return s_MT_SINGLEPLAYER_0060830c;
  case 2:
    return s_MT_MULTIPLAYER_006082fc;
  case 3:
    return s_MT_SETUP_006082f0;
  case 4:
    return s_MT_SPECIFY_006082e4;
  case 5:
    return s_MT_CONTROLS_006082d8;
  case 6:
    return s_MT_SYSTEM_006082cc;
  case 7:
    return s_MT_CDKEY_006082c0;
  case 8:
    return s_MT_PERFORMANCE_006082b0;
  case 9:
    return s_MT_SOUND_006082a4;
  case 10:
    return s_MT_NETWORK_00608298;
  case 0xb:
    return s_MT_SERVERLIST_00608288;
  case 0xc:
    return s_MT_PLAYERLIST_00608278;
  case 0xd:
    return s_MT_INFOLIST_0060826c;
  case 0xe:
    return s_MT_SERVERLIST_HEADLINE_00608254;
  case 0xf:
    return s_MT_PLAYERLIST_HEADLINE_0060823c;
  case 0x10:
    return s_MT_INFOLIST_HEADLINE_00608224;
  case 0x11:
    return s_MT_MULTIPLAYER_HEADLINE_0060820c;
  case 0x12:
    return s_MT_MULTIPLAYER_CHOOSE_006081f4;
  case 0x13:
    return s_MT_STARTSERVER_006081e4;
  case 0x14:
    return s_MT_PLAYER_006081d8;
  case 0x15:
    return s_MT_GAMEOPTIONS_006081c8;
  case 0x16:
    return s_MT_LOOK_006081c0;
  case 0x17:
    return s_MT_MOVE_006081b8;
  case 0x18:
    return s_MT_WEIGHT_006081ac;
  case 0x19:
    return s_MT_MISC_006081a4;
  case 0x1a:
    return s_MT_CAMERA_00608198;
  case 0x1b:
    return s_MT_SHOOT_0060818c;
  case 0x1c:
    return s_MT_TAUNTS_00608180;
  case 0x1d:
    return s_MT_TEAMMESSAGES_00608170;
  case 0x1e:
    return s_MT_FURTHERMOVE_00608160;
  case 0x1f:
    return s_MT_INSTANTFIGHT_00608150;
  case 0x20:
    return s_MT_LOAD_00608148;
  case 0x21:
    return s_MT_PASSWORD_0060813c;
  case 0x22:
    return s_MT_SHOWMOVEMENT_0060812c;
  case 0x23:
    return s_MT_CINEMATICS_0060811c;
  case 0x24:
    return s_MT_JOYSTICK_00608110;
  default:
    TERMINATION(s_Aqua_State_Menu__GetNameByType___006080d8,s_illegal_menu_type_006080fc);
    return &DAT_00661574;
  }
}



// --------------------------------------------
// Aqua_State_Menu__LoadBackgroundPictures   ab 0x0041f620   609 Byte
// gerufen von: FUN_0041eaa0
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, Aqua_State_Menu::LoadBackgroundPictures(void), BackgroundPicture, DES FILE ERROR, dat\menu\backgroundpic.des
// --------------------------------------------

void __fastcall Aqua_State_Menu__LoadBackgroundPictures(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  undefined1 *puVar6;
  int iStack_530;
  undefined1 local_528 [16];
  undefined1 local_518 [280];
  undefined1 local_400 [1024];
  
  FUN_00565ce0();
  FUN_00506640(local_528,s_dat_menu_backgroundpic_des_00608368);
  iVar1 = FUN_00507980(local_518,s_BackgroundPicture_00608354);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_Aqua_State_Menu__LoadBackgroundP_00608324,s_BackgroundPicture_00608354,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = 0;
  puVar5 = (undefined4 *)(param_1 + 0x10);
  do {
    puVar6 = local_400;
    uVar2 = Aqua_State_Menu__GetNameByType(iVar1);
    iVar3 = FUN_00507710(uVar2,puVar6);
    if (iVar3 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar4 = Aqua_State_Menu__GetNameByType(iVar1);
      uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_Aqua_State_Menu__LoadBackgroundP_00608324,uVar4,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    operator_delete(*puVar5);
    iVar3 = str_len(local_400);
    uVar2 = operator_new(iVar3 + 1);
    *puVar5 = uVar2;
    str_copy(uVar2,local_400);
    iVar1 = iVar1 + 1;
    puVar5 = puVar5 + 1;
  } while (iVar1 < 0x25);
  FUN_00506890();
  iVar1 = *(int *)(param_1 + 0xc);
  if (iVar1 != 0) {
    iStack_530 = 0;
    if (0 < *(int *)(iVar1 + 0x218)) {
      iVar3 = 0;
      do {
        puVar5 = *(undefined4 **)(*(int *)(iVar1 + 0x210) + iVar3);
        if (puVar5 != (undefined4 *)0x0) {
          operator_delete(*puVar5);
          *puVar5 = 0;
          operator_delete(puVar5[1]);
          puVar5[1] = 0;
          operator_delete(puVar5);
          *(undefined4 *)(*(int *)(iVar1 + 0x210) + iVar3) = 0;
          operator_delete(*(undefined4 *)(*(int *)(iVar1 + 0x210) + 8 + iVar3));
          *(undefined4 *)(*(int *)(iVar1 + 0x210) + 8 + iVar3) = 0;
          *(undefined4 *)(*(int *)(iVar1 + 0x210) + 4 + iVar3) = 0;
        }
        iStack_530 = iStack_530 + 1;
        iVar3 = iVar3 + 0xc;
      } while (iStack_530 < *(int *)(iVar1 + 0x218));
    }
    *(undefined4 *)(iVar1 + 0x214) = 0;
    operator_delete(*(undefined4 *)(iVar1 + 0x210));
    operator_delete(iVar1);
  }
  puVar5 = (undefined4 *)operator_new(0x224);
  if (puVar5 == (undefined4 *)0x0) {
    puVar5 = (undefined4 *)0x0;
  }
  else {
    *puVar5 = 0;
    *(undefined1 *)(puVar5 + 1) = 0;
    *(undefined1 *)(puVar5 + 2) = 0;
    *(undefined1 *)((int)puVar5 + 0x109) = 0;
    puVar5[0x83] = 0;
    uVar2 = operator_new(0x1bc);
    puVar5[0x84] = uVar2;
    iVar3 = 0;
    puVar5[0x86] = 0x25;
    puVar5[0x85] = 0;
    puVar5[0x87] = 0;
    iVar1 = 0;
    do {
      *(undefined4 *)(iVar1 + puVar5[0x84]) = 0;
      *(undefined4 *)(iVar1 + 4 + puVar5[0x84]) = 0;
      *(undefined4 *)(iVar1 + 8 + puVar5[0x84]) = 0;
      iVar3 = iVar3 + 1;
      iVar1 = iVar1 + 0xc;
    } while (iVar3 < (int)puVar5[0x86]);
    puVar5[0x88] = 0;
  }
  *(undefined4 **)(param_1 + 0xc) = puVar5;
  FUN_00506890();
  return;
}



// --------------------------------------------
// Aqua_State_Game__ctor   ab 0x004208c0   32 Byte
// gerufen von: Aqua_State_SinglePlayer__HeartBeat, FUN_00426820, GUI_Menu_SinglePlayer__HeartBeat
// --------------------------------------------

void __thiscall Aqua_State_Game__ctor(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  *param_1 = &PTR_FUN_005f36ec;
  param_1[2] = 0;
  param_1[7] = param_2;
  param_1[8] = param_3;
  return;
}



// --------------------------------------------
// Aqua_State_Menu_InGame__HeartBeat   ab 0x00420920   2386 Byte
// Texte: Aqua_State_Menu_InGame::HeartBeat(), Aqua_State_Menu_InGame::HeartBeat() - illegal mission engine script, Aqua_State_Menu_InGame::HeartBeat() - illegal mission key, Aqua_State_Menu_InGame::HeartBeat() - illegal station engine script, Aqua_State_Menu_InGame::HeartBeat() - illegal station key, Aqua_State_SinglePlayer::HeartBeat() - illegal movie key, Aqua_State_SinglePlayer::HeartBeat() - illegal movie name, ctrlsp.des, illegal order type, key: %d, ... (+4)
// --------------------------------------------

/* WARNING: Type propagation algorithm not settling */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 * __fastcall Aqua_State_Menu_InGame__HeartBeat(undefined4 *param_1)

{
  int iVar1;
  int *piVar2;
  undefined4 *puVar3;
  int iVar4;
  undefined4 uVar5;
  float unaff_EBP;
  undefined4 uVar6;
  undefined4 *puVar7;
  float10 fVar8;
  undefined8 uVar9;
  float afStack_11c [4];
  undefined4 uStack_10c;
  undefined4 uStack_108;
  undefined1 auStack_104 [260];
  
  uVar6 = 0;
  if (param_1[2] != 0) {
    FUN_00402590();
    iVar1 = FUN_004026d0();
    while( true ) {
      if (iVar1 == 0) {
        iVar1 = FUN_00406660(0x7b1);
        if (iVar1 == 0) {
          param_1[2] = 0;
          FUN_00522f50(param_1[4],param_1[5]);
          if (((int *)param_1[8])[*(int *)param_1[8] * 3 + 2] == 0) {
            fVar8 = (float10)FUN_00522d50();
            afStack_11c[0] = (float)fVar8;
            piVar2 = *(int **)(DAT_00663248 + 8);
            if (piVar2[0x3712] == 0) {
              (**(code **)(*piVar2 + 4))(afStack_11c[0],1);
              return param_1;
            }
            if (piVar2[0x1a8] == 0) {
              iVar1 = FUN_004158b0(piVar2 + 0x1a2,1);
              piVar2[0x1a8] = iVar1;
            }
            if (piVar2[0x1af] == 0) {
              iVar1 = FUN_004158b0(piVar2 + 0x1a9,1);
              piVar2[0x1af] = iVar1;
            }
            (**(code **)(*(int *)piVar2[0x3712] + 4))(afStack_11c[0],1);
            piVar2[0x3712] = 0;
            return param_1;
          }
        }
        else {
          iVar1 = FUN_0050a270();
          if (iVar1 == 0) {
            FUN_0050a2d0();
            DSP_Display__Clear(1,0,0);
            afStack_11c[0] = -NAN;
            uStack_10c = 0x44800000;
            uStack_108 = 0x44000000;
            afStack_11c[1] = 512.0;
            afStack_11c[2] = 256.0;
            FUN_0040d500(0x7b1,afStack_11c + 1,&uStack_10c,afStack_11c,0);
            FUN_0050a370();
            FUN_0050a220(1);
            return param_1;
          }
        }
        return param_1;
      }
      piVar2 = (int *)FUN_004026e0();
      if (*piVar2 == 0x4f) break;
      iVar1 = FUN_004026d0();
    }
    FUN_00406790();
    param_1[2] = 0;
    FUN_00522f50(param_1[4],param_1[5]);
    if (((int *)param_1[8])[*(int *)param_1[8] * 3 + 2] != 0) {
      return param_1;
    }
    fVar8 = (float10)FUN_00522d50();
    afStack_11c[0] = (float)fVar8;
    piVar2 = *(int **)(DAT_00663248 + 8);
    if (piVar2[0x3712] == 0) {
      (**(code **)(*piVar2 + 4))(afStack_11c[0],1);
      return param_1;
    }
    if (piVar2[0x1a8] == 0) {
      iVar1 = FUN_004158b0(piVar2 + 0x1a2,1);
      piVar2[0x1a8] = iVar1;
    }
    if (piVar2[0x1af] == 0) {
      iVar1 = FUN_004158b0(piVar2 + 0x1a9,1);
      piVar2[0x1af] = iVar1;
    }
    (**(code **)(*(int *)piVar2[0x3712] + 4))(afStack_11c[0],1);
    piVar2[0x3712] = 0;
    return param_1;
  }
  FUN_00402590();
  iVar1 = FUN_004026d0();
  while (iVar1 != 0) {
    puVar3 = (undefined4 *)FUN_004026e0();
    switch(*puVar3) {
    case 0x4a:
      if (puVar3[1] != 0) {
        uVar6 = 1;
      }
      break;
    case 0x4b:
      if (puVar3[1] != 0) {
        uVar6 = 2;
      }
      break;
    case 0x4c:
      if (puVar3[1] != 0) {
        uVar6 = 3;
      }
      break;
    case 0x4d:
      if (puVar3[1] != 0) {
        uVar6 = 4;
      }
      break;
    case 0x4e:
      if (puVar3[1] != 0) {
        uVar6 = 5;
      }
      break;
    case 0x4f:
      if (puVar3[1] != 0) {
        uVar6 = 6;
      }
      break;
    case 0x50:
      if (puVar3[1] != 0) {
        uVar6 = 7;
      }
    }
    iVar1 = FUN_004026d0();
  }
  piVar2 = (int *)param_1[8];
  switch(piVar2[*piVar2 * 3 + 2]) {
  case 0:
    thunk_FUN_004414d0();
    fVar8 = (float10)FUN_00522d50();
    afStack_11c[0] = (float)fVar8;
    if (DAT_0066d0e0 < afStack_11c[0]) {
      do {
        FUN_004143f0();
        FUN_004144c0();
        FUN_004144e0();
        FUN_004414d0();
        NOD_Node__GC_DoGarbageCollection();
        DAT_0066d0e0 = DAT_0066d0e4 + DAT_0066d0e0;
        DAT_0066d100 = DAT_0066d100 + 1;
        DAT_0066d0e8 = _DAT_005f3350 / DAT_0066d0e4;
        _DAT_0066d0ec = DAT_0066d0e4 * _DAT_005f33b8;
        _DAT_0066d0f0 = DAT_0066d0e4 * DAT_0066d0e4 * _DAT_005f33b8;
        _DAT_0066d0f4 = DAT_0066d0e4 * DAT_0066d0e4 * DAT_0066d0e4 * _DAT_005f3700;
        _DAT_0066d0f8 = DAT_0066d0e8 * DAT_0066d0e8 + DAT_0066d0e8 * DAT_0066d0e8;
        fVar8 = (float10)FUN_00522d50();
        afStack_11c[0] = (float)fVar8;
      } while (DAT_0066d0e0 < afStack_11c[0]);
    }
    iVar1 = **(int **)(DAT_00663248 + 8);
    fVar8 = (float10)FUN_00522d50(uVar6);
    (**(code **)(iVar1 + 8))((float)fVar8);
    puVar3 = (undefined4 *)(*(int *)(DAT_00663248 + 8) + 0x6c4);
    puVar7 = (undefined4 *)param_1[8];
    for (iVar1 = 0x32; iVar1 != 0; iVar1 = iVar1 + -1) {
      *puVar7 = *puVar3;
      puVar3 = puVar3 + 1;
      puVar7 = puVar7 + 1;
    }
    DAT_0066d0c4 = unaff_EBP - DAT_0066d0c0;
    _DAT_0066d0c8 = _DAT_005f3350 / DAT_0066d0c4;
    _DAT_0066d0cc = DAT_0066d0c4 * _DAT_005f33b8;
    _DAT_0066d0d0 = DAT_0066d0c4 * DAT_0066d0c4 * _DAT_005f33b8;
    _DAT_0066d0d4 = DAT_0066d0c4 * DAT_0066d0c4 * DAT_0066d0c4 * _DAT_005f3700;
    _DAT_0066d0d8 = _DAT_0066d0c8 * _DAT_0066d0c8 + _DAT_0066d0c8 * _DAT_0066d0c8;
    DAT_0066d0c0 = unaff_EBP;
    FUN_004cde80();
    iVar1 = FUN_0050a270();
    if (iVar1 == 0) {
      FUN_0040bd20();
      FUN_0040bd30();
      FUN_0040c790();
    }
    afStack_11c[0] = 0.0;
    afStack_11c[1] = 0.0;
    FUN_00416270(*(int *)(DAT_0066323c + 0x88) + 0x2c,&stack0xfffffee0);
    FUN_00415320();
    return param_1;
  case 1:
    operator_delete(piVar2);
    param_1[8] = 0;
    FUN_00429450(param_1[7]);
    iVar1 = param_1[7];
    if (iVar1 != 0) {
      FUN_00403e50();
      FUN_00403e50();
      FUN_00403e50();
      FUN_00403e50();
      operator_delete(iVar1);
    }
    param_1[7] = 0;
    iVar1 = operator_new(0x110);
    if (iVar1 != 0) {
      puVar3 = (undefined4 *)FUN_0041e8d0();
      return puVar3;
    }
    break;
  case 2:
    iVar1 = FUN_005612a0(piVar2[(*piVar2 + 1) * 3]);
    if (iVar1 == 0) {
      uVar6 = FUN_005222c0(s_key___d_00608580,((int *)param_1[8])[(*(int *)param_1[8] + 1) * 3]);
      TERMINATION(s_Aqua_State_SinglePlayer__HeartBe_00608544,uVar6);
    }
    if (*(int *)(iVar1 + 0xc) == 0) {
      uVar6 = FUN_005222c0(s_movie_key___d_00608534,
                           ((int *)param_1[8])[(*(int *)param_1[8] + 1) * 3]);
      TERMINATION(s_Aqua_State_SinglePlayer__HeartBe_006084f8,uVar6);
    }
    CON_Cache<T>__Unlock_27();
    CON_Cache<T>__Unlock_30();
    FUN_00406600(*(undefined4 *)(iVar1 + 0xc));
    param_1[2] = 1;
    uVar9 = FUN_00522d80();
    *(undefined8 *)(param_1 + 4) = uVar9;
    *(int *)param_1[8] = *(int *)param_1[8] + 1;
    return param_1;
  case 3:
    iVar1 = FUN_005612e0(piVar2[(*piVar2 + 1) * 3]);
    if (iVar1 == 0) {
      uVar6 = FUN_005222c0(s_key___d_00608580,((int *)param_1[8])[(*(int *)param_1[8] + 1) * 3]);
      TERMINATION(s_Aqua_State_Menu_InGame__HeartBea_006084bc,uVar6);
    }
    if (*(int *)(iVar1 + 8) == 0) {
      uVar6 = FUN_005222c0(s_mission_key___d_006084ac,
                           ((int *)param_1[8])[(*(int *)param_1[8] + 1) * 3]);
      TERMINATION(s_Aqua_State_Menu_InGame__HeartBea_00608468,uVar6);
    }
    if (**(char **)(iVar1 + 8) == '\0') {
      uVar6 = FUN_005222c0(s_mission_key___d_006084ac,
                           ((int *)param_1[8])[(*(int *)param_1[8] + 1) * 3]);
      TERMINATION(s_Aqua_State_Menu_InGame__HeartBea_00608468,uVar6);
    }
    *(int *)param_1[8] = *(int *)param_1[8] + 1;
    iVar4 = operator_new(0x70);
    if (iVar4 != 0) {
      uVar6 = *(undefined4 *)(iVar1 + 8);
      uVar5 = FUN_004295b0(s_ctrlsp_des_0060845c);
      uVar5 = FUN_00429640(uVar5);
      puVar3 = (undefined4 *)Aqua_State_InstantFight__ctor(uVar6,param_1[7],param_1[8],uVar5);
      return puVar3;
    }
    break;
  case 4:
    iVar1 = FUN_00561320(piVar2[(*piVar2 + 1) * 3]);
    if (iVar1 == 0) {
      uVar6 = FUN_005222c0(s_key___d_00608580,((int *)param_1[8])[(*(int *)param_1[8] + 1) * 3]);
      TERMINATION(s_Aqua_State_Menu_InGame__HeartBea_00608420,uVar6);
    }
    if (*(int *)(iVar1 + 0x14) == 0) {
      uVar6 = FUN_005222c0(s_station_key___d_00608410,
                           ((int *)param_1[8])[(*(int *)param_1[8] + 1) * 3]);
      TERMINATION(s_Aqua_State_Menu_InGame__HeartBea_006083cc,uVar6);
    }
    if (**(char **)(iVar1 + 0x14) == '\0') {
      uVar6 = FUN_005222c0(s_station_key___d_00608410,
                           ((int *)param_1[8])[(*(int *)param_1[8] + 1) * 3]);
      TERMINATION(s_Aqua_State_Menu_InGame__HeartBea_006083cc,uVar6);
    }
    *(int *)param_1[8] = *(int *)param_1[8] + 1;
    puVar3 = (undefined4 *)operator_new(0x28);
    goto joined_r0x00421224;
  case 5:
    FUN_005242e0(auStack_104);
    uVar6 = FUN_005222c0(s_player_d_des_006083bc,((int *)param_1[8])[(*(int *)param_1[8] + 1) * 3]);
    FUN_00520670(auStack_104,uVar6);
    Savegame__Load(auStack_104);
    *(int *)param_1[8] = *(int *)param_1[8] + 1;
    puVar3 = (undefined4 *)operator_new(0x28);
joined_r0x00421224:
    if (puVar3 != (undefined4 *)0x0) {
      uVar6 = param_1[8];
      uVar5 = param_1[7];
      *puVar3 = &PTR_FUN_005f36ec;
      puVar3[2] = 0;
      puVar3[7] = uVar5;
      puVar3[8] = uVar6;
      return puVar3;
    }
    break;
  case 6:
    operator_delete(piVar2);
    param_1[8] = 0;
    FUN_00429450(param_1[7]);
    iVar1 = param_1[7];
    if (iVar1 != 0) {
      FUN_00403e50();
      FUN_00403e50();
      FUN_00403e50();
      FUN_00403e50();
      operator_delete(iVar1);
    }
    param_1[7] = 0;
    iVar1 = operator_new(0x34);
    if (iVar1 != 0) {
      puVar3 = (undefined4 *)FUN_0041d7b0(0xc,0x40000000,0x41200000);
      return puVar3;
    }
    break;
  default:
    TERMINATION(s_Aqua_State_Menu_InGame__HeartBea_00608384,s_illegal_order_type_006083a8);
    return param_1;
  }
  return (undefined4 *)0x0;
}



// --------------------------------------------
// Aqua_State_MultiPlayer__Aqua_State_MultiPlayer   ab 0x004223c0   314 Byte
// gerufen von: Aqua_State_MultiPlayer__Handle_Not_Initialised, FUN_00426820, GUI_Menu_MultiplayerTest__HeartBeat, GUI_Menu_Multiplayer_Choose__HeartBeat_3, GUI_Menu_Multiplayer_Choose__HeartBeat_4, GUI_Menu_Password__HeartBeat
// Texte: -mp_alive, Aqua_State_MultiPlayer::Aqua_State_MultiPlayer(), no playerinfo specified, no serverinfo specified
// --------------------------------------------

undefined4 * __thiscall
Aqua_State_MultiPlayer__Aqua_State_MultiPlayer
          (undefined4 *param_1,int param_2,undefined4 param_3,undefined4 *param_4,undefined4 param_5
          ,undefined4 param_6,undefined4 param_7,int param_8)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  float10 fVar4;
  
  *param_1 = &PTR_FUN_005f3680;
  FUN_0052e170();
  FUN_0052dc10();
  FUN_0052e0b0();
  *param_1 = &PTR_FUN_005f3718;
  if (param_2 == 0) {
    TERMINATION(s_Aqua_State_MultiPlayer__Aqua_Sta_006088ac,s_no_serverinfo_specified_006088e0);
  }
  if (param_4 == (undefined4 *)0x0) {
    TERMINATION(s_Aqua_State_MultiPlayer__Aqua_Sta_006088ac,s_no_playerinfo_specified_00608894);
  }
  param_1[0x1a3] = 0;
  fVar4 = (float10)FUN_00522d50();
  param_1[0x1a4] = (float)fVar4;
  param_1[0x157] = 0;
  FUN_0052e1e0(param_2);
  FUN_0052dc50(param_3);
  puVar3 = param_1 + 0x13b;
  for (iVar2 = 0x11; iVar2 != 0; iVar2 = iVar2 + -1) {
    *puVar3 = *param_4;
    param_4 = param_4 + 1;
    puVar3 = puVar3 + 1;
  }
  param_1[0x14c] = param_5;
  param_1[0x14d] = param_6;
  param_1[3] = 0;
  FUN_00520650(param_1 + 0x14e,param_7,0x20);
  *(undefined1 *)((int)param_1 + 0x557) = 0;
  iVar2 = FUN_00523070(s__mp_alive_00608888,param_1 + 0x159);
  if (iVar2 == 0) {
    *(undefined1 *)(param_1 + 0x159) = 0;
  }
  if (param_8 != 0) {
    iVar2 = str_len(param_8);
    uVar1 = operator_new(iVar2 + 1);
    param_1[0x156] = uVar1;
    str_copy(uVar1,param_8);
    return param_1;
  }
  param_1[0x156] = 0;
  return param_1;
}



// --------------------------------------------
// Aqua_State_MultiPlayer__Handle_Not_Initialised   ab 0x00422590   333 Byte
// Texte: -host, Aqua_State_MultiPlayer::Handle_Not_Initialised(), illegal state
// --------------------------------------------

int __fastcall Aqua_State_MultiPlayer__Handle_Not_Initialised(int param_1)

{
  int iVar1;
  float10 fVar2;
  undefined4 uVar3;
  
  switch(*(undefined4 *)(param_1 + 4)) {
  case 0:
    iVar1 = FUN_00423380();
    break;
  case 1:
    iVar1 = FUN_00423f90();
    break;
  case 2:
    iVar1 = FUN_004245d0();
    break;
  case 3:
    if (*(int *)(param_1 + 0x530) != 0) {
      FUN_0052f0f0();
      *(undefined4 *)(param_1 + 0x68c) = 1;
      iVar1 = FUN_00406e00();
      if (iVar1 != 0) {
        uVar3 = 3;
        FUN_00406e00(3);
        ANT_Report__SetState(uVar3);
      }
    }
    iVar1 = operator_new(0x694);
    if (iVar1 == 0) {
      return 0;
    }
    iVar1 = Aqua_State_MultiPlayer__Aqua_State_MultiPlayer
                      (param_1 + 0x10,param_1 + 0x4d8,param_1 + 0x4ec,
                       *(undefined4 *)(param_1 + 0x530),*(undefined4 *)(param_1 + 0x534),
                       param_1 + 0x538,*(undefined4 *)(param_1 + 0x558));
    return iVar1;
  case 4:
    iVar1 = operator_new(4);
    if (iVar1 == 0) {
      return 0;
    }
    iVar1 = FUN_004267d0();
    return iVar1;
  case 5:
    iVar1 = FUN_00406e00();
    if (iVar1 != 0) {
      uVar3 = 2;
      FUN_00406e00(2);
      ANT_Report__SetState(uVar3);
      FUN_00406dc0();
    }
    uVar3 = FUN_00523060(s__host_0060892c);
    iVar1 = FUN_00520770(uVar3);
    if (iVar1 != 0) {
      return 0;
    }
    iVar1 = operator_new(0x110);
    if (iVar1 == 0) {
      return 0;
    }
    iVar1 = FUN_0041e8d0();
    return iVar1;
  default:
    TERMINATION(s_Aqua_State_MultiPlayer__Handle_N_006088f8,s_illegal_state_00603cf4);
    iVar1 = param_1;
    break;
  case 7:
    return 0;
  }
  if (iVar1 != 8) {
    *(int *)(param_1 + 4) = iVar1;
    fVar2 = (float10)FUN_00522d50();
    *(float *)(param_1 + 8) = (float)fVar2;
  }
  return param_1;
}



// --------------------------------------------
// Aqua_State_InstantFight__ctor   ab 0x004247e0   128 Byte
// gerufen von: Aqua_State_Menu_InGame__HeartBeat, Aqua_State_SinglePlayer__HeartBeat, FUN_00426820, GUI_Menu_Singleplayer__HeartBeat
// --------------------------------------------

undefined4 * __thiscall
Aqua_State_InstantFight__ctor
          (undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4,int param_5)

{
  int iVar1;
  undefined4 uVar2;
  
  *param_1 = &PTR_FUN_005f3738;
  param_1[4] = 0;
  if (param_2 == 0) {
    param_1[2] = 0;
  }
  else {
    iVar1 = str_len(param_2);
    uVar2 = operator_new(iVar1 + 1);
    param_1[2] = uVar2;
    str_copy(uVar2,param_2);
  }
  param_1[3] = 0;
  param_1[6] = param_3;
  param_1[5] = param_4;
  param_1[7] = 0;
  if (param_5 != 0) {
    iVar1 = str_len(param_5);
    uVar2 = operator_new(iVar1 + 1);
    param_1[10] = uVar2;
    str_copy(uVar2,param_5);
    return param_1;
  }
  param_1[10] = 0;
  return param_1;
}



// --------------------------------------------
// Aqua_State_SinglePlayer__HeartBeat   ab 0x004248c0   2476 Byte
// Texte: Aqua_State_Menu_InGame::HeartBeat() - illegal station engine script, Aqua_State_Menu_InGame::HeartBeat() - illegal station key, Aqua_State_SinglePlayer::HeartBeat(), Aqua_State_SinglePlayer::HeartBeat() - illegal mission engine script, Aqua_State_SinglePlayer::HeartBeat() - illegal mission key, Aqua_State_SinglePlayer::HeartBeat() - illegal movie key, Aqua_State_SinglePlayer::HeartBeat() - illegal movie name, illegal game result, illegal order type, key: %d, ... (+4)
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

int __fastcall Aqua_State_SinglePlayer__HeartBeat(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  float10 fVar8;
  undefined8 uVar9;
  float fStack_138;
  undefined8 uStack_134;
  undefined4 uStack_12c;
  undefined4 uStack_128;
  undefined4 uStack_124;
  undefined4 auStack_120 [7];
  undefined1 auStack_104 [260];
  
  if (*(int *)(param_1 + 0x1c) != 0) {
    FUN_00402590();
    iVar2 = FUN_004026d0();
    while (iVar2 != 0) {
      piVar3 = (int *)FUN_004026e0();
      if (*piVar3 == 0x47) {
        FUN_00406790();
        *(undefined4 *)(param_1 + 0x1c) = 0;
        FUN_00522f50(*(undefined4 *)(param_1 + 0x20),*(undefined4 *)(param_1 + 0x24));
        return param_1;
      }
      iVar2 = FUN_004026d0();
    }
    iVar2 = FUN_00406660(0x7b1);
    if (iVar2 != 0) {
      iVar2 = FUN_0050a270();
      if (iVar2 != 0) {
        return param_1;
      }
      FUN_0050a2d0();
      DSP_Display__Clear(1,0,0);
      fStack_138 = -NAN;
      uStack_128 = 0x44800000;
      uStack_124 = 0x44000000;
      uStack_134._0_4_ = 0x44000000;
      uStack_134._4_4_ = 0x43800000;
      FUN_0040d500(0x7b1,&uStack_134,&uStack_128,&fStack_138,0);
      FUN_0050a370();
      FUN_0050a220(1);
      return param_1;
    }
    *(undefined4 *)(param_1 + 0x1c) = 0;
    FUN_00522f50(*(undefined4 *)(param_1 + 0x20),*(undefined4 *)(param_1 + 0x24));
    return param_1;
  }
  iVar2 = thunk_FUN_004414d0();
  fVar8 = (float10)FUN_00522d50();
  fStack_138 = (float)fVar8;
  if (DAT_0066d0e0 < fStack_138) {
    do {
      FUN_004143f0();
      FUN_004144c0();
      FUN_00402590();
      iVar4 = FUN_004026d0();
      while (iVar4 != 0) {
        uVar5 = FUN_004026e0();
        FUN_00455930(uVar5);
        iVar4 = FUN_004026d0();
      }
      FUN_004414d0();
      NOD_Node__GC_DoGarbageCollection();
      if (*(int *)(param_1 + 0x2c) == 0) {
        iVar4 = FUN_00454950();
        if (iVar4 == 0) {
          if (*(int *)(param_1 + 0x2c) != 0) goto LAB_00424af8;
          goto LAB_00424b44;
        }
        *(undefined4 *)(param_1 + 0x2c) = 1;
        puVar6 = &DAT_0066d0e0;
        puVar7 = (undefined4 *)(param_1 + 0x30);
        for (iVar4 = 7; iVar4 != 0; iVar4 = iVar4 + -1) {
          *puVar7 = *puVar6;
          puVar6 = puVar6 + 1;
          puVar7 = puVar7 + 1;
        }
        puVar6 = &DAT_0066d0c0;
        puVar7 = (undefined4 *)(param_1 + 0x4c);
        for (iVar4 = 7; iVar4 != 0; iVar4 = iVar4 + -1) {
          *puVar7 = *puVar6;
          puVar6 = puVar6 + 1;
          puVar7 = puVar7 + 1;
        }
        uVar5 = FUN_00522d80();
        *(undefined4 *)(param_1 + 0x68) = uVar5;
        FUN_004144e0();
      }
      else {
LAB_00424af8:
        iVar4 = FUN_00454950();
        if (iVar4 == 0) {
          *(undefined4 *)(param_1 + 0x2c) = 0;
          puVar6 = (undefined4 *)(param_1 + 0x30);
          puVar7 = &DAT_0066d0e0;
          for (iVar4 = 7; iVar4 != 0; iVar4 = iVar4 + -1) {
            *puVar7 = *puVar6;
            puVar6 = puVar6 + 1;
            puVar7 = puVar7 + 1;
          }
          puVar6 = (undefined4 *)(param_1 + 0x4c);
          puVar7 = &DAT_0066d0c0;
          for (iVar4 = 7; iVar4 != 0; iVar4 = iVar4 + -1) {
            *puVar7 = *puVar6;
            puVar6 = puVar6 + 1;
            puVar7 = puVar7 + 1;
          }
          FUN_00522f50(*(int *)(param_1 + 0x68),*(int *)(param_1 + 0x68) >> 0x1f);
          FUN_004144e0();
        }
        else {
LAB_00424b44:
          FUN_004144e0();
          DAT_0066d0e0 = DAT_0066d0e4 + DAT_0066d0e0;
          DAT_0066d0e8 = _DAT_005f3350 / DAT_0066d0e4;
          _DAT_0066d0ec = DAT_0066d0e4 * _DAT_005f33b8;
          _DAT_0066d0f0 = DAT_0066d0e4 * DAT_0066d0e4 * _DAT_005f33b8;
          _DAT_0066d0f4 = DAT_0066d0e4 * DAT_0066d0e4 * DAT_0066d0e4 * _DAT_005f3700;
          _DAT_0066d0f8 = DAT_0066d0e8 * DAT_0066d0e8 + DAT_0066d0e8 * DAT_0066d0e8;
          if (*(int *)(param_1 + 0x2c) == 0) {
            DAT_0066d100 = DAT_0066d100 + 1;
          }
        }
      }
      fVar8 = (float10)FUN_00522d50();
      fStack_138 = (float)fVar8;
    } while (DAT_0066d0e0 < fStack_138);
  }
  if (*(int *)(param_1 + 0x14) != 0) {
LAB_00424c43:
    if ((iVar2 == 0) || (iVar4 = FUN_00454920(), iVar4 == 0)) goto switchD_00424db8_caseD_0;
    uVar5 = FUN_00454920();
    switch(uVar5) {
    case 1:
      uVar5 = *(undefined4 *)(param_1 + 0x18);
      uVar1 = *(undefined4 *)(param_1 + 0x14);
      *(undefined4 *)(param_1 + 0x18) = 0;
      *(undefined4 *)(param_1 + 0x14) = 0;
      iVar2 = operator_new(0x70);
      if (iVar2 != 0) {
        iVar2 = Aqua_State_InstantFight__ctor
                          (*(undefined4 *)(param_1 + 8),uVar5,uVar1,*(undefined4 *)(param_1 + 0x28))
        ;
        return iVar2;
      }
      break;
    case 2:
      FUN_005242e0(auStack_104);
      FUN_00520670(auStack_104,s_player_autosave_des_00608594);
      Savegame__Load(auStack_104);
      MAI_Result__Init(0);
      MAI_Result__AddOrder(0,0,0);
      uVar5 = *(undefined4 *)(param_1 + 0x18);
      uVar1 = *(undefined4 *)(param_1 + 0x14);
      *(undefined4 *)(param_1 + 0x18) = 0;
      *(undefined4 *)(param_1 + 0x14) = 0;
      iVar2 = operator_new(0x28);
      if (iVar2 != 0) {
        iVar2 = Aqua_State_Game__ctor(uVar5,uVar1);
        return iVar2;
      }
      break;
    case 4:
      operator_delete(*(undefined4 *)(param_1 + 0x14));
      iVar2 = *(int *)(param_1 + 0x18);
      *(undefined4 *)(param_1 + 0x14) = 0;
      goto joined_r0x00424d33;
    default:
      TERMINATION(s_Aqua_State_SinglePlayer__HeartBe_00608e08,s_illegal_game_result_00608e30);
    case 3:
      piVar3 = *(int **)(param_1 + 0x14);
      switch(piVar3[*piVar3 * 3 + 2]) {
      case 1:
        operator_delete(piVar3);
        iVar2 = *(int *)(param_1 + 0x18);
        *(undefined4 *)(param_1 + 0x14) = 0;
joined_r0x00424d33:
        if (iVar2 != 0) {
          FUN_00403e50();
          FUN_00403e50();
          FUN_00403e50();
          FUN_00403e50();
          operator_delete(iVar2);
        }
        *(undefined4 *)(param_1 + 0x18) = 0;
LAB_00424d6a:
        iVar2 = operator_new(0x110);
        if (iVar2 != 0) {
          iVar2 = FUN_0041e8d0();
          return iVar2;
        }
        break;
      case 2:
        iVar2 = FUN_005612a0(piVar3[(*piVar3 + 1) * 3]);
        if (iVar2 == 0) {
          uVar5 = FUN_005222c0(s_key___d_00608580,
                               (*(int **)(param_1 + 0x14))[(**(int **)(param_1 + 0x14) + 1) * 3]);
          TERMINATION(s_Aqua_State_SinglePlayer__HeartBe_00608544,uVar5);
        }
        if (*(int *)(iVar2 + 0xc) == 0) {
          uVar5 = FUN_005222c0(s_movie_key___d_00608534,
                               (*(int **)(param_1 + 0x14))[(**(int **)(param_1 + 0x14) + 1) * 3]);
          TERMINATION(s_Aqua_State_SinglePlayer__HeartBe_006084f8,uVar5);
        }
        CON_Cache<T>__Unlock_27();
        CON_Cache<T>__Unlock_30();
        FUN_00406600(*(undefined4 *)(iVar2 + 0xc));
        *(undefined4 *)(param_1 + 0x1c) = 1;
        uVar9 = FUN_00522d80();
        piVar3 = *(int **)(param_1 + 0x14);
        *(undefined8 *)(param_1 + 0x20) = uVar9;
      case 5:
        *piVar3 = *piVar3 + 1;
        return param_1;
      case 3:
        iVar2 = FUN_005612e0(piVar3[(*piVar3 + 1) * 3]);
        if (iVar2 == 0) {
          uVar5 = FUN_005222c0(s_key___d_00608580,
                               (*(int **)(param_1 + 0x14))[(**(int **)(param_1 + 0x14) + 1) * 3]);
          TERMINATION(s_Aqua_State_SinglePlayer__HeartBe_00608dcc,uVar5);
        }
        if (*(int *)(iVar2 + 8) == 0) {
          uVar5 = FUN_005222c0(s_mission_key___d_006084ac,
                               (*(int **)(param_1 + 0x14))[(**(int **)(param_1 + 0x14) + 1) * 3]);
          TERMINATION(s_Aqua_State_SinglePlayer__HeartBe_00608d84,uVar5);
        }
        if (**(char **)(iVar2 + 8) == '\0') {
          uVar5 = FUN_005222c0(s_mission_key___d_006084ac,
                               (*(int **)(param_1 + 0x14))[(**(int **)(param_1 + 0x14) + 1) * 3]);
          TERMINATION(s_Aqua_State_SinglePlayer__HeartBe_00608d84,uVar5);
        }
        **(int **)(param_1 + 0x14) = **(int **)(param_1 + 0x14) + 1;
        iVar4 = operator_new(0x70);
        if (iVar4 != 0) {
          iVar2 = Aqua_State_InstantFight__ctor
                            (*(undefined4 *)(iVar2 + 8),*(undefined4 *)(param_1 + 0x18),
                             *(undefined4 *)(param_1 + 0x14),*(undefined4 *)(param_1 + 0x28));
          return iVar2;
        }
        break;
      case 4:
        iVar2 = FUN_00561320(piVar3[(*piVar3 + 1) * 3]);
        if (iVar2 == 0) {
          uVar5 = FUN_005222c0(s_key___d_00608580,
                               (*(int **)(param_1 + 0x14))[(**(int **)(param_1 + 0x14) + 1) * 3]);
          TERMINATION(s_Aqua_State_Menu_InGame__HeartBea_00608420,uVar5);
        }
        if (*(int *)(iVar2 + 0x14) == 0) {
          uVar5 = FUN_005222c0(s_station_key___d_00608410,
                               (*(int **)(param_1 + 0x14))[(**(int **)(param_1 + 0x14) + 1) * 3]);
          TERMINATION(s_Aqua_State_Menu_InGame__HeartBea_006083cc,uVar5);
        }
        if (**(char **)(iVar2 + 0x14) == '\0') {
          uVar5 = FUN_005222c0(s_station_key___d_00608410,
                               (*(int **)(param_1 + 0x14))[(**(int **)(param_1 + 0x14) + 1) * 3]);
          TERMINATION(s_Aqua_State_Menu_InGame__HeartBea_006083cc,uVar5);
        }
        **(int **)(param_1 + 0x14) = **(int **)(param_1 + 0x14) + 1;
        iVar2 = operator_new(0x28);
        if (iVar2 != 0) {
          iVar2 = Aqua_State_Game__ctor
                            (*(undefined4 *)(param_1 + 0x18),*(undefined4 *)(param_1 + 0x14));
          return iVar2;
        }
        break;
      case 6:
        operator_delete(piVar3);
        iVar2 = *(int *)(param_1 + 0x18);
        *(undefined4 *)(param_1 + 0x14) = 0;
        if (iVar2 != 0) {
          FUN_00403e50();
          FUN_00403e50();
          FUN_00403e50();
          FUN_00403e50();
          operator_delete(iVar2);
        }
        *(undefined4 *)(param_1 + 0x18) = 0;
        iVar2 = operator_new(0x34);
        if (iVar2 != 0) {
          iVar2 = FUN_0041d7b0(0xb,0x40000000,0x41200000);
          return iVar2;
        }
        break;
      default:
        TERMINATION(s_Aqua_State_SinglePlayer__HeartBe_00608e08,s_illegal_order_type_006083a8);
      case 0:
switchD_00424db8_caseD_0:
        if (*(int *)(param_1 + 0x2c) == 0) {
          DAT_0066d0c4 = fStack_138 - DAT_0066d0c0;
          DAT_0066d0c0 = fStack_138;
          _DAT_0066d0c8 = _DAT_005f3350 / DAT_0066d0c4;
          _DAT_0066d0cc = DAT_0066d0c4 * _DAT_005f33b8;
          _DAT_0066d0d0 = DAT_0066d0c4 * DAT_0066d0c4 * _DAT_005f33b8;
          _DAT_0066d0d4 = DAT_0066d0c4 * DAT_0066d0c4 * DAT_0066d0c4 * _DAT_005f3700;
          _DAT_0066d0d8 = _DAT_0066d0c8 * _DAT_0066d0c8 + _DAT_0066d0c8 * _DAT_0066d0c8;
        }
        else {
          puVar6 = (undefined4 *)(param_1 + 0x30);
          puVar7 = &DAT_0066d0c0;
          for (iVar4 = 7; iVar4 != 0; iVar4 = iVar4 + -1) {
            *puVar7 = *puVar6;
            puVar6 = puVar6 + 1;
            puVar7 = puVar7 + 1;
          }
          puVar6 = &DAT_0066d0e0;
          puVar7 = auStack_120;
          for (iVar4 = 7; iVar4 != 0; iVar4 = iVar4 + -1) {
            *puVar7 = *puVar6;
            puVar6 = puVar6 + 1;
            puVar7 = puVar7 + 1;
          }
          puVar6 = (undefined4 *)(param_1 + 0x30);
          puVar7 = &DAT_0066d0e0;
          for (iVar4 = 7; iVar4 != 0; iVar4 = iVar4 + -1) {
            *puVar7 = *puVar6;
            puVar6 = puVar6 + 1;
            puVar7 = puVar7 + 1;
          }
        }
        FUN_004cde80();
        FUN_004264f0();
        iVar4 = FUN_0050a270();
        if (iVar4 == 0) {
          FUN_0040bd20();
          FUN_0040bd30();
          FUN_0040c790();
        }
        if (*(int *)(param_1 + 0x2c) != 0) {
          puVar6 = auStack_120;
          puVar7 = &DAT_0066d0e0;
          for (iVar4 = 7; iVar4 != 0; iVar4 = iVar4 + -1) {
            *puVar7 = *puVar6;
            puVar6 = puVar6 + 1;
            puVar7 = puVar7 + 1;
          }
        }
        if ((iVar2 != 0) && (iVar2 = FUN_00454940(), iVar2 != 0)) {
          uStack_134 = FUN_00522d70();
          uVar9 = __ftol();
          FUN_00522f50(uVar9);
        }
        uStack_134._0_4_ = 0;
        uStack_134._4_4_ = 0;
        uStack_12c = 0;
        FUN_00416270(*(int *)(DAT_0066323c + 0x88) + 0x2c,&uStack_134);
        iVar2 = FUN_00414820();
        FUN_004162c0(iVar2 != 0);
        FUN_00415320();
        return param_1;
      }
    }
    return 0;
  }
  if ((iVar2 == 0) || (iVar4 = FUN_00454920(), iVar4 == 0)) {
    if (*(int *)(param_1 + 0x14) == 0) goto switchD_00424db8_caseD_0;
    goto LAB_00424c43;
  }
  iVar2 = FUN_00454920();
  if (iVar2 == 1) {
    iVar2 = operator_new(0x70);
    if (iVar2 == 0) {
      return 0;
    }
    iVar2 = Aqua_State_InstantFight__ctor
                      (*(undefined4 *)(param_1 + 8),*(undefined4 *)(param_1 + 0x18),
                       *(undefined4 *)(param_1 + 0x14),*(undefined4 *)(param_1 + 0x28));
    return iVar2;
  }
  goto LAB_00424d6a;
}



// --------------------------------------------
// Aqua_State_SinglePlayer__EquipPlayerToEngine   ab 0x00425a70   576 Byte
// gerufen von: Aqua_Locale__GetLanguageTpye_2
// Texte: Aqua_State_SinglePlayer::EquipPlayerToEngine(), STY_Inventory::GetItemInfoByIndex(), illegal item index, illegal item type tries to equip
// --------------------------------------------

void Aqua_State_SinglePlayer__EquipPlayerToEngine(undefined4 param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  int iVar4;
  
  puVar3 = (undefined4 *)(param_2 + 0x238);
  FUN_0043f280();
  iVar4 = 0;
  if (0 < *(int *)(param_2 + 0x438)) {
    if (*(int *)(param_2 + 0x438) < 1) {
      TERMINATION(s_STY_Inventory__GetItemInfoByInde_006090a0,s_illegal_item_index_006090c4);
    }
    do {
      uVar2 = puVar3[1];
      iVar1 = FUN_00561370(*puVar3);
      switch(*(undefined4 *)(iVar1 + 4)) {
      case 0:
        param_1 = 9;
        break;
      case 1:
        param_1 = 10;
        break;
      case 2:
        param_1 = 0xb;
        break;
      case 3:
        param_1 = 4;
        break;
      case 4:
        param_1 = 5;
        break;
      case 5:
        param_1 = 6;
        break;
      case 6:
        param_1 = 3;
        break;
      case 7:
        param_1 = 2;
        break;
      case 8:
        param_1 = 1;
        break;
      case 9:
        param_1 = 0;
        break;
      case 10:
        param_1 = 8;
        break;
      case 0xb:
        param_1 = 7;
        break;
      case 0xc:
        param_1 = 0x16;
        break;
      case 0xd:
        param_1 = 0x17;
        break;
      case 0xe:
        param_1 = 0x11;
        break;
      case 0xf:
        param_1 = 0x18;
        break;
      case 0x10:
        param_1 = 0x15;
        break;
      case 0x11:
        param_1 = 0x13;
        break;
      case 0x12:
        param_1 = 0x12;
        break;
      case 0x13:
        param_1 = 0xf;
        break;
      case 0x14:
        param_1 = 0x10;
        break;
      case 0x15:
        param_1 = 0x14;
        break;
      case 0x16:
        param_1 = 0x25;
        break;
      case 0x17:
        param_1 = 0x1d;
        break;
      case 0x18:
        param_1 = 0x1e;
        break;
      case 0x19:
        param_1 = 0x1f;
        break;
      case 0x1a:
        param_1 = 0x20;
        break;
      case 0x1b:
        param_1 = 0x19;
        break;
      case 0x1c:
        param_1 = 0x1a;
        break;
      case 0x1d:
        param_1 = 0x1b;
        break;
      case 0x1e:
        param_1 = 0x1c;
        break;
      case 0x1f:
        param_1 = 0x21;
        break;
      case 0x20:
        param_1 = 0x22;
        uVar2 = 1000;
        break;
      default:
        TERMINATION(s_Aqua_State_SinglePlayer__EquipPl_0060904c,
                    s_illegal_item_type_tries_to_equip_0060907c);
      }
      uVar2 = FUN_0043e9b0(param_1,uVar2);
      NOD_Player__Item_Add(uVar2);
      FUN_0043ea40();
      iVar4 = iVar4 + 1;
      puVar3 = puVar3 + 2;
    } while (iVar4 < *(int *)(param_2 + 0x438));
  }
  uVar2 = FUN_0043e9b0(0xc,1);
  NOD_Player__Item_Add(uVar2);
  FUN_0043ea40();
  uVar2 = FUN_0043e9b0(0xd,10);
  NOD_Player__Item_Add(uVar2);
  FUN_0043ea40();
  uVar2 = FUN_0043e9b0(0xe,30000);
  NOD_Player__Item_Add(uVar2);
  FUN_0043ea40();
  return;
}



