// Muster: REB_Mesh   3 Funktionen, 2466 Byte

// --------------------------------------------
// REB_Mesh__Reconstruct_2   ab 0x00524af0   1099 Byte
// Texte: REB_Mesh::Reconstruct(), SITO_DISPLAY is NULL, meshbuffer with index > U16_MAX detected
// --------------------------------------------

void __thiscall REB_Mesh__Reconstruct_2(undefined4 *param_1,undefined4 *param_2)

{
  int *piVar1;
  undefined4 *puVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined4 *puVar7;
  int iVar8;
  undefined4 *puVar9;
  int *piVar10;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  int *piStack_14;
  int *local_10;
  int iStack_c;
  int iStack_8;
  int iStack_4;
  
  if (DAT_0066d188 == 0) {
    TERMINATION(s_REB_Mesh__Reconstruct___0063c7d4,s_SITO_DISPLAY_is_NULL_0063c7ec);
  }
  local_10 = param_1 + 9;
  if (*local_10 != 0) {
    DSP_Display__VertexBuffer_Destroy(*local_10);
  }
  piStack_14 = param_1 + 0xc;
  if (*piStack_14 != 0) {
    DSP_Display__IndexBuffer_Destroy(*piStack_14);
  }
  iVar8 = 0;
  if (0 < (int)param_2[8]) {
    iVar6 = 0;
    do {
      if (0xffff < *(int *)(iVar6 + 0x24 + param_2[6]) * 3) {
        TERMINATION(s_REB_Mesh__Reconstruct___0063c7d4,s_meshbuffer_with_index_>_U16_MAX_d_0063c7a8)
        ;
      }
      iVar8 = iVar8 + 1;
      iVar6 = iVar6 + 0xe4;
    } while (iVar8 < (int)param_2[8]);
  }
  iVar8 = param_1[7];
  puVar2 = param_2;
  puVar7 = param_1;
  for (iVar6 = 6; iVar6 != 0; iVar6 = iVar6 + -1) {
    *puVar7 = *puVar2;
    puVar2 = puVar2 + 1;
    puVar7 = puVar7 + 1;
  }
  if (iVar8 != param_2[8]) {
    operator_delete(param_1[6]);
    param_1[7] = param_2[8];
    iVar8 = param_2[8];
    iStack_4 = operator_new(iVar8 * 0xe0);
    if (iStack_4 == 0) {
      iVar6 = 0;
    }
    else {
      iVar6 = iStack_4;
      if (-1 < iVar8 + -1) {
        puVar2 = (undefined4 *)(iStack_4 + 0xd8);
        do {
          FUN_0040f380();
          FUN_0040f380();
          puVar2[-0xe] = 0;
          puVar2[-0xd] = 0;
          puVar2[-0xc] = 0;
          puVar2[-2] = 0;
          puVar2[-3] = 0;
          puVar2[-4] = 0;
          puVar2[1] = 0;
          *puVar2 = 0;
          puVar2[-1] = 0;
          puVar2[-10] = 0;
          puVar2 = puVar2 + 0x38;
          iVar8 = iVar8 + -1;
          iVar6 = iStack_4;
        } while (iVar8 != 0);
      }
    }
    param_1[6] = iVar6;
  }
  piVar10 = local_10;
  iVar8 = param_2[8];
  iVar6 = 0;
  if (0 < iVar8) {
    piVar1 = (int *)(param_2[6] + 0x18);
    do {
      iVar6 = iVar6 + *piVar1;
      piVar1 = piVar1 + 0x39;
      iVar8 = iVar8 + -1;
    } while (iVar8 != 0);
  }
  DSP_Display__VertexBuffer_Create(local_10,0,iVar6);
  piVar1 = piStack_14;
  iVar8 = param_2[8];
  iVar6 = 0;
  if (0 < iVar8) {
    piVar3 = (int *)(param_2[6] + 0x24);
    do {
      iVar6 = iVar6 + *piVar3;
      piVar3 = piVar3 + 0x39;
      iVar8 = iVar8 + -1;
    } while (iVar8 != 0);
  }
  DSP_Display__IndexBuffer_Create(piStack_14,0,iVar6 * 3);
  iVar8 = param_2[8];
  iVar6 = 0;
  if (0 < iVar8) {
    piVar3 = (int *)(param_2[6] + 0x18);
    do {
      iVar6 = iVar6 + *piVar3;
      piVar3 = piVar3 + 0x39;
      iVar8 = iVar8 + -1;
    } while (iVar8 != 0);
  }
  DSP_Display__VertexBuffer_Lock(*piVar10,0,&iStack_24,0,iVar6);
  iVar8 = param_2[8];
  iVar6 = 0;
  if (0 < iVar8) {
    piVar3 = (int *)(param_2[6] + 0x24);
    do {
      iVar6 = iVar6 + *piVar3;
      piVar3 = piVar3 + 0x39;
      iVar8 = iVar8 + -1;
    } while (iVar8 != 0);
  }
  DSP_Display__IndexBuffer_Lock(*piVar1,0,&iStack_18,0,iVar6 * 3);
  puVar2 = (undefined4 *)param_2[6];
  iVar8 = 0;
  iStack_4 = 0;
  iStack_8 = 0;
  iStack_1c = 0;
  if (0 < (int)param_2[8]) {
    iStack_20 = 0;
    iVar6 = 0;
    do {
      *(int *)(iVar6 + 0xac + param_1[6]) = *local_10;
      *(int *)(iVar6 + 0xbc + param_1[6]) = *piStack_14;
      puVar7 = puVar2 + 0xc;
      puVar9 = (undefined4 *)(iVar6 + param_1[6]);
      for (iVar4 = 0x2b; iVar4 != 0; iVar4 = iVar4 + -1) {
        *puVar9 = *puVar7;
        puVar7 = puVar7 + 1;
        puVar9 = puVar9 + 1;
      }
      puVar7 = puVar2;
      puVar9 = (undefined4 *)(iVar6 + 200 + param_1[6]);
      for (iVar4 = 6; iVar4 != 0; iVar4 = iVar4 + -1) {
        *puVar9 = *puVar7;
        puVar7 = puVar7 + 1;
        puVar9 = puVar9 + 1;
      }
      *(int *)(iVar6 + 0xb4 + param_1[6]) = iStack_1c;
      *(undefined4 *)(iVar6 + 0xb8 + param_1[6]) = puVar2[6];
      iStack_c = 0;
      if (0 < (int)puVar2[6]) {
        iVar4 = iStack_1c * 0x28;
        iVar5 = 0;
        do {
          *(undefined4 *)(iVar4 + iStack_24) = *(undefined4 *)(iVar5 + puVar2[8]);
          *(undefined4 *)(iVar4 + 4 + iStack_24) = *(undefined4 *)(iVar5 + 4 + puVar2[8]);
          *(undefined4 *)(iVar4 + 8 + iStack_24) = *(undefined4 *)(iVar5 + 8 + puVar2[8]);
          *(undefined4 *)(iVar4 + 0xc + iStack_24) = *(undefined4 *)(iVar5 + 0xc + puVar2[8]);
          *(undefined4 *)(iVar4 + 0x10 + iStack_24) = *(undefined4 *)(iVar5 + 0x10 + puVar2[8]);
          *(undefined4 *)(iVar4 + 0x14 + iStack_24) = *(undefined4 *)(iVar5 + 0x14 + puVar2[8]);
          *(undefined4 *)(iVar4 + 0x18 + iStack_24) = *(undefined4 *)(iVar5 + 0x18 + puVar2[8]);
          *(undefined4 *)(iVar4 + 0x1c + iStack_24) = *(undefined4 *)(iVar5 + 0x1c + puVar2[8]);
          *(undefined4 *)(iVar4 + 0x20 + iStack_24) = *(undefined4 *)(iVar5 + 0x20 + puVar2[8]);
          *(undefined4 *)(iVar4 + 0x24 + iStack_24) = *(undefined4 *)(iVar5 + 0x24 + puVar2[8]);
          iStack_c = iStack_c + 1;
          iVar5 = iVar5 + 0x28;
          iStack_1c = iStack_1c + 1;
          iVar4 = iVar4 + 0x28;
          iVar8 = iStack_8;
        } while (iStack_c < (int)puVar2[6]);
      }
      *(int *)(iVar6 + 0xc0 + param_1[6]) = iVar8;
      *(int *)(iVar6 + 0xc4 + param_1[6]) = *(int *)(param_2[6] + 0x24 + iStack_20) * 3;
      iVar4 = 0;
      if (0 < *(int *)(param_2[6] + 0x24 + iStack_20)) {
        do {
          *(short *)(iStack_18 + iVar8 * 2) =
               *(short *)(iVar6 + 0xb4 + param_1[6]) + *(short *)(puVar2[0xb] + iVar4 * 8);
          *(short *)(iStack_18 + 2 + iVar8 * 2) =
               *(short *)(iVar6 + 0xb4 + param_1[6]) + *(short *)(puVar2[0xb] + 2 + iVar4 * 8);
          *(short *)(iStack_18 + (iVar8 + 2) * 2) =
               *(short *)(iVar6 + 0xb4 + param_1[6]) + *(short *)(puVar2[0xb] + 4 + iVar4 * 8);
          iVar8 = iVar8 + 3;
          iVar4 = iVar4 + 1;
          iStack_8 = iVar8;
        } while (iVar4 < *(int *)(param_2[6] + 0x24 + iStack_20));
      }
      iStack_20 = iStack_20 + 0xe4;
      iStack_4 = iStack_4 + 1;
      iVar6 = iVar6 + 0xe0;
      puVar2 = puVar2 + 0x39;
      piVar1 = piStack_14;
      piVar10 = local_10;
    } while (iStack_4 < (int)param_2[8]);
  }
  DSP_Display__IndexBuffer_Unlock(*piVar1);
  DSP_Display__VertexBuffer_Lock_2(*piVar10);
  return;
}



// --------------------------------------------
// REB_Mesh__Reconstruct_3   ab 0x00524f40   941 Byte
// Texte: REB_Mesh::Reconstruct(), REB_Mesh::Reconstruct(VEC_MeshBuffer*), SITO_DISPLAY is NULL, the meshbuffer has more than u16 indices
// --------------------------------------------

void __thiscall REB_Mesh__Reconstruct_3(undefined4 *param_1,undefined4 *param_2)

{
  float fVar1;
  float *pfVar2;
  float fVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  int iVar7;
  undefined4 *puVar8;
  undefined4 *puVar9;
  int iStack_10;
  int iStack_c;
  int *piStack_8;
  int *local_4;
  
  if (DAT_0066d188 == 0) {
    TERMINATION(s_REB_Mesh__Reconstruct___0063c7d4,s_SITO_DISPLAY_is_NULL_0063c7ec);
  }
  local_4 = param_1 + 9;
  if (*local_4 != 0) {
    DSP_Display__VertexBuffer_Destroy(*local_4);
  }
  piStack_8 = param_1 + 0xc;
  if (*piStack_8 != 0) {
    DSP_Display__IndexBuffer_Destroy(*piStack_8);
  }
  iVar6 = param_1[7];
  puVar8 = param_2;
  puVar9 = param_1;
  for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
    *puVar9 = *puVar8;
    puVar8 = puVar8 + 1;
    puVar9 = puVar9 + 1;
  }
  if (iVar6 != 1) {
    operator_delete(param_1[6]);
    param_1[7] = 1;
    iVar6 = operator_new(0xe0);
    if (iVar6 == 0) {
      param_1[6] = 0;
    }
    else {
      FUN_0040f380();
      FUN_0040f380();
      *(undefined4 *)(iVar6 + 0xa0) = 0;
      *(undefined4 *)(iVar6 + 0xa4) = 0;
      *(undefined4 *)(iVar6 + 0xa8) = 0;
      *(undefined4 *)(iVar6 + 0xd0) = 0;
      *(undefined4 *)(iVar6 + 0xcc) = 0;
      *(undefined4 *)(iVar6 + 200) = 0;
      *(undefined4 *)(iVar6 + 0xdc) = 0;
      *(undefined4 *)(iVar6 + 0xd8) = 0;
      *(undefined4 *)(iVar6 + 0xd4) = 0;
      *(undefined4 *)(iVar6 + 0xb0) = 0;
      param_1[6] = iVar6;
    }
  }
  if (0xffff < param_2[9] * 3) {
    TERMINATION(s_REB_Mesh__Reconstruct_VEC_MeshBu_0063c804,
                s_the_meshbuffer_has_more_than_u16_0063c82c);
  }
  piVar5 = local_4;
  DSP_Display__VertexBuffer_Create(local_4,0,param_2[6]);
  piVar4 = piStack_8;
  DSP_Display__IndexBuffer_Create(piStack_8,0,param_2[9] * 3);
  DSP_Display__VertexBuffer_Lock(*piVar5,0,&iStack_10,0,param_2[6]);
  DSP_Display__IndexBuffer_Lock(*piVar4,0,&iStack_c,0,param_2[9] * 3);
  *(int *)(param_1[6] + 0xac) = *piVar5;
  *(int *)(param_1[6] + 0xbc) = *piVar4;
  puVar8 = param_2 + 0xc;
  puVar9 = (undefined4 *)param_1[6];
  for (iVar6 = 0x2b; iVar6 != 0; iVar6 = iVar6 + -1) {
    *puVar9 = *puVar8;
    puVar8 = puVar8 + 1;
    puVar9 = puVar9 + 1;
  }
  iVar7 = 0;
  *(undefined4 *)(param_1[6] + 0xb4) = 0;
  *(undefined4 *)(param_1[6] + 0xb8) = param_2[6];
  pfVar2 = (float *)param_2[8];
  fVar3 = *pfVar2;
  iVar6 = param_1[6];
  fVar1 = *pfVar2;
  if (fVar1 <= fVar3) {
    *(float *)(iVar6 + 200) = fVar1;
    *(float *)(iVar6 + 0xd4) = fVar3;
  }
  else {
    *(float *)(iVar6 + 200) = fVar3;
    *(float *)(iVar6 + 0xd4) = fVar1;
  }
  fVar3 = pfVar2[1];
  fVar1 = pfVar2[1];
  if (fVar1 <= fVar3) {
    *(float *)(iVar6 + 0xcc) = fVar1;
    *(float *)(iVar6 + 0xd8) = fVar3;
  }
  else {
    *(float *)(iVar6 + 0xcc) = fVar3;
    *(float *)(iVar6 + 0xd8) = fVar1;
  }
  fVar1 = pfVar2[2];
  fVar3 = pfVar2[2];
  if (fVar1 <= fVar3) {
    *(float *)(iVar6 + 0xd0) = fVar1;
    *(float *)(iVar6 + 0xdc) = fVar3;
  }
  else {
    *(float *)(iVar6 + 0xd0) = fVar3;
    *(float *)(iVar6 + 0xdc) = fVar1;
  }
  iVar6 = 0;
  if (0 < (int)param_2[6]) {
    do {
      *(undefined4 *)(iVar7 + iStack_10) = *(undefined4 *)(iVar7 + param_2[8]);
      *(undefined4 *)(iVar7 + 4 + iStack_10) = *(undefined4 *)(iVar7 + 4 + param_2[8]);
      *(undefined4 *)(iVar7 + 8 + iStack_10) = *(undefined4 *)(iVar7 + 8 + param_2[8]);
      *(undefined4 *)(iVar7 + 0xc + iStack_10) = *(undefined4 *)(iVar7 + 0xc + param_2[8]);
      *(undefined4 *)(iVar7 + 0x10 + iStack_10) = *(undefined4 *)(iVar7 + 0x10 + param_2[8]);
      *(undefined4 *)(iVar7 + 0x14 + iStack_10) = *(undefined4 *)(iVar7 + 0x14 + param_2[8]);
      *(undefined4 *)(iVar7 + 0x18 + iStack_10) = *(undefined4 *)(iVar7 + 0x18 + param_2[8]);
      *(undefined4 *)(iVar7 + 0x1c + iStack_10) = *(undefined4 *)(iVar7 + 0x1c + param_2[8]);
      *(undefined4 *)(iVar7 + 0x20 + iStack_10) = *(undefined4 *)(iVar7 + 0x20 + param_2[8]);
      *(undefined4 *)(iVar7 + 0x24 + iStack_10) = *(undefined4 *)(iVar7 + 0x24 + param_2[8]);
      FUN_005116b0(iVar7 + param_2[8]);
      iVar6 = iVar6 + 1;
      iVar7 = iVar7 + 0x28;
    } while (iVar6 < (int)param_2[6]);
  }
  iVar6 = 0;
  *(undefined4 *)(param_1[6] + 0xc0) = 0;
  *(int *)(param_1[6] + 0xc4) = param_2[9] * 3;
  if (0 < (int)param_2[9]) {
    iVar7 = 0;
    do {
      *(short *)(iVar7 + iStack_c) =
           *(short *)(param_2[0xb] + iVar6 * 8) + *(short *)(param_1[6] + 0xb4);
      *(short *)(iVar7 + 2 + iStack_c) =
           *(short *)(param_2[0xb] + 2 + iVar6 * 8) + *(short *)(param_1[6] + 0xb4);
      *(short *)(iVar7 + 4 + iStack_c) =
           *(short *)(param_2[0xb] + 4 + iVar6 * 8) + *(short *)(param_1[6] + 0xb4);
      iVar7 = iVar7 + 6;
      iVar6 = iVar6 + 1;
    } while (iVar6 < (int)param_2[9]);
  }
  DSP_Display__IndexBuffer_Unlock(*piStack_8);
  DSP_Display__VertexBuffer_Lock_2(*local_4);
  return;
}



// --------------------------------------------
// REB_Mesh__Reconstruct   ab 0x005252fb   426 Byte
// Texte: REB_Mesh::Reconstruct(), SITO_DISPLAY is NULL, numofindices is too big (>65535)
// --------------------------------------------

void __thiscall
REB_Mesh__Reconstruct
          (int param_1,undefined4 param_2,undefined4 param_3,int param_4,int param_5,int param_6,
          uint param_7,int param_8)

{
  int iVar1;
  int unaff_EBX;
  int *piVar2;
  bool in_ZF;
  
  if (in_ZF) {
    TERMINATION(s_REB_Mesh__Reconstruct___0063c7d4,s_SITO_DISPLAY_is_NULL_0063c7ec);
  }
  if (0xffff < param_7) {
    TERMINATION(s_REB_Mesh__Reconstruct___0063c7d4,s_numofindices_is_too_big__>65535__0063c858);
  }
  if ((param_5 != *(int *)(param_1 + 0x28)) || (param_4 != *(int *)(param_1 + 0x20))) {
    if (*(int *)(param_1 + 0x24) != unaff_EBX) {
      DSP_Display__VertexBuffer_Destroy(*(int *)(param_1 + 0x24));
    }
    DSP_Display__VertexBuffer_Create(param_1 + 0x24,param_4,param_5);
    *(int *)(param_1 + 0x28) = param_5;
    *(int *)(param_1 + 0x20) = param_4;
  }
  if ((param_7 != *(uint *)(param_1 + 0x34)) || (param_6 != *(int *)(param_1 + 0x2c))) {
    if (*(int *)(param_1 + 0x30) != unaff_EBX) {
      DSP_Display__IndexBuffer_Destroy(*(int *)(param_1 + 0x30));
    }
    DSP_Display__IndexBuffer_Create(param_1 + 0x30,param_6,param_7);
    *(uint *)(param_1 + 0x34) = param_7;
    *(int *)(param_1 + 0x2c) = param_6;
  }
  if (*(int *)(param_1 + 0x1c) != param_8) {
    operator_delete(*(undefined4 *)(param_1 + 0x18));
    iVar1 = operator_new(param_8 * 0xe0);
    if (iVar1 == unaff_EBX) {
      iVar1 = 0;
    }
    else if (unaff_EBX <= param_8 + -1) {
      piVar2 = (int *)(iVar1 + 0xd8);
      param_7 = param_8;
      do {
        FUN_0040f380();
        FUN_0040f380();
        piVar2[-0xe] = unaff_EBX;
        piVar2[-0xd] = unaff_EBX;
        piVar2[-0xc] = unaff_EBX;
        piVar2[-2] = unaff_EBX;
        piVar2[-3] = unaff_EBX;
        piVar2[-4] = unaff_EBX;
        piVar2[1] = unaff_EBX;
        *piVar2 = unaff_EBX;
        piVar2[-1] = unaff_EBX;
        piVar2[-10] = unaff_EBX;
        piVar2 = piVar2 + 0x38;
        param_7 = param_7 + -1;
      } while (param_7 != 0);
    }
    *(int *)(param_1 + 0x18) = iVar1;
    *(int *)(param_1 + 0x1c) = param_8;
  }
  if (unaff_EBX < param_8) {
    iVar1 = 0;
    do {
      *(undefined4 *)(iVar1 + 0xac + *(int *)(param_1 + 0x18)) = *(undefined4 *)(param_1 + 0x24);
      *(int *)(iVar1 + 0xb4 + *(int *)(param_1 + 0x18)) = unaff_EBX;
      *(int *)(iVar1 + 0xb8 + *(int *)(param_1 + 0x18)) = unaff_EBX;
      *(undefined4 *)(iVar1 + 0xbc + *(int *)(param_1 + 0x18)) = *(undefined4 *)(param_1 + 0x30);
      *(int *)(iVar1 + 0xc0 + *(int *)(param_1 + 0x18)) = unaff_EBX;
      *(int *)(iVar1 + 0xc4 + *(int *)(param_1 + 0x18)) = unaff_EBX;
      iVar1 = iVar1 + 0xe0;
      param_8 = param_8 + -1;
    } while (param_8 != 0);
  }
  return;
}



