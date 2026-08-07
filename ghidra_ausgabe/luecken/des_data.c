// Muster: DES_Data   6 Funktionen, 1101 Byte

// --------------------------------------------
// DES_Data__DEC_Malloc   ab 0x00507a70   275 Byte
// Texte: DES_Data::DEC_Malloc(), DES_Data::Parse_OpenSection(), buffer overflow, no buffer allocated
// --------------------------------------------

void __thiscall DES_Data__DEC_Malloc(int *param_1,undefined4 param_2)

{
  char *pcVar1;
  int iVar2;
  int iVar3;
  
  if (*param_1 == 0) {
    TERMINATION(s_DES_Data__Parse_OpenSection___0063973c,s_no_buffer_allocated_0063975c);
  }
  if (param_1[3] == 0) {
    iVar3 = param_1[2];
    param_1[2] = iVar3 + 0x19;
    if (param_1[1] <= (iVar3 + 0x19) - *param_1) {
      TERMINATION(s_DES_Data__DEC_Malloc___00639714,s_buffer_overflow_0063972c);
    }
    param_1[3] = iVar3;
    str_copy(iVar3 + 0x14,&DAT_0063970c);
    *(undefined1 *)(param_1[3] + 1) = 0;
    *(undefined1 *)param_1[3] = 5;
    *(undefined4 *)(param_1[3] + 4) = 0;
    *(undefined4 *)(param_1[3] + 8) = 0;
    *(undefined4 *)(param_1[3] + 0xc) = 0;
    *(undefined4 *)(param_1[3] + 0x10) = 0;
  }
  iVar3 = str_len(param_2);
  pcVar1 = (char *)param_1[2];
  param_1[2] = (int)(pcVar1 + iVar3 + 0x15);
  if (param_1[1] <= (int)(pcVar1 + iVar3 + 0x15) - *param_1) {
    TERMINATION(s_DES_Data__DEC_Malloc___00639714,s_buffer_overflow_0063972c);
  }
  pcVar1[1] = '\0';
  *pcVar1 = (char)iVar3 + '\x01';
  str_copy(pcVar1 + 0x14,param_2);
  pcVar1[0xc] = '\0';
  pcVar1[0xd] = '\0';
  pcVar1[0xe] = '\0';
  pcVar1[0xf] = '\0';
  pcVar1[8] = '\0';
  pcVar1[9] = '\0';
  pcVar1[10] = '\0';
  pcVar1[0xb] = '\0';
  pcVar1[0x10] = '\0';
  pcVar1[0x11] = '\0';
  pcVar1[0x12] = '\0';
  pcVar1[0x13] = '\0';
  *(int *)(pcVar1 + 4) = param_1[3];
  iVar3 = *(int *)(param_1[3] + 8);
  if (iVar3 != 0) {
    for (iVar2 = *(int *)(iVar3 + 0xc); iVar2 != 0; iVar2 = *(int *)(iVar2 + 0xc)) {
      iVar3 = iVar2;
    }
    *(char **)(iVar3 + 0xc) = pcVar1;
    param_1[3] = (int)pcVar1;
    return;
  }
  *(char **)(param_1[3] + 8) = pcVar1;
  param_1[3] = (int)pcVar1;
  return;
}



// --------------------------------------------
// DES_Data__DEC_Malloc_2   ab 0x00507ba0   152 Byte
// Texte: DES_Data::DEC_Malloc(), buffer overflow
// --------------------------------------------

void __thiscall DES_Data__DEC_Malloc_2(int *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 *puVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = str_len(param_2);
  puVar1 = (undefined1 *)param_1[2];
  param_1[2] = (int)(puVar1 + iVar3 + 0xd);
  if (param_1[1] <= (int)(puVar1 + iVar3 + 0xd) - *param_1) {
    TERMINATION(s_DES_Data__DEC_Malloc___00639714,s_buffer_overflow_0063972c);
  }
  *(undefined2 *)(puVar1 + 2) = 4;
  puVar1[1] = (char)iVar3 + '\x01';
  *puVar1 = 0;
  str_copy(puVar1 + 8,param_2);
  *(undefined4 *)(puVar1 + (byte)puVar1[1] + 8) = param_3;
  *(undefined4 *)(puVar1 + 4) = 0;
  iVar3 = *(int *)(param_1[3] + 0x10);
  if (iVar3 != 0) {
    for (iVar2 = *(int *)(iVar3 + 4); iVar2 != 0; iVar2 = *(int *)(iVar2 + 4)) {
      iVar3 = iVar2;
    }
    *(undefined1 **)(iVar3 + 4) = puVar1;
    return;
  }
  *(undefined1 **)(param_1[3] + 0x10) = puVar1;
  return;
}



// --------------------------------------------
// DES_Data__DEC_Malloc_3   ab 0x00507c40   178 Byte
// Texte: DES_Data::DEC_Malloc(), buffer overflow
// --------------------------------------------

void __thiscall DES_Data__DEC_Malloc_3(int *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 *puVar1;
  int iVar2;
  int iVar3;
  
  iVar2 = str_len(param_2);
  iVar3 = str_len(param_3);
  puVar1 = (undefined1 *)param_1[2];
  param_1[2] = (int)(puVar1 + iVar2 + 1 + iVar3 + 10);
  if (param_1[1] <= (int)(puVar1 + iVar2 + 1 + iVar3 + 10) - *param_1) {
    TERMINATION(s_DES_Data__DEC_Malloc___00639714,s_buffer_overflow_0063972c);
  }
  *(short *)(puVar1 + 2) = (short)iVar3 + 2;
  puVar1[1] = (char)(iVar2 + 1);
  *puVar1 = 2;
  str_copy(puVar1 + 8,param_2);
  str_copy(puVar1 + (byte)puVar1[1] + 8,param_3);
  *(undefined4 *)(puVar1 + 4) = 0;
  iVar2 = *(int *)(param_1[3] + 0x10);
  if (iVar2 != 0) {
    for (iVar3 = *(int *)(iVar2 + 4); iVar3 != 0; iVar3 = *(int *)(iVar3 + 4)) {
      iVar2 = iVar3;
    }
    *(undefined1 **)(iVar2 + 4) = puVar1;
    return;
  }
  *(undefined1 **)(param_1[3] + 0x10) = puVar1;
  return;
}



// --------------------------------------------
// DES_Data__DEC_Malloc_4   ab 0x00507d00   152 Byte
// Texte: DES_Data::DEC_Malloc(), buffer overflow
// --------------------------------------------

void __thiscall DES_Data__DEC_Malloc_4(int *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 *puVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = str_len(param_2);
  puVar1 = (undefined1 *)param_1[2];
  param_1[2] = (int)(puVar1 + iVar3 + 0xd);
  if (param_1[1] <= (int)(puVar1 + iVar3 + 0xd) - *param_1) {
    TERMINATION(s_DES_Data__DEC_Malloc___00639714,s_buffer_overflow_0063972c);
  }
  *(undefined2 *)(puVar1 + 2) = 4;
  puVar1[1] = (char)iVar3 + '\x01';
  *puVar1 = 1;
  str_copy(puVar1 + 8,param_2);
  *(undefined4 *)(puVar1 + (byte)puVar1[1] + 8) = param_3;
  *(undefined4 *)(puVar1 + 4) = 0;
  iVar3 = *(int *)(param_1[3] + 0x10);
  if (iVar3 != 0) {
    for (iVar2 = *(int *)(iVar3 + 4); iVar2 != 0; iVar2 = *(int *)(iVar2 + 4)) {
      iVar3 = iVar2;
    }
    *(undefined1 **)(iVar3 + 4) = puVar1;
    return;
  }
  *(undefined1 **)(param_1[3] + 0x10) = puVar1;
  return;
}



// --------------------------------------------
// DES_Data__DEC_Malloc_5   ab 0x00507da0   178 Byte
// Texte: DES_Data::DEC_Malloc(), buffer overflow
// --------------------------------------------

void __thiscall DES_Data__DEC_Malloc_5(int *param_1,undefined4 param_2,undefined4 *param_3)

{
  undefined1 *puVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = str_len(param_2);
  puVar1 = (undefined1 *)param_1[2];
  param_1[2] = (int)(puVar1 + iVar3 + 0x15);
  if (param_1[1] <= (int)(puVar1 + iVar3 + 0x15) - *param_1) {
    TERMINATION(s_DES_Data__DEC_Malloc___00639714,s_buffer_overflow_0063972c);
  }
  *(undefined2 *)(puVar1 + 2) = 0xc;
  puVar1[1] = (char)iVar3 + '\x01';
  *puVar1 = 3;
  str_copy(puVar1 + 8,param_2);
  *(undefined4 *)(puVar1 + (byte)puVar1[1] + 8) = *param_3;
  *(undefined4 *)(puVar1 + (byte)puVar1[1] + 0xc) = param_3[1];
  *(undefined4 *)(puVar1 + (byte)puVar1[1] + 0x10) = param_3[2];
  *(undefined4 *)(puVar1 + 4) = 0;
  iVar3 = *(int *)(param_1[3] + 0x10);
  if (iVar3 != 0) {
    for (iVar2 = *(int *)(iVar3 + 4); iVar2 != 0; iVar2 = *(int *)(iVar2 + 4)) {
      iVar3 = iVar2;
    }
    *(undefined1 **)(iVar3 + 4) = puVar1;
    return;
  }
  *(undefined1 **)(param_1[3] + 0x10) = puVar1;
  return;
}



// --------------------------------------------
// DES_Data__DEC_Malloc_6   ab 0x00507e60   166 Byte
// Texte: DES_Data::DEC_Malloc(), buffer overflow
// --------------------------------------------

void __thiscall DES_Data__DEC_Malloc_6(int *param_1,undefined4 param_2,undefined4 *param_3)

{
  undefined1 *puVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = str_len(param_2);
  puVar1 = (undefined1 *)param_1[2];
  param_1[2] = (int)(puVar1 + iVar3 + 0x11);
  if (param_1[1] <= (int)(puVar1 + iVar3 + 0x11) - *param_1) {
    TERMINATION(s_DES_Data__DEC_Malloc___00639714,s_buffer_overflow_0063972c);
  }
  *(undefined2 *)(puVar1 + 2) = 8;
  puVar1[1] = (char)iVar3 + '\x01';
  *puVar1 = 4;
  str_copy(puVar1 + 8,param_2);
  *(undefined4 *)(puVar1 + (byte)puVar1[1] + 8) = *param_3;
  *(undefined4 *)(puVar1 + (byte)puVar1[1] + 0xc) = param_3[1];
  *(undefined4 *)(puVar1 + 4) = 0;
  iVar3 = *(int *)(param_1[3] + 0x10);
  if (iVar3 != 0) {
    for (iVar2 = *(int *)(iVar3 + 4); iVar2 != 0; iVar2 = *(int *)(iVar2 + 4)) {
      iVar3 = iVar2;
    }
    *(undefined1 **)(iVar3 + 4) = puVar1;
    return;
  }
  *(undefined1 **)(param_1[3] + 0x10) = puVar1;
  return;
}



