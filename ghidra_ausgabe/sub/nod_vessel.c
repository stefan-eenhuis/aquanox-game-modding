// Muster: NOD_Vessel   5 Funktionen, 11427 Byte

// --------------------------------------------
// NOD_Vessel__ParseIniFile   ab 0x0045e870   3428 Byte
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, Avoidance, BHV_Actor_Administrator::RegisterBehaviour, Booster, CON_Cache::Allocate() file not found, CON_Cache<T>::Allocate() - cache overflow, CameraTranslation, Collision, Control, DES FILE ERROR, Dying, ... (+39)
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall NOD_Vessel__ParseIniFile(int *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined4 *puVar4;
  int iVar5;
  uint uVar6;
  int *piVar7;
  int *piVar8;
  undefined4 *puVar9;
  undefined4 *puVar10;
  float10 fVar11;
  char *pcVar12;
  int iStack_2dc;
  undefined1 auStack_2d0 [16];
  undefined1 auStack_2c0 [16];
  int iStack_2b0;
  undefined1 auStack_2ac [16];
  undefined1 auStack_29c [16];
  undefined4 auStack_28c [6];
  undefined1 auStack_274 [16];
  undefined1 auStack_264 [16];
  undefined1 auStack_254 [16];
  undefined1 auStack_244 [16];
  undefined1 auStack_234 [16];
  undefined1 auStack_224 [16];
  undefined1 auStack_214 [16];
  undefined1 auStack_204 [260];
  undefined1 auStack_100 [256];
  
  iVar1 = FUN_00507980(auStack_234,s_Property_0060ff70);
  if (iVar1 != 0) {
    iVar1 = FUN_00507510(s_CameraTranslation_00610564,param_1 + 0x564);
    if (iVar1 == 0) {
      param_1[0x566] = 0;
      param_1[0x565] = 0;
      param_1[0x564] = 0;
    }
  }
  iVar1 = FUN_00507980(auStack_2ac,s_Visual_0061055c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Player__ParseIniFile___00610540,s_Visual_0061055c,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_005078f0(&DAT_0061053c);
  if (iVar1 == 0) {
    iVar1 = FUN_00507710(s_NameMesh_00610530,auStack_100);
    if (iVar1 != 0) goto LAB_0045e995;
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    pcVar12 = s_NameMesh_00610530;
  }
  else {
    iVar1 = FUN_00507710(&DAT_0061053c,auStack_100);
    if (iVar1 != 0) goto LAB_0045e995;
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    pcVar12 = &DAT_0061053c;
  }
  uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                       s_NOD_Player__ParseIniFile___00610540,pcVar12,uVar2);
  TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
LAB_0045e995:
  piVar8 = *(int **)(DAT_00661570 + 4);
  FUN_005ed530();
  if (*piVar8 == 0) {
    piVar7 = (int *)0x0;
    iVar1 = 0;
    if (0 < piVar8[0x86]) {
      iStack_2dc = 0;
      do {
        piVar3 = (int *)(iStack_2dc + piVar8[0x84]);
        if (*(int *)(iStack_2dc + piVar8[0x84]) == 0) {
          if (piVar7 == (int *)0x0) {
            piVar7 = piVar3;
          }
        }
        else {
          iVar5 = FUN_00520710(piVar3[2],auStack_100);
          if (iVar5 == 0) {
            piVar8 = (int *)(piVar8[0x84] + 4 + iVar1 * 0xc);
            *piVar8 = *piVar8 + 1;
            FUN_005216e0();
            iVar1 = iVar1 + 1;
            goto LAB_0045ec24;
          }
        }
        iVar1 = iVar1 + 1;
        iStack_2dc = iStack_2dc + 0xc;
      } while (iVar1 < piVar8[0x86]);
    }
    FUN_005209c0(auStack_204,piVar8 + 1,piVar8 + 2,auStack_100,0);
    iVar1 = FUN_00521ff0(auStack_204,(int)piVar8 + 0x109,piVar8[0x83]);
    iStack_2b0 = iVar1;
    if (iVar1 == 0) {
      TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_204);
      FUN_005216e0();
      iVar1 = 0;
    }
    else {
      if (piVar8[0x86] <= piVar8[0x85]) {
        if (piVar8[0x88] == 0) {
          TERMINATION(s_CON_Cache<T>__Allocate_____cache_006040c8,auStack_100);
        }
        else {
          puVar4 = (undefined4 *)operator_new(piVar8[0x86] * 0x18);
          puVar9 = (undefined4 *)piVar8[0x84];
          puVar10 = puVar4;
          for (uVar6 = piVar8[0x86] * 3 & 0x3fffffff; uVar6 != 0; uVar6 = uVar6 - 1) {
            *puVar10 = *puVar9;
            puVar9 = puVar9 + 1;
            puVar10 = puVar10 + 1;
          }
          for (iVar1 = 0; iVar1 != 0; iVar1 = iVar1 + -1) {
            *(undefined1 *)puVar10 = *(undefined1 *)puVar9;
            puVar9 = (undefined4 *)((int)puVar9 + 1);
            puVar10 = (undefined4 *)((int)puVar10 + 1);
          }
          operator_delete(piVar8[0x84]);
          piVar8[0x86] = piVar8[0x86] << 1;
          piVar8[0x84] = (int)puVar4;
          piVar7 = puVar4 + piVar8[0x85] * 3;
          iVar1 = iStack_2b0;
        }
      }
      piVar7[1] = 1;
      iVar5 = operator_new(0x38);
      if (iVar5 == 0) {
        iVar5 = 0;
      }
      else {
        iVar5 = FUN_00524940();
      }
      *piVar7 = iVar5;
      iVar5 = str_len(auStack_100);
      iVar5 = operator_new(iVar5 + 1);
      piVar7[2] = iVar5;
      str_copy(iVar5,auStack_100);
      iVar1 = FUN_00524a80(iVar1);
      if (iVar1 == 0) {
        iVar1 = *piVar7;
        if (iVar1 != 0) {
          FUN_00524a40();
          operator_delete(iVar1);
        }
        *piVar7 = 0;
        operator_delete(piVar7[2]);
        piVar7[2] = 0;
        TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_204);
        FUN_005216e0();
        iVar1 = 0;
      }
      else {
        piVar8[0x85] = piVar8[0x85] + 1;
        iVar1 = ((int)piVar7 - piVar8[0x84]) / 0xc + 1;
        FUN_005216e0();
      }
    }
  }
  else {
    FUN_005216e0();
    iVar1 = 0;
  }
LAB_0045ec24:
  param_1[0xc1] = iVar1;
  iVar1 = FUN_00507980(auStack_29c,s_PlayerControl_00610520);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Player__ParseIniFile___00610540,s_PlayerControl_00610520,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  MOT_Player__Parse(auStack_29c);
  iVar1 = FUN_00507980(auStack_29c,s_PlayerControlAmplify_00610508);
  if (iVar1 == 0) {
    FUN_0045e470(param_1 + 0x137);
    FUN_0045e5c0(param_1 + 400);
    piVar8 = param_1 + 0x1ed;
    piVar7 = param_1 + 0x2fd;
    for (iVar1 = 10; iVar1 != 0; iVar1 = iVar1 + -1) {
      *piVar7 = *piVar8;
      piVar8 = piVar8 + 1;
      piVar7 = piVar7 + 1;
    }
    piVar8 = param_1 + 0x1f7;
    piVar7 = param_1 + 0x307;
    for (iVar1 = 7; iVar1 != 0; iVar1 = iVar1 + -1) {
      *piVar7 = *piVar8;
      piVar8 = piVar8 + 1;
      piVar7 = piVar7 + 1;
    }
    piVar8 = param_1 + 0x1fe;
    piVar7 = param_1 + 0x30e;
    for (iVar1 = 7; iVar1 != 0; iVar1 = iVar1 + -1) {
      *piVar7 = *piVar8;
      piVar8 = piVar8 + 1;
      piVar7 = piVar7 + 1;
    }
    piVar8 = param_1 + 0x205;
    piVar7 = param_1 + 0x315;
    for (iVar1 = 7; iVar1 != 0; iVar1 = iVar1 + -1) {
      *piVar7 = *piVar8;
      piVar8 = piVar8 + 1;
      piVar7 = piVar7 + 1;
    }
    piVar8 = param_1 + 0x20c;
    piVar7 = param_1 + 0x31c;
    for (iVar1 = 9; iVar1 != 0; iVar1 = iVar1 + -1) {
      *piVar7 = *piVar8;
      piVar8 = piVar8 + 1;
      piVar7 = piVar7 + 1;
    }
    piVar8 = param_1 + 0x215;
    piVar7 = param_1 + 0x325;
    for (iVar1 = 9; iVar1 != 0; iVar1 = iVar1 + -1) {
      *piVar7 = *piVar8;
      piVar8 = piVar8 + 1;
      piVar7 = piVar7 + 1;
    }
    piVar8 = param_1 + 0x21e;
    piVar7 = param_1 + 0x32e;
    for (iVar1 = 8; iVar1 != 0; iVar1 = iVar1 + -1) {
      *piVar7 = *piVar8;
      piVar8 = piVar8 + 1;
      piVar7 = piVar7 + 1;
    }
    piVar8 = param_1 + 0x226;
    piVar7 = param_1 + 0x336;
    for (iVar1 = 8; iVar1 != 0; iVar1 = iVar1 + -1) {
      *piVar7 = *piVar8;
      piVar8 = piVar8 + 1;
      piVar7 = piVar7 + 1;
    }
    piVar8 = param_1 + 0x22e;
    piVar7 = param_1 + 0x33e;
    for (iVar1 = 8; iVar1 != 0; iVar1 = iVar1 + -1) {
      *piVar7 = *piVar8;
      piVar8 = piVar8 + 1;
      piVar7 = piVar7 + 1;
    }
    param_1[0x346] = param_1[0x236];
    param_1[0x347] = param_1[0x237];
    param_1[0x348] = param_1[0x238];
    param_1[0x349] = param_1[0x239];
    param_1[0x34a] = param_1[0x23a];
    param_1[0x34b] = param_1[0x23b];
    param_1[0x34c] = param_1[0x23c];
    param_1[0x34d] = param_1[0x23d];
    param_1[0x34e] = param_1[0x23e];
    param_1[0x34f] = param_1[0x23f];
    param_1[0x350] = param_1[0x240];
    param_1[0x351] = param_1[0x241];
    param_1[0x352] = param_1[0x242];
    param_1[0x353] = param_1[0x243];
    param_1[0x354] = param_1[0x244];
    param_1[0x355] = param_1[0x245];
  }
  else {
    MOT_Player__Parse(auStack_29c);
  }
  iVar1 = FUN_00507980(auStack_274,s_Control_00610500);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Player__ParseIniFile___00610540,s_Control_00610500,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  MOT_Vessel__Parse(auStack_274);
  param_1[0x426] = 0;
  param_1[0x425] = 0;
  param_1[0x424] = 0;
  param_1[0x429] = 0;
  param_1[0x428] = 0;
  param_1[0x427] = 0;
  iVar1 = FUN_00507980(auStack_224,s_Collision_006104f4);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Player__ParseIniFile___00610540,s_Collision_006104f4,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_004c9560(auStack_224,param_1 + 0x246);
  puVar9 = *(undefined4 **)(*(int *)(*(int *)(param_1[0xc0] + 0x94) + 0xbc) + 8);
  puVar10 = auStack_28c;
  for (iVar1 = 6; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar10 = *puVar9;
    puVar9 = puVar9 + 1;
    puVar10 = puVar10 + 1;
  }
  FUN_004c9b40(auStack_28c);
  iVar1 = FUN_00507980(auStack_244,s_Avoidance_006104e8);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Player__ParseIniFile___00610540,s_Avoidance_006104e8,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  FUN_004c9bf0(auStack_244);
  FUN_004c9f30(0);
  FUN_004ca240();
  FUN_004c9eb0();
  iVar1 = FUN_00507980(auStack_214,s_Emitter_006104e0);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Player__ParseIniFile___00610540,s_Emitter_006104e0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  puVar9 = *(undefined4 **)(*(int *)(*(int *)(param_1[0xc0] + 0x94) + 0xbc) + 8);
  puVar10 = auStack_28c;
  for (iVar1 = 6; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar10 = *puVar9;
    puVar9 = puVar9 + 1;
    puVar10 = puVar10 + 1;
  }
  FUN_004c9d80(auStack_214,auStack_28c);
  FUN_004ca100();
  iVar1 = FUN_00507980(auStack_264,s_Stream_006104d8);
  if (iVar1 != 0) {
    FUN_004ca130(auStack_264);
  }
  FUN_00546140(param_1);
  iVar1 = FUN_00507980(auStack_254,s_Dying_006104d0);
  if (iVar1 == 0) {
    FUN_005466f0(s_std_player_des_006104c0);
  }
  else {
    FUN_00546160(auStack_254);
  }
  param_1[0x5a4] = 0x40a00000;
  NOD_ShieldedBody__ParseIniFile(param_2);
  if ((*(int *)(DAT_00661984 + 0x28) == 0) && (*(int *)(DAT_00661984 + 0x520) == 0)) {
    switch(*(undefined4 *)(DAT_0066323c + 0xbf4)) {
    case 0:
      uVar2 = 0x3fe00000;
      (**(code **)(*param_1 + 0x70))(0x3fe00000);
      FUN_005ecd10(uVar2);
      break;
    case 1:
      uVar2 = 0x3fa00000;
      (**(code **)(*param_1 + 0x70))(0x3fa00000);
      FUN_005ecd10(uVar2);
      break;
    case 2:
    case 3:
    case 4:
      break;
    default:
      TERMINATION(s_NOD_Player__ParseIniFile___00610540,s_illegal_difficulty_level_006104a4);
    }
  }
  iVar1 = FUN_00507980(auStack_2d0,s_Sound_0061049c);
  if (iVar1 != 0) {
    iVar1 = FUN_00507980(auStack_2c0,s_Engine_00610494);
    if (iVar1 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                           s_NOD_Vessel__ParseIniFile___00610478,s_Engine_00610494,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    CON_Cache<T>__Unlock_19(auStack_2c0);
    iVar1 = FUN_00507980(auStack_2c0,s_EngineLocal_0061046c);
    if (iVar1 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                           s_NOD_Vessel__ParseIniFile___00610478,s_EngineLocal_0061046c,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    CON_Cache<T>__Unlock_19(auStack_2c0);
    iVar1 = FUN_00507980(auStack_2c0,s_EngineStart_00610460);
    if (iVar1 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                           s_NOD_Vessel__ParseIniFile___00610478,s_EngineStart_00610460,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    CON_Cache<T>__Unlock_19(auStack_2c0);
    iVar1 = FUN_00507980(auStack_2c0,s_EngineStop_00610454);
    if (iVar1 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                           s_NOD_Vessel__ParseIniFile___00610478,s_EngineStop_00610454,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    CON_Cache<T>__Unlock_19(auStack_2c0);
    iVar1 = FUN_00507980(auStack_2c0,s_Booster_0061044c);
    if (iVar1 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                           s_NOD_Vessel__ParseIniFile___00610478,s_Booster_0061044c,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    CON_Cache<T>__Unlock_19(auStack_2c0);
  }
  NOD_Node__LoadSons(param_2);
  param_1[0x16] = 0x27;
  param_1[0x471] = 0;
  param_1[0x470] = (int)(param_1 + 0x356);
  param_1[0x472] = (int)param_1;
  if (0x13 < param_1[0x459]) {
    TERMINATION(s_BHV_Actor_Administrator__Registe_00610400,
                s_Too_many_behaviours_registered__0061042c);
  }
  param_1[param_1[0x459] + 0x45a] = (int)(param_1 + 0x46f);
  param_1[0x459] = param_1[0x459] + 1;
  param_1[0x481] = 0;
  param_1[0x480] = (int)(param_1 + 0x356);
  param_1[0x482] = (int)param_1;
  if (0x13 < param_1[0x459]) {
    TERMINATION(s_BHV_Actor_Administrator__Registe_00610400,
                s_Too_many_behaviours_registered__0061042c);
  }
  fVar11 = (float10)fcos((float10)_DAT_005f4a78);
  param_1[param_1[0x459] + 0x45a] = (int)(param_1 + 0x47f);
  param_1[0x459] = param_1[0x459] + 1;
  *(uint *)(*(int *)(param_1[0xc0] + 0xbc) + 0x48) =
       *(uint *)(*(int *)(param_1[0xc0] + 0xbc) + 0x48) & 0xfffffff7 | 0x40;
  *(float *)(*(int *)(param_1[0xc0] + 0xbc) + 0x20) = (float)fVar11;
  if (param_1[param_1[0x12d] * 4 + 0xee] == 0) {
    *(undefined4 *)(*(int *)(param_1[0xc0] + 0xbc) + 0x10) = 0x43960000;
  }
  else {
    *(undefined4 *)(*(int *)(param_1[0xc0] + 0xbc) + 0x10) = 0x43898000;
  }
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_obstaclehit_metal_006103d8);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_ammo_energ_006103b0);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_ammo_shell_00610388);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_ammo_emp_s_00610364);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_ammo_sizzl_0061033c);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_device_sam_00610318);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_gun_sam_006102f8);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_torpedo_sa_006102d4);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_flag_sam_006102b4);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_repair25_s_00610290);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_repair50_s_0061026c);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_armor5_sam_00610248);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_armor25_sa_00610224);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_boost_sam_00610204);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_armor100_s_006101e0);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_absorb_sam_006101bc);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_maxdamage__00610198);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_cloak_sam_00610178);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_amplify_sa_00610154);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_pla_pickup_timeout_sa_00610130);
  SND_SampleInfo__ParseIniFile(s_sfx_sample_coc_coc_hit_sam_00610114);
  FUN_004ce1b0(s_halo_flag_00610108);
  uVar2 = FUN_004418d0(auStack_204);
  uVar2 = FUN_00499c30(uVar2);
  FUN_0043e670(uVar2);
  iVar1 = 4;
  do {
    FUN_0043e570();
    iVar1 = iVar1 + -1;
  } while (iVar1 != 0);
  FUN_0043e570();
  return;
}



// --------------------------------------------
// NOD_Vessel__ParseIniFile_4   ab 0x004702b0   2528 Byte
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, AcousticAngle, AcousticRange, BuzzerDistract, CON_Cache::Allocate() file not found, CON_Cache<T>::Allocate() - cache overflow, Collision, Control, DES FILE ERROR, EmitLocal, Emitter, ... (+16)
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall NOD_Vessel__ParseIniFile_4(int param_1,undefined4 param_2)

{
  float *pfVar1;
  int *piVar2;
  int iVar3;
  undefined4 uVar4;
  int *piVar5;
  undefined4 *puVar6;
  uint uVar7;
  int iVar8;
  int *piVar9;
  undefined4 *puVar10;
  undefined4 *puVar11;
  float10 fVar12;
  int iStack_2c4;
  undefined1 auStack_2c0 [24];
  undefined4 uStack_2a8;
  int iStack_2a4;
  int iStack_2a0;
  undefined1 auStack_29c [16];
  undefined1 auStack_28c [16];
  undefined1 auStack_27c [16];
  undefined1 auStack_26c [16];
  undefined4 auStack_25c [6];
  undefined1 auStack_244 [16];
  undefined1 auStack_234 [16];
  undefined1 auStack_224 [16];
  undefined1 auStack_214 [16];
  undefined1 auStack_204 [256];
  undefined1 auStack_104 [260];
  
  iVar3 = FUN_00507980(auStack_27c,s_Visual_0061055c);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Torpedo__ParseIniFile___006111d0,s_Visual_0061055c,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = FUN_00507710(s_NameMesh_00610530,auStack_204);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_NOD_Torpedo__ParseIniFile___006111d0,s_NameMesh_00610530,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  piVar2 = *(int **)(DAT_00661570 + 4);
  FUN_005ed530();
  if (*piVar2 == 0) {
    piVar9 = (int *)0x0;
    iVar3 = 0;
    if (0 < piVar2[0x86]) {
      iStack_2c4 = 0;
      do {
        piVar5 = (int *)(iStack_2c4 + piVar2[0x84]);
        if (*piVar5 == 0) {
          if (piVar9 == (int *)0x0) {
            piVar9 = piVar5;
          }
        }
        else {
          iVar8 = FUN_00520710(piVar5[2],auStack_204);
          if (iVar8 == 0) {
            piVar2 = (int *)(piVar2[0x84] + 4 + iVar3 * 0xc);
            *piVar2 = *piVar2 + 1;
            FUN_005216e0();
            iVar3 = iVar3 + 1;
            goto LAB_004705e2;
          }
        }
        iVar3 = iVar3 + 1;
        iStack_2c4 = iStack_2c4 + 0xc;
      } while (iVar3 < piVar2[0x86]);
    }
    FUN_005209c0(auStack_104,piVar2 + 1,piVar2 + 2,auStack_204,0);
    iVar3 = FUN_00521ff0(auStack_104,(int)piVar2 + 0x109,piVar2[0x83]);
    iStack_2a4 = iVar3;
    if (iVar3 == 0) {
      TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_104);
      FUN_005216e0();
      iVar3 = 0;
    }
    else {
      if (piVar2[0x86] <= piVar2[0x85]) {
        if (piVar2[0x88] == 0) {
          TERMINATION(s_CON_Cache<T>__Allocate_____cache_006040c8,auStack_204);
        }
        else {
          puVar6 = (undefined4 *)operator_new(piVar2[0x86] * 0x18);
          puVar10 = (undefined4 *)piVar2[0x84];
          puVar11 = puVar6;
          for (uVar7 = piVar2[0x86] * 3 & 0x3fffffff; uVar7 != 0; uVar7 = uVar7 - 1) {
            *puVar11 = *puVar10;
            puVar10 = puVar10 + 1;
            puVar11 = puVar11 + 1;
          }
          for (iVar3 = 0; iVar3 != 0; iVar3 = iVar3 + -1) {
            *(undefined1 *)puVar11 = *(undefined1 *)puVar10;
            puVar10 = (undefined4 *)((int)puVar10 + 1);
            puVar11 = (undefined4 *)((int)puVar11 + 1);
          }
          operator_delete(piVar2[0x84]);
          piVar2[0x84] = (int)puVar6;
          piVar2[0x86] = piVar2[0x86] << 1;
          piVar9 = puVar6 + piVar2[0x85] * 3;
          iVar3 = iStack_2a4;
        }
      }
      piVar9[1] = 1;
      iVar8 = operator_new(0x38);
      if (iVar8 == 0) {
        iVar8 = 0;
      }
      else {
        iVar8 = FUN_00524940();
      }
      *piVar9 = iVar8;
      iVar8 = str_len(auStack_204);
      iVar8 = operator_new(iVar8 + 1);
      piVar9[2] = iVar8;
      str_copy(iVar8,auStack_204);
      iVar3 = FUN_00524a80(iVar3);
      if (iVar3 == 0) {
        iVar3 = *piVar9;
        if (iVar3 != 0) {
          FUN_00524a40();
          operator_delete(iVar3);
        }
        *piVar9 = 0;
        operator_delete(piVar9[2]);
        piVar9[2] = 0;
        TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_104);
        FUN_005216e0();
        iVar3 = 0;
      }
      else {
        iVar3 = ((int)piVar9 - piVar2[0x84]) / 0xc + 1;
        piVar2[0x85] = piVar2[0x85] + 1;
        FUN_005216e0();
      }
    }
  }
  else {
    FUN_005216e0();
    iVar3 = 0;
  }
LAB_004705e2:
  *(int *)(param_1 + 0x304) = iVar3;
  iVar3 = FUN_00507980(auStack_2c0,s_Torpedo_006111c8);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Torpedo__ParseIniFile___006111d0,s_Torpedo_006111c8,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = FUN_00507800(s_LifeTime_00610af0,param_1 + 0x40c);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_NOD_Torpedo__ParseIniFile___006111d0,s_LifeTime_00610af0,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = FUN_00507800(s_AcousticRange_0060d570,&uStack_2a8);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_NOD_Torpedo__ParseIniFile___006111d0,s_AcousticRange_0060d570,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  pfVar1 = (float *)(param_1 + 0x428);
  iVar3 = FUN_00507800(s_AcousticAngle_006111b8,pfVar1);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_NOD_Torpedo__ParseIniFile___006111d0,s_AcousticAngle_006111b8,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = FUN_00507420(s_LookingMode_006111ac,param_1 + 0x3fc);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_NOD_Torpedo__ParseIniFile___006111d0,s_LookingMode_006111ac,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = FUN_00507420(s_FollowMode_006111a0,param_1 + 0x400);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_NOD_Torpedo__ParseIniFile___006111d0,s_FollowMode_006111a0,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = FUN_00507420(s_BuzzerDistract_00611190,&iStack_2a0);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_NOD_Torpedo__ParseIniFile___006111d0,s_BuzzerDistract_00611190,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  *(uint *)(param_1 + 0x424) = (uint)(iStack_2a0 == 1);
  iVar3 = FUN_005078f0(s_SplashNormal_00611180);
  if (iVar3 == 0) {
    *(undefined4 *)(param_1 + 0x7c4) = 0xf;
  }
  else {
    iVar3 = FUN_00507710(s_SplashNormal_00611180,auStack_204);
    if (iVar3 == 0) {
      FUN_0052e040();
      uVar4 = FUN_0052e130();
      uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Torpedo__ParseIniFile___006111d0,s_SplashNormal_00611180,uVar4);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
    }
    uVar4 = FUN_0041cf70(auStack_204);
    *(undefined4 *)(param_1 + 0x7c4) = uVar4;
  }
  iVar3 = FUN_005078f0(s_SplashShot_00611174);
  if (iVar3 == 0) {
    *(undefined4 *)(param_1 + 0x7c8) = 0xf;
  }
  else {
    iVar3 = FUN_00507710(s_SplashShot_00611174,auStack_204);
    if (iVar3 == 0) {
      FUN_0052e040();
      uVar4 = FUN_0052e130();
      uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Torpedo__ParseIniFile___006111d0,s_SplashShot_00611174,uVar4);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
    }
    uVar4 = FUN_0041cf70(auStack_204);
    *(undefined4 *)(param_1 + 0x7c8) = uVar4;
  }
  iVar3 = FUN_00507980(auStack_224,s_Control_00610500);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Torpedo__ParseIniFile___006111d0,s_Control_00610500,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  MOT_Vessel__Parse(auStack_224);
  fVar12 = (float10)(*(code *)**(undefined4 **)(param_1 + 0x440))();
  *(float *)(param_1 + 0x404) = (float)fVar12;
  *(float *)(param_1 + 0x408) = (float)fVar12;
  *(undefined4 *)(param_1 + 0x720) = 0x3f800000;
  *(undefined4 *)(param_1 + 0x728) = 0x3f800000;
  iVar3 = FUN_00507980(auStack_26c,s_FriendlyFire_00611164);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Bullet__ParseIniFile___00611148,s_FriendlyFire_00611164,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = FUN_00507420(s_FriendlyFirePoints_00611134,param_1 + 0x42c);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_NOD_Bullet__ParseIniFile___00611148,s_FriendlyFirePoints_00611134,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  NOD_ShieldedBody__ParseIniFile(param_2);
  iVar3 = FUN_00507980(auStack_234,s_Collision_006104f4);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Torpedo__ParseIniFile___006111d0,s_Collision_006104f4,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  FUN_004c9850(auStack_234);
  iVar3 = FUN_00507980(auStack_244,s_Emitter_006104e0);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Vessel__ParseIniFile___00610478,s_Emitter_006104e0,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = (**(code **)(**(int **)(*(int *)(param_1 + 0x300) + 0x94) + 0x1c))();
  puVar10 = *(undefined4 **)(iVar3 + 8);
  puVar11 = auStack_25c;
  for (iVar8 = 6; iVar8 != 0; iVar8 = iVar8 + -1) {
    *puVar11 = *puVar10;
    puVar10 = puVar10 + 1;
    puVar11 = puVar11 + 1;
  }
  FUN_004c9d80(auStack_244,auStack_25c);
  FUN_004ca080();
  iVar3 = (**(code **)(**(int **)(*(int *)(param_1 + 0x300) + 0x94) + 0x1c))();
  puVar10 = *(undefined4 **)(iVar3 + 8);
  puVar11 = auStack_25c;
  for (iVar8 = 6; iVar8 != 0; iVar8 = iVar8 + -1) {
    *puVar11 = *puVar10;
    puVar10 = puVar10 + 1;
    puVar11 = puVar11 + 1;
  }
  FUN_004c9b40(auStack_25c);
  FUN_00435cd0(0,100,0,0);
  iVar3 = *(int *)(*(int *)(param_1 + 0x300) + 0xb8);
  *(uint *)(iVar3 + 0x48) = *(uint *)(iVar3 + 0x48) | 1;
  iVar3 = *(int *)(*(int *)(param_1 + 0x300) + 0xb8);
  *(uint *)(iVar3 + 0x48) = *(uint *)(iVar3 + 0x48) & 0xfffffff7 | 0x80;
  *(undefined4 *)(*(int *)(*(int *)(param_1 + 0x300) + 0xb8) + 0x14) = uStack_2a8;
  *(undefined4 *)(*(int *)(*(int *)(param_1 + 0x300) + 0xb8) + 0x1c) = 0;
  iVar3 = FUN_00507980(auStack_214,s_Stream_006104d8);
  if (iVar3 != 0) {
    FUN_004ca130(auStack_214);
  }
  fVar12 = (float10)fcos((float10)*pfVar1 * (float10)_DAT_005f409c);
  *pfVar1 = (float)fVar12;
  NOD_Body__Key_ParseIniFile(param_2);
  iVar3 = FUN_00507980(auStack_28c,s_Sound_0061049c);
  if (iVar3 != 0) {
    iVar3 = FUN_00507980(auStack_29c,s_Engine_00610494);
    if (iVar3 != 0) {
      CON_Cache<T>__Unlock_19(auStack_29c);
    }
    iVar3 = FUN_00507980(auStack_29c,&DAT_00610f14);
    if (iVar3 != 0) {
      CON_Cache<T>__Unlock_19(auStack_29c);
    }
    iVar3 = FUN_00507980(auStack_29c,s_EmitLocal_00610f08);
    if (iVar3 != 0) {
      CON_Cache<T>__Unlock_19(auStack_29c);
    }
  }
  NOD_Node__LoadSons(param_2);
  return;
}



// --------------------------------------------
// NOD_Vessel__ParseIniFile_2   ab 0x00485020   3041 Byte
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, AttackBehaviour, Avoidance, BuzzerIntelligence, BuzzerParam, BuzzerRadius, BuzzerTime, CON_Cache::Allocate() file not found, CON_Cache<T>::Allocate() - cache overflow, Collision, Control, ... (+19)
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall NOD_Vessel__ParseIniFile_2(int param_1,undefined4 param_2)

{
  float *pfVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  uint uVar7;
  int iVar8;
  int *piVar9;
  undefined4 *puVar10;
  undefined4 *puVar11;
  float10 fVar12;
  char *pcVar13;
  int iStack_338;
  undefined1 auStack_32c [16];
  undefined1 auStack_31c [16];
  undefined4 auStack_30c [6];
  undefined1 auStack_2f4 [16];
  undefined1 auStack_2e4 [16];
  undefined1 auStack_2d4 [16];
  undefined1 auStack_2c4 [16];
  undefined1 auStack_2b4 [16];
  undefined1 auStack_2a4 [16];
  undefined1 auStack_294 [16];
  undefined1 auStack_284 [16];
  undefined1 auStack_274 [16];
  undefined1 auStack_264 [16];
  undefined1 auStack_254 [16];
  undefined1 auStack_244 [16];
  undefined1 auStack_234 [16];
  undefined1 auStack_224 [16];
  undefined1 auStack_214 [16];
  undefined1 auStack_204 [260];
  undefined1 auStack_100 [256];
  
  iVar4 = FUN_00507980(auStack_31c,s_Visual_0061055c);
  if (iVar4 == 0) {
    FUN_0052e040();
    uVar5 = FUN_0052e130();
    uVar5 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Vessel__ParseIniFile___00610478,s_Visual_0061055c,uVar5);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar5);
  }
  iVar4 = FUN_005078f0(&DAT_0061053c);
  if (iVar4 == 0) {
    iVar4 = FUN_00507710(s_NameMesh_00610530,auStack_100);
    if (iVar4 != 0) goto LAB_00485108;
    FUN_0052e040();
    uVar5 = FUN_0052e130();
    pcVar13 = s_NameMesh_00610530;
  }
  else {
    iVar4 = FUN_00507710(&DAT_0061053c,auStack_100);
    if (iVar4 != 0) goto LAB_00485108;
    FUN_0052e040();
    uVar5 = FUN_0052e130();
    pcVar13 = &DAT_0061053c;
  }
  uVar5 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                       s_NOD_Vessel__ParseIniFile___00610478,pcVar13,uVar5);
  TERMINATION(s_DES_FILE_ERROR_00603624,uVar5);
LAB_00485108:
  piVar3 = *(int **)(DAT_00661570 + 4);
  FUN_005ed530();
  if (*piVar3 == 0) {
    iVar4 = 0;
    piVar9 = (int *)0x0;
    if (0 < piVar3[0x86]) {
      iStack_338 = 0;
      do {
        piVar2 = (int *)(piVar3[0x84] + iStack_338);
        if (*piVar2 == 0) {
          if (piVar9 == (int *)0x0) {
            piVar9 = piVar2;
          }
        }
        else {
          iVar8 = FUN_00520710(piVar2[2],auStack_100);
          if (iVar8 == 0) {
            piVar3 = (int *)(piVar3[0x84] + 4 + iVar4 * 0xc);
            *piVar3 = *piVar3 + 1;
            FUN_005216e0();
            iVar4 = iVar4 + 1;
            goto LAB_00485398;
          }
        }
        iVar4 = iVar4 + 1;
        iStack_338 = iStack_338 + 0xc;
      } while (iVar4 < piVar3[0x86]);
    }
    FUN_005209c0(auStack_204,piVar3 + 1,piVar3 + 2,auStack_100,0);
    iVar4 = FUN_00521ff0(auStack_204,(int)piVar3 + 0x109,piVar3[0x83]);
    if (iVar4 == 0) {
      TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_204);
      FUN_005216e0();
      iVar4 = 0;
    }
    else {
      if (piVar3[0x86] <= piVar3[0x85]) {
        if (piVar3[0x88] == 0) {
          TERMINATION(s_CON_Cache<T>__Allocate_____cache_006040c8,auStack_100);
        }
        else {
          puVar6 = (undefined4 *)operator_new(piVar3[0x86] * 0x18);
          puVar10 = (undefined4 *)piVar3[0x84];
          puVar11 = puVar6;
          for (uVar7 = piVar3[0x86] * 3 & 0x3fffffff; uVar7 != 0; uVar7 = uVar7 - 1) {
            *puVar11 = *puVar10;
            puVar10 = puVar10 + 1;
            puVar11 = puVar11 + 1;
          }
          for (iVar8 = 0; iVar8 != 0; iVar8 = iVar8 + -1) {
            *(undefined1 *)puVar11 = *(undefined1 *)puVar10;
            puVar10 = (undefined4 *)((int)puVar10 + 1);
            puVar11 = (undefined4 *)((int)puVar11 + 1);
          }
          operator_delete(piVar3[0x84]);
          piVar3[0x86] = piVar3[0x86] << 1;
          piVar3[0x84] = (int)puVar6;
          piVar9 = puVar6 + piVar3[0x85] * 3;
        }
      }
      piVar9[1] = 1;
      iVar8 = operator_new(0x38);
      if (iVar8 == 0) {
        iVar8 = 0;
      }
      else {
        iVar8 = FUN_00524940();
      }
      *piVar9 = iVar8;
      iVar8 = str_len(auStack_100);
      iVar8 = operator_new(iVar8 + 1);
      piVar9[2] = iVar8;
      str_copy(iVar8,auStack_100);
      iVar4 = FUN_00524a80(iVar4);
      if (iVar4 == 0) {
        iVar4 = *piVar9;
        if (iVar4 != 0) {
          FUN_00524a40();
          operator_delete(iVar4);
        }
        *piVar9 = 0;
        operator_delete(piVar9[2]);
        piVar9[2] = 0;
        TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_204);
        FUN_005216e0();
        iVar4 = 0;
      }
      else {
        piVar3[0x85] = piVar3[0x85] + 1;
        iVar4 = ((int)piVar9 - piVar3[0x84]) / 0xc + 1;
        FUN_005216e0();
      }
    }
  }
  else {
    FUN_005216e0();
    iVar4 = 0;
  }
LAB_00485398:
  *(int *)(param_1 + 0x304) = iVar4;
  if (iVar4 == 0) {
    TERMINATION(s_NOD_Vessel__ParseIniFile___00610478,s_no_mesh_00611f2c);
  }
  iVar4 = FUN_00507980(auStack_244,s_Control_00610500);
  if (iVar4 == 0) {
    FUN_0052e040();
    uVar5 = FUN_0052e130();
    uVar5 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Vessel__ParseIniFile___00610478,s_Control_00610500,uVar5);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar5);
  }
  MOT_Vessel__Parse(auStack_244);
  NOD_ShieldedBody__ParseIniFile(param_2);
  iVar4 = FUN_00507980(auStack_234,s_Collision_006104f4);
  if (iVar4 == 0) {
    FUN_0052e040();
    uVar5 = FUN_0052e130();
    uVar5 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Vessel__ParseIniFile___00610478,s_Collision_006104f4,uVar5);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar5);
  }
  FUN_004c9450(auStack_234,1,param_1 + 0xb04);
  iVar4 = (**(code **)(**(int **)(*(int *)(param_1 + 0x300) + 0x94) + 0x1c))();
  puVar10 = *(undefined4 **)(iVar4 + 8);
  puVar11 = auStack_30c;
  for (iVar8 = 6; iVar8 != 0; iVar8 = iVar8 + -1) {
    *puVar11 = *puVar10;
    puVar10 = puVar10 + 1;
    puVar11 = puVar11 + 1;
  }
  FUN_004c9b40(auStack_30c);
  iVar4 = FUN_00507980(auStack_224,s_Avoidance_006104e8);
  if (iVar4 == 0) {
    FUN_0052e040();
    uVar5 = FUN_0052e130();
    uVar5 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Vessel__ParseIniFile___00610478,s_Avoidance_006104e8,uVar5);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar5);
  }
  FUN_004c9c90(auStack_224);
  FUN_004c9eb0();
  FUN_004c9f30(0);
  FUN_004ca240();
  iVar4 = FUN_00507980(auStack_2a4,s_Emitter_006104e0);
  if (iVar4 == 0) {
    FUN_0052e040();
    uVar5 = FUN_0052e130();
    uVar5 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Vessel__ParseIniFile___00610478,s_Emitter_006104e0,uVar5);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar5);
  }
  iVar4 = (**(code **)(**(int **)(*(int *)(param_1 + 0x300) + 0x94) + 0x1c))();
  puVar10 = *(undefined4 **)(iVar4 + 8);
  puVar11 = auStack_30c;
  for (iVar8 = 6; iVar8 != 0; iVar8 = iVar8 + -1) {
    *puVar11 = *puVar10;
    puVar10 = puVar10 + 1;
    puVar11 = puVar11 + 1;
  }
  FUN_004c9d80(auStack_2a4,auStack_30c);
  FUN_004ca040();
  FUN_004ca100();
  FUN_004ca0c0();
  FUN_005ed540(*(int *)(param_1 + 0x300),*(undefined4 *)(*(int *)(param_1 + 0x300) + 0xac));
  iVar4 = (**(code **)(**(int **)(*(int *)(param_1 + 0x300) + 0x94) + 0x1c))();
  puVar10 = *(undefined4 **)(iVar4 + 8);
  puVar11 = auStack_30c;
  for (iVar8 = 6; iVar8 != 0; iVar8 = iVar8 + -1) {
    *puVar11 = *puVar10;
    puVar10 = puVar10 + 1;
    puVar11 = puVar11 + 1;
  }
  FUN_00547030(param_1,auStack_30c);
  FUN_00546140(param_1);
  iVar4 = FUN_00507980(auStack_2d4,s_Dying_006104d0);
  if (iVar4 == 0) {
    FUN_005466f0(s_std_vessel_des_0061219c);
  }
  else {
    FUN_00546160(auStack_2d4);
  }
  iVar4 = FUN_00507980(auStack_284,s_EscapeBehaviour_0061218c);
  if (iVar4 != 0) {
    BHV_Vessel_A_EscapeTo__ReadDataFrom(auStack_284);
  }
  iVar4 = FUN_00507980(auStack_214,s_AttackBehaviour_0061217c);
  if (iVar4 != 0) {
    BHV_Vessel_A_Attack__ParseIniFile(auStack_214);
  }
  iVar4 = FUN_00507980(auStack_264,s_PatrolBehaviour_0061216c);
  if (iVar4 != 0) {
    BVH_Vessel_A_Patrol__ParseIniFile(auStack_264);
  }
  iVar4 = FUN_00507980(auStack_2c4,&DAT_00612168);
  if (iVar4 != 0) {
    FUN_00546d20(auStack_2c4);
  }
  iVar4 = FUN_00507980(auStack_2b4,s_EnemyDetection_00612158);
  if (iVar4 != 0) {
    FUN_00552dd0(auStack_2b4);
  }
  iVar4 = FUN_00507980(auStack_294,s_EscapePod_0061214c);
  if (iVar4 != 0) {
    FUN_00554180(auStack_294);
  }
  iVar4 = FUN_00507980(auStack_2f4,s_DipolBehaviour_0061213c);
  if (iVar4 != 0) {
    BHV_Vessel_A_DipolIn__ParseIniFile(auStack_2f4);
    BHV_Vessel_A_DipolOut__ParseIniFile(auStack_2f4);
  }
  iVar4 = FUN_00507980(auStack_274,s_Stream_006104d8);
  if (iVar4 != 0) {
    FUN_004ca130(auStack_274);
  }
  NOD_Body__Key_ParseIniFile(param_2);
  NOD_Vessel__StandardTake_ParseIniFile(param_2);
  iVar4 = FUN_00507980(auStack_2e4,s_Sound_0061049c);
  if (iVar4 != 0) {
    iVar4 = FUN_00507980(auStack_254,s_Engine_00610494);
    if (iVar4 == 0) {
      FUN_0052e040();
      uVar5 = FUN_0052e130();
      uVar5 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                           s_NOD_Vessel__ParseIniFile___00610478,s_Engine_00610494,uVar5);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar5);
    }
    CON_Cache<T>__Unlock_19(auStack_254);
  }
  NOD_Node__LoadSons(param_2);
  FUN_004ce1b0(s_torlaunch_00612130);
  uVar5 = FUN_004418d0(auStack_204);
  iVar4 = FUN_0048b360(uVar5);
  *(int *)(param_1 + 0x3c0) = iVar4;
  iVar8 = 4;
  do {
    FUN_0043e570();
    iVar8 = iVar8 + -1;
  } while (iVar8 != 0);
  FUN_0043e570();
  if (iVar4 != 0) {
    *(int *)(*(int *)(param_1 + 0x3c0) + 0x324) = param_1;
  }
  FUN_004ce1b0(s_buzzlaunch_00612124);
  uVar5 = FUN_004418d0(auStack_204);
  iVar4 = FUN_004a9d30(uVar5);
  *(int *)(param_1 + 0x3c4) = iVar4;
  iVar8 = 4;
  do {
    FUN_0043e570();
    iVar8 = iVar8 + -1;
  } while (iVar8 != 0);
  FUN_0043e570();
  if (iVar4 != 0) {
    *(int *)(*(int *)(param_1 + 0x3c4) + 800) = param_1;
    iVar4 = FUN_00507980(auStack_32c,s_BuzzerParam_00612118);
    if (iVar4 == 0) {
      FUN_0052e040();
      uVar5 = FUN_0052e130();
      uVar5 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                           s_NOD_Vessel__ParseIniFile___00610478,s_BuzzerParam_00612118,uVar5);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar5);
    }
    pfVar1 = (float *)(param_1 + 0x3d8);
    iVar4 = FUN_00507800(s_BuzzerRadius_00612108,pfVar1);
    if (iVar4 == 0) {
      FUN_0052e040();
      uVar5 = FUN_0052e130();
      uVar5 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Vessel__ParseIniFile___00610478,s_BuzzerRadius_00612108,uVar5);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar5);
    }
    *pfVar1 = *pfVar1 * *pfVar1;
    iVar4 = FUN_00507800(s_BuzzerTime_006120fc,param_1 + 0x3d0);
    if (iVar4 == 0) {
      FUN_0052e040();
      uVar5 = FUN_0052e130();
      uVar5 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Vessel__ParseIniFile___00610478,s_BuzzerTime_006120fc,uVar5);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar5);
    }
    *(undefined4 *)(param_1 + 0x3d4) = 0;
    iVar4 = FUN_00507800(s_BuzzerIntelligence_006120e8,(float *)(param_1 + 0x3cc));
    if (iVar4 == 0) {
      FUN_0052e040();
      uVar5 = FUN_0052e130();
      uVar5 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Vessel__ParseIniFile___00610478,s_BuzzerIntelligence_006120e8,uVar5
                          );
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar5);
    }
    fVar12 = (float10)FUN_005ab120();
    *(float *)(param_1 + 0x3cc) = (float)((float10)_DAT_005f3350 - fVar12);
    iVar4 = FUN_00507420(s_NumOfBuzzers_006120d8,param_1 + 0x3dc);
    if (iVar4 == 0) {
      FUN_0052e040();
      uVar5 = FUN_0052e130();
      uVar5 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Vessel__ParseIniFile___00610478,s_NumOfBuzzers_006120d8,uVar5);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar5);
    }
  }
  FUN_004ce1b0(&DAT_006120d4);
  uVar5 = FUN_004418d0(auStack_204);
  iVar4 = FUN_004969e0(uVar5);
  *(int *)(param_1 + 0x3c8) = iVar4;
  iVar8 = 4;
  do {
    FUN_0043e570();
    iVar8 = iVar8 + -1;
  } while (iVar8 != 0);
  FUN_0043e570();
  if (iVar4 != 0) {
    FUN_004974e0(param_1);
  }
  FUN_00484c10();
  fVar12 = (float10)fcos((float10)_DAT_005f4a78);
  iVar4 = *(int *)(*(int *)(param_1 + 0x300) + 0xbc);
  *(uint *)(iVar4 + 0x48) = *(uint *)(iVar4 + 0x48) & 0xfffffff7 | 0x40;
  *(float *)(*(int *)(*(int *)(param_1 + 0x300) + 0xbc) + 0x20) = (float)fVar12;
  if (*(int *)(param_1 + 0x3c8) == 0) {
    *(undefined4 *)(*(int *)(*(int *)(param_1 + 0x300) + 0xbc) + 0x10) = 0x43960000;
  }
  else {
    iVar4 = *(int *)(*(int *)(param_1 + 0x3c8) + 0x368);
    if (iVar4 == 0x23) {
      fVar12 = (float10)_DAT_005f51e4;
    }
    else {
      fVar12 = (float10)Aqua_Spawn__GetBulletRange(iVar4);
    }
    *(float *)(*(int *)(*(int *)(param_1 + 0x300) + 0xbc) + 0x10) =
         (float)(fVar12 * (float10)_DAT_005f5c58);
  }
  FUN_00435cd0(0x50,0x50,0xa0,0x50);
  if ((*(byte *)(param_1 + 0xc) & 8) != 0) {
    *(undefined4 *)(*(int *)(*(int *)(param_1 + 0x300) + 0xa0) + 0x44) = 0;
    *(undefined4 *)(*(int *)(*(int *)(param_1 + 0x300) + 0xa0) + 0x40) = 0;
  }
  return;
}



// --------------------------------------------
// NOD_Vessel__StandardTake_ParseIniFile   ab 0x00486970   377 Byte
// Texte: (%s): Get "%s" in file "%s" failed, DES FILE ERROR, EmpParalysed, EscapePodActivated, NOD_Vessel::StandardTake_ParseIniFile(), SevereDamage, StandardTake, TargetDestroyed
// --------------------------------------------

void __fastcall NOD_Vessel__StandardTake_ParseIniFile(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 local_10 [16];
  
  iVar1 = FUN_00507980(local_10,s_StandardTake_006122a8);
  if (iVar1 == 0) {
    *(undefined4 *)(param_1 + 0xe3c) = 0;
    *(undefined4 *)(param_1 + 0xe40) = 0;
    *(undefined4 *)(param_1 + 0xe44) = 0;
    *(undefined4 *)(param_1 + 0xe48) = 0;
  }
  else {
    iVar1 = FUN_00507420(s_SevereDamage_00612298,param_1 + 0xe3c);
    if (iVar1 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Vessel__StandardTake_ParseIn_00612270,s_SevereDamage_00612298,uVar2
                          );
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    iVar1 = FUN_00507420(s_EmpParalysed_00612260,param_1 + 0xe40);
    if (iVar1 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Vessel__StandardTake_ParseIn_00612270,s_EmpParalysed_00612260,uVar2
                          );
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    iVar1 = FUN_00507420(s_EscapePodActivated_0061224c,param_1 + 0xe44);
    if (iVar1 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Vessel__StandardTake_ParseIn_00612270,s_EscapePodActivated_0061224c
                           ,uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    iVar1 = FUN_00507420(s_TargetDestroyed_0061223c,param_1 + 0xe48);
    if (iVar1 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Vessel__StandardTake_ParseIn_00612270,s_TargetDestroyed_0061223c,
                           uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
      return;
    }
  }
  return;
}



// --------------------------------------------
// NOD_Vessel__ParseIniFile_3   ab 0x00487090   2053 Byte
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, AttackBehaviour, Avoidance, CON_Cache::Allocate() file not found, CON_Cache<T>::Allocate() - cache overflow, Collision, Control, DES FILE ERROR, DipolBehaviour, Dying, Emitter, ... (+9)
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall NOD_Vessel__ParseIniFile_3(int param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  int *piVar4;
  undefined4 *puVar5;
  uint uVar6;
  int iVar7;
  int *piVar8;
  undefined4 *puVar9;
  undefined4 *puVar10;
  float10 fVar11;
  char *pcVar12;
  int iStack_2dc;
  undefined1 auStack_2cc [16];
  undefined4 auStack_2bc [6];
  undefined1 auStack_2a4 [16];
  undefined1 auStack_294 [16];
  undefined1 auStack_284 [16];
  undefined1 auStack_274 [16];
  undefined1 auStack_264 [16];
  undefined1 auStack_254 [16];
  undefined1 auStack_244 [16];
  undefined1 auStack_234 [16];
  undefined1 auStack_224 [16];
  undefined1 auStack_214 [16];
  undefined1 auStack_204 [260];
  undefined1 auStack_100 [256];
  
  iVar2 = FUN_00507980(auStack_2cc,s_Visual_0061055c);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Vehicle__ParseIniFile___00612308,s_Visual_0061055c,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_005078f0(&DAT_0061053c);
  if (iVar2 == 0) {
    iVar2 = FUN_00507710(s_NameMesh_00610530,auStack_100);
    if (iVar2 != 0) goto LAB_00487178;
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    pcVar12 = s_NameMesh_00610530;
  }
  else {
    iVar2 = FUN_00507710(&DAT_0061053c,auStack_100);
    if (iVar2 != 0) goto LAB_00487178;
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    pcVar12 = &DAT_0061053c;
  }
  uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                       s_NOD_Vessel__ParseIniFile___00610478,pcVar12,uVar3);
  TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
LAB_00487178:
  piVar1 = *(int **)(DAT_00661570 + 4);
  FUN_005ed530();
  if (*piVar1 == 0) {
    piVar8 = (int *)0x0;
    iVar2 = 0;
    if (0 < piVar1[0x86]) {
      iStack_2dc = 0;
      do {
        piVar4 = (int *)(iStack_2dc + piVar1[0x84]);
        if (*piVar4 == 0) {
          if (piVar8 == (int *)0x0) {
            piVar8 = piVar4;
          }
        }
        else {
          iVar7 = FUN_00520710(piVar4[2],auStack_100);
          if (iVar7 == 0) {
            piVar1 = (int *)(piVar1[0x84] + 4 + iVar2 * 0xc);
            *piVar1 = *piVar1 + 1;
            FUN_005216e0();
            iVar2 = iVar2 + 1;
            goto LAB_00487405;
          }
        }
        iVar2 = iVar2 + 1;
        iStack_2dc = iStack_2dc + 0xc;
      } while (iVar2 < piVar1[0x86]);
    }
    FUN_005209c0(auStack_204,piVar1 + 1,piVar1 + 2,auStack_100,0);
    iVar2 = FUN_00521ff0(auStack_204,(int)piVar1 + 0x109,piVar1[0x83]);
    if (iVar2 == 0) {
      TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_204);
      FUN_005216e0();
      iVar2 = 0;
    }
    else {
      if (piVar1[0x86] <= piVar1[0x85]) {
        if (piVar1[0x88] == 0) {
          TERMINATION(s_CON_Cache<T>__Allocate_____cache_006040c8,auStack_100);
        }
        else {
          puVar5 = (undefined4 *)operator_new(piVar1[0x86] * 0x18);
          puVar9 = (undefined4 *)piVar1[0x84];
          puVar10 = puVar5;
          for (uVar6 = piVar1[0x86] * 3 & 0x3fffffff; uVar6 != 0; uVar6 = uVar6 - 1) {
            *puVar10 = *puVar9;
            puVar9 = puVar9 + 1;
            puVar10 = puVar10 + 1;
          }
          for (iVar7 = 0; iVar7 != 0; iVar7 = iVar7 + -1) {
            *(undefined1 *)puVar10 = *(undefined1 *)puVar9;
            puVar9 = (undefined4 *)((int)puVar9 + 1);
            puVar10 = (undefined4 *)((int)puVar10 + 1);
          }
          operator_delete(piVar1[0x84]);
          piVar1[0x84] = (int)puVar5;
          piVar1[0x86] = piVar1[0x86] << 1;
          piVar8 = puVar5 + piVar1[0x85] * 3;
        }
      }
      piVar8[1] = 1;
      iVar7 = operator_new(0x38);
      if (iVar7 == 0) {
        iVar7 = 0;
      }
      else {
        iVar7 = FUN_00524940();
      }
      *piVar8 = iVar7;
      iVar7 = str_len(auStack_100);
      iVar7 = operator_new(iVar7 + 1);
      piVar8[2] = iVar7;
      str_copy(iVar7,auStack_100);
      iVar2 = FUN_00524a80(iVar2);
      if (iVar2 == 0) {
        iVar2 = *piVar8;
        if (iVar2 != 0) {
          FUN_00524a40();
          operator_delete(iVar2);
        }
        *piVar8 = 0;
        operator_delete(piVar8[2]);
        piVar8[2] = 0;
        TERMINATION(s_CON_Cache__Allocate___file_not_f_006040f4,auStack_204);
        FUN_005216e0();
        iVar2 = 0;
      }
      else {
        iVar2 = ((int)piVar8 - piVar1[0x84]) / 0xc + 1;
        piVar1[0x85] = piVar1[0x85] + 1;
        FUN_005216e0();
      }
    }
  }
  else {
    FUN_005216e0();
    iVar2 = 0;
  }
LAB_00487405:
  *(int *)(param_1 + 0x304) = iVar2;
  if (iVar2 == 0) {
    TERMINATION(s_NOD_Vehicle__ParseIniFile___00612308,s_no_mesh_00611f2c);
  }
  iVar2 = FUN_00507980(auStack_264,s_Control_00610500);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Vehicle__ParseIniFile___00612308,s_Control_00610500,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  MOT_Vehicle__Parse(auStack_264);
  iVar2 = FUN_00507980(auStack_234,s_Collision_006104f4);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Vehicle__ParseIniFile___00612308,s_Collision_006104f4,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  FUN_004c9450(auStack_234,0,0);
  iVar2 = (**(code **)(**(int **)(*(int *)(param_1 + 0x300) + 0x94) + 0x1c))();
  puVar9 = *(undefined4 **)(iVar2 + 8);
  puVar10 = auStack_2bc;
  for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
    *puVar10 = *puVar9;
    puVar9 = puVar9 + 1;
    puVar10 = puVar10 + 1;
  }
  FUN_004c9b40(auStack_2bc);
  iVar2 = FUN_00507980(auStack_284,s_Avoidance_006104e8);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Vehicle__ParseIniFile___00612308,s_Avoidance_006104e8,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  FUN_004c9c90(auStack_284);
  iVar2 = FUN_00507980(auStack_214,s_EnemyDetection_00612158);
  if (iVar2 != 0) {
    FUN_00552dd0(auStack_214);
  }
  FUN_004c9eb0();
  FUN_004c9f30(0);
  FUN_004ca240();
  iVar2 = FUN_00507980(auStack_2a4,s_Emitter_006104e0);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Vehicle__ParseIniFile___00612308,s_Emitter_006104e0,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = (**(code **)(**(int **)(*(int *)(param_1 + 0x300) + 0x94) + 0x1c))();
  puVar9 = *(undefined4 **)(iVar2 + 8);
  puVar10 = auStack_2bc;
  for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
    *puVar10 = *puVar9;
    puVar9 = puVar9 + 1;
    puVar10 = puVar10 + 1;
  }
  FUN_004c9d80(auStack_2a4,auStack_2bc);
  FUN_004ca100();
  FUN_004ca0c0();
  FUN_005ed540(*(int *)(param_1 + 0x300),*(undefined4 *)(*(int *)(param_1 + 0x300) + 0xac));
  iVar2 = (**(code **)(**(int **)(*(int *)(param_1 + 0x300) + 0x94) + 0x1c))();
  puVar9 = *(undefined4 **)(iVar2 + 8);
  puVar10 = auStack_2bc;
  for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
    *puVar10 = *puVar9;
    puVar9 = puVar9 + 1;
    puVar10 = puVar10 + 1;
  }
  FUN_00547030(param_1,auStack_2bc);
  NOD_ShieldedBody__ParseIniFile(param_2);
  iVar2 = FUN_00507980(auStack_224,s_AttackBehaviour_0061217c);
  if (iVar2 != 0) {
    BHV_Vehicle_A_Attack__ParseIniFile(auStack_224);
  }
  iVar2 = FUN_00507980(auStack_244,s_PatrolBehaviour_0061216c);
  if (iVar2 != 0) {
    BVH_Vehcile_A_Patrol__ParseIniFile(auStack_244);
  }
  iVar2 = FUN_00507980(auStack_294,s_DipolBehaviour_0061213c);
  if (iVar2 != 0) {
    BHV_Vehicle_A_DipolIn__ParseIniFile(auStack_294);
  }
  iVar2 = FUN_00507980(auStack_274,&DAT_00612168);
  if (iVar2 != 0) {
    FUN_00546d20(auStack_274);
  }
  FUN_00546140(param_1);
  iVar2 = FUN_00507980(auStack_254,s_Dying_006104d0);
  if (iVar2 == 0) {
    FUN_005466f0(s_std_vehicle_des_006122f8);
  }
  else {
    FUN_00546160(auStack_254);
  }
  NOD_Body__Key_ParseIniFile(param_2);
  NOD_Node__LoadSons(param_2);
  FUN_004ce1b0(s_Turm1_006122f0);
  uVar3 = FUN_004418d0(auStack_204);
  uVar3 = FUN_00488cd0(uVar3);
  *(undefined4 *)(param_1 + 0x3b8) = uVar3;
  iVar2 = 4;
  do {
    FUN_0043e570();
    iVar2 = iVar2 + -1;
  } while (iVar2 != 0);
  FUN_0043e570();
  FUN_004878a0();
  fVar11 = (float10)fcos((float10)_DAT_005f4a78);
  iVar2 = *(int *)(*(int *)(param_1 + 0x300) + 0xbc);
  *(uint *)(iVar2 + 0x48) = *(uint *)(iVar2 + 0x48) & 0xfffffff7 | 0x40;
  *(float *)(*(int *)(*(int *)(param_1 + 0x300) + 0xbc) + 0x20) = (float)fVar11;
  if (*(int *)(param_1 + 0x3b8) == 0) {
    *(undefined4 *)(*(int *)(*(int *)(param_1 + 0x300) + 0xbc) + 0x10) = 0x43960000;
  }
  else {
    iVar2 = *(int *)(*(int *)(*(int *)(param_1 + 0x3b8) + 0x3ec) + 0x368);
    if (iVar2 == 0x23) {
      fVar11 = (float10)_DAT_005f51e4;
    }
    else {
      fVar11 = (float10)Aqua_Spawn__GetBulletRange(iVar2);
    }
    *(float *)(*(int *)(*(int *)(param_1 + 0x300) + 0xbc) + 0x10) =
         (float)(fVar11 * (float10)_DAT_005f5c58);
  }
  FUN_00435cd0(0x50,0x50,0xa0,0x50);
  return;
}



