// Dekompilat der Stellen, die zuvor mit Capstone von Hand
// gelesen wurden. Zum Vergleich beider Werkzeuge.

// ================================================
// 0x005749d0   erwartet: GUI_Menu_Main__HeartBeat
// Ghidra: GUI_Menu_Main__HeartBeat ab 0x005749d0, 1150 Byte
// ================================================

undefined4 * __thiscall GUI_Menu_Main__HeartBeat(undefined4 *param_1,int param_2)

{
  ushort uVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  int in_stack_00000084;
  undefined4 in_stack_00000088;
  undefined4 *in_stack_0000008c;
  undefined4 *in_stack_00000090;
  undefined4 uVar5;
  undefined2 uStack_a4;
  char cStack_a2;
  undefined4 uStack_a1;
  undefined4 uStack_9d;
  undefined4 uStack_99;
  undefined4 uStack_95;
  undefined1 uStack_91;
  ushort auStack_90 [2];
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined1 uStack_80;
  char acStack_7f [4];
  char acStack_7b [5];
  char acStack_76 [5];
  char acStack_71 [113];
  
  *in_stack_00000090 = 0;
  uStack_84 = 0x11f;
  if (in_stack_0000008c == (undefined4 *)0x0) {
    TERMINATION(s_GUI_Menu_Main__HeartBeat___0065bc10,s_Next_state_has_to_be_NULL__0065bc2c);
  }
  iVar2 = FUN_0058d510(0);
  iVar2 = *(int *)(iVar2 + 0x20);
  if (in_stack_00000084 != 0x1b) {
    if (in_stack_00000084 == 0x6c) {
      uVar5 = 3;
      FUN_0058d510(0);
      GUI_TextMenu__HandleEvent(uVar5,in_stack_00000088);
      return param_1;
    }
    if (in_stack_00000084 != 0x71) {
      return param_1;
    }
    uVar5 = 2;
    FUN_0058d510(0);
    GUI_TextMenu__HandleEvent(uVar5,in_stack_00000088);
    return param_1;
  }
  if (iVar2 == 4) {
switchD_00574b9b_default:
    switch(iVar2) {
    case 0:
      if (DAT_0065bb50 != 0) {
        CON_Cache<T>__Unlock_3(DAT_00692f60,2);
      }
      puVar3 = (undefined4 *)operator_new(0x10);
      if (puVar3 != (undefined4 *)0x0) {
        puVar3[1] = 1;
        *puVar3 = &PTR_FUN_005fa598;
        return puVar3;
      }
      break;
    case 1:
      if (DAT_0065bb50 != 0) {
        CON_Cache<T>__Unlock_3(DAT_00692f60,2);
      }
      puVar3 = (undefined4 *)operator_new(0x10);
      if (puVar3 != (undefined4 *)0x0) {
        puVar3[1] = 0x12;
        *puVar3 = &PTR_FUN_005fa580;
        return puVar3;
      }
      break;
    case 2:
      if (DAT_0065bb50 != 0) {
        CON_Cache<T>__Unlock_3(DAT_00692f60,2);
      }
      iVar2 = operator_new(0x34);
      if (iVar2 != 0) {
        uVar5 = FUN_0041d7b0(0xc,0x3f800000,0x41200000);
        *in_stack_0000008c = uVar5;
        return param_1;
      }
      *in_stack_0000008c = 0;
      return param_1;
    case 3:
      if (DAT_0065bb50 != 0) {
        CON_Cache<T>__Unlock_3(DAT_00692f60,2);
      }
      puVar3 = (undefined4 *)operator_new(0x10);
      if (puVar3 != (undefined4 *)0x0) {
        puVar3[1] = 3;
        *puVar3 = &PTR_FUN_005fa568;
        return puVar3;
      }
      break;
    case 4:
      if (DAT_0065bb50 != 0) {
        CON_Cache<T>__Unlock_3(DAT_00692f60,2);
      }
      break;
    default:
      TERMINATION(s_GUI_Menu_Main__HeartBeat___0065bc10,s_Unknown_item_in_main_menu__0065bbf4);
      return param_1;
    }
    return (undefined4 *)0x0;
  }
  FUN_0042a5ce(&uStack_80,param_2 + 0x230);
  uStack_a1 = 0;
  uStack_9d = 0;
  uStack_a4 = DAT_0060914c;
  cStack_a2 = DAT_0060914e;
  uStack_99 = 0;
  uStack_95 = 0;
  uStack_91 = 0;
  _strncpy(&cStack_a2,acStack_7f,3);
  _strncpy((char *)((int)&uStack_a1 + 2),acStack_7b,4);
  _strncpy((char *)((int)&uStack_9d + 2),acStack_76,3);
  uStack_99._0_2_ = (ushort)(byte)uStack_99;
  FUN_0042a48f(&uStack_a4,s__I64x_00609144,&uStack_8c);
  _strncpy(&cStack_a2,acStack_71,4);
  uStack_a1 = uStack_a1 & 0xffffff;
  FUN_0042a48f(&uStack_a4,&DAT_00609140,auStack_90);
  uVar1 = __allrem(uStack_8c,uStack_88,0xffff,0);
  if (auStack_90[0] == (uVar1 ^ 0x26f5)) goto switchD_00574b9b_default;
  if (DAT_0065bb50 != 0) {
    CON_Cache<T>__Unlock_3(DAT_00692f64,2);
  }
  switch(iVar2) {
  case 0:
    puVar3 = (undefined4 *)operator_new(0x34);
    if (puVar3 == (undefined4 *)0x0) {
      return (undefined4 *)0x0;
    }
    puVar4 = (undefined4 *)operator_new(0x10);
    if (puVar4 != (undefined4 *)0x0) {
      puVar4[1] = 1;
      *puVar4 = &PTR_FUN_005fa598;
      goto LAB_00574c8e;
    }
    break;
  case 1:
    puVar3 = (undefined4 *)operator_new(0x34);
    if (puVar3 == (undefined4 *)0x0) {
      return (undefined4 *)0x0;
    }
    puVar4 = (undefined4 *)operator_new(0x10);
    if (puVar4 != (undefined4 *)0x0) {
      puVar4[1] = 0x12;
      *puVar4 = &PTR_FUN_005fa580;
      goto LAB_00574c8e;
    }
    break;
  case 2:
    puVar3 = (undefined4 *)operator_new(0x34);
    if (puVar3 == (undefined4 *)0x0) {
      return (undefined4 *)0x0;
    }
    puVar4 = (undefined4 *)operator_new(0x84);
    if (puVar4 != (undefined4 *)0x0) {
      *puVar4 = &PTR_FUN_005fa538;
      puVar4[1] = 0;
      FUN_0058b860();
      *puVar4 = &PTR_FUN_005fa520;
      puVar4[0x20] = 0;
      goto LAB_00574c8e;
    }
    break;
  case 3:
    puVar3 = (undefined4 *)operator_new(0x34);
    if (puVar3 == (undefined4 *)0x0) {
      return (undefined4 *)0x0;
    }
    puVar4 = (undefined4 *)operator_new(0x10);
    if (puVar4 != (undefined4 *)0x0) {
      puVar4[1] = 3;
      *puVar4 = &PTR_FUN_005fa568;
      goto LAB_00574c8e;
    }
    break;
  default:
    goto switchD_00574b9b_default;
  }
  puVar4 = (undefined4 *)0x0;
LAB_00574c8e:
  *puVar3 = &PTR_FUN_005fa538;
  puVar3[1] = 7;
  FUN_0059f5b0();
  *puVar3 = &PTR_FUN_005fa550;
  puVar3[0xb] = 0;
  puVar3[0xc] = puVar4;
  return puVar3;
}



// ================================================
// 0x00575000   erwartet: GUI_Menu_SinglePlayer__HeartBeat
// Ghidra: GUI_Menu_SinglePlayer__HeartBeat ab 0x00575000, 585 Byte
// ================================================

undefined4 * __thiscall GUI_Menu_SinglePlayer__HeartBeat(undefined4 *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  undefined4 in_stack_00000084;
  undefined4 in_stack_00000088;
  undefined4 *in_stack_0000008c;
  undefined4 *in_stack_00000090;
  undefined4 uVar5;
  
  *in_stack_00000090 = 0;
  if (in_stack_0000008c == (undefined4 *)0x0) {
    TERMINATION(s_GUI_Menu_SinglePlayer__HeartBeat_0065bc94,s_Next_state_has_to_be_NULL__0065bc2c);
  }
  iVar1 = FUN_0058d510(1);
  switch(in_stack_00000084) {
  case 0:
    puVar2 = (undefined4 *)operator_new(0x84);
joined_r0x005751fb:
    if (puVar2 != (undefined4 *)0x0) {
      *puVar2 = &PTR_FUN_005fa538;
      puVar2[1] = 0;
      FUN_0058b860();
      *puVar2 = &PTR_FUN_005fa520;
      puVar2[0x20] = 0;
      return puVar2;
    }
    break;
  default:
    return param_1;
  case 0x1b:
    switch(*(undefined4 *)(iVar1 + 0x20)) {
    case 0:
      puVar2 = (undefined4 *)operator_new(0x10);
      if (puVar2 != (undefined4 *)0x0) {
        puVar2[1] = 0x1f;
        *puVar2 = &PTR_FUN_005fa5e0;
        return puVar2;
      }
      break;
    case 1:
      iVar1 = operator_new(0x1394);
      if (iVar1 == 0) {
        iVar1 = 0;
      }
      else {
        iVar1 = Savegame__ctor();
      }
      Savegame__Load(s_dat_sav_player_start_des_0060911c);
      iVar3 = operator_new(200);
      if (iVar3 == 0) {
        iVar3 = 0;
      }
      else {
        MAI_Result__Init(0);
      }
      MAI_Result__Init(0);
      if (*(int *)(iVar1 + 0x1390) != 0) {
        MAI_Result__AddOrder(2,*(undefined4 *)(iVar1 + 0x1350),0);
      }
      MAI_Result__AddOrder(0,0,1);
      iVar4 = operator_new(0x28);
      if (iVar4 == 0) {
        *in_stack_0000008c = 0;
        return param_1;
      }
      uVar5 = Aqua_State_Game__ctor(iVar1,iVar3);
      *in_stack_0000008c = uVar5;
      return param_1;
    case 2:
      puVar2 = (undefined4 *)operator_new(0x28);
      if (puVar2 != (undefined4 *)0x0) {
        puVar2[1] = 0x20;
        *puVar2 = &PTR_FUN_005fa5c8;
        return puVar2;
      }
      break;
    case 3:
      puVar2 = (undefined4 *)operator_new(0x13a4);
      if (puVar2 != (undefined4 *)0x0) {
        *puVar2 = &PTR_FUN_005fa538;
        puVar2[1] = 0x1e;
        Savegame__ctor();
        *puVar2 = &PTR_FUN_005fa5b0;
        return puVar2;
      }
      break;
    case 4:
      puVar2 = (undefined4 *)operator_new(0x84);
      goto joined_r0x005751fb;
    default:
      TERMINATION(s_GUI_Menu_Singleplayer__HeartBeat_0065bc48,
                  s_Unknown_item_in_singleplayermenu_0065bc6c);
      return param_1;
    }
    break;
  case 0x6c:
    uVar5 = 3;
    goto LAB_00575075;
  case 0x71:
    uVar5 = 2;
LAB_00575075:
    FUN_0058d510(1);
    GUI_TextMenu__HandleEvent(uVar5,in_stack_00000088);
    return param_1;
  }
  return (undefined4 *)0x0;
}



// ================================================
// 0x00575737   erwartet: GUI_Menu_Load__HeartBeat
// Ghidra: GUI_Menu_SinglePlayer__HeartBeat ab 0x00575730, 1241 Byte   *** ANFANG WEICHT AB ***
// ================================================

undefined4 * __thiscall GUI_Menu_SinglePlayer__HeartBeat(undefined4 *param_1)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 in_stack_00000084;
  undefined4 in_stack_00000088;
  undefined4 *in_stack_0000008c;
  undefined4 *in_stack_00000090;
  undefined4 uVar4;
  char *pcVar5;
  undefined1 auStack_104 [260];
  
  *in_stack_00000090 = 0;
  if (in_stack_0000008c == (undefined4 *)0x0) {
    TERMINATION(s_GUI_Menu_SinglePlayer__HeartBeat_0065bc94,s_Next_state_has_to_be_NULL__0065bc2c);
  }
  iVar1 = FUN_0058d510(0x20);
  switch(in_stack_00000084) {
  case 0:
switchD_00575791_caseD_0:
    puVar3 = (undefined4 *)operator_new(0x10);
    if (puVar3 == (undefined4 *)0x0) {
      return (undefined4 *)0x0;
    }
    puVar3[1] = 1;
    *puVar3 = &PTR_FUN_005fa598;
    return puVar3;
  default:
    goto switchD_00575791_caseD_1;
  case 0x1b:
    break;
  case 0x6c:
    uVar4 = 3;
    goto LAB_005757ae;
  case 0x71:
    uVar4 = 2;
LAB_005757ae:
    FUN_0058d510(0x20);
    GUI_TextMenu__HandleEvent(uVar4,in_stack_00000088);
    return param_1;
  }
  switch(*(undefined4 *)(iVar1 + 0x20)) {
  case 0:
    if (param_1[4] == 0) {
      if (DAT_0065bb50 == 0) {
        return param_1;
      }
      CON_Cache<T>__Unlock_3(DAT_00692f64,2);
      return param_1;
    }
    iVar1 = operator_new(200);
    if (iVar1 == 0) {
      iVar1 = 0;
    }
    else {
      MAI_Result__Init(0);
    }
    MAI_Result__Init(0);
    MAI_Result__AddOrder(0,0,0);
    iVar2 = operator_new(0x1394);
    if (iVar2 == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = Savegame__ctor();
    }
    FUN_005242e0(auStack_104);
    pcVar5 = s_player0_des_0065bd70;
    break;
  case 1:
    if (param_1[5] == 0) {
LAB_00575a94:
      if (DAT_0065bb50 != 0) {
        CON_Cache<T>__Unlock_3(DAT_00692f64,2);
        return param_1;
      }
switchD_00575791_caseD_1:
      return param_1;
    }
    iVar1 = operator_new(200);
    if (iVar1 == 0) {
      iVar1 = 0;
    }
    else {
      MAI_Result__Init(0);
    }
    MAI_Result__Init(0);
    MAI_Result__AddOrder(0,0,0);
    iVar2 = operator_new(0x1394);
    if (iVar2 == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = Savegame__ctor();
    }
    FUN_005242e0(auStack_104);
    pcVar5 = s_player1_des_0065bd64;
    goto LAB_00575a7d;
  case 2:
    if (param_1[6] == 0) {
LAB_00575b85:
      if (DAT_0065bb50 == 0) {
        return param_1;
      }
      CON_Cache<T>__Unlock_3(DAT_00692f64,2);
      return param_1;
    }
    iVar1 = operator_new(200);
    if (iVar1 == 0) {
      iVar1 = 0;
    }
    else {
      MAI_Result__Init(0);
    }
    MAI_Result__Init(0);
    MAI_Result__AddOrder(0,0,0);
    iVar2 = operator_new(0x1394);
    if (iVar2 == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = Savegame__ctor();
    }
    FUN_005242e0(auStack_104);
    pcVar5 = s_player2_des_0065bd58;
    goto LAB_00575b31;
  case 3:
    if (param_1[7] == 0) {
      if (DAT_0065bb50 == 0) {
        return param_1;
      }
      CON_Cache<T>__Unlock_3(DAT_00692f64,2);
      return param_1;
    }
    iVar1 = operator_new(200);
    if (iVar1 == 0) {
      iVar1 = 0;
    }
    else {
      MAI_Result__Init(0);
    }
    MAI_Result__Init(0);
    MAI_Result__AddOrder(0,0,0);
    iVar2 = operator_new(0x1394);
    if (iVar2 == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = Savegame__ctor();
    }
    FUN_005242e0(auStack_104);
    pcVar5 = s_player3_des_0065bd4c;
    break;
  case 4:
    if (param_1[8] == 0) goto LAB_00575a94;
    iVar1 = operator_new(200);
    if (iVar1 == 0) {
      iVar1 = 0;
    }
    else {
      MAI_Result__Init(0);
    }
    MAI_Result__Init(0);
    MAI_Result__AddOrder(0,0,0);
    iVar2 = operator_new(0x1394);
    if (iVar2 == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = Savegame__ctor();
    }
    FUN_005242e0(auStack_104);
    pcVar5 = s_player4_des_0065bd40;
LAB_00575a7d:
    FUN_00520670(auStack_104,pcVar5);
    goto LAB_00575b43;
  case 5:
    if (param_1[9] == 0) goto LAB_00575b85;
    iVar1 = operator_new(200);
    if (iVar1 == 0) {
      iVar1 = 0;
    }
    else {
      MAI_Result__Init(0);
    }
    MAI_Result__Init(0);
    MAI_Result__AddOrder(0,0,0);
    iVar2 = operator_new(0x1394);
    if (iVar2 == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = Savegame__ctor();
    }
    FUN_005242e0(auStack_104);
    pcVar5 = s_player5_des_0065bd34;
LAB_00575b31:
    FUN_00520670(auStack_104,pcVar5);
    goto LAB_00575b43;
  case 6:
    goto switchD_00575791_caseD_0;
  default:
    TERMINATION(s_GUI_Menu_Load__HeartBeat___0065bd7c,s_Unknown_item_in_singleplayermenu_0065bc6c);
    return param_1;
  }
  FUN_00520670(auStack_104,pcVar5);
LAB_00575b43:
  Savegame__Load(auStack_104);
  iVar2 = operator_new(0x28);
  if (iVar2 == 0) {
    *in_stack_0000008c = 0;
    return param_1;
  }
  uVar4 = Aqua_State_Game__ctor(uVar4,iVar1);
  *in_stack_0000008c = uVar4;
  return param_1;
}



// ================================================
// 0x00575d87   erwartet: GUI_Menu_InstantFight__HeartBeat
// Ghidra: GUI_Menu_Singleplayer__HeartBeat ab 0x00575d80, 457 Byte   *** ANFANG WEICHT AB ***
// ================================================

undefined4 * __thiscall GUI_Menu_Singleplayer__HeartBeat(undefined4 *param_1,int param_2)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 in_stack_00000084;
  undefined4 in_stack_00000088;
  undefined4 *in_stack_0000008c;
  undefined4 *in_stack_00000090;
  undefined4 uVar3;
  undefined1 auStack_400 [1024];
  
  *in_stack_00000090 = 0;
  if (in_stack_0000008c == (undefined4 *)0x0) {
    TERMINATION(s_GUI_Menu_SinglePlayer__HeartBeat_0065bc94,s_Next_state_has_to_be_NULL__0065bc2c);
  }
  iVar1 = GUI_TextMenu__GetTextItem_2(0);
  str_copy(auStack_400,*(undefined4 *)(*(int *)(param_2 + 0x14a2c) + *(int *)(iVar1 + 8) * 4));
  iVar1 = FUN_0058d510(0x1f);
  iVar1 = *(int *)(iVar1 + 0x20);
  switch(in_stack_00000084) {
  case 0:
switchD_00575e07_caseD_0:
    puVar2 = (undefined4 *)operator_new(0x10);
    if (puVar2 != (undefined4 *)0x0) {
      puVar2[1] = 1;
      *puVar2 = &PTR_FUN_005fa598;
      return puVar2;
    }
    return (undefined4 *)0x0;
  default:
    goto switchD_00575e07_caseD_1;
  case 0x1b:
    if (iVar1 != 0) {
      if (iVar1 == 1) {
        iVar1 = operator_new(0x70);
        if (iVar1 != 0) {
          uVar3 = FUN_004295b0(s_ctrlsp_des_0060845c);
          uVar3 = FUN_00429640(uVar3);
          uVar3 = Aqua_State_InstantFight__ctor(auStack_400,0,0,uVar3);
          *in_stack_0000008c = uVar3;
          return param_1;
        }
        *in_stack_0000008c = 0;
        return param_1;
      }
      if (iVar1 != 2) {
        TERMINATION(s_GUI_Menu_Singleplayer__HeartBeat_0065bc48,
                    s_Unknown_item_in_singleplayermenu_0065bc6c);
        return param_1;
      }
      goto switchD_00575e07_caseD_0;
    }
    break;
  case 0x6c:
    uVar3 = 3;
    goto LAB_00575e52;
  case 0x6e:
    FUN_0058d9d0(in_stack_00000088,0x1f);
    return param_1;
  case 0x6f:
    break;
  case 0x71:
    uVar3 = 2;
LAB_00575e52:
    FUN_0058d510(0x1f);
    GUI_TextMenu__HandleEvent(uVar3,in_stack_00000088);
    return param_1;
  }
  FUN_0058d9a0(in_stack_00000088,0x1f);
switchD_00575e07_caseD_1:
  return param_1;
}



// ================================================
// 0x004247e0   erwartet: Aqua_State_InstantFight__ctor
// Ghidra: Aqua_State_InstantFight__ctor ab 0x004247e0, 128 Byte
// ================================================

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



// ================================================
// 0x004208c0   erwartet: Aqua_State_Game__ctor
// Ghidra: Aqua_State_Game__ctor ab 0x004208c0, 32 Byte
// ================================================

void __thiscall Aqua_State_Game__ctor(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  *param_1 = &PTR_FUN_005f36ec;
  param_1[2] = 0;
  param_1[7] = param_2;
  param_1[8] = param_3;
  return;
}



// ================================================
// 0x0058ac70   erwartet: MAI_Result__Init
// Ghidra: MAI_Result__Init ab 0x0058ac70, 19 Byte
// ================================================

void __thiscall MAI_Result__Init(undefined4 *param_1,undefined4 param_2)

{
  param_1[1] = param_2;
  param_1[2] = param_2;
  *param_1 = 0;
  return;
}



// ================================================
// 0x0058ac90   erwartet: MAI_Result__AddOrder
// Ghidra: MAI_Result__AddOrder ab 0x0058ac90, 199 Byte
// ================================================

void __thiscall MAI_Result__AddOrder(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  bool bVar4;
  undefined4 *puVar5;
  
  if (0xf < *(int *)(param_1 + 4)) {
    TERMINATION(s_MAI_Result__AddOrder___0065c710,s_maximum_number_of_orders_exeeded_0065c728);
  }
  *(int *)(param_1 + 8 + *(int *)(param_1 + 4) * 0xc) = param_2;
  *(undefined4 *)(param_1 + (*(int *)(param_1 + 4) + 1) * 0xc) = param_3;
  *(undefined4 *)(param_1 + 0x10 + *(int *)(param_1 + 4) * 0xc) = param_4;
  *(int *)(param_1 + 4) = *(int *)(param_1 + 4) + 1;
  do {
    bVar4 = false;
    param_2 = 0;
    if (*(int *)(param_1 + 4) == 1 || *(int *)(param_1 + 4) + -1 < 0) {
      return;
    }
    puVar5 = (undefined4 *)(param_1 + 8);
    do {
      if ((uint)puVar5[5] < (uint)puVar5[2]) {
        uVar1 = *puVar5;
        uVar2 = puVar5[1];
        uVar3 = puVar5[2];
        *puVar5 = puVar5[3];
        puVar5[1] = puVar5[4];
        puVar5[2] = puVar5[5];
        puVar5[3] = uVar1;
        puVar5[4] = uVar2;
        puVar5[5] = uVar3;
        bVar4 = true;
      }
      param_2 = param_2 + 1;
      puVar5 = puVar5 + 3;
    } while (param_2 < *(int *)(param_1 + 4) + -1);
  } while (bVar4);
  return;
}



// ================================================
// 0x0058d520   erwartet: MENU_Open
// Ghidra: MENU_Open ab 0x0058d520, 415 Byte
// ================================================

void __thiscall MENU_Open(int param_1,undefined4 param_2,undefined4 param_3)

{
  switch(param_3) {
  case 0:
    *(undefined4 *)(param_1 + 0x26c) = 1;
    break;
  case 1:
    *(undefined4 *)(param_1 + 0x274) = 1;
    break;
  case 2:
    *(undefined4 *)(param_1 + 0x27c) = 1;
    break;
  default:
    TERMINATION(s_GUI_Menu_Interface__MENU_Open___0065c7e4,s_No_known_menu_type_0065c804);
    break;
  case 4:
    *(undefined4 *)(param_1 + 0x29c) = 1;
    break;
  case 5:
    *(undefined4 *)(param_1 + 0x2a4) = 1;
    break;
  case 6:
    *(undefined4 *)(param_1 + 0x2ac) = 1;
    break;
  case 7:
    *(undefined4 *)(param_1 + 0x2b4) = 1;
    break;
  case 8:
    *(undefined4 *)(param_1 + 0x2d4) = 1;
    break;
  case 9:
    *(undefined4 *)(param_1 + 0x2c4) = 1;
    break;
  case 10:
    *(undefined4 *)(param_1 + 0x2cc) = 1;
    break;
  case 0xb:
    *(undefined4 *)(param_1 + 0x2dc) = 1;
    break;
  case 0xc:
    *(undefined4 *)(param_1 + 0x2fc) = 1;
    break;
  case 0xd:
    *(undefined4 *)(param_1 + 0x304) = 1;
    break;
  case 0xe:
    *(undefined4 *)(param_1 + 0x314) = 1;
    break;
  case 0xf:
    *(undefined4 *)(param_1 + 0x31c) = 1;
    break;
  case 0x10:
    *(undefined4 *)(param_1 + 0x324) = 1;
    break;
  case 0x11:
    *(undefined4 *)(param_1 + 0x32c) = 1;
    break;
  case 0x12:
    *(undefined4 *)(param_1 + 0x2e4) = 1;
    break;
  case 0x13:
    *(undefined4 *)(param_1 + 0x334) = 1;
    break;
  case 0x14:
    *(undefined4 *)(param_1 + 0x33c) = 1;
    break;
  case 0x15:
    *(undefined4 *)(param_1 + 0x30c) = 1;
    break;
  case 0x16:
    *(undefined4 *)(param_1 + 0x344) = 1;
    break;
  case 0x17:
    *(undefined4 *)(param_1 + 0x34c) = 1;
    break;
  case 0x18:
    *(undefined4 *)(param_1 + 0x354) = 1;
    break;
  case 0x19:
    *(undefined4 *)(param_1 + 0x35c) = 1;
    break;
  case 0x1a:
    *(undefined4 *)(param_1 + 0x364) = 1;
    break;
  case 0x1b:
    *(undefined4 *)(param_1 + 0x36c) = 1;
    break;
  case 0x1c:
    *(undefined4 *)(param_1 + 0x37c) = 1;
    break;
  case 0x1d:
    *(undefined4 *)(param_1 + 900) = 1;
    break;
  case 0x1e:
    *(undefined4 *)(param_1 + 0x374) = 1;
    break;
  case 0x20:
    *(undefined4 *)(param_1 + 0x2ec) = 1;
    break;
  case 0x21:
    *(undefined4 *)(param_1 + 0x38c) = 1;
    break;
  case 0x22:
    *(undefined4 *)(param_1 + 0x394) = 1;
    break;
  case 0x23:
    *(undefined4 *)(param_1 + 0x28c) = 1;
    break;
  case 0x24:
    *(undefined4 *)(param_1 + 0x39c) = 1;
  }
  GUI_TextMenu__HandleEvent(1,param_2);
  return;
}



// ================================================
// 0x0058d760   erwartet: MENU_Close
// Ghidra: MENU_Close ab 0x0058d760, 423 Byte
// ================================================

void __thiscall MENU_Close(int param_1,undefined4 param_2,undefined4 param_3)

{
  switch(param_3) {
  case 0:
    *(undefined4 *)(param_1 + 0x26c) = 0;
    break;
  case 1:
    *(undefined4 *)(param_1 + 0x274) = 0;
    break;
  case 2:
    *(undefined4 *)(param_1 + 0x27c) = 0;
    break;
  case 3:
    *(undefined4 *)(param_1 + 0x284) = 0;
    break;
  case 4:
    *(undefined4 *)(param_1 + 0x29c) = 0;
    break;
  case 5:
    *(undefined4 *)(param_1 + 0x2a4) = 0;
    break;
  case 6:
    *(undefined4 *)(param_1 + 0x2ac) = 0;
    break;
  case 7:
    *(undefined4 *)(param_1 + 0x2b4) = 0;
    break;
  case 8:
    *(undefined4 *)(param_1 + 0x2d4) = 0;
    break;
  case 9:
    *(undefined4 *)(param_1 + 0x2c4) = 0;
    break;
  case 10:
    *(undefined4 *)(param_1 + 0x2cc) = 0;
    break;
  case 0xb:
    *(undefined4 *)(param_1 + 0x2dc) = 0;
    break;
  case 0xc:
    *(undefined4 *)(param_1 + 0x2fc) = 0;
    break;
  case 0xd:
    *(undefined4 *)(param_1 + 0x304) = 0;
    break;
  case 0xe:
    *(undefined4 *)(param_1 + 0x314) = 0;
    break;
  case 0xf:
    *(undefined4 *)(param_1 + 0x31c) = 0;
    break;
  case 0x10:
    *(undefined4 *)(param_1 + 0x324) = 0;
    break;
  case 0x11:
    *(undefined4 *)(param_1 + 0x32c) = 0;
    break;
  case 0x12:
    *(undefined4 *)(param_1 + 0x2e4) = 0;
    break;
  case 0x13:
    *(undefined4 *)(param_1 + 0x334) = 0;
    break;
  case 0x14:
    *(undefined4 *)(param_1 + 0x33c) = 0;
    break;
  case 0x15:
    *(undefined4 *)(param_1 + 0x30c) = 0;
    break;
  case 0x16:
    *(undefined4 *)(param_1 + 0x344) = 0;
    break;
  case 0x17:
    *(undefined4 *)(param_1 + 0x34c) = 0;
    break;
  case 0x18:
    *(undefined4 *)(param_1 + 0x354) = 0;
    break;
  case 0x19:
    *(undefined4 *)(param_1 + 0x35c) = 0;
    break;
  case 0x1a:
    *(undefined4 *)(param_1 + 0x364) = 0;
    break;
  case 0x1b:
    *(undefined4 *)(param_1 + 0x36c) = 0;
    break;
  case 0x1c:
    *(undefined4 *)(param_1 + 0x37c) = 0;
    break;
  case 0x1d:
    *(undefined4 *)(param_1 + 900) = 0;
    break;
  case 0x1e:
    *(undefined4 *)(param_1 + 0x374) = 0;
    break;
  default:
    TERMINATION(s_GUI_Menu_Interface__MENU_Close___0065c818,s_No_known_menu_type_0065c804);
    break;
  case 0x20:
    *(undefined4 *)(param_1 + 0x2ec) = 0;
    break;
  case 0x21:
    *(undefined4 *)(param_1 + 0x38c) = 0;
    break;
  case 0x22:
    *(undefined4 *)(param_1 + 0x394) = 0;
    break;
  case 0x23:
    *(undefined4 *)(param_1 + 0x28c) = 0;
    break;
  case 0x24:
    *(undefined4 *)(param_1 + 0x39c) = 0;
  }
  GUI_TextMenu__HandleEvent(0,param_2);
  return;
}



// ================================================
// 0x00563300   erwartet: Savegame__Load
// Ghidra: Savegame__Load ab 0x00563300, 1623 Byte
// ================================================

void __thiscall Savegame__Load(int param_1,undefined4 param_2)

{
  uint uVar1;
  bool bVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  uint *puVar6;
  int *piVar7;
  int iVar8;
  int iVar9;
  undefined1 local_140 [16];
  int iStack_130;
  int iStack_12c;
  undefined1 auStack_128 [16];
  undefined1 local_118 [280];
  
  FUN_00565ce0();
  iVar3 = FUN_00506640(local_118,param_2);
  if (iVar3 == 0) {
    TERMINATION(s_STY_Player__Load_____file_not_fo_0065ab60,param_2);
  }
  iVar3 = FUN_00507980(local_140,s_Table_006093d0);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_STY_Base__Option_LoadTable___0065a704,s_Table_006093d0,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = FUN_00507710(s_TimeStamp_0065ab54,param_1);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Player__Load___0065ab40,
                         s_TimeStamp_0065ab54,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = FUN_005078f0(s_GameDifficulty_0065ab30);
  if (iVar3 == 0) {
    *(undefined4 *)(param_1 + 0x24) = 0;
  }
  else {
    iVar3 = FUN_00507420(s_GameDifficulty_0065ab30,param_1 + 0x24);
    if (iVar3 == 0) {
      FUN_0052e040();
      uVar4 = FUN_0052e130();
      uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Player__Load___0065ab40
                           ,s_GameDifficulty_0065ab30,uVar4);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
    }
  }
  iVar3 = FUN_005078f0(s_AdditionalStationKey_0065ab18);
  if (iVar3 == 0) {
    *(undefined4 *)(param_1 + 0x20) = 0;
  }
  else {
    iVar3 = FUN_00507420(s_AdditionalStationKey_0065ab18,param_1 + 0x20);
    if (iVar3 == 0) {
      FUN_0052e040();
      uVar4 = FUN_0052e130();
      uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Player__Load___0065ab40
                           ,s_AdditionalStationKey_0065ab18,uVar4);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
    }
  }
  iVar3 = FUN_00507420(s_Station_0065a81c,param_1 + 0x28);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Player__Load___0065ab40,
                         s_Station_0065a81c,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = FUN_00507420(&DAT_00655fc8,param_1 + 0x2c);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Player__Load___0065ab40,
                         &DAT_00655fc8,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = FUN_00507420(s_Credits_0065ab10,param_1 + 0x30);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Player__Load___0065ab40,
                         s_Credits_0065ab10,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = FUN_00507420(s_NumOfActiveOptions_0065aafc,(int *)(param_1 + 0x1348));
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Player__Load___0065ab40,
                         s_NumOfActiveOptions_0065aafc,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar8 = 0;
  iVar3 = 0;
  if (0 < *(int *)(param_1 + 0x1348)) {
    iVar9 = param_1 + 0x104c;
    do {
      iVar5 = FUN_00506b40(s_OptionKey_0065aaf0,iVar8,iVar9 + -4);
      if (iVar5 == 0) {
        FUN_0052e040();
        uVar4 = FUN_0052e130();
        uVar4 = FUN_005222c0(s___s___Get___s_d__in_file___s__fa_0061098c,
                             s_STY_Player__Load___0065ab40,s_OptionKey_0065aaf0,iVar8,uVar4);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
      }
      iVar5 = FUN_00506b40(s_OptionTick_0065aae4,iVar8,iVar9);
      if (iVar5 == 0) {
        FUN_0052e040();
        uVar4 = FUN_0052e130();
        uVar4 = FUN_005222c0(s___s___Get___s_d__in_file___s__fa_0061098c,
                             s_STY_Player__Load___0065ab40,s_OptionTick_0065aae4,iVar8,uVar4);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
      }
      *(undefined4 *)(iVar9 + 4) = 0;
      iVar3 = iVar3 + 1;
      iVar9 = iVar9 + 0xc;
      iVar8 = iVar8 + 1;
    } while (iVar8 < *(int *)(param_1 + 0x1348));
  }
  *(int *)(param_1 + 0x1348) = iVar3;
  iVar3 = FUN_00507420(s_OptionTick_0065aae4,param_1 + 0x134c);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Player__Load___0065ab40,
                         s_OptionTick_0065aae4,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  piVar7 = (int *)(param_1 + 0x1390);
  iVar3 = FUN_00507420(s_NumOfFinishedMovies_0065aad0,piVar7);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Player__Load___0065ab40,
                         s_NumOfFinishedMovies_0065aad0,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = 0;
  if (0 < *piVar7) {
    iVar8 = param_1 + 0x1350;
    do {
      iVar9 = FUN_00506b40(s_MovieKey_0065aac4,iVar3,iVar8);
      if (iVar9 == 0) {
        FUN_0052e040();
        uVar4 = FUN_0052e130();
        uVar4 = FUN_005222c0(s___s___Get___s_d__in_file___s__fa_0061098c,
                             s_STY_Player__Load___0065ab40,s_MovieKey_0065aac4,iVar3,uVar4);
        TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
      }
      iVar3 = iVar3 + 1;
      iVar8 = iVar8 + 4;
    } while (iVar3 < *piVar7);
  }
  do {
    bVar2 = false;
    iVar3 = 0;
    if (*piVar7 == 1 || *piVar7 + -1 < 0) break;
    puVar6 = (uint *)(param_1 + 0x1354);
    do {
      uVar1 = puVar6[-1];
      if (*puVar6 < uVar1) {
        puVar6[-1] = *puVar6;
        *puVar6 = uVar1;
        bVar2 = true;
      }
      iVar3 = iVar3 + 1;
      puVar6 = puVar6 + 1;
    } while (iVar3 < *piVar7 + -1);
  } while (bVar2);
  iVar3 = FUN_005078f0(s_NumOfBannedOptions_0065aab0);
  if (iVar3 != 0) {
    iVar3 = FUN_00507420(s_NumOfBannedOptions_0065aab0,&iStack_130);
    if (iVar3 == 0) {
      FUN_0052e040();
      uVar4 = FUN_0052e130();
      uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,s_STY_Player__Load___0065ab40
                           ,s_NumOfBannedOptions_0065aab0,uVar4);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
    }
    iVar3 = 0;
    *(undefined4 *)(param_1 + 0x1044) = 0;
    if (0 < iStack_130) {
      do {
        iVar8 = FUN_00506b40(s_BannedKey_0065aaa4,iVar3,&iStack_12c);
        if (iVar8 == 0) {
          FUN_0052e040();
          uVar4 = FUN_0052e130();
          uVar4 = FUN_005222c0(s___s___Get___s_d__in_file___s__fa_0061098c,
                               s_STY_Player__Load___0065ab40,s_BannedKey_0065aaa4,iVar3,uVar4);
          TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
        }
        iVar8 = *(int *)(param_1 + 0x1044);
        iVar9 = 0;
        if (0 < iVar8) {
          piVar7 = (int *)(param_1 + 0x844);
          do {
            if (*piVar7 == iStack_12c) goto LAB_005638d7;
            iVar9 = iVar9 + 1;
            piVar7 = piVar7 + 1;
          } while (iVar9 < iVar8);
        }
        *(int *)(param_1 + 0x844 + iVar8 * 4) = iStack_12c;
        iVar8 = 0;
        *(int *)(param_1 + 0x1044) = *(int *)(param_1 + 0x1044) + 1;
        if (0 < *(int *)(param_1 + 0x1348)) {
          piVar7 = (int *)(param_1 + 0x1048);
          do {
            if (*piVar7 == iStack_12c) {
              *(undefined4 *)(param_1 + (iVar8 * 3 + 0x414) * 4) = 1;
              break;
            }
            iVar8 = iVar8 + 1;
            piVar7 = piVar7 + 3;
          } while (iVar8 < *(int *)(param_1 + 0x1348));
        }
LAB_005638d7:
        iVar3 = iVar3 + 1;
      } while (iVar3 < iStack_130);
    }
  }
  FUN_005641f0();
  iVar3 = FUN_00507980(auStack_128,s_InventoryItemPlayer_0065aa90);
  if (iVar3 != 0) {
    STY_Inventory__Load(auStack_128);
  }
  FUN_005641f0();
  iVar3 = FUN_00507980(auStack_128,s_InventoryItemEquipped_0065aa78);
  if (iVar3 != 0) {
    STY_Inventory__Load(auStack_128);
  }
  FUN_00506890();
  return;
}



// ================================================
// 0x005632a0   erwartet: Savegame__ctor
// Ghidra: Savegame__ctor ab 0x005632a0, 89 Byte
// ================================================

undefined1 * __fastcall Savegame__ctor(undefined1 *param_1)

{
  FUN_005641e0();
  FUN_005641e0();
  FUN_005641e0();
  FUN_005641e0();
  *(undefined4 *)(param_1 + 0x1348) = 0;
  *(undefined4 *)(param_1 + 0x1044) = 0;
  *(undefined4 *)(param_1 + 0x1390) = 0;
  *(undefined4 *)(param_1 + 0x30) = 0;
  *param_1 = 0;
  *(undefined4 *)(param_1 + 0x24) = 0;
  *(undefined4 *)(param_1 + 0x20) = 0;
  *(undefined4 *)(param_1 + 0x134c) = 1;
  return param_1;
}



// ================================================
// 0x0041f430   erwartet: Aqua_State_Menu__GetNameByType
// Ghidra: Aqua_State_Menu__GetNameByType ab 0x0041f430, 342 Byte
// ================================================

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



// ================================================
// 0x0048d750   erwartet: NOD_Script__HeartBeat
// Ghidra: NOD_Script__HeartBeat ab 0x0048d750, 158 Byte
// ================================================

void __fastcall NOD_Script__HeartBeat(int param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  bool bVar6;
  
  DAT_00668a40 = param_1 + 0xa0;
  puVar5 = *(undefined4 **)(param_1 + 0x76b8);
  if (puVar5[5] != 0) {
    bVar6 = puVar5[5] == 0;
    do {
      if (bVar6) {
        TERMINATION(s_CON_Stack_FIFO<_TypeData>__Pop_00612634,
                    s_no_more_entries_on_stack_for_pop_00612654);
      }
      puVar5[5] = puVar5[5] + -1;
      if ((uint)puVar5[3] <= (uint)puVar5[1]) {
        puVar5[1] = *puVar5;
      }
      puVar1 = (undefined4 *)puVar5[1];
      uVar4 = *puVar1;
      uVar2 = puVar1[1];
      puVar5[1] = puVar1 + 2;
      piVar3 = (int *)NOD_Message__Allocate_2(uVar2,0,uVar4);
      if (piVar3 != (int *)0x0) {
        uVar4 = FUN_005222c0(s__SCRIPTERROR__an_asynchronous_th_006125dc,piVar3[2]);
        FUN_00522300(uVar4);
        (**(code **)(*piVar3 + 4))(1);
      }
      puVar5 = *(undefined4 **)(param_1 + 0x76b8);
      bVar6 = puVar5[5] == 0;
    } while (!bVar6);
  }
  FUN_0048ee40();
  return;
}



// ================================================
// 0x004580c0   erwartet: NOD_Game__PM_LoadScript_Aufrufer
// Ghidra: NOD_Game__PM_LoadScript ab 0x004580c0, 1195 Byte
// ================================================

undefined4 __fastcall NOD_Game__PM_LoadScript(int *param_1)

{
  int *piVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  undefined4 unaff_ESI;
  int *unaff_EDI;
  int **ppiVar5;
  undefined1 *puVar6;
  int *piStack_160;
  undefined4 uStack_14c;
  int *piStack_148;
  undefined1 auStack_144 [4];
  undefined1 auStack_140 [4];
  undefined8 auStack_13c [22];
  undefined1 auStack_8c [76];
  undefined1 auStack_40 [64];
  
  FUN_004ce730();
  piStack_160 = (int *)0x4580eb;
  piVar1 = (int *)FUN_0044ae30();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))();
  }
  piStack_160 = *(int **)(DAT_0066323c + 0xaf0);
  FUN_0051f640();
  piStack_160 = *(int **)(DAT_00663238 + 0x18e3c);
  FUN_0051f640();
  piStack_160 = DAT_0067a440;
  FUN_0051f640();
  piStack_160 = (int *)0x458140;
  auStack_13c[0] = FUN_00522d80();
  piStack_160 = (int *)0x458153;
  FUN_0043e7e0();
  piStack_160 = (int *)s__script_0060f9cc;
  piStack_160 = (int *)FUN_004ce1b0();
  piVar1 = (int *)FUN_004418d0();
  iVar4 = 4;
  do {
    piStack_160 = (int *)0x458181;
    FUN_0043e570();
    iVar4 = iVar4 + -1;
  } while (iVar4 != 0);
  piStack_160 = (int *)0x45818d;
  FUN_0043e570();
  if (piVar1 == (int *)0x0) {
    piStack_160 = (int *)s_script_directory_not_found_0060f9b0;
    TERMINATION(s_NOD_Game__PM_LoadScript___0060f994);
  }
  piStack_160 = (int *)0x40;
  uVar2 = FUN_005222c0(s_script_d_0060f988,*(undefined2 *)((int)piVar1 + 0x56));
  FUN_00520650(auStack_40,uVar2);
  piVar3 = (int *)FUN_00442090(s_nod_script_0060f97c,auStack_40);
  piStack_160 = piVar3;
  piStack_148 = piVar3;
  (**(code **)(*piVar1 + 0x34))();
  iVar4 = *piVar3;
  uVar2 = FUN_004b6af0(auStack_8c);
  piVar3 = (int *)(**(code **)(iVar4 + 0x2c))(uVar2);
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 4))(1);
  }
  FUN_004ce1b0(s__Scenario_Dynamic_Object_player1_0060f958);
  uVar2 = FUN_004418d0(auStack_13c);
  uVar2 = FUN_0045cce0(uVar2);
  FUN_0043e670(uVar2);
  iVar4 = 4;
  do {
    FUN_0043e570();
    iVar4 = iVar4 + -1;
  } while (iVar4 != 0);
  FUN_0043e570();
  FUN_004ce1b0(s__camera_006048b8);
  uVar2 = FUN_004418d0(auStack_13c);
  uVar2 = FUN_00443c80(uVar2);
  FUN_0043e670(uVar2);
  iVar4 = 4;
  do {
    FUN_0043e570();
    iVar4 = iVar4 + -1;
  } while (iVar4 != 0);
  FUN_0043e570();
  if (param_1[0x1f] == 0) {
    TERMINATION(s_NOD_Game__PM_LoadScript___0060f994,s_node___camera__is_missing_0060f93c);
  }
  if (param_1[0x17] != 0) {
    if (param_1[0x61] != 0) {
      if ((int *)param_1[0x1f] != (int *)0x0) {
        piStack_148 = (int *)0x3f800000;
        uStack_14c = 0x3f800000;
        iVar4 = *(int *)param_1[0x1f];
        uVar2 = NOD_Message__Allocate_72(&stack0xfffffeac,&uStack_14c,&piStack_148);
        (**(code **)(iVar4 + 0x2c))(uVar2);
      }
      if (param_1[0x17] != 0) {
        FUN_00466eb0();
      }
      if (param_1[0x24] != 0) {
        FUN_004481d0();
      }
      param_1[0x61] = 0;
    }
    iVar4 = *(int *)param_1[0x1f];
    uVar2 = FUN_004419e0(auStack_13c);
    uVar2 = FUN_004bff60(uVar2);
    (**(code **)(iVar4 + 0x2c))(uVar2);
    iVar4 = 4;
    do {
      FUN_0043e570();
      iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    FUN_0043e570();
    iVar4 = *(int *)param_1[0x1f];
    uVar2 = FUN_004419e0(auStack_140);
    uVar2 = FUN_004c00f0(uVar2);
    (**(code **)(iVar4 + 0x2c))(uVar2);
    iVar4 = 4;
    do {
      FUN_0043e570();
      iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    FUN_0043e570();
    iVar4 = *(int *)param_1[0x1f];
    uVar2 = FUN_004419e0(auStack_144);
    uVar2 = FUN_004c0900(uVar2);
    (**(code **)(iVar4 + 0x2c))(uVar2);
    iVar4 = 4;
    do {
      FUN_0043e570();
      iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    FUN_0043e570();
    piStack_160 = (int *)0x3f800000;
    unaff_EDI = (int *)0x0;
    iVar4 = *(int *)param_1[0x1f];
    uVar2 = NOD_Message__Allocate_72(&stack0xfffffeac,&stack0xfffffea8,&piStack_160);
    (**(code **)(iVar4 + 0x2c))(uVar2);
  }
  FUN_004ce1b0(s__cockpit_0060f930);
  uVar2 = FUN_004418d0(auStack_13c);
  uVar2 = FUN_00447950(uVar2);
  FUN_0043e670(uVar2);
  iVar4 = 4;
  do {
    FUN_0043e570();
    iVar4 = iVar4 + -1;
  } while (iVar4 != 0);
  FUN_0043e570();
  if (param_1[0x24] != 0) {
    FUN_00448110();
    FUN_00448130(param_1[0x17]);
  }
  iVar4 = *param_1;
  uVar2 = FUN_0044ac50();
  piVar3 = (int *)(**(code **)(iVar4 + 0x2c))(uVar2);
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 4))(1);
  }
  (**(code **)(*unaff_EDI + 0x24))();
  piVar3 = (int *)FUN_004414d0();
  (**(code **)(*piVar3 + 0x38))(piVar1);
  piVar3 = (int *)FUN_004414d0();
  (**(code **)(*piVar3 + 0x34))(piVar1);
  uVar2 = FUN_00523060(s__logunknown_0060f924);
  iVar4 = FUN_00520770(uVar2);
  if (iVar4 != 0) {
    piStack_160 = (int *)0x0;
    FUN_00522300(s_____________LOG_UNKNOWN_BEGIN_____0060f8f8);
    puVar6 = &stack0xfffffea4;
    ppiVar5 = &piStack_160;
    uVar2 = FUN_004414d0(ppiVar5,puVar6);
    FUN_0045ac60(uVar2,ppiVar5,puVar6);
    FUN_00522300(s_____________LOG_UNKNOWN_END_______0060f8cc);
  }
  FUN_00522f50(unaff_ESI,uStack_14c);
  FUN_0043e570();
  return 0;
}



