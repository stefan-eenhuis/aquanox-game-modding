// Muster: BHV_Goto3D   3 Funktionen, 1970 Byte

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



