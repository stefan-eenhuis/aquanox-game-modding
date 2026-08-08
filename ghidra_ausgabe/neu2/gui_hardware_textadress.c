// Muster: GUI_Hardware_TextAdress   2 Funktionen, 1712 Byte

// --------------------------------------------
// GUI_Hardware_TextAdress__GetHardwareData   ab 0x005a0d90   84 Byte
// Texte: GUI_Hardware_TextAdress::GetHardwareData(), TextData not found
// --------------------------------------------

void __thiscall
GUI_Hardware_TextAdress__GetHardwareData(int *param_1,undefined4 *param_2,int param_3,int param_4)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  
  iVar2 = 0;
  iVar1 = *(int *)*param_1;
  while (param_3 != iVar1) {
    iVar2 = iVar2 + 1;
    if (0x4f < iVar2) {
      TERMINATION(s_GUI_Hardware_TextAdress__GetHard_0065d59c,s_TextData_not_found_0065d5c8);
    }
    iVar1 = *(int *)(*param_1 + iVar2 * 4);
  }
  puVar3 = (undefined4 *)((param_4 + iVar2 * 2) * 0x80 + param_1[1]);
  for (iVar1 = 0x20; iVar1 != 0; iVar1 = iVar1 + -1) {
    *param_2 = *puVar3;
    puVar3 = puVar3 + 1;
    param_2 = param_2 + 1;
  }
  return;
}



// --------------------------------------------
// GUI_Hardware_TextAdress__GetStringByKeyCode   ab 0x005a15f0   1628 Byte
// Texte: Backspace, Barre Espace, Bild hoch, Bild runter, DCtrl, DShift, Delete, Echap, Einfg, Escape, GCtrl, GShift, ... (+41)
// --------------------------------------------

undefined ** GUI_Hardware_TextAdress__GetStringByKeyCode(int param_1)

{
  int iVar1;
  
  iVar1 = *DAT_0066157c;
  if (iVar1 == 0) {
    if (param_1 < 0x5d) {
      if (param_1 == 0x5c) {
LAB_005a184e:
        return (undefined **)s_NumPad__0065d8d4;
      }
      switch(param_1) {
      case 0:
        return &PTR_DAT_0065da28;
      case 1:
switchD_005a1617_caseD_1:
        return (undefined **)&DAT_00603b18;
      case 2:
switchD_005a1617_caseD_2:
        return (undefined **)&DAT_00603b14;
      case 3:
switchD_005a1617_caseD_3:
        return (undefined **)&DAT_00603b10;
      case 4:
switchD_005a1617_caseD_4:
        return (undefined **)&DAT_00603b0c;
      case 5:
switchD_005a1617_caseD_5:
        return (undefined **)&DAT_00603b08;
      case 6:
switchD_005a1617_caseD_6:
        return (undefined **)&DAT_00603b04;
      case 7:
switchD_005a1617_caseD_7:
        return (undefined **)&DAT_00603b00;
      case 8:
switchD_005a1617_caseD_8:
        return (undefined **)&DAT_00603afc;
      case 9:
switchD_005a1617_caseD_9:
        return (undefined **)&DAT_00603af8;
      case 10:
switchD_005a1617_caseD_a:
        return (undefined **)&DAT_00603b1c;
      case 0xb:
        return (undefined **)&DAT_0065da00;
      case 0xc:
        goto switchD_005a1617_caseD_c;
      case 0xd:
        goto switchD_005a1617_caseD_d;
      case 0xe:
        goto switchD_005a1617_caseD_e;
      case 0xf:
        goto switchD_005a1617_caseD_f;
      case 0x10:
        goto switchD_005a1617_caseD_10;
      case 0x11:
        goto switchD_005a1617_caseD_11;
      case 0x12:
        goto switchD_005a1617_caseD_12;
      case 0x13:
        goto switchD_005a1617_caseD_13;
      case 0x14:
        goto switchD_005a1617_caseD_14;
      case 0x15:
        goto switchD_005a1617_caseD_15;
      case 0x16:
        goto switchD_005a1617_caseD_16;
      case 0x17:
        goto switchD_005a1617_caseD_17;
      case 0x18:
        goto switchD_005a1617_caseD_18;
      case 0x19:
        return (undefined **)&DAT_0065da18;
      case 0x1a:
        return (undefined **)&DAT_0065da14;
      case 0x1b:
switchD_005a1617_caseD_1b:
        return (undefined **)s_Return_0065d8dc;
      case 0x1c:
        return (undefined **)s_LStrg_0065da2c;
      case 0x1d:
        goto switchD_005a1617_caseD_1d;
      case 0x1e:
        goto switchD_005a1617_caseD_1e;
      case 0x1f:
        goto switchD_005a1617_caseD_1f;
      case 0x20:
        goto switchD_005a1617_caseD_20;
      case 0x21:
        goto switchD_005a1617_caseD_21;
      case 0x22:
        goto switchD_005a1617_caseD_22;
      case 0x23:
        goto switchD_005a1617_caseD_23;
      case 0x24:
        goto switchD_005a1617_caseD_24;
      case 0x25:
        goto switchD_005a1617_caseD_25;
      case 0x26:
        return (undefined **)&DAT_0065d9fc;
      case 0x27:
        return (undefined **)&DAT_0065d9f8;
      case 0x28:
switchD_005a1617_caseD_28:
        return (undefined **)&DAT_0065d7d4;
      case 0x29:
switchD_005a1617_caseD_29:
        return (undefined **)s_LShift_0065d984;
      case 0x2a:
switchD_005a1617_caseD_2a:
        return (undefined **)&DAT_0065d94c;
      case 0x2b:
        goto switchD_005a1617_caseD_2b;
      case 0x2c:
        goto switchD_005a1617_caseD_2c;
      case 0x2d:
        goto switchD_005a1617_caseD_2d;
      case 0x2e:
        goto switchD_005a1617_caseD_2e;
      case 0x2f:
        goto switchD_005a1617_caseD_2f;
      case 0x30:
        goto switchD_005a1617_caseD_30;
      case 0x31:
        goto switchD_005a1617_caseD_31;
      case 0x32:
        goto switchD_005a1617_caseD_32;
      case 0x33:
switchD_005a1617_caseD_33:
        return (undefined **)&DAT_005f3d1c;
      case 0x34:
        goto switchD_005a1617_caseD_34;
      case 0x35:
switchD_005a1617_caseD_35:
        return (undefined **)s_RShift_0065d97c;
      case 0x36:
        goto switchD_005a1617_caseD_36;
      case 0x37:
switchD_005a1617_caseD_37:
        return (undefined **)&DAT_0065d98c;
      case 0x38:
        return (undefined **)s_LEERTASTE_0065da1c;
      case 0x3a:
        goto switchD_005a1617_caseD_3a;
      case 0x3b:
        goto switchD_005a1617_caseD_3b;
      case 0x3c:
        goto switchD_005a1617_caseD_3c;
      case 0x3d:
        goto switchD_005a1617_caseD_3d;
      case 0x3e:
        goto switchD_005a1617_caseD_3e;
      case 0x3f:
        goto switchD_005a1617_caseD_3f;
      case 0x40:
        goto switchD_005a1617_caseD_40;
      case 0x41:
        goto switchD_005a1617_caseD_41;
      case 0x42:
        goto switchD_005a1617_caseD_42;
      case 0x43:
        goto switchD_005a1617_caseD_43;
      case 0x45:
        return (undefined **)s_Rollen_0065da34;
      case 0x46:
switchD_005a1617_caseD_46:
        return (undefined **)s_NumPad7_0065d904;
      case 0x47:
switchD_005a1617_caseD_47:
        return (undefined **)s_NumPad8_0065d8fc;
      case 0x48:
switchD_005a1617_caseD_48:
        return (undefined **)s_NumPad9_0065d8f4;
      case 0x49:
switchD_005a1617_caseD_49:
        return (undefined **)s_NumPad__0065d950;
      case 0x4a:
switchD_005a1617_caseD_4a:
        return (undefined **)s_NumPad4_0065d91c;
      case 0x4b:
switchD_005a1617_caseD_4b:
        return (undefined **)s_NumPad5_0065d914;
      case 0x4c:
switchD_005a1617_caseD_4c:
        return (undefined **)s_NumPad6_0065d90c;
      case 0x4d:
switchD_005a1617_caseD_4d:
        return (undefined **)s_NumPad__0065d958;
      case 0x4e:
switchD_005a1617_caseD_4e:
        return (undefined **)s_NumPad1_0065d934;
      case 0x4f:
switchD_005a1617_caseD_4f:
        return (undefined **)s_NumPad2_0065d92c;
      case 0x50:
switchD_005a1617_caseD_50:
        return (undefined **)s_NumPad3_0065d924;
      case 0x51:
switchD_005a1617_caseD_51:
        return (undefined **)s_NumPad0_0065d93c;
      case 0x52:
        return (undefined **)s_NumPad_Komma_0065da04;
      case 0x53:
        goto switchD_005a1617_caseD_53;
      case 0x54:
        goto switchD_005a1617_caseD_54;
      case 0x55:
        goto switchD_005a1617_caseD_55;
      case 0x56:
        goto switchD_005a1617_caseD_56;
      case 0x57:
        goto switchD_005a1617_caseD_57;
      }
    }
    else if (param_1 < 0x40000001) {
      if (param_1 == 0x40000000) goto switchD_005a16a3_caseD_79;
      switch(param_1) {
      case 0x65:
switchD_005a16a3_caseD_65:
        return (undefined **)s_NumPad_Enter_0065d874;
      case 0x66:
        return (undefined **)s_RStrg_0065d9f0;
      case 0x68:
        goto switchD_005a16a3_caseD_68;
      case 0x6a:
switchD_005a16a3_caseD_6a:
        return (undefined **)&DAT_0065d8cc;
      case 0x6b:
switchD_005a16a3_caseD_6b:
        return (undefined **)&DAT_0065d6b0;
      case 0x6c:
        return (undefined **)&DAT_0065d9e0;
      case 0x6d:
        return (undefined **)s_Bild_hoch_0065d9c4;
      case 0x6e:
        return (undefined **)s_Links_0065d9d8;
      case 0x6f:
        return (undefined **)s_Rechts_0065d9d0;
      case 0x70:
        return (undefined **)&DAT_0065d9bc;
      case 0x71:
        return (undefined **)s_Unten_0065d9e8;
      case 0x72:
        return (undefined **)s_Bild_runter_0065d9b0;
      case 0x73:
        return (undefined **)s_Einfg_0065d9a8;
      case 0x74:
        return (undefined **)&DAT_0065d9a0;
      case 0x78:
switchD_005a16a3_caseD_78:
        return (undefined **)&DAT_0065d99c;
      case 0x79:
        goto switchD_005a16a3_caseD_79;
      }
    }
  }
  else if (iVar1 == 1) {
    if (param_1 < 0x5d) {
      if (param_1 == 0x5c) goto LAB_005a184e;
      switch(param_1) {
      case 0:
        return (undefined **)s_Escape_0065d968;
      case 1:
        goto switchD_005a1617_caseD_1;
      case 2:
        goto switchD_005a1617_caseD_2;
      case 3:
        goto switchD_005a1617_caseD_3;
      case 4:
        goto switchD_005a1617_caseD_4;
      case 5:
        goto switchD_005a1617_caseD_5;
      case 6:
        goto switchD_005a1617_caseD_6;
      case 7:
        goto switchD_005a1617_caseD_7;
      case 8:
        goto switchD_005a1617_caseD_8;
      case 9:
        goto switchD_005a1617_caseD_9;
      case 10:
        goto switchD_005a1617_caseD_a;
      case 0xb:
switchD_005a1617_caseD_34:
        return (undefined **)&DAT_0063a0bc;
      case 0xc:
switchD_005a172f_caseD_c:
        return (undefined **)&DAT_005f3d18;
      case 0xd:
switchD_005a1617_caseD_d:
        return (undefined **)s_Backspace_0065d710;
      case 0xe:
switchD_005a1617_caseD_e:
        return &PTR_LAB_0065d800;
      case 0xf:
switchD_005a1617_caseD_f:
        return (undefined **)&DAT_00603b44;
      case 0x10:
switchD_005a1617_caseD_10:
        return (undefined **)&DAT_00603b2c;
      case 0x11:
switchD_005a1617_caseD_11:
        return (undefined **)&DAT_00603b74;
      case 0x12:
switchD_005a1617_caseD_12:
        return (undefined **)&DAT_00603b40;
      case 0x13:
switchD_005a1617_caseD_13:
        return (undefined **)&DAT_00603b38;
      case 0x14:
switchD_005a1617_caseD_2b:
        return (undefined **)&DAT_00603b24;
      case 0x15:
switchD_005a1617_caseD_15:
        return (undefined **)&DAT_00603b34;
      case 0x16:
switchD_005a1617_caseD_16:
        return (undefined **)&DAT_00603b64;
      case 0x17:
switchD_005a1617_caseD_17:
        return (undefined **)&DAT_00603b4c;
      case 0x18:
switchD_005a1617_caseD_18:
        return (undefined **)&DAT_00603b48;
      case 0x19:
        return (undefined **)&DAT_0065d948;
      case 0x1a:
        return (undefined **)&DAT_0065d944;
      case 0x1b:
        goto switchD_005a1617_caseD_1b;
      case 0x1c:
        return (undefined **)s_LControl_0065d970;
      case 0x1d:
switchD_005a1617_caseD_1d:
        return (undefined **)&DAT_00603b84;
      case 0x1e:
switchD_005a1617_caseD_1e:
        return (undefined **)&DAT_00603b3c;
      case 0x1f:
switchD_005a1617_caseD_1f:
        return (undefined **)&DAT_00603b78;
      case 0x20:
switchD_005a1617_caseD_20:
        return (undefined **)&DAT_00603b70;
      case 0x21:
switchD_005a1617_caseD_21:
        return (undefined **)&DAT_00603b6c;
      case 0x22:
switchD_005a1617_caseD_22:
        return (undefined **)&DAT_00603b68;
      case 0x23:
switchD_005a1617_caseD_23:
        return (undefined **)&DAT_00603b60;
      case 0x24:
switchD_005a1617_caseD_24:
        return (undefined **)&DAT_00603b5c;
      case 0x25:
switchD_005a1617_caseD_25:
        return (undefined **)&DAT_00603b58;
      case 0x26:
switchD_005a172f_caseD_26:
        return (undefined **)&DAT_005f3d14;
      case 0x27:
      case 0x28:
switchD_005a1617_caseD_c:
        return (undefined **)&DAT_0065d72c;
      case 0x29:
        goto switchD_005a1617_caseD_29;
      case 0x2a:
        goto switchD_005a1617_caseD_2a;
      case 0x2b:
switchD_005a1617_caseD_14:
        return (undefined **)&DAT_00603b20;
      case 0x2c:
switchD_005a1617_caseD_2c:
        return (undefined **)&DAT_00603b28;
      case 0x2d:
switchD_005a1617_caseD_2d:
        return (undefined **)&DAT_00603b7c;
      case 0x2e:
switchD_005a1617_caseD_2e:
        return (undefined **)&DAT_00603b30;
      case 0x2f:
switchD_005a1617_caseD_2f:
        return (undefined **)&DAT_00603b80;
      case 0x30:
switchD_005a1617_caseD_30:
        return (undefined **)&DAT_00603b50;
      case 0x31:
switchD_005a1617_caseD_31:
        return (undefined **)&DAT_00603b54;
      case 0x32:
switchD_005a1617_caseD_32:
        return (undefined **)&DAT_00612cd0;
      case 0x33:
        goto switchD_005a1617_caseD_33;
      case 0x34:
switchD_005a16a3_caseD_68:
        return (undefined **)&DAT_00618a88;
      case 0x35:
        goto switchD_005a1617_caseD_35;
      case 0x36:
switchD_005a1617_caseD_36:
        return (undefined **)&DAT_0065d70c;
      case 0x37:
        goto switchD_005a1617_caseD_37;
      case 0x38:
        return (undefined **)s_SPACE_0065d960;
      case 0x3a:
switchD_005a1617_caseD_3a:
        return (undefined **)&DAT_0065d83c;
      case 0x3b:
switchD_005a1617_caseD_3b:
        return (undefined **)&DAT_0065d838;
      case 0x3c:
switchD_005a1617_caseD_3c:
        return (undefined **)&DAT_0065d834;
      case 0x3d:
switchD_005a1617_caseD_3d:
        return (undefined **)&DAT_0065d830;
      case 0x3e:
switchD_005a1617_caseD_3e:
        return (undefined **)&DAT_0065d82c;
      case 0x3f:
switchD_005a1617_caseD_3f:
        return (undefined **)&DAT_0065d828;
      case 0x40:
switchD_005a1617_caseD_40:
        return (undefined **)&DAT_0065d824;
      case 0x41:
switchD_005a1617_caseD_41:
        return (undefined **)&DAT_0065d820;
      case 0x42:
switchD_005a1617_caseD_42:
        return (undefined **)&DAT_0065d81c;
      case 0x43:
switchD_005a1617_caseD_43:
        return (undefined **)&DAT_0065d818;
      case 0x45:
        return (undefined **)s_Scroll_0065d994;
      case 0x46:
        goto switchD_005a1617_caseD_46;
      case 0x47:
        goto switchD_005a1617_caseD_47;
      case 0x48:
        goto switchD_005a1617_caseD_48;
      case 0x49:
        goto switchD_005a1617_caseD_49;
      case 0x4a:
        goto switchD_005a1617_caseD_4a;
      case 0x4b:
        goto switchD_005a1617_caseD_4b;
      case 0x4c:
        goto switchD_005a1617_caseD_4c;
      case 0x4d:
        goto switchD_005a1617_caseD_4d;
      case 0x4e:
        goto switchD_005a1617_caseD_4e;
      case 0x4f:
        goto switchD_005a1617_caseD_4f;
      case 0x50:
        goto switchD_005a1617_caseD_50;
      case 0x51:
        goto switchD_005a1617_caseD_51;
      case 0x52:
        return (undefined **)s_NumPad_Comma_0065d8e4;
      case 0x53:
switchD_005a1617_caseD_53:
        return (undefined **)&DAT_0065d814;
      case 0x54:
switchD_005a1617_caseD_54:
        return (undefined **)&DAT_0065d810;
      case 0x55:
switchD_005a1617_caseD_55:
        return (undefined **)&DAT_0065d80c;
      case 0x56:
switchD_005a1617_caseD_56:
        return (undefined **)&DAT_0065d808;
      case 0x57:
switchD_005a1617_caseD_57:
        return (undefined **)&DAT_0065d804;
      }
    }
    else if (param_1 < 0x40000001) {
      if (param_1 == 0x40000000) goto switchD_005a16a3_caseD_79;
      switch(param_1) {
      case 0x65:
        goto switchD_005a16a3_caseD_65;
      case 0x66:
        return (undefined **)s_RControl_0065d8c0;
      case 0x68:
        goto switchD_005a16a3_caseD_68;
      case 0x6a:
        goto switchD_005a16a3_caseD_6a;
      case 0x6b:
        return (undefined **)&DAT_0065d8a8;
      case 0x6c:
        return (undefined **)&DAT_0065d484;
      case 0x6d:
        return (undefined **)&DAT_0065d8a0;
      case 0x6e:
        return (undefined **)&DAT_0065d8b8;
      case 0x6f:
        return (undefined **)s_Right_0065d8b0;
      case 0x70:
        return &PTR_DAT_0065d89c;
      case 0x71:
        return (undefined **)&DAT_0065d47c;
      case 0x72:
        return (undefined **)s_PgDown_0065d894;
      case 0x73:
        return (undefined **)s_Insert_0065d88c;
      case 0x74:
        return (undefined **)s_Delete_0065d884;
      case 0x78:
        return (undefined **)s_backslash_00603a7c;
      case 0x79:
        goto switchD_005a16a3_caseD_79;
      }
    }
  }
  else {
    if (iVar1 != 2) goto switchD_005a16a3_caseD_79;
    if (param_1 < 0x5d) {
      if (param_1 == 0x5c) {
        return (undefined **)&DAT_0065d700;
      }
      switch(param_1) {
      case 0:
        return (undefined **)s_Echap_0065d840;
      case 1:
        return (undefined **)&DAT_0065d738;
      case 2:
        return (undefined **)&DAT_0065d734;
      case 3:
        return (undefined **)&DAT_0065d730;
      case 4:
        goto switchD_005a1617_caseD_c;
      case 5:
        return (undefined **)&DAT_00612d50;
      case 6:
        goto switchD_005a1617_caseD_34;
      case 7:
        return (undefined **)&DAT_0065d728;
      case 8:
        return (undefined **)&DAT_005f3d20;
      case 9:
        return (undefined **)&DAT_0065d724;
      case 10:
        return (undefined **)&DAT_0065d73c;
      case 0xb:
        return (undefined **)&DAT_00612ccc;
      case 0xc:
        goto switchD_005a172f_caseD_c;
      case 0xd:
        goto switchD_005a1617_caseD_d;
      case 0xe:
        goto switchD_005a1617_caseD_e;
      case 0xf:
        goto switchD_005a1617_caseD_1d;
      case 0x10:
        goto switchD_005a1617_caseD_14;
      case 0x11:
        goto switchD_005a1617_caseD_11;
      case 0x12:
        goto switchD_005a1617_caseD_12;
      case 0x13:
        goto switchD_005a1617_caseD_13;
      case 0x14:
        goto switchD_005a1617_caseD_2b;
      case 0x15:
        goto switchD_005a1617_caseD_15;
      case 0x16:
        goto switchD_005a1617_caseD_16;
      case 0x17:
        goto switchD_005a1617_caseD_17;
      case 0x18:
        goto switchD_005a1617_caseD_18;
      case 0x19:
        goto switchD_005a1617_caseD_28;
      case 0x1a:
        return (undefined **)&DAT_0065d7cc;
      case 0x1b:
        return (undefined **)&DAT_0065d71c;
      case 0x1c:
        return (undefined **)s_GCtrl_0065d848;
      case 0x1d:
        goto switchD_005a1617_caseD_f;
      case 0x1e:
        goto switchD_005a1617_caseD_1e;
      case 0x1f:
        goto switchD_005a1617_caseD_1f;
      case 0x20:
        goto switchD_005a1617_caseD_20;
      case 0x21:
        goto switchD_005a1617_caseD_21;
      case 0x22:
        goto switchD_005a1617_caseD_22;
      case 0x23:
        goto switchD_005a1617_caseD_23;
      case 0x24:
        goto switchD_005a1617_caseD_24;
      case 0x25:
        goto switchD_005a1617_caseD_25;
      case 0x26:
        goto switchD_005a1617_caseD_31;
      case 0x27:
        return (undefined **)&DAT_0065d744;
      case 0x28:
        return (undefined **)&DAT_0065d740;
      case 0x29:
        return (undefined **)s_GShift_0065d858;
      case 0x2a:
      case 0x36:
        goto switchD_005a1617_caseD_36;
      case 0x2b:
        goto switchD_005a1617_caseD_10;
      case 0x2c:
        goto switchD_005a1617_caseD_2c;
      case 0x2d:
        goto switchD_005a1617_caseD_2d;
      case 0x2e:
        goto switchD_005a1617_caseD_2e;
      case 0x2f:
        goto switchD_005a1617_caseD_2f;
      case 0x30:
        goto switchD_005a1617_caseD_30;
      case 0x31:
        goto switchD_005a1617_caseD_32;
      case 0x32:
        goto switchD_005a172f_caseD_26;
      case 0x33:
        return (undefined **)&DAT_0063c23c;
      case 0x34:
        return (undefined **)&DAT_0065d7d0;
      case 0x35:
        return (undefined **)s_DShift_0065d850;
      case 0x37:
        return (undefined **)&DAT_0065d860;
      case 0x38:
        return (undefined **)s_Barre_Espace_0065d7f0;
      case 0x3a:
        goto switchD_005a1617_caseD_3a;
      case 0x3b:
        goto switchD_005a1617_caseD_3b;
      case 0x3c:
        goto switchD_005a1617_caseD_3c;
      case 0x3d:
        goto switchD_005a1617_caseD_3d;
      case 0x3e:
        goto switchD_005a1617_caseD_3e;
      case 0x3f:
        goto switchD_005a1617_caseD_3f;
      case 0x40:
        goto switchD_005a1617_caseD_40;
      case 0x41:
        goto switchD_005a1617_caseD_41;
      case 0x42:
        goto switchD_005a1617_caseD_42;
      case 0x43:
        goto switchD_005a1617_caseD_43;
      case 0x45:
        return (undefined **)s_Scroll_Lock_0065d868;
      case 0x46:
        return (undefined **)&DAT_0065d76c;
      case 0x47:
        return (undefined **)&DAT_0065d760;
      case 0x48:
        return (undefined **)&DAT_0065d754;
      case 0x49:
        return (undefined **)&DAT_0065d7d8;
      case 0x4a:
        return (undefined **)&DAT_0065d790;
      case 0x4b:
        return (undefined **)&DAT_0065d784;
      case 0x4c:
        return (undefined **)&DAT_0065d778;
      case 0x4d:
        return (undefined **)&DAT_0065d7e4;
      case 0x4e:
        return (undefined **)&DAT_0065d7b4;
      case 0x4f:
        return (undefined **)&DAT_0065d7a8;
      case 0x50:
        return (undefined **)&DAT_0065d79c;
      case 0x51:
        return (undefined **)&DAT_0065d7c0;
      case 0x52:
        return (undefined **)&DAT_0065d748;
      case 0x53:
        goto switchD_005a1617_caseD_53;
      case 0x54:
        goto switchD_005a1617_caseD_54;
      case 0x55:
        goto switchD_005a1617_caseD_55;
      case 0x56:
        goto switchD_005a1617_caseD_56;
      case 0x57:
        goto switchD_005a1617_caseD_57;
      }
    }
    else if (param_1 < 0x40000001) {
      if (param_1 == 0x40000000) goto switchD_005a16a3_caseD_79;
      switch(param_1) {
      case 0x65:
        return (undefined **)&DAT_0065d674;
      case 0x66:
        return (undefined **)s_DCtrl_0065d6f0;
      case 0x68:
        goto switchD_005a16a3_caseD_68;
      case 0x6a:
        return (undefined **)&DAT_0065d6f8;
      case 0x6b:
        goto switchD_005a16a3_caseD_6b;
      case 0x6c:
        return (undefined **)&DAT_0065d6d8;
      case 0x6d:
        return (undefined **)s_Page_haut_0065d6a4;
      case 0x6e:
        return (undefined **)&DAT_0065d6c8;
      case 0x6f:
        return (undefined **)&DAT_0065d6b8;
      case 0x70:
        return (undefined **)&DAT_0065d6a0;
      case 0x71:
        return (undefined **)&DAT_0065d6e4;
      case 0x72:
        return (undefined **)s_Page_bas_0065d694;
      case 0x73:
        return (undefined **)s_Inser_0065d68c;
      case 0x74:
        return (undefined **)s_Suppr_0065d684;
      case 0x78:
        goto switchD_005a16a3_caseD_78;
      case 0x79:
        goto switchD_005a16a3_caseD_79;
      }
    }
  }
  TERMINATION(s_GUI_Hardware_TextAdress__GetStri_0065d634,s_Unknown_keycode_0065d664);
switchD_005a16a3_caseD_79:
  return (undefined **)&DAT_00603db8;
}



