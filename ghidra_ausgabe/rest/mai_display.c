// Muster: MAI_Display   28 Funktionen, 8012 Byte

// --------------------------------------------
// MAI_Display__TK1_BUT_SetHead   ab 0x0056a770   166 Byte
// Texte: MAI_Display::TK1_BUT_SetHead(), invalid button index in TK1 menu.
// --------------------------------------------

void MAI_Display__TK1_BUT_SetHead(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = param_1;
  if ((param_1 < 0) || (6 < param_1)) {
    TERMINATION(s_MAI_Display__TK1_BUT_SetHead___0065b354,
                s_invalid_button_index_in_TK1_menu_0065b374);
  }
  switch(iVar1) {
  case 0:
    break;
  case 1:
    break;
  case 2:
    break;
  case 3:
    break;
  case 4:
    break;
  case 5:
    break;
  case 6:
  }
  param_1 = 0xffffffff;
  FUN_00560b20(param_2,&param_1);
  return;
}



// --------------------------------------------
// MAI_Display__TK1_BUT_SetName   ab 0x0056a840   168 Byte
// Texte: MAI_Display::TK1_BUT_SetName(), invalid button index in TK1 menu.
// --------------------------------------------

void MAI_Display__TK1_BUT_SetName(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = param_1;
  if ((param_1 < 0) || (6 < param_1)) {
    TERMINATION(s_MAI_Display__TK1_BUT_SetName___0065b398,
                s_invalid_button_index_in_TK1_menu_0065b374);
  }
  switch(iVar1) {
  case 0:
    break;
  case 1:
    break;
  case 2:
    break;
  case 3:
    break;
  case 4:
    break;
  case 5:
    break;
  case 6:
  }
  param_1 = 0xffffffff;
  FUN_00560080(0,param_2,&param_1);
  return;
}



// --------------------------------------------
// MAI_Display__TK1_BUT_SetRoom   ab 0x0056a910   160 Byte
// Texte: MAI_Display::TK1_BUT_SetRoom(), invalid button index in TK1 menu.
// --------------------------------------------

void __thiscall MAI_Display__TK1_BUT_SetRoom(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  
  iVar1 = param_2;
  if ((param_2 < 0) || (6 < param_2)) {
    TERMINATION(s_MAI_Display__TK1_BUT_SetRoom___0065b3b8,
                s_invalid_button_index_in_TK1_menu_0065b374);
  }
  switch(iVar1) {
  case 0:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 400);
    break;
  case 1:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x198);
    break;
  case 2:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x1a0);
    break;
  case 3:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x1a8);
    break;
  case 4:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x1b0);
    break;
  case 5:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x1b8);
    break;
  case 6:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x1c0);
  }
  param_2 = *(undefined4 *)(param_2 + 0x344);
  FUN_00560080(0,param_3,&param_2);
  return;
}



// --------------------------------------------
// MAI_Display__TK1_BUT_On   ab 0x0056ad30   240 Byte
// Texte: MAI_Display::TK1_BUT_On(), invalid button index in TK1 menu.
// --------------------------------------------

void MAI_Display__TK1_BUT_On(int param_1,undefined4 param_2)

{
  if ((param_1 < 0) || (6 < param_1)) {
    TERMINATION(s_MAI_Display__TK1_BUT_On___0065b3d8,s_invalid_button_index_in_TK1_menu_0065b374);
  }
  switch(param_1) {
  case 0:
    FUN_0056eee0(param_2,0x4e,0x55,0x5c,99,100);
    return;
  case 1:
    FUN_0056eee0(param_2,0x4f,0x56,0x5d,0x65,0x66);
    return;
  case 2:
    FUN_0056eee0(param_2,0x50,0x57,0x5e,0x67,0x68);
    return;
  case 3:
    FUN_0056eee0(param_2,0x51,0x58,0x5f,0x69,0x6a);
    return;
  case 4:
    FUN_0056eee0(param_2,0x52,0x59,0x60,0x6b,0x6c);
    return;
  case 5:
    FUN_0056eee0(param_2,0x53,0x5a,0x61,0x6d,0x6e);
    return;
  case 6:
    FUN_0056eee0(param_2,0x54,0x5b,0x62,0x6f,0x70);
  }
  return;
}



// --------------------------------------------
// MAI_Display__TK1_BUT_Off   ab 0x0056ae40   240 Byte
// Texte: MAI_Display::TK1_BUT_Off(), invalid button index in TK1 menu.
// --------------------------------------------

void MAI_Display__TK1_BUT_Off(int param_1,undefined4 param_2)

{
  if ((param_1 < 0) || (6 < param_1)) {
    TERMINATION(s_MAI_Display__TK1_BUT_Off___0065b3f4,s_invalid_button_index_in_TK1_menu_0065b374);
  }
  switch(param_1) {
  case 0:
    FUN_0056a9d0(param_2,0x4e,0x55,0x5c,99,100);
    return;
  case 1:
    FUN_0056a9d0(param_2,0x4f,0x56,0x5d,0x65,0x66);
    return;
  case 2:
    FUN_0056a9d0(param_2,0x50,0x57,0x5e,0x67,0x68);
    return;
  case 3:
    FUN_0056a9d0(param_2,0x51,0x58,0x5f,0x69,0x6a);
    return;
  case 4:
    FUN_0056a9d0(param_2,0x52,0x59,0x60,0x6b,0x6c);
    return;
  case 5:
    FUN_0056a9d0(param_2,0x53,0x5a,0x61,0x6d,0x6e);
    return;
  case 6:
    FUN_0056a9d0(param_2,0x54,0x5b,0x62,0x6f,0x70);
  }
  return;
}



// --------------------------------------------
// MAI_Display__TK1_BUT_Empty   ab 0x0056af50   240 Byte
// Texte: MAI_Display::TK1_BUT_Empty(), invalid button index in TK1 menu.
// --------------------------------------------

void MAI_Display__TK1_BUT_Empty(int param_1,undefined4 param_2)

{
  if ((param_1 < 0) || (6 < param_1)) {
    TERMINATION(s_MAI_Display__TK1_BUT_Empty___0065b410,s_invalid_button_index_in_TK1_menu_0065b374)
    ;
  }
  switch(param_1) {
  case 0:
    FUN_0056abc0(param_2,0x4e,0x55,0x5c,99,100);
    return;
  case 1:
    FUN_0056abc0(param_2,0x4f,0x56,0x5d,0x65,0x66);
    return;
  case 2:
    FUN_0056abc0(param_2,0x50,0x57,0x5e,0x67,0x68);
    return;
  case 3:
    FUN_0056abc0(param_2,0x51,0x58,0x5f,0x69,0x6a);
    return;
  case 4:
    FUN_0056abc0(param_2,0x52,0x59,0x60,0x6b,0x6c);
    return;
  case 5:
    FUN_0056abc0(param_2,0x53,0x5a,0x61,0x6d,0x6e);
    return;
  case 6:
    FUN_0056abc0(param_2,0x54,0x5b,0x62,0x6f,0x70);
  }
  return;
}



// --------------------------------------------
// MAI_Display__TK2_BUT_SetSmallHead   ab 0x0056b170   177 Byte
// Texte: MAI_Display::TK2_BUT_SetSmallHead(), invalid button index in TK2 menu.
// --------------------------------------------

void MAI_Display__TK2_BUT_SetSmallHead(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = param_1;
  if ((param_1 < 0) || (7 < param_1)) {
    TERMINATION(s_MAI_Display__TK2_BUT_SetSmallHea_0065b430,
                s_invalid_button_index_in_TK2_menu_0065b454);
  }
  switch(iVar1) {
  case 0:
    break;
  case 1:
    break;
  case 2:
    break;
  case 3:
    break;
  case 4:
    break;
  case 5:
    break;
  case 6:
    break;
  case 7:
  }
  param_1 = 0xffffffff;
  FUN_00560b20(param_2,&param_1);
  return;
}



// --------------------------------------------
// MAI_Display__TK2_BUT_On   ab 0x0056b3c0   555 Byte
// Texte: MAI_Display::TK2_BUT_On(), invalid button index in TK2 menu.
// --------------------------------------------

void __thiscall MAI_Display__TK2_BUT_On(int param_1,int param_2,undefined4 param_3)

{
  if ((param_2 < 0) || (7 < param_2)) {
    TERMINATION(s_MAI_Display__TK2_BUT_On___0065b478,s_invalid_button_index_in_TK2_menu_0065b454);
  }
  switch(param_2) {
  case 0:
    if (*(int *)(param_1 + 0xd80) != 1) {
      FUN_0055f160(param_3,0x3e19999a,0x3f800000,0x3f800000);
      *(undefined4 *)(param_1 + 0xd80) = 1;
      return;
    }
    break;
  case 1:
    if (*(int *)(param_1 + 0xd84) != 1) {
      FUN_0055f160(param_3,0x3e19999a,0x3f800000,0x3f800000);
      *(undefined4 *)(param_1 + 0xd84) = 1;
      return;
    }
    break;
  case 2:
    if (*(int *)(param_1 + 0xd88) != 1) {
      FUN_0055f160(param_3,0x3e19999a,0x3f800000,0x3f800000);
      *(undefined4 *)(param_1 + 0xd88) = 1;
      return;
    }
    break;
  case 3:
    if (*(int *)(param_1 + 0xd8c) != 1) {
      FUN_0055f160(param_3,0x3e19999a,0x3f800000,0x3f800000);
      *(undefined4 *)(param_1 + 0xd8c) = 1;
      return;
    }
    break;
  case 4:
    if (*(int *)(param_1 + 0xd90) != 1) {
      FUN_0055f160(param_3,0x3e19999a,0x3f800000,0x3f800000);
      *(undefined4 *)(param_1 + 0xd90) = 1;
      return;
    }
    break;
  case 5:
    if (*(int *)(param_1 + 0xd94) != 1) {
      FUN_0055f160(param_3,0x3e19999a,0x3f800000,0x3f800000);
      *(undefined4 *)(param_1 + 0xd94) = 1;
      return;
    }
    break;
  case 6:
    if (*(int *)(param_1 + 0xd98) != 1) {
      FUN_0055f160(param_3,0x3e19999a,0x3f800000,0x3f800000);
      *(undefined4 *)(param_1 + 0xd98) = 1;
      return;
    }
    break;
  case 7:
    if (*(int *)(param_1 + 0xd9c) != 1) {
      FUN_0055f160(param_3,0x3e19999a,0x3f800000,0x3f800000);
      *(undefined4 *)(param_1 + 0xd9c) = 1;
    }
  }
  return;
}



// --------------------------------------------
// MAI_Display__TK2_BUT_Off   ab 0x0056b610   470 Byte
// Texte: MAI_Display::TK2_BUT_Off(), invalid button index in TK2 menu.
// --------------------------------------------

void __thiscall MAI_Display__TK2_BUT_Off(int param_1,int param_2,undefined4 param_3)

{
  if ((param_2 < 0) || (7 < param_2)) {
    TERMINATION(s_MAI_Display__TK2_BUT_Off___0065b494,s_invalid_button_index_in_TK2_menu_0065b454);
  }
  switch(param_2) {
  case 0:
    if (*(int *)(param_1 + 0xd80) != 0) {
      FUN_0055f1c0(param_3,0x3e19999a,0x3f800000);
      *(undefined4 *)(param_1 + 0xd80) = 0;
      return;
    }
    break;
  case 1:
    if (*(int *)(param_1 + 0xd84) != 0) {
      FUN_0055f1c0(param_3,0x3e19999a,0x3f800000);
      *(undefined4 *)(param_1 + 0xd84) = 0;
      return;
    }
    break;
  case 2:
    if (*(int *)(param_1 + 0xd88) != 0) {
      FUN_0055f1c0(param_3,0x3e19999a,0x3f800000);
      *(undefined4 *)(param_1 + 0xd88) = 0;
      return;
    }
    break;
  case 3:
    if (*(int *)(param_1 + 0xd8c) != 0) {
      FUN_0055f1c0(param_3,0x3e19999a,0x3f800000);
      *(undefined4 *)(param_1 + 0xd8c) = 0;
      return;
    }
    break;
  case 4:
    if (*(int *)(param_1 + 0xd90) != 0) {
      FUN_0055f1c0(param_3,0x3e19999a,0x3f800000);
      *(undefined4 *)(param_1 + 0xd90) = 0;
      return;
    }
    break;
  case 5:
    if (*(int *)(param_1 + 0xd94) != 0) {
      FUN_0055f1c0(param_3,0x3e19999a,0x3f800000);
      *(undefined4 *)(param_1 + 0xd94) = 0;
      return;
    }
    break;
  case 6:
    if (*(int *)(param_1 + 0xd98) != 0) {
      FUN_0055f1c0(param_3,0x3e19999a,0x3f800000);
      *(undefined4 *)(param_1 + 0xd98) = 0;
      return;
    }
    break;
  case 7:
    if (*(int *)(param_1 + 0xd9c) != 0) {
      FUN_0055f1c0(param_3,0x3e19999a,0x3f800000);
      *(undefined4 *)(param_1 + 0xd9c) = 0;
    }
  }
  return;
}



// --------------------------------------------
// MAI_Display__TK2_BUT_Empty   ab 0x0056b810   531 Byte
// Texte: MAI_Display::TK2_BUT_Empty(), invalid button index in TK2 menu.
// --------------------------------------------

void __thiscall MAI_Display__TK2_BUT_Empty(int param_1,int param_2,undefined4 param_3)

{
  if ((param_2 < 0) || (7 < param_2)) {
    TERMINATION(s_MAI_Display__TK2_BUT_Empty___0065b4b0,s_invalid_button_index_in_TK2_menu_0065b454)
    ;
  }
  switch(param_2) {
  case 0:
    if (*(int *)(param_1 + 0xd80) != 2) {
      FUN_0055f160(param_3,0x3e19999a,0x3f800000,0);
      *(undefined4 *)(param_1 + 0xd80) = 2;
      return;
    }
    break;
  case 1:
    if (*(int *)(param_1 + 0xd84) != 2) {
      FUN_0055f160(param_3,0x3e19999a,0x3f800000,0);
      *(undefined4 *)(param_1 + 0xd84) = 2;
      return;
    }
    break;
  case 2:
    if (*(int *)(param_1 + 0xd88) != 2) {
      FUN_0055f160(param_3,0x3e19999a,0x3f800000,0);
      *(undefined4 *)(param_1 + 0xd88) = 2;
      return;
    }
    break;
  case 3:
    if (*(int *)(param_1 + 0xd8c) != 2) {
      FUN_0055f160(param_3,0x3e19999a,0x3f800000,0);
      *(undefined4 *)(param_1 + 0xd8c) = 2;
      return;
    }
    break;
  case 4:
    if (*(int *)(param_1 + 0xd90) != 2) {
      FUN_0055f160(param_3,0x3e19999a,0x3f800000,0);
      *(undefined4 *)(param_1 + 0xd90) = 2;
      return;
    }
    break;
  case 5:
    if (*(int *)(param_1 + 0xd94) != 2) {
      FUN_0055f160(param_3,0x3e19999a,0x3f800000,0);
      *(undefined4 *)(param_1 + 0xd94) = 2;
      return;
    }
    break;
  case 6:
    if (*(int *)(param_1 + 0xd98) != 2) {
      FUN_0055f160(param_3,0x3e19999a,0x3f800000,0);
      *(undefined4 *)(param_1 + 0xd98) = 2;
      return;
    }
    break;
  case 7:
    if (*(int *)(param_1 + 0xd9c) != 2) {
      FUN_0055f160(param_3,0x3e19999a,0x3f800000,0);
      *(undefined4 *)(param_1 + 0xd9c) = 2;
    }
  }
  return;
}



// --------------------------------------------
// MAI_Display__MOV_BUT_SetHead   ab 0x0056c2f0   177 Byte
// Texte: MAI_Display::MOV_BUT_SetHead(), invalid button index in MOV menu.
// --------------------------------------------

void MAI_Display__MOV_BUT_SetHead(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = param_1;
  if ((param_1 < 0) || (7 < param_1)) {
    TERMINATION(s_MAI_Display__MOV_BUT_SetHead___0065b4dc,
                s_invalid_button_index_in_MOV_menu_0065b4fc);
  }
  switch(iVar1) {
  case 0:
    break;
  case 1:
    break;
  case 2:
    break;
  case 3:
    break;
  case 4:
    break;
  case 5:
    break;
  case 6:
    break;
  case 7:
  }
  param_1 = 0xffffffff;
  FUN_00560b20(param_2,&param_1);
  return;
}



// --------------------------------------------
// MAI_Display__MOV_BUT_SetName   ab 0x0056c3d0   190 Byte
// Texte: MAI_Display::MOV_BUT_SetName(), invalid button index in MOV menu.
// --------------------------------------------

void MAI_Display__MOV_BUT_SetName(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = param_1;
  if ((param_1 < 0) || (8 < param_1)) {
    TERMINATION(s_MAI_Display__MOV_BUT_SetName___0065b520,
                s_invalid_button_index_in_MOV_menu_0065b4fc);
  }
  switch(iVar1) {
  case 0:
    break;
  case 1:
    break;
  case 2:
    break;
  case 3:
    break;
  case 4:
    break;
  case 5:
    break;
  case 6:
    break;
  case 7:
    break;
  case 8:
  }
  param_1 = 0xffffffff;
  FUN_00560080(0,param_2,&param_1);
  return;
}



// --------------------------------------------
// MAI_Display__MOV_BUT_On   ab 0x0056c770   384 Byte
// Texte: MAI_Display::MOV_BUT_On(), invalid button index in MOV menu.
// --------------------------------------------

void MAI_Display__MOV_BUT_On(int param_1,undefined4 param_2)

{
  if ((param_1 < 0) || (8 < param_1)) {
    TERMINATION(s_MAI_Display__MOV_BUT_On___0065b540,s_invalid_button_index_in_MOV_menu_0065b4fc);
  }
  switch(param_1) {
  case 0:
    FUN_0056e4b0(param_2,0xd4,0xdb,0xe2,0xe9);
    return;
  case 1:
    FUN_0056e4b0(param_2,0xd5,0xdc,0xe3,0xea);
    return;
  case 2:
    FUN_0056e4b0(param_2,0xd6,0xdd,0xe4,0xeb);
    return;
  case 3:
    FUN_0056e4b0(param_2,0xd7,0xde,0xe5,0xec);
    return;
  case 4:
    FUN_0056e4b0(param_2,0xd8,0xdf,0xe6,0xed);
    return;
  case 5:
    FUN_0056e4b0(param_2,0xd9,0xe0,0xe7,0xee);
    return;
  case 6:
    FUN_0056e4b0(param_2,0xda,0xe1,0xe8,0xef);
    return;
  case 7:
    FUN_0056e4b0(param_2,0xf2,0xf4,0xf6,0xf0);
    return;
  case 8:
    FUN_0056e4b0(param_2,0xf3,0xf5,0xf7,0xf1);
  }
  return;
}



// --------------------------------------------
// MAI_Display__MOV_BUT_Off   ab 0x0056c920   384 Byte
// Texte: MAI_Display::MOV_BUT_Off(), invalid button index in MOV menu.
// --------------------------------------------

void MAI_Display__MOV_BUT_Off(int param_1,undefined4 param_2)

{
  if ((param_1 < 0) || (8 < param_1)) {
    TERMINATION(s_MAI_Display__MOV_BUT_Off___0065b55c,s_invalid_button_index_in_MOV_menu_0065b4fc);
  }
  switch(param_1) {
  case 0:
    FUN_0056c4c0(param_2,0xd4,0xdb,0xe2,0xe9);
    return;
  case 1:
    FUN_0056c4c0(param_2,0xd5,0xdc,0xe3,0xea);
    return;
  case 2:
    FUN_0056c4c0(param_2,0xd6,0xdd,0xe4,0xeb);
    return;
  case 3:
    FUN_0056c4c0(param_2,0xd7,0xde,0xe5,0xec);
    return;
  case 4:
    FUN_0056c4c0(param_2,0xd8,0xdf,0xe6,0xed);
    return;
  case 5:
    FUN_0056c4c0(param_2,0xd9,0xe0,0xe7,0xee);
    return;
  case 6:
    FUN_0056c4c0(param_2,0xda,0xe1,0xe8,0xef);
    return;
  case 7:
    FUN_0056c4c0(param_2,0xf2,0xf4,0xf6,0xf0);
    return;
  case 8:
    FUN_0056c4c0(param_2,0xf3,0xf5,0xf7,0xf1);
  }
  return;
}



// --------------------------------------------
// MAI_Display__MOV_BUT_Empty   ab 0x0056cad0   384 Byte
// Texte: MAI_Display::MOV_BUT_Empty(), invalid button index in MOV menu.
// --------------------------------------------

void MAI_Display__MOV_BUT_Empty(int param_1,undefined4 param_2)

{
  if ((param_1 < 0) || (8 < param_1)) {
    TERMINATION(s_MAI_Display__MOV_BUT_Empty___0065b578,s_invalid_button_index_in_MOV_menu_0065b4fc)
    ;
  }
  switch(param_1) {
  case 0:
    FUN_0056c650(param_2,0xd4,0xdb,0xe2,0xe9);
    return;
  case 1:
    FUN_0056c650(param_2,0xd5,0xdc,0xe3,0xea);
    return;
  case 2:
    FUN_0056c650(param_2,0xd6,0xdd,0xe4,0xeb);
    return;
  case 3:
    FUN_0056c650(param_2,0xd7,0xde,0xe5,0xec);
    return;
  case 4:
    FUN_0056c650(param_2,0xd8,0xdf,0xe6,0xed);
    return;
  case 5:
    FUN_0056c650(param_2,0xd9,0xe0,0xe7,0xee);
    return;
  case 6:
    FUN_0056c650(param_2,0xda,0xe1,0xe8,0xef);
    return;
  case 7:
    FUN_0056c650(param_2,0xf2,0xf4,0xf6,0xf0);
    return;
  case 8:
    FUN_0056c650(param_2,0xf3,0xf5,0xf7,0xf1);
  }
  return;
}



// --------------------------------------------
// MAI_Display__EQU_BUT_On   ab 0x0056e5d0   310 Byte
// Texte: MAI_Display::EQU_BUT_On(), invalid button index in EQU menu.
// --------------------------------------------

void MAI_Display__EQU_BUT_On(int param_1,undefined4 param_2)

{
  if ((param_1 < 0) || (6 < param_1)) {
    TERMINATION(s_MAI_Display__EQU_BUT_On___0065b598,s_invalid_button_index_in_EQU_menu_0065b5b4);
  }
  switch(param_1) {
  case 0:
    FUN_0056e4b0(param_2,0xa4,0xab,0xb9,0xb2);
    return;
  case 1:
    FUN_0056e4b0(param_2,0xa5,0xac,0xba,0xb3);
    return;
  case 2:
    FUN_0056e4b0(param_2,0xa6,0xad,0xbb,0xb4);
    return;
  case 3:
    FUN_0056e4b0(param_2,0xa7,0xae,0xbc,0xb5);
    return;
  case 4:
    FUN_0056e4b0(param_2,0xa8,0xaf,0xbd,0xb6);
    return;
  case 5:
    FUN_0056e4b0(param_2,0xa9,0xb0,0xbe,0xb7);
    return;
  case 6:
    FUN_0056e4b0(param_2,0xaa,0xb1,0xbf,0xb8);
  }
  return;
}



// --------------------------------------------
// MAI_Display__EQU_BUT_Off   ab 0x0056e730   310 Byte
// Texte: MAI_Display::EQU_BUT_Off(), invalid button index in EQU menu.
// --------------------------------------------

void MAI_Display__EQU_BUT_Off(int param_1,undefined4 param_2)

{
  if ((param_1 < 0) || (6 < param_1)) {
    TERMINATION(s_MAI_Display__EQU_BUT_Off___0065b5d8,s_invalid_button_index_in_EQU_menu_0065b5b4);
  }
  switch(param_1) {
  case 0:
    FUN_0056e330(param_2,0xa4,0xab,0xb9,0xb2);
    return;
  case 1:
    FUN_0056e330(param_2,0xa5,0xac,0xba,0xb3);
    return;
  case 2:
    FUN_0056e330(param_2,0xa6,0xad,0xbb,0xb4);
    return;
  case 3:
    FUN_0056e330(param_2,0xa7,0xae,0xbc,0xb5);
    return;
  case 4:
    FUN_0056e330(param_2,0xa8,0xaf,0xbd,0xb6);
    return;
  case 5:
    FUN_0056e330(param_2,0xa9,0xb0,0xbe,0xb7);
    return;
  case 6:
    FUN_0056e330(param_2,0xaa,0xb1,0xbf,0xb8);
  }
  return;
}



// --------------------------------------------
// MAI_Display__EQU_BUT_Empty   ab 0x0056e890   379 Byte
// Texte: MAI_Display::EQU_BUT_Empty(), invalid button index in EQU menu.
// --------------------------------------------

void __thiscall MAI_Display__EQU_BUT_Empty(int param_1,int param_2,int param_3,int param_4)

{
  int iStack_84;
  undefined1 auStack_80 [64];
  undefined1 auStack_40 [64];
  
  if ((param_2 < 0) || (6 < param_2)) {
    TERMINATION(s_MAI_Display__EQU_BUT_Empty___0065b5f4,s_invalid_button_index_in_EQU_menu_0065b5b4)
    ;
  }
  switch(param_2) {
  case 0:
    iStack_84 = *(int *)(*(int *)(param_1 + 4) + 0x2c8);
    break;
  case 1:
    iStack_84 = *(int *)(*(int *)(param_1 + 4) + 0x2cc);
    break;
  case 2:
    iStack_84 = *(int *)(*(int *)(param_1 + 4) + 0x2d0);
    break;
  case 3:
    iStack_84 = *(int *)(*(int *)(param_1 + 4) + 0x2d4);
    break;
  case 4:
    iStack_84 = *(int *)(*(int *)(param_1 + 4) + 0x2d8);
    break;
  case 5:
    iStack_84 = *(int *)(*(int *)(param_1 + 4) + 0x2dc);
    break;
  case 6:
    iStack_84 = *(int *)(*(int *)(param_1 + 4) + 0x2e0);
  }
  str_copy(auStack_80,iStack_84 + 0x2c0);
  if (param_3 == 0) {
    FUN_00520670(auStack_80,&DAT_0065b61c);
  }
  else {
    FUN_00520670(auStack_80,&DAT_0065b618);
    FUN_0056fdd0(param_3,auStack_40);
    FUN_00520670(auStack_80,auStack_40);
    FUN_00520670(auStack_80,&DAT_00618a88);
  }
  if (param_4 == 0) {
    FUN_00520670(auStack_80,&DAT_0065b614);
  }
  else {
    FUN_0056fdd0(param_4,auStack_40);
    FUN_00520670(auStack_80,auStack_40);
    FUN_00520670(auStack_80,&DAT_00612ccc);
  }
  iStack_84 = -1;
  FUN_00560080(0,auStack_80,&iStack_84);
  return;
}



// --------------------------------------------
// MAI_Display__GAL_BUT_SetName   ab 0x0056ed50   168 Byte
// Texte: MAI_Display::GAL_BUT_SetName(), invalid button index in GAL menu.
// --------------------------------------------

void MAI_Display__GAL_BUT_SetName(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = param_1;
  if ((param_1 < 0) || (6 < param_1)) {
    TERMINATION(s_MAI_Display__GAL_BUT_SetName___0065b648,
                s_invalid_button_index_in_GAL_menu_0065b624);
  }
  switch(iVar1) {
  case 0:
    break;
  case 1:
    break;
  case 2:
    break;
  case 3:
    break;
  case 4:
    break;
  case 5:
    break;
  case 6:
  }
  param_1 = 0xffffffff;
  FUN_00560080(0,param_2,&param_1);
  return;
}



// --------------------------------------------
// MAI_Display__GAL_BUT_SetRoom   ab 0x0056ee20   160 Byte
// Texte: MAI_Display::GAL_BUT_SetRoom(), invalid button index in GAL menu.
// --------------------------------------------

void __thiscall MAI_Display__GAL_BUT_SetRoom(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  
  iVar1 = param_2;
  if ((param_2 < 0) || (6 < param_2)) {
    TERMINATION(s_MAI_Display__GAL_BUT_SetRoom___0065b668,
                s_invalid_button_index_in_GAL_menu_0065b624);
  }
  switch(iVar1) {
  case 0:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x594);
    break;
  case 1:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x59c);
    break;
  case 2:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x5a4);
    break;
  case 3:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x5ac);
    break;
  case 4:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x5b4);
    break;
  case 5:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x5bc);
    break;
  case 6:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x5c4);
  }
  param_2 = *(undefined4 *)(param_2 + 0x344);
  FUN_00560080(0,param_3,&param_2);
  return;
}



// --------------------------------------------
// MAI_Display__GAL_BUT_On   ab 0x0056f040   345 Byte
// Texte: MAI_Display::GAL_BUT_On(), invalid button index in GAL menu.
// --------------------------------------------

void MAI_Display__GAL_BUT_On(int param_1,undefined4 param_2)

{
  if ((param_1 < 0) || (6 < param_1)) {
    TERMINATION(s_MAI_Display__GAL_BUT_On___0065b688,s_invalid_button_index_in_GAL_menu_0065b624);
  }
  switch(param_1) {
  case 0:
    FUN_0056eee0(param_2,0x14f,0x156,0x15d,0x164,0x165);
    return;
  case 1:
    FUN_0056eee0(param_2,0x150,0x157,0x15e,0x166,0x167);
    return;
  case 2:
    FUN_0056eee0(param_2,0x151,0x158,0x15f,0x168,0x169);
    return;
  case 3:
    FUN_0056eee0(param_2,0x152,0x159,0x160,0x16a,0x16b);
    return;
  case 4:
    FUN_0056eee0(param_2,0x153,0x15a,0x161,0x16c,0x16d);
    return;
  case 5:
    FUN_0056eee0(param_2,0x154,0x15b,0x162,0x16e,0x16f);
    return;
  case 6:
    FUN_0056eee0(param_2,0x155,0x15c,0x163,0x170,0x171);
  }
  return;
}



// --------------------------------------------
// MAI_Display__GAL_BUT_Off   ab 0x0056f1c0   345 Byte
// Texte: MAI_Display::GAL_BUT_Off(), invalid button index in GAL menu.
// --------------------------------------------

void MAI_Display__GAL_BUT_Off(int param_1,undefined4 param_2)

{
  if ((param_1 < 0) || (6 < param_1)) {
    TERMINATION(s_MAI_Display__GAL_BUT_Off___0065b6a4,s_invalid_button_index_in_GAL_menu_0065b624);
  }
  switch(param_1) {
  case 0:
    FUN_0056f5a0(param_2,0x14f,0x156,0x15d,0x164,0x165);
    return;
  case 1:
    FUN_0056f5a0(param_2,0x150,0x157,0x15e,0x166,0x167);
    return;
  case 2:
    FUN_0056f5a0(param_2,0x151,0x158,0x15f,0x168,0x169);
    return;
  case 3:
    FUN_0056f5a0(param_2,0x152,0x159,0x160,0x16a,0x16b);
    return;
  case 4:
    FUN_0056f5a0(param_2,0x153,0x15a,0x161,0x16c,0x16d);
    return;
  case 5:
    FUN_0056f5a0(param_2,0x154,0x15b,0x162,0x16e,0x16f);
    return;
  case 6:
    FUN_0056f5a0(param_2,0x155,0x15c,0x163,0x170,0x171);
  }
  return;
}



// --------------------------------------------
// MAI_Display__LEV_BUT_SetHead   ab 0x0056f340   166 Byte
// Texte: MAI_Display::LEV_BUT_SetHead(), invalid button index in LEV menu.
// --------------------------------------------

void MAI_Display__LEV_BUT_SetHead(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = param_1;
  if ((param_1 < 0) || (6 < param_1)) {
    TERMINATION(s_MAI_Display__LEV_BUT_SetHead___0065b6c0,
                s_invalid_button_index_in_LEV_menu_0065b6e0);
  }
  switch(iVar1) {
  case 0:
    break;
  case 1:
    break;
  case 2:
    break;
  case 3:
    break;
  case 4:
    break;
  case 5:
    break;
  case 6:
  }
  param_1 = 0xffffffff;
  FUN_00560b20(param_2,&param_1);
  return;
}



// --------------------------------------------
// MAI_Display__LEV_BUT_SetName   ab 0x0056f410   168 Byte
// Texte: MAI_Display::LEV_BUT_SetName(), invalid button index in LEV menu.
// --------------------------------------------

void MAI_Display__LEV_BUT_SetName(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = param_1;
  if ((param_1 < 0) || (6 < param_1)) {
    TERMINATION(s_MAI_Display__LEV_BUT_SetName___0065b704,
                s_invalid_button_index_in_LEV_menu_0065b6e0);
  }
  switch(iVar1) {
  case 0:
    break;
  case 1:
    break;
  case 2:
    break;
  case 3:
    break;
  case 4:
    break;
  case 5:
    break;
  case 6:
  }
  param_1 = 0xffffffff;
  FUN_00560080(0,param_2,&param_1);
  return;
}



// --------------------------------------------
// MAI_Display__LEV_BUT_SetRoom   ab 0x0056f4e0   160 Byte
// Texte: MAI_Display::LEV_BUT_SetRoom(), invalid button index in LEV menu.
// --------------------------------------------

void __thiscall MAI_Display__LEV_BUT_SetRoom(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  
  iVar1 = param_2;
  if ((param_2 < 0) || (6 < param_2)) {
    TERMINATION(s_MAI_Display__LEV_BUT_SetRoom___0065b724,
                s_invalid_button_index_in_LEV_menu_0065b6e0);
  }
  switch(iVar1) {
  case 0:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x620);
    break;
  case 1:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x628);
    break;
  case 2:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x630);
    break;
  case 3:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x638);
    break;
  case 4:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x640);
    break;
  case 5:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x648);
    break;
  case 6:
    param_2 = *(int *)(*(int *)(param_1 + 4) + 0x650);
  }
  param_2 = *(undefined4 *)(param_2 + 0x344);
  FUN_00560080(0,param_3,&param_2);
  return;
}



// --------------------------------------------
// MAI_Display__LEV_BUT_On   ab 0x0056f790   345 Byte
// Texte: MAI_Display::LEV_BUT_On(), invalid button index in LEV menu.
// --------------------------------------------

void MAI_Display__LEV_BUT_On(int param_1,undefined4 param_2)

{
  if ((param_1 < 0) || (6 < param_1)) {
    TERMINATION(s_MAI_Display__LEV_BUT_On___0065b744,s_invalid_button_index_in_LEV_menu_0065b6e0);
  }
  switch(param_1) {
  case 0:
    FUN_0056eee0(param_2,0x172,0x179,0x180,0x187,0x188);
    return;
  case 1:
    FUN_0056eee0(param_2,0x173,0x17a,0x181,0x189,0x18a);
    return;
  case 2:
    FUN_0056eee0(param_2,0x174,0x17b,0x182,0x18b,0x18c);
    return;
  case 3:
    FUN_0056eee0(param_2,0x175,0x17c,0x183,0x18d,0x18e);
    return;
  case 4:
    FUN_0056eee0(param_2,0x176,0x17d,0x184,399,400);
    return;
  case 5:
    FUN_0056eee0(param_2,0x177,0x17e,0x185,0x191,0x192);
    return;
  case 6:
    FUN_0056eee0(param_2,0x178,0x17f,0x186,0x193,0x194);
  }
  return;
}



// --------------------------------------------
// MAI_Display__LEV_BUT_Off   ab 0x0056f910   345 Byte
// Texte: MAI_Display::LEV_BUT_Off(), invalid button index in LEV menu.
// --------------------------------------------

void MAI_Display__LEV_BUT_Off(int param_1,undefined4 param_2)

{
  if ((param_1 < 0) || (6 < param_1)) {
    TERMINATION(s_MAI_Display__LEV_BUT_Off___0065b760,s_invalid_button_index_in_LEV_menu_0065b6e0);
  }
  switch(param_1) {
  case 0:
    FUN_0056f5a0(param_2,0x172,0x179,0x180,0x187,0x188);
    return;
  case 1:
    FUN_0056f5a0(param_2,0x173,0x17a,0x181,0x189,0x18a);
    return;
  case 2:
    FUN_0056f5a0(param_2,0x174,0x17b,0x182,0x18b,0x18c);
    return;
  case 3:
    FUN_0056f5a0(param_2,0x175,0x17c,0x183,0x18d,0x18e);
    return;
  case 4:
    FUN_0056f5a0(param_2,0x176,0x17d,0x184,399,400);
    return;
  case 5:
    FUN_0056f5a0(param_2,0x177,0x17e,0x185,0x191,0x192);
    return;
  case 6:
    FUN_0056f5a0(param_2,0x178,0x17f,0x186,0x193,0x194);
  }
  return;
}



// --------------------------------------------
// MAI_Display__LEV_BUT_Empty   ab 0x0056fa90   345 Byte
// Texte: MAI_Display::LEV_BUT_Empty(), invalid button index in LEV menu.
// --------------------------------------------

void MAI_Display__LEV_BUT_Empty(int param_1,undefined4 param_2)

{
  if ((param_1 < 0) || (6 < param_1)) {
    TERMINATION(s_MAI_Display__LEV_BUT_Empty___0065b77c,s_invalid_button_index_in_LEV_menu_0065b6e0)
    ;
  }
  switch(param_1) {
  case 0:
    FUN_0056abc0(param_2,0x172,0x179,0x180,0x187,0x188);
    return;
  case 1:
    FUN_0056abc0(param_2,0x173,0x17a,0x181,0x189,0x18a);
    return;
  case 2:
    FUN_0056abc0(param_2,0x174,0x17b,0x182,0x18b,0x18c);
    return;
  case 3:
    FUN_0056abc0(param_2,0x175,0x17c,0x183,0x18d,0x18e);
    return;
  case 4:
    FUN_0056abc0(param_2,0x176,0x17d,0x184,399,400);
    return;
  case 5:
    FUN_0056abc0(param_2,0x177,0x17e,0x185,0x191,0x192);
    return;
  case 6:
    FUN_0056abc0(param_2,0x178,0x17f,0x186,0x193,0x194);
  }
  return;
}



