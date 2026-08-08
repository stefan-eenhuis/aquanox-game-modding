// Muster: NOD_Device   4 Funktionen, 2428 Byte

// --------------------------------------------
// NOD_Device_Repair__HeartBeat   ab 0x0045c2b0   233 Byte
// Texte: NOD_Device_Repair::HeartBeat(), illegal device type
// --------------------------------------------

void __thiscall NOD_Device_Repair__HeartBeat(undefined2 *param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 *puVar3;
  undefined1 local_c [4];
  undefined1 local_8 [8];
  
  if ((param_1[4] != 0) && (param_2 != 0)) {
    switch(*param_1) {
    case 0:
      break;
    case 1:
      break;
    case 2:
      break;
    case 3:
      break;
    default:
      TERMINATION(s_NOD_Device_Repair__HeartBeat___0060fee8,s_illegal_device_type_0060ff08);
    }
    iVar1 = __ftol();
    if (iVar1 != 0) {
      puVar3 = local_c;
      *(undefined4 *)(param_1 + 2) = DAT_0066d0e0;
      uVar2 = FUN_0043e940(0xd);
      FUN_0043f2e0(local_8,uVar2);
      uVar2 = FUN_0043ec00(puVar3,iVar1);
      FUN_0043f360(&param_2,uVar2);
      FUN_0043ea40();
      FUN_0043ea40();
      FUN_0043ea40();
      FUN_0043ea40();
    }
  }
  return;
}



// --------------------------------------------
// NOD_Device_Generator__Definition_Load   ab 0x0045c3b0   329 Byte
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, ChargePerSecond, DES FILE ERROR, Definition, NOD_Device_Generator::Definition_Load(), NOD_Device_Generator::Definition_Load() - file not found, Property
// --------------------------------------------

void NOD_Device_Generator__Definition_Load(undefined4 param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined1 local_138 [16];
  undefined1 auStack_128 [16];
  undefined1 local_118 [280];
  
  FUN_00565ce0();
  iVar1 = FUN_00506640(local_118,param_1);
  if (iVar1 == 0) {
    TERMINATION(s_NOD_Device_Generator__Definition_0060ff7c,param_1);
  }
  iVar1 = FUN_00507980(local_138,s_Property_0060ff70);
  if (iVar1 == 0) {
    FUN_0052e040();
    uVar2 = FUN_0052e130();
    uVar2 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Device_Generator__Definition_0060ff48,s_Property_0060ff70,uVar2);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
  }
  iVar1 = 0;
  puVar4 = &DAT_00668050;
  do {
    iVar3 = FUN_00507140(auStack_128,s_Definition_0060ff3c,iVar1);
    if (iVar3 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                           s_NOD_Device_Generator__Definition_0060ff48,s_Definition_0060ff3c,iVar1,
                           uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    iVar3 = FUN_00507800(s_ChargePerSecond_0060ff2c,puVar4);
    if (iVar3 == 0) {
      FUN_0052e040();
      uVar2 = FUN_0052e130();
      uVar2 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Device_Generator__Definition_0060ff48,s_ChargePerSecond_0060ff2c,
                           uVar2);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar2);
    }
    puVar4 = puVar4 + 1;
    iVar1 = iVar1 + 1;
  } while ((int)puVar4 < 0x668060);
  FUN_00506890();
  FUN_00506890();
  return;
}



// --------------------------------------------
// NOD_Device_Repair__HeartBeat_2   ab 0x0045c500   800 Byte
// Texte: NOD_Device_Repair::HeartBeat(), illegal device type
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall
NOD_Device_Repair__HeartBeat_2
          (float *param_1,int param_2,float *param_3,float *param_4,float *param_5)

{
  bool bVar1;
  float fVar2;
  float fVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  float *local_8;
  
  if (*(short *)((int)param_1 + 2) != 0) {
    switch(*(undefined2 *)param_1) {
    case 0:
      local_8 = (float *)&DAT_00667ea0;
      break;
    case 1:
      local_8 = (float *)&DAT_00667ec0;
      break;
    case 2:
      local_8 = (float *)&DAT_00667ee0;
      break;
    case 3:
      local_8 = (float *)&DAT_00667f00;
      break;
    default:
      TERMINATION(s_NOD_Device_Repair__HeartBeat___0060fee8,s_illegal_device_type_0060ff08);
      local_8 = param_1;
    }
    if ((((param_3 != (float *)0x0) && (_DAT_005f3370 < ABS(local_8[2]))) &&
        (_DAT_005f336c < *param_3)) && (_DAT_005f3370 < local_8[3] - *param_3)) {
      fVar2 = DAT_0066d0e4 * local_8[2] + param_1[3];
      bVar1 = fVar2 < _DAT_005f4074;
      param_1[3] = fVar2;
      if (bVar1) {
        param_1[1] = 4.2039e-45;
        return;
      }
      fVar3 = fVar2 + *param_3;
      if (_DAT_005f3350 < fVar2 + *param_3) {
        fVar3 = _DAT_005f3350;
      }
      *param_3 = fVar3;
      param_1[3] = 0.0;
      param_1[1] = 4.2039e-45;
      return;
    }
    if (((param_4 != (float *)0x0) && (_DAT_005f3370 < ABS(local_8[4]))) &&
       ((_DAT_005f336c < *param_4 && (_DAT_005f3370 < local_8[5] - *param_4)))) {
      fVar2 = DAT_0066d0e4 * local_8[4] + param_1[4];
      bVar1 = fVar2 < _DAT_005f4074;
      param_1[4] = fVar2;
      if (bVar1) {
        param_1[1] = 1.4013e-45;
        return;
      }
      fVar3 = fVar2 + *param_4;
      if (_DAT_005f3350 < fVar2 + *param_4) {
        fVar3 = _DAT_005f3350;
      }
      *param_4 = fVar3;
      param_1[4] = 0.0;
      param_1[1] = 1.4013e-45;
      return;
    }
    if (((param_5 != (float *)0x0) && (_DAT_005f3370 < ABS(local_8[6]))) &&
       ((_DAT_005f336c < *param_5 && (_DAT_005f3370 < local_8[7] - *param_5)))) {
      fVar2 = DAT_0066d0e4 * local_8[6] + param_1[5];
      bVar1 = fVar2 < _DAT_005f4074;
      param_1[5] = fVar2;
      if (bVar1) {
        param_1[1] = 2.8026e-45;
        return;
      }
      fVar3 = fVar2 + *param_5;
      if (_DAT_005f3350 < fVar2 + *param_5) {
        fVar3 = _DAT_005f3350;
      }
      *param_5 = fVar3;
      param_1[5] = 0.0;
      param_1[1] = 2.8026e-45;
      return;
    }
    if ((param_2 != 0) && (_DAT_005f3370 < ABS(*local_8))) {
      fVar2 = DAT_0066d0e4 * *local_8 + param_1[2];
      param_1[2] = fVar2;
      if (_DAT_005f4074 <= fVar2) {
        iVar4 = -1;
        iVar5 = 0;
        piVar6 = (int *)(param_2 + 0x4c);
        do {
          if (((float)piVar6[-10] / (float)*piVar6 - local_8[1] <= _DAT_005f3370) &&
             ((iVar4 == -1 ||
              (_DAT_005f3370 <
               (float)*(int *)(param_2 + 0x24 + iVar4 * 4) /
               (float)*(int *)(param_2 + 0x4c + iVar4 * 4) - (float)piVar6[-10] / (float)*piVar6))))
          {
            iVar4 = iVar5;
          }
          iVar5 = iVar5 + 1;
          piVar6 = piVar6 + 1;
        } while (iVar5 < 6);
        if (iVar4 != -1) {
          fVar3 = (float)*(int *)(param_2 + 0x4c + iVar4 * 4);
          fVar2 = (float)*(int *)(param_2 + 0x24 + iVar4 * 4) / fVar3 + fVar2;
          if (_DAT_005f3350 < fVar2) {
            fVar2 = _DAT_005f3350;
          }
          *(int *)(param_2 + 0x24 + iVar4 * 4) = (int)ROUND(fVar3 * fVar2 + -0.49999988);
        }
        param_1[2] = 0.0;
      }
      param_1[1] = 5.60519e-45;
    }
    param_1[1] = 0.0;
  }
  return;
}



// --------------------------------------------
// NOD_Device_Repair__Definition_Load   ab 0x0045c830   1066 Byte
// Texte: (%s): Get "%s" in file "%s" failed, (%s): Get ["%s"] in file "%s" failed, (%s): Get ["%s%d"] in file "%s" failed, DES FILE ERROR, Definition, NOD_Device_Repair::Definition_Load(), NOD_Device_Repair::Definition_Load() - file not found, Property, RepairMax_Engine, RepairMax_Generator, RepairMax_KineticShield, RepairMax_Sensor, ... (+4)
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void NOD_Device_Repair__Definition_Load(undefined4 param_1)

{
  float *pfVar1;
  float *pfVar2;
  float *pfVar3;
  float fVar4;
  float fVar5;
  int iVar6;
  undefined4 uVar7;
  int iVar8;
  undefined4 *puVar9;
  undefined1 auStack_13c [16];
  int iStack_12c;
  undefined1 local_128 [16];
  undefined1 local_118 [280];
  
  FUN_00565ce0();
  iVar6 = FUN_00506640(local_128,param_1);
  if (iVar6 == 0) {
    TERMINATION(s_NOD_Device_Repair__Definition_Lo_006100b0,param_1);
  }
  iVar6 = FUN_00507980(local_118,s_Property_0060ff70);
  if (iVar6 == 0) {
    FUN_0052e040();
    uVar7 = FUN_0052e130();
    uVar7 = FUN_005222c0(s___s___Get____s___in_file___s__fa_00603634,
                         s_NOD_Device_Repair__Definition_Lo_00610088,s_Property_0060ff70,uVar7);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
  }
  iStack_12c = 0;
  puVar9 = &DAT_00667ea8;
  do {
    iVar6 = iStack_12c;
    iVar8 = FUN_00507140(auStack_13c,s_Definition_0060ff3c,iStack_12c);
    if (iVar8 == 0) {
      FUN_0052e040();
      uVar7 = FUN_0052e130();
      uVar7 = FUN_005222c0(s___s___Get____s_d___in_file___s__f_00603550,
                           s_NOD_Device_Repair__Definition_Lo_00610088,s_Definition_0060ff3c,iVar6,
                           uVar7);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
    }
    iVar6 = FUN_00507800(s_RepairValue_KineticShield_0061006c,puVar9 + -2);
    if (iVar6 == 0) {
      FUN_0052e040();
      uVar7 = FUN_0052e130();
      uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Device_Repair__Definition_Lo_00610088,
                           s_RepairValue_KineticShield_0061006c,uVar7);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
    }
    iVar6 = FUN_00507800(s_RepairMax_KineticShield_00610054,puVar9 + -1);
    if (iVar6 == 0) {
      FUN_0052e040();
      uVar7 = FUN_0052e130();
      uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Device_Repair__Definition_Lo_00610088,
                           s_RepairMax_KineticShield_00610054,uVar7);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
    }
    iVar6 = FUN_00507800(s_RepairValue_Engine_00610040,puVar9);
    if (iVar6 == 0) {
      FUN_0052e040();
      uVar7 = FUN_0052e130();
      uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Device_Repair__Definition_Lo_00610088,s_RepairValue_Engine_00610040
                           ,uVar7);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
    }
    pfVar1 = (float *)(puVar9 + 1);
    iVar6 = FUN_00507800(s_RepairMax_Engine_0061002c,pfVar1);
    if (iVar6 == 0) {
      FUN_0052e040();
      uVar7 = FUN_0052e130();
      uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Device_Repair__Definition_Lo_00610088,s_RepairMax_Engine_0061002c,
                           uVar7);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
    }
    iVar6 = FUN_00507800(s_RepairValue_Sensor_00610018,puVar9 + 2);
    if (iVar6 == 0) {
      FUN_0052e040();
      uVar7 = FUN_0052e130();
      uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Device_Repair__Definition_Lo_00610088,s_RepairValue_Sensor_00610018
                           ,uVar7);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
    }
    pfVar2 = (float *)(puVar9 + 3);
    iVar6 = FUN_00507800(s_RepairMax_Sensor_00610004,pfVar2);
    if (iVar6 == 0) {
      FUN_0052e040();
      uVar7 = FUN_0052e130();
      uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Device_Repair__Definition_Lo_00610088,s_RepairMax_Sensor_00610004,
                           uVar7);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
    }
    iVar6 = FUN_00507800(s_RepairValue_Generator_0060ffec,puVar9 + 4);
    if (iVar6 == 0) {
      FUN_0052e040();
      uVar7 = FUN_0052e130();
      uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Device_Repair__Definition_Lo_00610088,
                           s_RepairValue_Generator_0060ffec,uVar7);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
    }
    pfVar3 = (float *)(puVar9 + 5);
    iVar6 = FUN_00507800(s_RepairMax_Generator_0060ffd8,pfVar3);
    if (iVar6 == 0) {
      FUN_0052e040();
      uVar7 = FUN_0052e130();
      uVar7 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_NOD_Device_Repair__Definition_Lo_00610088,
                           s_RepairMax_Generator_0060ffd8,uVar7);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar7);
    }
    fVar4 = ABS((float)puVar9[-1]);
    fVar5 = _DAT_005f336c;
    if ((_DAT_005f336c <= fVar4) && (fVar5 = fVar4, _DAT_005f3350 < fVar4)) {
      fVar5 = _DAT_005f3350;
    }
    puVar9[-1] = fVar5;
    fVar4 = ABS(*pfVar1);
    fVar5 = _DAT_005f336c;
    if ((_DAT_005f336c <= fVar4) && (fVar5 = fVar4, _DAT_005f3350 < fVar4)) {
      fVar5 = _DAT_005f3350;
    }
    *pfVar1 = fVar5;
    fVar4 = ABS(*pfVar2);
    fVar5 = _DAT_005f336c;
    if ((_DAT_005f336c <= fVar4) && (fVar5 = fVar4, _DAT_005f3350 < fVar4)) {
      fVar5 = _DAT_005f3350;
    }
    *pfVar2 = fVar5;
    fVar4 = ABS(*pfVar3);
    fVar5 = _DAT_005f336c;
    if ((_DAT_005f336c <= fVar4) && (fVar5 = fVar4, _DAT_005f3350 < fVar4)) {
      fVar5 = _DAT_005f3350;
    }
    *pfVar3 = fVar5;
    iStack_12c = iStack_12c + 1;
    puVar9 = puVar9 + 8;
  } while ((int)puVar9 < 0x667f28);
  FUN_00506890();
  FUN_00506890();
  return;
}



