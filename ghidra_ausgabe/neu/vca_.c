// Muster: VCA_   10 Funktionen, 3325 Byte

// --------------------------------------------
// VCA_Skin__LoadReferenceFrame   ab 0x004ce840   954 Byte
// Texte: AnimData, VCA_Skin::LoadReferenceFrame()
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall VCA_Skin__LoadReferenceFrame(int param_1,undefined4 param_2)

{
  char cVar1;
  undefined1 uVar2;
  byte bVar3;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  uint uVar7;
  byte *pbVar8;
  int iVar9;
  int iVar10;
  uint uVar11;
  float fStack_174;
  uint uStack_170;
  int local_16c;
  int iStack_168;
  int iStack_164;
  int iStack_160;
  undefined1 auStack_15c [16];
  undefined1 auStack_14c [16];
  undefined1 local_13c [16];
  undefined1 auStack_12c [4];
  undefined1 auStack_128 [16];
  undefined1 local_118 [280];
  
  local_16c = param_1;
  FUN_00565ce0();
  iVar4 = FUN_00506640(local_118,param_2);
  if (iVar4 == 0) {
    TERMINATION(s_Error__Unable_to_open_reference_f_00618ae8,
                s_VCA_Skin__LoadReferenceFrame___00618b34);
  }
  FUN_00507980(local_13c,s_AnimData_00618adc);
  FUN_00507420(&DAT_00618ad8,&iStack_164);
  FUN_00507420(&DAT_00618ad0,auStack_12c);
  iVar4 = 0;
  *(undefined4 *)(param_1 + 8) = 0xffffffff;
  if (0 < iStack_164) {
    do {
      FUN_00507140(auStack_128,&DAT_00613d64,iVar4);
      FUN_00507140(auStack_14c,&DAT_00618acc,0);
      iVar10 = 0;
      do {
        iVar5 = FUN_00507140(auStack_15c,&DAT_00618ac8,iVar10);
        if (iVar5 == 0) break;
        FUN_00507420(&DAT_00618ac4,&iStack_160);
        if (*(int *)(param_1 + 8) < iStack_160) {
          *(int *)(param_1 + 8) = iStack_160;
        }
        iVar10 = iVar10 + 1;
      } while (iVar10 < 0x7fffffff);
      iVar4 = iVar4 + 1;
    } while (iVar4 < iStack_164);
  }
  *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  operator_delete(*(undefined4 *)(param_1 + 4));
  iVar4 = *(int *)(param_1 + 8);
  iVar10 = operator_new(iVar4 * 0x2c);
  if (iVar10 == 0) {
    iVar10 = 0;
  }
  else if (-1 < iVar4 + -1) {
    puVar6 = (undefined4 *)(iVar10 + 0x10);
    do {
      *(undefined1 *)(puVar6 + 6) = 0;
      puVar6[-2] = 0;
      puVar6[-3] = 0;
      puVar6[-4] = 0;
      puVar6[1] = 0;
      *puVar6 = 0;
      puVar6[-1] = 0;
      puVar6 = puVar6 + 0xb;
      iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
  }
  *(int *)(param_1 + 4) = iVar10;
  uStack_170 = 0;
  if (0 < iStack_164) {
    do {
      uVar7 = uStack_170;
      FUN_00507140(auStack_128,&DAT_00613d64,uStack_170);
      FUN_00507140(auStack_14c,&DAT_00618acc,0);
      iStack_168 = 0;
      iVar4 = FUN_00507140(auStack_15c,&DAT_00618ac8,0);
      while (iVar4 != 0) {
        FUN_00507420(&DAT_00618ac4,&iStack_160);
        FUN_00507800(&DAT_00618ac0,&fStack_174);
        fStack_174 = fStack_174 * _DAT_005f3394;
        cVar1 = __ftol();
        if (cVar1 != '\0') {
          iVar4 = *(int *)(param_1 + 4) + iStack_160 * 0x2c;
          uVar11 = 0;
          if (*(byte *)(iVar4 + 0x28) != 0) {
            pbVar8 = (byte *)(iVar4 + 0x18);
            do {
              if (*pbVar8 == uVar7) {
                *(char *)(iVar4 + 0x19 + uVar11 * 2) = *(char *)(iVar4 + 0x19 + uVar11 * 2) + cVar1;
                uVar7 = uStack_170;
                break;
              }
              uVar11 = uVar11 + 1;
              pbVar8 = pbVar8 + 2;
              uVar7 = uStack_170;
            } while ((int)uVar11 < (int)(uint)*(byte *)(iVar4 + 0x28));
          }
          param_1 = local_16c;
          if (uVar11 == *(byte *)(iVar4 + 0x28)) {
            if (*(byte *)(iVar4 + 0x28) == 8) {
              iVar5 = 0;
              iVar9 = 1;
              iVar10 = 0;
              pbVar8 = (byte *)(iVar4 + 0x1b);
              do {
                if (*pbVar8 < *(byte *)(iVar10 + 0x19 + iVar4)) {
                  iVar10 = iVar9 * 2;
                  iVar5 = iVar9;
                }
                iVar9 = iVar9 + 1;
                pbVar8 = pbVar8 + 2;
              } while (iVar9 < 8);
              bVar3 = __ftol();
              param_1 = local_16c;
              if (*(byte *)(iVar4 + 0x19 + iVar5 * 2) < bVar3) {
                *(char *)(iVar4 + 0x18 + iVar5 * 2) = (char)uVar7;
                uVar2 = __ftol();
                *(undefined1 *)(iVar4 + 0x19 + iVar5 * 2) = uVar2;
                param_1 = local_16c;
              }
            }
            else {
              *(char *)(iVar4 + 0x18 + uVar11 * 2) = (char)uVar7;
              uVar2 = __ftol();
              *(undefined1 *)(iVar4 + 0x19 + uVar11 * 2) = uVar2;
              *(char *)(iVar4 + 0x28) = *(char *)(iVar4 + 0x28) + '\x01';
              param_1 = local_16c;
            }
          }
        }
        iStack_168 = iStack_168 + 1;
        iVar4 = FUN_00507140(auStack_15c,&DAT_00618ac8,iStack_168);
      }
      uStack_170 = uVar7 + 1;
    } while ((int)uStack_170 < iStack_164);
  }
  iStack_168 = 0;
  if (0 < *(int *)(param_1 + 8)) {
    iVar4 = 0;
    do {
      iVar10 = *(int *)(param_1 + 4);
      fStack_174 = 0.0;
      iVar5 = 0;
      if (*(char *)(iVar4 + 0x28 + iVar10) != '\0') {
        pbVar8 = (byte *)(iVar4 + 0x19 + iVar10);
        do {
          uStack_170 = (uint)*pbVar8;
          iVar5 = iVar5 + 1;
          pbVar8 = pbVar8 + 2;
          fStack_174 = (float)uStack_170 + fStack_174;
        } while (iVar5 < (int)(uint)*(byte *)(iVar4 + 0x28 + iVar10));
      }
      iVar9 = 0;
      iVar5 = iVar4;
      if (*(char *)(iVar4 + 0x28 + iVar10) != '\0') {
        do {
          uStack_170 = (uint)*(byte *)(iVar5 + 0x19 + iVar10) * 0xff;
          uVar2 = __ftol();
          *(undefined1 *)(iVar5 + 0x19 + iVar10) = uVar2;
          iVar10 = *(int *)(local_16c + 4);
          iVar9 = iVar9 + 1;
          param_1 = local_16c;
          iVar5 = iVar5 + 2;
        } while (iVar9 < (int)(uint)*(byte *)(iVar4 + 0x28 + iVar10));
      }
      FUN_004cfec0();
      iStack_168 = iStack_168 + 1;
      iVar4 = iVar4 + 0x2c;
    } while (iStack_168 < *(int *)(param_1 + 8));
  }
  FUN_00506890();
  FUN_00506890();
  return;
}



// --------------------------------------------
// VCA_Skin__SetMesh   ab 0x004cec00   320 Byte
// Texte: Error: Load reference frame before setting mesh., Error: Vertex in animated mesh is not linked to any bone for skinning., Error: Vertex in animated mesh references negative index., VCA_Skin::SetMesh()
// --------------------------------------------

void __thiscall VCA_Skin__SetMesh(int *param_1,int param_2,int param_3)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  
  iVar1 = param_2;
  iVar6 = 0;
  if (param_1[1] == 0) {
    TERMINATION(s_Error__Load_reference_frame_befo_00618c34,s_VCA_Skin__SetMesh___00618c68);
  }
  *param_1 = param_2;
  if ((param_3 != 0) && (param_3 = 0, 0 < *(int *)(param_2 + 0x20))) {
    do {
      iVar5 = *(int *)(iVar1 + 0x18);
      iVar4 = 0;
      param_2 = 0;
      if (0 < *(int *)(iVar6 + 0x18 + iVar5)) {
        do {
          iVar5 = *(int *)(*(int *)(iVar6 + 0x20 + iVar5) + 0x24 + iVar4);
          if (iVar5 < 0) {
            TERMINATION(s_Error__Vertex_in_animated_mesh_r_00618bf8,s_VCA_Skin__SetMesh___00618c68);
          }
          if (param_1[2] <= iVar5) {
            TERMINATION(s_Error__Vertex_in_animated_mesh_r_00618b9c,s_VCA_Skin__SetMesh___00618c68);
          }
          iVar5 = iVar5 * 0x2c;
          if (*(char *)(iVar5 + 0x28 + param_1[1]) == '\0') {
            TERMINATION(s_Error__Vertex_in_animated_mesh_i_00618b54,s_VCA_Skin__SetMesh___00618c68);
          }
          puVar2 = (undefined4 *)(*(int *)(*(int *)(iVar1 + 0x18) + 0x20 + iVar6) + iVar4);
          puVar3 = (undefined4 *)(iVar5 + param_1[1]);
          *puVar3 = *puVar2;
          puVar3[1] = puVar2[1];
          puVar3[2] = puVar2[2];
          puVar2 = (undefined4 *)(*(int *)(*(int *)(iVar1 + 0x18) + 0x20 + iVar6) + 0xc + iVar4);
          puVar3 = (undefined4 *)(iVar5 + 0xc + param_1[1]);
          *puVar3 = *puVar2;
          puVar3[1] = puVar2[1];
          puVar3[2] = puVar2[2];
          iVar5 = *(int *)(iVar1 + 0x18);
          param_2 = param_2 + 1;
          iVar4 = iVar4 + 0x28;
        } while (param_2 < *(int *)(iVar6 + 0x18 + iVar5));
      }
      param_3 = param_3 + 1;
      iVar6 = iVar6 + 0xe4;
    } while (param_3 < *(int *)(iVar1 + 0x20));
  }
  return;
}



// --------------------------------------------
// VCA_Skin__ComputeAnimatedMesh   ab 0x004ced40   547 Byte
// Texte: Error: Can't access animated mesh., VCA_Skin::ComputeAnimatedMesh()
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void VCA_Skin__ComputeAnimatedMesh
               (undefined4 param_1,undefined4 param_2,float param_3,float param_4,float param_5,
               float param_6,float param_7,float param_8)

{
  uint uVar1;
  float *pfVar2;
  int *extraout_ECX;
  int iVar3;
  undefined4 *puVar4;
  undefined1 *puVar5;
  undefined4 *puVar6;
  float *pfVar7;
  float *pfVar8;
  int iVar9;
  undefined4 *puVar10;
  uint uVar11;
  float in_stack_000030a0;
  int in_stack_000030a8;
  int *in_stack_000030ac;
  
  FUN_0042a460();
  puVar5 = &stack0x000000a8;
  iVar9 = 0x100;
  do {
    FUN_004010f0(puVar5,0xc,3,FUN_00407f60);
    puVar5 = puVar5 + 0x30;
    iVar9 = iVar9 + -1;
  } while (iVar9 != 0);
  if (*extraout_ECX == 0) {
    TERMINATION(s_Error__Can_t_access_animated_mes_00618c9c,
                s_VCA_Skin__ComputeAnimatedMesh___00618c7c);
  }
  if (0 < in_stack_000030a8) {
    iVar9 = 0;
    puVar4 = (undefined4 *)&stack0x0000009c;
    param_1 = in_stack_000030a8;
    do {
      pfVar2 = (float *)FUN_0051f9c0(&stack0x0000006c,*in_stack_000030ac + 0x17c + iVar9);
      param_6 = pfVar2[9] * _DAT_005f3398;
      param_7 = pfVar2[10] * _DAT_005f3398;
      param_8 = pfVar2[0xb] * _DAT_005f3398;
      param_3 = pfVar2[6] * _DAT_005f3398;
      param_4 = pfVar2[7] * _DAT_005f3398;
      param_5 = pfVar2[8] * _DAT_005f3398;
      FUN_004f2a50(pfVar2[3] * _DAT_005f3398,pfVar2[4] * _DAT_005f3398,pfVar2[5] * _DAT_005f3398);
      FUN_004f2a50(*pfVar2 * _DAT_005f3398,pfVar2[1] * _DAT_005f3398,pfVar2[2] * _DAT_005f3398);
      FUN_004cef70(&stack0x00000024,&stack0x00000030,&param_3,&param_6);
      iVar9 = iVar9 + 0x1ac;
      param_1 = param_1 + -1;
      puVar6 = (undefined4 *)&stack0x0000003c;
      puVar10 = puVar4;
      for (iVar3 = 0xc; iVar3 != 0; iVar3 = iVar3 + -1) {
        *puVar10 = *puVar6;
        puVar6 = puVar6 + 1;
        puVar10 = puVar10 + 1;
      }
      puVar4 = puVar4 + 0xc;
    } while (param_1 != 0);
  }
  uVar11 = *(uint *)(*extraout_ECX + 0x18);
  uVar1 = uVar11 + *(int *)(*extraout_ECX + 0x20) * 0xe4;
  do {
    iVar9 = *(int *)(uVar11 + 0x18);
    pfVar2 = *(float **)(uVar11 + 0x20);
    pfVar7 = pfVar2;
    do {
      FUN_004cff10(&stack0x0000009c,pfVar7);
      pfVar8 = pfVar7 + 10;
      *pfVar7 = in_stack_000030a0 * *pfVar7;
      pfVar7[1] = in_stack_000030a0 * pfVar7[1];
      pfVar7[2] = in_stack_000030a0 * pfVar7[2];
      pfVar7 = pfVar8;
    } while (pfVar8 < pfVar2 + iVar9 * 10);
    uVar11 = uVar11 + 0xe4;
  } while (uVar11 < uVar1);
  return;
}



// --------------------------------------------
// VCA_AnimationController__ActivateAnimation   ab 0x004cf940   276 Byte
// Texte: Error: Handle out of range., Error: Handle points to no valid Animation., VCA_AnimationController::ActivateAnimation()
// --------------------------------------------

void __thiscall
VCA_AnimationController__ActivateAnimation
          (int *param_1,int param_2,int param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  
  if ((param_2 < 0) || (0x1f < param_2)) {
    TERMINATION(s_Error__Handle_out_of_range__00618d00,s_VCA_AnimationController__Activat_00618d1c);
  }
  if (param_1[param_2 + 0x41] == 0) {
    TERMINATION(s_Error__Handle_points_to_no_valid_00618cd4,
                s_VCA_AnimationController__Activat_00618d1c);
  }
  iVar2 = 0;
  piVar3 = param_1;
  if (0 < param_1[0x81]) {
    do {
      if (*piVar3 == param_2) {
        piVar3 = param_1 + iVar2;
        iVar2 = param_1[iVar2];
        while (iVar2 != -1) {
          *piVar3 = piVar3[1];
          piVar1 = piVar3 + 1;
          piVar3 = piVar3 + 1;
          iVar2 = *piVar1;
        }
        param_1[0x81] = param_1[0x81] + -1;
        break;
      }
      iVar2 = iVar2 + 1;
      piVar3 = piVar3 + 1;
    } while (iVar2 < param_1[0x81]);
  }
  *(int *)(param_1[param_2 + 0x41] + 0x14) = param_3;
  *(undefined4 *)(param_1[param_2 + 0x41] + 4) = param_5;
  *(undefined4 *)(param_1[param_2 + 0x41] + 8) = param_7;
  param_1[param_1[0x81]] = param_2;
  iVar2 = param_1[0x81];
  param_1[0x81] = iVar2 + 1;
  param_1[iVar2 + 1] = -1;
  FUN_004cfae0(param_2,param_8);
  VCA_AnimationController__SetWeightOfChannel(param_3,param_4);
  FUN_004cf2a0(*(undefined4 *)param_1[param_2 + 0x41],param_3,param_1[param_3 + 0x83],param_5,
               param_6,param_7);
  return;
}



// --------------------------------------------
// VCA_AnimationController__IsAnimationOver   ab 0x004cfc50   197 Byte
// Texte: Error: Handle out of range., Error: Handle points to no valid Animation., Error: No animation set in AnimationInfo with specified handle., Error: No bone animation found in AnimationInfo[_Handle]->Animation., VCA_AnimationController::IsAnimationOver()
// --------------------------------------------

undefined4 __thiscall
VCA_AnimationController__IsAnimationOver(int param_1,int param_2,float param_3)

{
  undefined4 *puVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  
  if ((param_2 < 0) || (0x1f < param_2)) {
    TERMINATION(s_Error__Handle_out_of_range__00618d00,s_VCA_AnimationController__IsAnima_00618dd4);
  }
  if (*(int *)(param_1 + 0x104 + param_2 * 4) != 0) {
    TERMINATION(s_Error__Handle_points_to_no_valid_00618cd4,
                s_VCA_AnimationController__IsAnima_00618dd4);
  }
  if (**(int **)(param_1 + 0x104 + param_2 * 4) != 0) {
    TERMINATION(s_Error__No_animation_set_in_Anima_00618d94,
                s_VCA_AnimationController__IsAnima_00618dd4);
  }
  puVar1 = (undefined4 *)**(int **)(param_1 + 0x104 + param_2 * 4);
  iVar2 = puVar1[1];
  iVar4 = 0;
  if (0 < iVar2) {
    piVar3 = (int *)*puVar1;
    do {
      if (*piVar3 != 0) break;
      iVar4 = iVar4 + 1;
      piVar3 = piVar3 + 1;
    } while (iVar4 < iVar2);
  }
  if (iVar4 == iVar2) {
    TERMINATION(s_Error__No_bone_animation_found_i_00618d4c,
                s_VCA_AnimationController__IsAnima_00618dd4);
  }
  puVar1 = *(undefined4 **)(param_1 + 0x104 + param_2 * 4);
  if (param_3 < *(float *)(*(int *)(*(int *)*puVar1 + iVar4 * 4) + 0x14) + (float)puVar1[1]) {
    return 0;
  }
  return 1;
}



// --------------------------------------------
// VCA_AnimationController__SetWeightOfChannel   ab 0x004cfd20   202 Byte
// Texte: Error: _Channel out of range., VCA_AnimationController::SetWeightOfChannel()
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall
VCA_AnimationController__SetWeightOfChannel(int param_1,int param_2,undefined4 param_3)

{
  float fVar1;
  float *pfVar2;
  int iVar3;
  undefined4 *puVar4;
  
  if ((3 < param_2) || (param_2 < 0)) {
    TERMINATION(s_Error___Channel_out_of_range__00618e00,s_VCA_AnimationController__SetWeig_00618e20
               );
  }
  pfVar2 = (float *)(param_1 + 0x20c);
  *(undefined4 *)(param_1 + 0x20c + param_2 * 4) = param_3;
  iVar3 = 4;
  fVar1 = _DAT_005f336c;
  do {
    fVar1 = fVar1 + *pfVar2;
    pfVar2 = pfVar2 + 1;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  if (fVar1 != _DAT_005f336c) {
    iVar3 = 4;
    pfVar2 = (float *)(param_1 + 0x20c);
    do {
      iVar3 = iVar3 + -1;
      *pfVar2 = *pfVar2 / fVar1;
      pfVar2 = pfVar2 + 1;
    } while (iVar3 != 0);
  }
  param_2 = 0;
  if (0 < *(int *)(*(int *)(param_1 + 0x100) + 4)) {
    do {
      iVar3 = 0;
      puVar4 = (undefined4 *)(param_1 + 0x20c);
      do {
        VCA_Bone__SetWeightOfBoneChannel(iVar3,*puVar4);
        iVar3 = iVar3 + 1;
        puVar4 = puVar4 + 1;
      } while (iVar3 < 4);
      param_2 = param_2 + 1;
    } while (param_2 < *(int *)(*(int *)(param_1 + 0x100) + 4));
  }
  return;
}



// --------------------------------------------
// VCA_AnimationController__RemoveAnimationFromChannel   ab 0x004cfdf0   174 Byte
// Texte: Error: _Channel out of range., VCA_AnimationController::RemoveAnimationFromChannel()
// --------------------------------------------

void __thiscall VCA_AnimationController__RemoveAnimationFromChannel(int param_1,int param_2)

{
  int *piVar1;
  int iVar2;
  
  if ((3 < param_2) || (param_2 < 0)) {
    TERMINATION(s_Error___Channel_out_of_range__00618e00,s_VCA_AnimationController__RemoveA_00618e50
               );
  }
  iVar2 = 0;
  if (0 < *(int *)(*(int *)(param_1 + 0x100) + 4)) {
    do {
      VCA_Bone__RemoveBoneAnimation(param_2);
      iVar2 = iVar2 + 1;
    } while (iVar2 < *(int *)(*(int *)(param_1 + 0x100) + 4));
  }
  iVar2 = *(int *)(param_1 + 0x204) + -1;
  if (-1 < iVar2) {
    piVar1 = (int *)(param_1 + iVar2 * 4);
    while (*(int *)(*(int *)(param_1 + 0x104 + *piVar1 * 4) + 0x14) != param_2) {
      VCA_AnimationController__SetWeightOfChannel(param_2,0);
      iVar2 = iVar2 + -1;
      piVar1 = piVar1 + -1;
      if (iVar2 < 0) {
        return;
      }
    }
    VCA_AnimationController__SetWeightOfChannel
              (param_2,*(undefined4 *)
                        (param_1 + 0x20c +
                        *(int *)(*(int *)(param_1 + 0x104 + *(int *)(param_1 + iVar2 * 4) * 4) +
                                0x14) * 4));
  }
  return;
}



// --------------------------------------------
// VCA_Bone__SetWeightOfBoneChannel_2   ab 0x004d0e60   458 Byte
// Texte: Error: _Channel out of range., Error: _Weight can't be negative., VCA_Bone::SetWeightOfBoneChannel()
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall
VCA_Bone__SetWeightOfBoneChannel_2
          (int param_1,int *param_2,int param_3,float param_4,int param_5,undefined4 param_6,
          undefined4 param_7)

{
  int iVar1;
  float fVar2;
  bool bVar3;
  float fVar4;
  
  iVar1 = param_1 + param_3 * 0x34;
  if (*(int *)(param_1 + 0x8c + param_3 * 0x34) == 0) {
    fVar2 = (float)param_2[5];
    param_2[5] = (int)fVar2;
    fVar4 = _DAT_005f3350 / fVar2;
    param_2[3] = param_5;
    param_2[4] = (int)fVar4;
    param_2[2] = (int)((float)(*param_2 + -1) / fVar2);
    fVar2 = (float)param_2[0xc];
    param_2[0xc] = (int)fVar2;
    fVar4 = _DAT_005f3350;
    param_2[10] = param_5;
    param_2[0xb] = (int)(fVar4 / fVar2);
    param_2[9] = (int)((float)(param_2[7] + -1) / fVar2);
    if (param_2[0xe] == 1) {
      FUN_004d05a0(param_6,iVar1 + 0x90);
    }
    else {
      FUN_004d03e0(param_6,iVar1 + 0x90);
    }
    *(int **)(iVar1 + 0x8c) = param_2;
    *(int *)(iVar1 + 0xb0) = param_5;
    *(undefined4 *)(iVar1 + 0xac) = param_6;
    *(undefined4 *)(iVar1 + 0xb4) = param_6;
    *(undefined4 *)(iVar1 + 0xb8) = param_7;
    if ((3 < param_3) || (param_3 < 0)) {
      TERMINATION(s_Error___Channel_out_of_range__00618e00,
                  s_VCA_Bone__SetWeightOfBoneChannel_00618eb0);
    }
    if (param_4 < _DAT_005f336c) {
      TERMINATION(s_Error___Weight_can_t_be_negative_00618e8c,
                  s_VCA_Bone__SetWeightOfBoneChannel_00618eb0);
    }
    bVar3 = param_4 != _DAT_005f336c;
    *(float *)(iVar1 + 0xbc) = param_4;
    if (bVar3) {
      *(int *)(param_1 + 0x15c) = *(int *)(param_1 + 0x15c) + 1;
      return;
    }
  }
  else {
    FUN_004d0cf0(param_6);
    *(int **)(iVar1 + 0x8c) = param_2;
    *(int *)(iVar1 + 0xb0) = param_5;
    *(undefined4 *)(iVar1 + 0xac) = param_6;
    *(undefined4 *)(iVar1 + 0xb4) = param_6;
    *(undefined4 *)(iVar1 + 0xb8) = param_7;
    if ((3 < param_3) || (param_3 < 0)) {
      TERMINATION(s_Error___Channel_out_of_range__00618e00,
                  s_VCA_Bone__SetWeightOfBoneChannel_00618eb0);
    }
    if (param_4 < _DAT_005f336c) {
      TERMINATION(s_Error___Weight_can_t_be_negative_00618e8c,
                  s_VCA_Bone__SetWeightOfBoneChannel_00618eb0);
    }
    *(float *)(iVar1 + 0xbc) = param_4;
  }
  return;
}



// --------------------------------------------
// VCA_Bone__RemoveBoneAnimation   ab 0x004d1030   105 Byte
// Texte: Error: _Channel out of range., VCA_Bone::RemoveBoneAnimation()
// --------------------------------------------

undefined4 __thiscall VCA_Bone__RemoveBoneAnimation(int param_1,int param_2)

{
  int *piVar1;
  
  if ((3 < param_2) || (param_2 < 0)) {
    TERMINATION(s_Error___Channel_out_of_range__00618e00,s_VCA_Bone__RemoveBoneAnimation___00618ed4)
    ;
  }
  piVar1 = (int *)(param_1 + 0x8c + param_2 * 0x34);
  if (*piVar1 == 0) {
    return 0;
  }
  if (*(int *)(param_1 + 0x15c) != 0) {
    *(int *)(param_1 + 0x15c) = *(int *)(param_1 + 0x15c) + -1;
  }
  piVar1[0xb] = 0;
  *piVar1 = 0;
  piVar1[9] = 0;
  piVar1[8] = 0;
  piVar1[0xc] = 0;
  return 1;
}



// --------------------------------------------
// VCA_Bone__SetWeightOfBoneChannel   ab 0x004d10a0   92 Byte
// Texte: Error: _Channel out of range., Error: _Weight can't be negative., VCA_Bone::SetWeightOfBoneChannel()
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall VCA_Bone__SetWeightOfBoneChannel(int param_1,int param_2,float param_3)

{
  if ((3 < param_2) || (param_2 < 0)) {
    TERMINATION(s_Error___Channel_out_of_range__00618e00,s_VCA_Bone__SetWeightOfBoneChannel_00618eb0
               );
  }
  if (param_3 < _DAT_005f336c) {
    TERMINATION(s_Error___Weight_can_t_be_negative_00618e8c,
                s_VCA_Bone__SetWeightOfBoneChannel_00618eb0);
  }
  *(float *)(param_1 + 0xbc + param_2 * 0x34) = param_3;
  return;
}



