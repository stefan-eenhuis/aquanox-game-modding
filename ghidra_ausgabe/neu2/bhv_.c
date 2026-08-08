// Muster: BHV_   12 Funktionen, 8441 Byte

// --------------------------------------------
// BHV_Goto3D__Handle_3   ab 0x0054c290   741 Byte
// Texte: BHV_Goto3D::Handle(), no position node
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 __fastcall BHV_Goto3D__Handle_3(int param_1)

{
  float fVar1;
  float fVar2;
  int iVar3;
  undefined4 uVar4;
  int *piVar5;
  int iVar6;
  
  if (*(int *)(param_1 + 0x30) == 0) {
    return 0;
  }
  if (*(int *)(param_1 + 0x1c) == 0) {
    iVar3 = *(int *)(param_1 + 8);
    if ((iVar3 == 0) || (*(int *)(iVar3 + 0x3c) == 0)) {
      uVar4 = *(undefined4 *)(param_1 + 0x38);
      fVar1 = *(float *)(param_1 + 0x38);
      iVar3 = param_1 + 0x20;
    }
    else {
      uVar4 = *(undefined4 *)(param_1 + 0x38);
      fVar1 = *(float *)(param_1 + 0x38);
      iVar3 = iVar3 + 0x30;
    }
    FUN_005ea2d0(&DAT_0066d0e0,*(int *)(param_1 + 0xc) + 0x58,iVar3,fVar1 * _DAT_005f65a8,uVar4);
    iVar3 = *(int *)(param_1 + 0xc);
    fVar1 = *(float *)(param_1 + 0x20) - *(float *)(iVar3 + 0xfc);
    fVar2 = *(float *)(param_1 + 0x24) - *(float *)(iVar3 + 0x100);
    if (SQRT(fVar1 * fVar1 + fVar2 * fVar2) <=
        SQRT(*(float *)(iVar3 + 0x68) * *(float *)(iVar3 + 0x68) +
             *(float *)(iVar3 + 0x7c) * *(float *)(iVar3 + 0x7c)) * DAT_0066d0e4 +
        *(float *)(param_1 + 0x3c)) {
      *(undefined4 *)(param_1 + 0x1c) = 1;
    }
    return 1;
  }
  *(undefined4 *)(param_1 + 0x1c) = 0;
  if (*(int *)(param_1 + 0x14) == *(int *)(param_1 + 0x18)) {
    iVar3 = *(int *)(param_1 + 4);
    *(undefined4 *)(iVar3 + 0x220) = 0;
    *(undefined4 *)(iVar3 + 0x21c) = 0;
    *(undefined4 *)(iVar3 + 0x2c0) = 0;
    iVar3 = *(int *)(param_1 + 4);
    *(uint *)(iVar3 + 0x14c) = *(uint *)(iVar3 + 0x14c) | 7;
    *(uint *)(iVar3 + 0xb8) = *(uint *)(iVar3 + 0xb8) & 0xfffffff8;
    *(undefined4 *)(iVar3 + 0x150) = 0;
    *(undefined4 *)(iVar3 + 0x154) = 0;
    *(undefined4 *)(iVar3 + 0x158) = 0;
    iVar3 = *(int *)(param_1 + 4);
    *(uint *)(iVar3 + 0x2c0) = *(uint *)(iVar3 + 0x2c0) | 0x38;
    *(uint *)(iVar3 + 0x21c) = *(uint *)(iVar3 + 0x21c) & 0xffffffc7;
    *(uint *)(iVar3 + 0x220) = *(uint *)(iVar3 + 0x220) & 0xffffffc7;
    *(undefined4 *)(iVar3 + 0x2c4) = 0;
    *(undefined4 *)(iVar3 + 0x2c8) = 0;
    *(undefined4 *)(iVar3 + 0x2cc) = 0;
    iVar3 = (**(code **)(**(int **)(param_1 + 0xc) + 0x40))();
    if (iVar3 != 0) {
      iVar3 = **(int **)(param_1 + 0xc);
      uVar4 = FUN_004ac440(*(int *)(param_1 + 0x10) + 0x10,1);
      piVar5 = (int *)(**(code **)(iVar3 + 0x44))(uVar4);
      if (piVar5 != (int *)0x0) {
        (**(code **)(*piVar5 + 4))(1);
      }
    }
    return 0;
  }
  if (*(int *)(param_1 + 0x2c) == 0) {
    iVar3 = (**(code **)(**(int **)(param_1 + 0xc) + 0x40))();
    if (iVar3 != 0) {
      iVar3 = *(int *)(param_1 + 0x14);
      if (iVar3 < *(int *)(param_1 + 0x18)) {
        iVar3 = iVar3 + -1;
      }
      else {
        iVar3 = iVar3 + 1;
      }
      iVar6 = FUN_00441a50(iVar3);
      iVar3 = **(int **)(param_1 + 0xc);
      uVar4 = FUN_004ac5d0(*(int *)(param_1 + 0x10) + 0x10,iVar6 + 0x10,1);
      piVar5 = (int *)(**(code **)(iVar3 + 0x44))(uVar4);
      if (piVar5 != (int *)0x0) {
        (**(code **)(*piVar5 + 4))(1);
      }
    }
  }
  else {
    *(undefined4 *)(param_1 + 0x2c) = 0;
  }
  uVar4 = FUN_00441a50(*(undefined4 *)(param_1 + 0x14));
  iVar3 = FUN_00493f70(uVar4);
  if (iVar3 == 0) {
    TERMINATION(s_BHV_Goto3D__Handle___00658d44,s_no_position_node_00658d5c);
  }
  *(undefined4 *)(param_1 + 0x20) = *(undefined4 *)(iVar3 + 0x58);
  *(undefined4 *)(param_1 + 0x24) = *(undefined4 *)(iVar3 + 0x5c);
  *(undefined4 *)(param_1 + 0x28) = *(undefined4 *)(iVar3 + 0x60);
  iVar6 = *(int *)(param_1 + 8);
  if (iVar6 != 0) {
    *(undefined4 *)(iVar6 + 0x20) = *(undefined4 *)(iVar3 + 0x58);
    *(undefined4 *)(iVar6 + 0x24) = *(undefined4 *)(iVar3 + 0x5c);
    *(undefined4 *)(iVar6 + 0x28) = *(undefined4 *)(iVar3 + 0x60);
  }
  iVar6 = *(int *)(param_1 + 0x14);
  *(float *)(param_1 + 0x3c) = *(float *)(iVar3 + 0x70) + *(float *)(param_1 + 0x34);
  if (iVar6 < *(int *)(param_1 + 0x18)) {
    *(int *)(param_1 + 0x14) = iVar6 + 1;
    return 1;
  }
  *(int *)(param_1 + 0x14) = iVar6 + -1;
  return 1;
}



// --------------------------------------------
// BHV_Vessel_A_DipolIn__ParseIniFile   ab 0x0054d020   78 Byte
// Texte: (%s): Get "%s" in file "%s" failed, BHV_Vessel_A_DipolIn::ParseIniFile(), DES FILE ERROR, InEffect
// --------------------------------------------

void __fastcall BHV_Vessel_A_DipolIn__ParseIniFile(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_00507420(s_InEffect_00658e30,param_1 + 0xc);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_DipolIn__ParseIniFi_00658e08,s_InEffect_00658e30,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  return;
}



// --------------------------------------------
// BHV_Vessel_A_DipolOut__ParseIniFile   ab 0x0054dbf0   78 Byte
// Texte: (%s): Get "%s" in file "%s" failed, BHV_Vessel_A_DipolOut::ParseIniFile(), DES FILE ERROR, OutEffect
// --------------------------------------------

void __fastcall BHV_Vessel_A_DipolOut__ParseIniFile(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_00507420(s_OutEffect_00658ea0,param_1 + 0xc);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_DipolOut__ParseIniF_00658e78,s_OutEffect_00658ea0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  return;
}



// --------------------------------------------
// BHV_Vessel_A_Attack__ParseIniFile   ab 0x0054e470   2469 Byte
// Texte: (%s): Get "%s" in file "%s" failed, AlignAheadProb, AlignBackProb, AlignLeftProb, AlignMaxDistance, AlignMaxHeight, AlignMaxTime, AlignMinDistance, AlignMinHeight, AlignRightProb, AllStopDist, BHV_Vessel_A_Attack::ParseIniFile(), ... (+24)
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall BHV_Vessel_A_Attack__ParseIniFile(int param_1,float param_2)

{
  float *pfVar1;
  int iVar2;
  undefined4 uVar3;
  float10 fVar4;
  int iStack_c;
  float fStack_8;
  float fStack_4;
  
  iVar2 = FUN_00507800(s_NormalVelocity_006590b0,param_1 + 0x28);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_NormalVelocity_006590b0,uVar3
                        );
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_WaitingTime_00659080,param_1 + 0x110);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_WaitingTime_00659080,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  pfVar1 = (float *)(param_1 + 0x2c);
  iVar2 = FUN_00507800(s_ConeOfFire_00659074,pfVar1);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_ConeOfFire_00659074,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_AlignAheadProb_00659064,param_1 + 0x160);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_AlignAheadProb_00659064,uVar3
                        );
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_AlignLeftProb_00659054,param_1 + 0x164);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_AlignLeftProb_00659054,uVar3)
    ;
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_AlignBackProb_00659044,param_1 + 0x168);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_AlignBackProb_00659044,uVar3)
    ;
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_AlignRightProb_00659034,param_1 + 0x16c);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_AlignRightProb_00659034,uVar3
                        );
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_AlignMinHeight_00659024,param_1 + 0x170);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_AlignMinHeight_00659024,uVar3
                        );
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_AlignMaxHeight_00659014,param_1 + 0x174);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_AlignMaxHeight_00659014,uVar3
                        );
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_AlignMinDistance_00659000,param_1 + 0x178);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_AlignMinDistance_00659000,
                         uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_AlignMaxDistance_00658fec,param_1 + 0x17c);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_AlignMaxDistance_00658fec,
                         uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_AlignMaxTime_00658fdc,param_1 + 0x15c);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_AlignMaxTime_00658fdc,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_EscMeanDist_00658fd0,&fStack_8);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_EscMeanDist_00658fd0,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_EscDevDist_00658fc4,&fStack_4);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_EscDevDist_00658fc4,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_EscFactor_00658fb8,&param_2);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_EscFactor_00658fb8,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_EscRatio_00658fac,param_1 + 0x124);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_EscRatio_00658fac,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_EscStrikeTimeOut_00658f98,param_1 + 0x128);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_EscStrikeTimeOut_00658f98,
                         uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_EscMaxTimeInCone_00658f84,param_1 + 0x130);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_EscMaxTimeInCone_00658f84,
                         uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_EscBackwardDistance_00658f70,param_1 + 0x140);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_EscBackwardDistance_00658f70,
                         uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_SitMeanTime_00658f64,param_1 + 0x1cc);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_SitMeanTime_00658f64,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_SitDevTime_00658f58,param_1 + 0x1d0);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_SitDevTime_00658f58,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_WaveProb_00658f4c,param_1 + 0x30);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_WaveProb_00658f4c,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_StrafeProb_00658f40,param_1 + 0x34);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_StrafeProb_00658f40,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_StrafeTime_00658f34,param_1 + 0x1e4);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_StrafeTime_00658f34,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507420(s_StrafeInEscape_00658f24,&iStack_c);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_StrafeInEscape_00658f24,uVar3
                        );
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  *(uint *)(param_1 + 0x38) = (uint)(iStack_c == 1);
  iVar2 = FUN_00507800(s_WaveTime_00658f18,param_1 + 0x210);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_WaveTime_00658f18,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_WaveStartDist_00658f08,param_1 + 0x214);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_WaveStartDist_00658f08,uVar3)
    ;
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_AllStopDist_00658efc,param_1 + 300);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_AllStopDist_00658efc,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_CastratedMinRad_00658eec,param_1 + 0x238);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_CastratedMinRad_00658eec,
                         uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_CastratedMaxRad_00658edc,param_1 + 0x23c);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_CastratedMaxRad_00658edc,
                         uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_TorpedoMeanTime_00658ecc,param_1 + 0x148);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_TorpedoMeanTime_00658ecc,
                         uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_TorpedoDeviation_00658eb8,param_1 + 0x14c);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_TorpedoDeviation_00658eb8,
                         uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  iVar2 = FUN_00507800(s_Defensivity_00658eac,(float *)(param_1 + 0x118));
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_Attack__ParseIniFil_0065908c,s_Defensivity_00658eac,uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  fVar4 = (float10)FUN_005ab120();
  *(float *)(param_1 + 0x118) = (float)((float10)_DAT_005f3350 - fVar4);
  *(float *)(param_1 + 0x11c) = param_2 * fStack_8;
  *(float *)(param_1 + 0x120) = param_2 * fStack_4;
  fVar4 = (float10)fcos((float10)*pfVar1 * (float10)_DAT_005f409c);
  *pfVar1 = (float)fVar4;
  return;
}



// --------------------------------------------
// BHV_Vessel_A_EscapeTo__ReadDataFrom   ab 0x00555980   499 Byte
// Texte: (%s): Get "%s" in file "%s" failed, BHV_Vessel_A_EscapeTo::ReadDataFrom(), DES FILE ERROR, EscDevDist, EscFactor, EscImpact, EscMeanDist, EscRatio, EscStrikeTimeOut, EscVelocity
// --------------------------------------------

void __fastcall BHV_Vessel_A_EscapeTo__ReadDataFrom(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_00507800(s_EscVelocity_00659620,param_1 + 0x74);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_EscapeTo__ReadDataF_006595f8,s_EscVelocity_00659620,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_EscMeanDist_00658fd0,param_1 + 0x68);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_EscapeTo__ReadDataF_006595f8,s_EscMeanDist_00658fd0,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_EscDevDist_00658fc4,param_1 + 0x6c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_EscapeTo__ReadDataF_006595f8,s_EscDevDist_00658fc4,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_EscFactor_00658fb8,param_1 + 0x7c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_EscapeTo__ReadDataF_006595f8,s_EscFactor_00658fb8,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_EscRatio_00658fac,param_1 + 0x78);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_EscapeTo__ReadDataF_006595f8,s_EscRatio_00658fac,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_EscStrikeTimeOut_00658f98,param_1 + 0x80);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_EscapeTo__ReadDataF_006595f8,s_EscStrikeTimeOut_00658f98,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_EscImpact_006595ec,param_1 + 0x70);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vessel_A_EscapeTo__ReadDataF_006595f8,s_EscImpact_006595ec,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  return;
}



// --------------------------------------------
// BHV_Goto3D__Handle_2   ab 0x00557140   573 Byte
// Texte: BHV_Goto3D::Handle(), no position node
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 __fastcall BHV_Goto3D__Handle_2(int param_1)

{
  uint uVar1;
  float fVar2;
  float fVar3;
  int iVar4;
  undefined4 uVar5;
  int *piVar6;
  int iVar7;
  
  if (*(int *)(param_1 + 0x30) == 0) {
    return 0;
  }
  if (*(int *)(param_1 + 0x1c) == 0) {
    if (*(int *)(*(int *)(param_1 + 8) + 0x3c) == 0) {
      uVar5 = *(undefined4 *)(param_1 + 0x38);
      fVar2 = *(float *)(param_1 + 0x38);
      iVar4 = param_1 + 0x20;
    }
    else {
      uVar5 = *(undefined4 *)(param_1 + 0x38);
      fVar2 = *(float *)(param_1 + 0x38);
      iVar4 = *(int *)(param_1 + 8) + 0x30;
    }
    FUN_005eb430(&DAT_0066d0e0,*(int *)(param_1 + 0xc) + 0x58,iVar4,fVar2 * _DAT_005f3454,uVar5);
    iVar4 = *(int *)(param_1 + 0xc);
    fVar2 = *(float *)(param_1 + 0x20) - *(float *)(iVar4 + 0xfc);
    fVar3 = *(float *)(param_1 + 0x24) - *(float *)(iVar4 + 0x100);
    if (SQRT(fVar2 * fVar2 + fVar3 * fVar3) <=
        SQRT(*(float *)(iVar4 + 0x7c) * *(float *)(iVar4 + 0x7c) +
             *(float *)(iVar4 + 0x68) * *(float *)(iVar4 + 0x68)) * DAT_0066d0e4 +
        *(float *)(param_1 + 0x3c)) {
      *(undefined4 *)(param_1 + 0x1c) = 1;
    }
    return 1;
  }
  *(undefined4 *)(param_1 + 0x1c) = 0;
  if (*(int *)(param_1 + 0x14) == *(int *)(param_1 + 0x18)) {
    iVar4 = (**(code **)(**(int **)(param_1 + 0xc) + 0x40))();
    if (iVar4 != 0) {
      iVar4 = **(int **)(param_1 + 0xc);
      uVar5 = FUN_004b1460(*(int *)(param_1 + 0x10) + 0x10,1);
      piVar6 = (int *)(**(code **)(iVar4 + 0x44))(uVar5);
      if (piVar6 != (int *)0x0) {
        (**(code **)(*piVar6 + 4))(1);
      }
    }
    return 0;
  }
  if (*(int *)(param_1 + 0x2c) == 0) {
    iVar4 = (**(code **)(**(int **)(param_1 + 0xc) + 0x40))();
    if (iVar4 != 0) {
      iVar4 = *(int *)(param_1 + 0x14);
      if (iVar4 < *(int *)(param_1 + 0x18)) {
        iVar4 = iVar4 + -1;
      }
      else {
        iVar4 = iVar4 + 1;
      }
      iVar7 = FUN_00441a50(iVar4);
      iVar4 = **(int **)(param_1 + 0xc);
      uVar5 = FUN_004b15f0(*(int *)(param_1 + 0x10) + 0x10,iVar7 + 0x10,1);
      piVar6 = (int *)(**(code **)(iVar4 + 0x44))(uVar5);
      if (piVar6 != (int *)0x0) {
        (**(code **)(*piVar6 + 4))(1);
      }
    }
  }
  else {
    *(undefined4 *)(param_1 + 0x2c) = 0;
  }
  uVar5 = FUN_00441a50(*(undefined4 *)(param_1 + 0x14));
  iVar4 = FUN_00493f70(uVar5);
  if (iVar4 == 0) {
    TERMINATION(s_BHV_Goto3D__Handle___00658d44,s_no_position_node_00658d5c);
  }
  *(undefined4 *)(param_1 + 0x20) = *(undefined4 *)(iVar4 + 0x58);
  *(undefined4 *)(param_1 + 0x24) = *(undefined4 *)(iVar4 + 0x5c);
  *(undefined4 *)(param_1 + 0x28) = *(undefined4 *)(iVar4 + 0x60);
  iVar7 = *(int *)(param_1 + 8);
  *(undefined4 *)(iVar7 + 0x20) = *(undefined4 *)(iVar4 + 0x58);
  *(undefined4 *)(iVar7 + 0x24) = *(undefined4 *)(iVar4 + 0x5c);
  *(undefined4 *)(iVar7 + 0x28) = *(undefined4 *)(iVar4 + 0x60);
  uVar1 = DAT_0066d100 + 1;
  if ((uVar1 & 1) == 0) {
    iVar7 = FUN_00500130(uVar1);
  }
  else {
    iVar7 = FUN_005001f0(uVar1);
  }
  *(undefined4 *)(*(int *)(param_1 + 8) + 0x28) = *(undefined4 *)(iVar7 + 8);
  iVar7 = *(int *)(param_1 + 0x14);
  *(float *)(param_1 + 0x3c) = *(float *)(iVar4 + 0x70) + *(float *)(param_1 + 0x34);
  if (iVar7 < *(int *)(param_1 + 0x18)) {
    *(int *)(param_1 + 0x14) = iVar7 + 1;
    return 1;
  }
  *(int *)(param_1 + 0x14) = iVar7 + -1;
  return 1;
}



// --------------------------------------------
// BHV_Vehicle_A_DipolIn__ParseIniFile   ab 0x005577f0   78 Byte
// Texte: (%s): Get "%s" in file "%s" failed, BHV_Vehicle_A_DipolIn::ParseIniFile(), DES FILE ERROR, InEffect
// --------------------------------------------

void __fastcall BHV_Vehicle_A_DipolIn__ParseIniFile(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_00507420(s_InEffect_00658e30,param_1 + 0xc);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vehicle_A_DipolIn__ParseIniF_00659a30,s_InEffect_00658e30,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  return;
}



// --------------------------------------------
// BHV_Vehicle_A_Attack__ParseIniFile   ab 0x00557bd0   874 Byte
// Texte: (%s): Get "%s" in file "%s" failed, AlignMaxDistance, AlignMaxTime, AlignMinDistance, BHV_Vehicle_A_Attack::ParseIniFile(), CastratedDevDist, CastratedMaxRad, CastratedMeanDist, CastratedMinRad, CastratedStrikeTimeOut, ConeOfFire, DES FILE ERROR, ... (+3)
// --------------------------------------------

void __fastcall BHV_Vehicle_A_Attack__ParseIniFile(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_00507800(s_NormalVelocity_006590b0,param_1 + 0x24);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vehicle_A_Attack__ParseIniFi_00659aac,s_NormalVelocity_006590b0,uVar2
                        );
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_WaitingTime_00659080,param_1 + 0xfc);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vehicle_A_Attack__ParseIniFi_00659aac,s_WaitingTime_00659080,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_ConeOfFire_00659074,param_1 + 0x104);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vehicle_A_Attack__ParseIniFi_00659aac,s_ConeOfFire_00659074,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_AlignMinDistance_00659000,param_1 + 0x118);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vehicle_A_Attack__ParseIniFi_00659aac,s_AlignMinDistance_00659000,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_AlignMaxDistance_00658fec,param_1 + 0x11c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vehicle_A_Attack__ParseIniFi_00659aac,s_AlignMaxDistance_00658fec,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_AlignMaxTime_00658fdc,param_1 + 0x120);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vehicle_A_Attack__ParseIniFi_00659aac,s_AlignMaxTime_00658fdc,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_MinimumTimeToStick_00659a98,param_1 + 0x130);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vehicle_A_Attack__ParseIniFi_00659aac,s_MinimumTimeToStick_00659a98,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_CastratedMeanDist_00659a84,param_1 + 0x140);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vehicle_A_Attack__ParseIniFi_00659aac,s_CastratedMeanDist_00659a84,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_CastratedDevDist_00659a70,param_1 + 0x144);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vehicle_A_Attack__ParseIniFi_00659aac,s_CastratedDevDist_00659a70,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_CastratedStrikeTimeOut_00659a58,param_1 + 0x148);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vehicle_A_Attack__ParseIniFi_00659aac,
                         s_CastratedStrikeTimeOut_00659a58,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_CastratedMinRad_00658eec,param_1 + 0x14c);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vehicle_A_Attack__ParseIniFi_00659aac,s_CastratedMinRad_00658eec,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = FUN_00507800(s_CastratedMaxRad_00658edc,param_1 + 0x150);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Vehicle_A_Attack__ParseIniFi_00659aac,s_CastratedMaxRad_00658edc,
                         uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  return;
}



// --------------------------------------------
// BHV_Turret_A_Patrol__ParseIniFile   ab 0x00559900   1066 Byte
// Texte: (%s): Get "%s" in file "%s" failed, BHV_Turret_A_Patrol::ParseIniFile(), DES FILE ERROR, MeanAngleAlpha, MeanAngleBeta, MeanWaitingTime, StandardDeviationAlpha, StandardDeviationBeta, StandardDeviationWaitingTime
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall BHV_Turret_A_Patrol__ParseIniFile(int param_1)

{
  float *pfVar1;
  float *pfVar2;
  float *pfVar3;
  float *pfVar4;
  float fVar5;
  int iVar6;
  undefined4 uVar7;
  
  pfVar1 = (float *)(param_1 + 0x18);
  iVar6 = FUN_00507800(s_MeanAngleBeta_00659c00,pfVar1);
  if (iVar6 == 0) {
    FUN_0052e040();
    uVar7 = FUN_0052e130();
    uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Turret_A_Patrol__ParseIniFil_00659bdc,s_MeanAngleBeta_00659c00,uVar7)
    ;
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
  }
  pfVar2 = (float *)(param_1 + 0x1c);
  iVar6 = FUN_00507800(s_StandardDeviationBeta_00659bc4,pfVar2);
  if (iVar6 == 0) {
    FUN_0052e040();
    uVar7 = FUN_0052e130();
    uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Turret_A_Patrol__ParseIniFil_00659bdc,
                         s_StandardDeviationBeta_00659bc4,uVar7);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
  }
  pfVar3 = (float *)(param_1 + 0x10);
  iVar6 = FUN_00507800(s_MeanAngleAlpha_00659bb4,pfVar3);
  if (iVar6 == 0) {
    FUN_0052e040();
    uVar7 = FUN_0052e130();
    uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Turret_A_Patrol__ParseIniFil_00659bdc,s_MeanAngleAlpha_00659bb4,uVar7
                        );
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
  }
  pfVar4 = (float *)(param_1 + 0x14);
  iVar6 = FUN_00507800(s_StandardDeviationAlpha_00659b9c,pfVar4);
  if (iVar6 == 0) {
    FUN_0052e040();
    uVar7 = FUN_0052e130();
    uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Turret_A_Patrol__ParseIniFil_00659bdc,
                         s_StandardDeviationAlpha_00659b9c,uVar7);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
  }
  iVar6 = FUN_00507800(s_MeanWaitingTime_00659b8c,param_1 + 0x20);
  if (iVar6 == 0) {
    FUN_0052e040();
    uVar7 = FUN_0052e130();
    uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Turret_A_Patrol__ParseIniFil_00659bdc,s_MeanWaitingTime_00659b8c,
                         uVar7);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
  }
  iVar6 = FUN_00507800(s_StandardDeviationWaitingTime_00659b6c,param_1 + 0x24);
  if (iVar6 == 0) {
    FUN_0052e040();
    uVar7 = FUN_0052e130();
    uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Turret_A_Patrol__ParseIniFil_00659bdc,
                         s_StandardDeviationWaitingTime_00659b6c,uVar7);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
  }
  fVar5 = *pfVar1 * _DAT_005f409c;
  if (_DAT_005f3464 <= ABS(fVar5)) {
    if (ABS(fVar5) < _DAT_005f3460) {
      if (_DAT_005f5378 <= fVar5) goto LAB_00559b1b;
      fVar5 = fVar5 + _DAT_005f3460;
    }
    else {
      fVar5 = fVar5 - (float)(int)ROUND(fVar5 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (_DAT_005f5378 <= fVar5) {
LAB_00559b1b:
        if (_DAT_005f3464 <= fVar5) {
          fVar5 = fVar5 - _DAT_005f3460;
        }
      }
      else {
        fVar5 = fVar5 + _DAT_005f3460;
      }
    }
  }
  *pfVar1 = fVar5;
  fVar5 = *pfVar2 * _DAT_005f409c;
  if (_DAT_005f3464 <= ABS(fVar5)) {
    if (ABS(fVar5) < _DAT_005f3460) {
      if (_DAT_005f5378 <= fVar5) goto LAB_00559baf;
      fVar5 = fVar5 + _DAT_005f3460;
    }
    else {
      fVar5 = fVar5 - (float)(int)ROUND(fVar5 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (_DAT_005f5378 <= fVar5) {
LAB_00559baf:
        if (_DAT_005f3464 <= fVar5) {
          fVar5 = fVar5 - _DAT_005f3460;
        }
      }
      else {
        fVar5 = fVar5 + _DAT_005f3460;
      }
    }
  }
  *pfVar2 = fVar5;
  fVar5 = *pfVar3 * _DAT_005f409c;
  if (_DAT_005f3464 <= ABS(fVar5)) {
    if (ABS(fVar5) < _DAT_005f3460) {
      if (fVar5 < _DAT_005f5378) {
        fVar5 = fVar5 + _DAT_005f3460;
        goto LAB_00559c6f;
      }
    }
    else {
      fVar5 = fVar5 - (float)(int)ROUND(fVar5 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (fVar5 < _DAT_005f5378) {
        fVar5 = fVar5 + _DAT_005f3460;
        goto LAB_00559c6f;
      }
    }
    if (_DAT_005f3464 <= fVar5) {
      fVar5 = fVar5 - _DAT_005f3460;
    }
  }
LAB_00559c6f:
  *pfVar3 = fVar5;
  fVar5 = *pfVar4 * _DAT_005f409c;
  if (_DAT_005f3464 <= ABS(fVar5)) {
    if (ABS(fVar5) < _DAT_005f3460) {
      if (fVar5 < _DAT_005f5378) {
        *pfVar4 = fVar5 + _DAT_005f3460;
        return;
      }
    }
    else {
      fVar5 = fVar5 - (float)(int)ROUND(fVar5 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (fVar5 < _DAT_005f5378) {
        *pfVar4 = fVar5 + _DAT_005f3460;
        return;
      }
    }
    if (_DAT_005f3464 <= fVar5) {
      *pfVar4 = fVar5 - _DAT_005f3460;
      return;
    }
  }
  *pfVar4 = fVar5;
  return;
}



// --------------------------------------------
// BHV_Turret_A_ComplexAttack__ParseIniFile   ab 0x0055af80   1156 Byte
// Texte: (%s): Get "%s" in file "%s" failed, BHV_Turret_A_ComplexAttack::ParseIniFile(), DES FILE ERROR, MeanAngleAlpha, MeanAngleBeta, MeanWaitingTime, MinimumTimeToStick, StandardDeviationAlpha, StandardDeviationBeta, StandardDeviationWaitingTime
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall BHV_Turret_A_ComplexAttack__ParseIniFile(int param_1)

{
  float *pfVar1;
  float *pfVar2;
  float *pfVar3;
  float *pfVar4;
  float fVar5;
  int iVar6;
  undefined4 uVar7;
  
  iVar6 = FUN_00507800(s_MinimumTimeToStick_00659a98,param_1 + 0x100);
  if (iVar6 == 0) {
    FUN_0052e040();
    uVar7 = FUN_0052e130();
    uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Turret_A_ComplexAttack__Pars_00659c4c,s_MinimumTimeToStick_00659a98,
                         uVar7);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
  }
  pfVar1 = (float *)(param_1 + 0x110);
  iVar6 = FUN_00507800(s_MeanAngleBeta_00659c00,pfVar1);
  if (iVar6 == 0) {
    FUN_0052e040();
    uVar7 = FUN_0052e130();
    uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Turret_A_ComplexAttack__Pars_00659c4c,s_MeanAngleBeta_00659c00,uVar7)
    ;
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
  }
  pfVar2 = (float *)(param_1 + 0x114);
  iVar6 = FUN_00507800(s_StandardDeviationBeta_00659bc4,pfVar2);
  if (iVar6 == 0) {
    FUN_0052e040();
    uVar7 = FUN_0052e130();
    uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Turret_A_ComplexAttack__Pars_00659c4c,
                         s_StandardDeviationBeta_00659bc4,uVar7);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
  }
  pfVar3 = (float *)(param_1 + 0x108);
  iVar6 = FUN_00507800(s_MeanAngleAlpha_00659bb4,pfVar3);
  if (iVar6 == 0) {
    FUN_0052e040();
    uVar7 = FUN_0052e130();
    uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Turret_A_ComplexAttack__Pars_00659c4c,s_MeanAngleAlpha_00659bb4,uVar7
                        );
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
  }
  pfVar4 = (float *)(param_1 + 0x10c);
  iVar6 = FUN_00507800(s_StandardDeviationAlpha_00659b9c,pfVar4);
  if (iVar6 == 0) {
    FUN_0052e040();
    uVar7 = FUN_0052e130();
    uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Turret_A_ComplexAttack__Pars_00659c4c,
                         s_StandardDeviationAlpha_00659b9c,uVar7);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
  }
  iVar6 = FUN_00507800(s_MeanWaitingTime_00659b8c,param_1 + 0x118);
  if (iVar6 == 0) {
    FUN_0052e040();
    uVar7 = FUN_0052e130();
    uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Turret_A_ComplexAttack__Pars_00659c4c,s_MeanWaitingTime_00659b8c,
                         uVar7);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
  }
  iVar6 = FUN_00507800(s_StandardDeviationWaitingTime_00659b6c,param_1 + 0x11c);
  if (iVar6 == 0) {
    FUN_0052e040();
    uVar7 = FUN_0052e130();
    uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_Turret_A_ComplexAttack__Pars_00659c4c,
                         s_StandardDeviationWaitingTime_00659b6c,uVar7);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
  }
  fVar5 = *pfVar1 * _DAT_005f409c;
  if (_DAT_005f3464 <= ABS(fVar5)) {
    if (ABS(fVar5) < _DAT_005f3460) {
      if (_DAT_005f5378 <= fVar5) goto LAB_0055b1f5;
      fVar5 = fVar5 + _DAT_005f3460;
    }
    else {
      fVar5 = fVar5 - (float)(int)ROUND(fVar5 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (_DAT_005f5378 <= fVar5) {
LAB_0055b1f5:
        if (_DAT_005f3464 <= fVar5) {
          fVar5 = fVar5 - _DAT_005f3460;
        }
      }
      else {
        fVar5 = fVar5 + _DAT_005f3460;
      }
    }
  }
  *pfVar1 = fVar5;
  fVar5 = *pfVar2 * _DAT_005f409c;
  if (_DAT_005f3464 <= ABS(fVar5)) {
    if (ABS(fVar5) < _DAT_005f3460) {
      if (_DAT_005f5378 <= fVar5) goto LAB_0055b289;
      fVar5 = fVar5 + _DAT_005f3460;
    }
    else {
      fVar5 = fVar5 - (float)(int)ROUND(fVar5 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (_DAT_005f5378 <= fVar5) {
LAB_0055b289:
        if (_DAT_005f3464 <= fVar5) {
          fVar5 = fVar5 - _DAT_005f3460;
        }
      }
      else {
        fVar5 = fVar5 + _DAT_005f3460;
      }
    }
  }
  *pfVar2 = fVar5;
  fVar5 = *pfVar3 * _DAT_005f409c;
  if (_DAT_005f3464 <= ABS(fVar5)) {
    if (ABS(fVar5) < _DAT_005f3460) {
      if (fVar5 < _DAT_005f5378) {
        fVar5 = fVar5 + _DAT_005f3460;
        goto LAB_0055b349;
      }
    }
    else {
      fVar5 = fVar5 - (float)(int)ROUND(fVar5 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (fVar5 < _DAT_005f5378) {
        fVar5 = fVar5 + _DAT_005f3460;
        goto LAB_0055b349;
      }
    }
    if (_DAT_005f3464 <= fVar5) {
      fVar5 = fVar5 - _DAT_005f3460;
    }
  }
LAB_0055b349:
  *pfVar3 = fVar5;
  fVar5 = *pfVar4 * _DAT_005f409c;
  if (_DAT_005f3464 <= ABS(fVar5)) {
    if (ABS(fVar5) < _DAT_005f3460) {
      if (fVar5 < _DAT_005f5378) {
        *pfVar4 = fVar5 + _DAT_005f3460;
        return;
      }
    }
    else {
      fVar5 = fVar5 - (float)(int)ROUND(fVar5 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (fVar5 < _DAT_005f5378) {
        *pfVar4 = fVar5 + _DAT_005f3460;
        return;
      }
    }
    if (_DAT_005f3464 <= fVar5) {
      *pfVar4 = fVar5 - _DAT_005f3460;
      return;
    }
  }
  *pfVar4 = fVar5;
  return;
}



// --------------------------------------------
// BHV_PhysicalCharacter_A_Attack__ParseIniFile   ab 0x0055b950   173 Byte
// Texte: (%s): Get "%s" in file "%s" failed, BHV_PhysicalCharacter_A_Attack::ParseIniFile(), DES FILE ERROR, MaximumDistance, MinimumDistance
// --------------------------------------------

void __fastcall BHV_PhysicalCharacter_A_Attack__ParseIniFile(int param_1)

{
  float *pfVar1;
  int iVar2;
  undefined4 uVar3;
  float *pfVar4;
  
  pfVar1 = (float *)(param_1 + 0x20);
  iVar2 = FUN_00507800(s_MinimumDistance_00659cb8,pfVar1);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_PhysicalCharacter_A_Attack___00659c88,s_MinimumDistance_00659cb8,
                         uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  pfVar4 = (float *)(param_1 + 0x24);
  iVar2 = FUN_00507800(s_MaximumDistance_00659c78,pfVar4);
  if (iVar2 == 0) {
    FUN_0052e040();
    uVar3 = FUN_0052e130();
    uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_BHV_PhysicalCharacter_A_Attack___00659c88,s_MaximumDistance_00659c78,
                         uVar3);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
  }
  *pfVar1 = *pfVar1 * *pfVar1;
  *pfVar4 = *pfVar4 * *pfVar4;
  return;
}



// --------------------------------------------
// BHV_Goto3D__Handle   ab 0x0055caf0   656 Byte
// Texte: BHV_Goto3D::Handle(), no position node
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 __fastcall BHV_Goto3D__Handle(int param_1)

{
  float *pfVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  int iVar5;
  undefined4 uVar6;
  int *piVar7;
  int iVar8;
  
  if (*(int *)(param_1 + 0x30) == 0) {
    FUN_005d25e0();
    return 0;
  }
  if (*(int *)(param_1 + 0x1c) == 0) {
    pfVar1 = (float *)(param_1 + 0x20);
    if (*(int *)(param_1 + 0xc) == 0) {
      FUN_005ebfe0(&DAT_0066d0e0,*(int *)(param_1 + 8) + 0x58,pfVar1,*(undefined4 *)(param_1 + 0x34)
                  );
    }
    else {
      FUN_005ec050(&DAT_0066d0e0,*(int *)(param_1 + 8) + 0x58,pfVar1,*(undefined4 *)(param_1 + 0x34)
                  );
    }
    iVar5 = *(int *)(param_1 + 8);
    fVar2 = *pfVar1 - *(float *)(iVar5 + 0xfc);
    fVar4 = *(float *)(param_1 + 0x24) - *(float *)(iVar5 + 0x100);
    fVar3 = *(float *)(param_1 + 0x28) - *(float *)(iVar5 + 0x104);
    if (SQRT(fVar2 * fVar2 + fVar4 * fVar4 + fVar3 * fVar3) <=
        SQRT(*(float *)(iVar5 + 0x68) * *(float *)(iVar5 + 0x68) +
             *(float *)(iVar5 + 0x7c) * *(float *)(iVar5 + 0x7c) +
             *(float *)(iVar5 + 0x90) * *(float *)(iVar5 + 0x90)) * DAT_0066d0e4 + _DAT_005f43c4) {
      *(undefined4 *)(param_1 + 0x1c) = 1;
    }
    return 1;
  }
  *(undefined4 *)(param_1 + 0x1c) = 0;
  if (*(int *)(param_1 + 0x14) == *(int *)(param_1 + 0x18)) {
    iVar5 = (**(code **)(**(int **)(param_1 + 8) + 0x40))();
    if (iVar5 != 0) {
      iVar5 = **(int **)(param_1 + 8);
      uVar6 = FUN_004b8c10(*(int *)(param_1 + 0x10) + 0x10,1);
      piVar7 = (int *)(**(code **)(iVar5 + 0x44))(uVar6);
      if (piVar7 != (int *)0x0) {
        (**(code **)(*piVar7 + 4))(1);
      }
    }
    FUN_005d25e0();
    iVar5 = *(int *)(param_1 + 4);
    *(undefined4 *)(iVar5 + 0x220) = 0;
    *(undefined4 *)(iVar5 + 0x21c) = 0;
    *(undefined4 *)(iVar5 + 0x2c0) = 0;
    iVar5 = *(int *)(param_1 + 4);
    *(uint *)(iVar5 + 0x14c) = *(uint *)(iVar5 + 0x14c) | 7;
    *(uint *)(iVar5 + 0xb8) = *(uint *)(iVar5 + 0xb8) & 0xfffffff8;
    *(undefined4 *)(iVar5 + 0x150) = 0;
    *(undefined4 *)(iVar5 + 0x154) = 0;
    *(undefined4 *)(iVar5 + 0x158) = 0;
    return 0;
  }
  if (*(int *)(param_1 + 0x2c) == 0) {
    iVar5 = (**(code **)(**(int **)(param_1 + 8) + 0x40))();
    if (iVar5 != 0) {
      iVar5 = *(int *)(param_1 + 0x14);
      if (iVar5 < *(int *)(param_1 + 0x18)) {
        iVar5 = iVar5 + -1;
      }
      else {
        iVar5 = iVar5 + 1;
      }
      iVar8 = FUN_00441a50(iVar5);
      iVar5 = **(int **)(param_1 + 8);
      uVar6 = FUN_004b8da0(*(int *)(param_1 + 0x10) + 0x10,iVar8 + 0x10,1);
      piVar7 = (int *)(**(code **)(iVar5 + 0x44))(uVar6);
      if (piVar7 != (int *)0x0) {
        (**(code **)(*piVar7 + 4))(1);
      }
    }
  }
  else {
    *(undefined4 *)(param_1 + 0x2c) = 0;
  }
  uVar6 = FUN_00441a50(*(undefined4 *)(param_1 + 0x14));
  iVar5 = FUN_00493f70(uVar6);
  if (iVar5 == 0) {
    TERMINATION(s_BHV_Goto3D__Handle___00658d44,s_no_position_node_00658d5c);
  }
  *(undefined4 *)(param_1 + 0x20) = *(undefined4 *)(iVar5 + 0x58);
  *(undefined4 *)(param_1 + 0x24) = *(undefined4 *)(iVar5 + 0x5c);
  iVar8 = *(int *)(param_1 + 0x14);
  *(undefined4 *)(param_1 + 0x28) = *(undefined4 *)(iVar5 + 0x60);
  if (iVar8 < *(int *)(param_1 + 0x18)) {
    *(int *)(param_1 + 0x14) = iVar8 + 1;
    return 1;
  }
  *(int *)(param_1 + 0x14) = iVar8 + -1;
  return 1;
}



