// Muster: DSP_Display   32 Funktionen, 10879 Byte

// --------------------------------------------
// DSP_Display__OpenBoard   ab 0x005090b0   81 Byte
// Texte: DSP_Display::OpenBoard(), the ordinal has an illegal value, there is already an open board
// --------------------------------------------

undefined4 __thiscall DSP_Display__OpenBoard(int param_1,int param_2)

{
  int iVar1;
  
  if (*(int *)(param_1 + 0xd4) != -1) {
    TERMINATION(s_DSP_Display__OpenBoard___00639958,s_there_is_already_an_open_board_00639974);
  }
  iVar1 = *(int *)(param_2 + 0x100);
  *(int *)(param_1 + 0xd4) = iVar1;
  if (*(int *)(*(int *)(param_1 + 200) + 8) <= iVar1) {
    TERMINATION(s_DSP_Display__OpenBoard___00639958,s_the_ordinal_has_an_illegal_value_00639934);
  }
  return 0;
}



// --------------------------------------------
// DSP_Display__QueryResolutions   ab 0x00509110   454 Byte
// Texte: DSP_Display::QueryResolutions(), no board is open, numofresolutions must not be NULL, the ordinal has an illegal value
// --------------------------------------------

undefined4 __thiscall DSP_Display__QueryResolutions(int param_1,int param_2,int *param_3)

{
  int iVar1;
  undefined2 uVar2;
  undefined4 *puVar3;
  int iVar4;
  byte *pbVar5;
  
  if (*(int *)(param_1 + 0xd4) == -1) {
    TERMINATION(s_DSP_Display__QueryResolutions___006399b8,s_no_board_is_open_006399d8);
  }
  if (*(int *)(*(int *)(param_1 + 200) + 8) <= *(int *)(param_1 + 0xd4)) {
    TERMINATION(s_DSP_Display__QueryResolutions___006399b8,
                s_the_ordinal_has_an_illegal_value_00639934);
  }
  iVar1 = *(int *)(*(int *)(param_1 + 200) + 4) + 0x43c + *(int *)(param_1 + 0xd4) * 0x10a4;
  if (param_3 == (int *)0x0) {
    TERMINATION(s_DSP_Display__QueryResolutions___006399b8,
                s_numofresolutions_must_not_be_NUL_00639994);
  }
  if (*(int *)(iVar1 + 0x5e0) < *param_3) {
    *param_3 = *(int *)(iVar1 + 0x5e0);
  }
  if ((param_2 != 0) && (iVar4 = 0, 0 < *(int *)(iVar1 + 0x5e0))) {
    pbVar5 = (byte *)(param_2 + 10);
    puVar3 = (undefined4 *)(iVar1 + 0xe4);
    do {
      *(undefined4 *)(pbVar5 + -10) = puVar3[-1];
      *(undefined4 *)(pbVar5 + -6) = *puVar3;
      uVar2 = FUN_0050ed40(puVar3[1]);
      *(undefined2 *)(pbVar5 + -2) = uVar2;
      pbVar5[0] = 0;
      pbVar5[1] = 0;
      if (*(int *)(iVar1 + 0x5f4) != 0) {
        pbVar5[0] = 2;
        pbVar5[1] = 0;
      }
      if (*(int *)(iVar1 + 0x5f8) != 0) {
        *pbVar5 = *pbVar5 | 4;
      }
      if (*(int *)(iVar1 + 0x5fc) != 0) {
        *pbVar5 = *pbVar5 | 8;
      }
      if (*(int *)(iVar1 + 0x600) != 0) {
        *pbVar5 = *pbVar5 | 0x10;
      }
      if (*(int *)(iVar1 + 0x604) != 0) {
        *pbVar5 = *pbVar5 | 0x20;
      }
      if (*(int *)(iVar1 + 0x608) != 0) {
        *pbVar5 = *pbVar5 | 0x40;
      }
      if (*(int *)(iVar1 + 0x60c) != 0) {
        *pbVar5 = *pbVar5 | 0x80;
      }
      if (*(int *)(iVar1 + 0x610) != 0) {
        pbVar5[1] = pbVar5[1] | 1;
      }
      if (*(int *)(iVar1 + 0x614) != 0) {
        pbVar5[1] = pbVar5[1] | 2;
      }
      if (*(int *)(iVar1 + 0x618) != 0) {
        pbVar5[1] = pbVar5[1] | 4;
      }
      if (*(int *)(iVar1 + 0x61c) != 0) {
        pbVar5[1] = pbVar5[1] | 8;
      }
      if (*(int *)(iVar1 + 0x620) != 0) {
        pbVar5[1] = pbVar5[1] | 0x10;
      }
      if (*(int *)(iVar1 + 0x624) != 0) {
        pbVar5[1] = pbVar5[1] | 0x20;
      }
      if (*(int *)(iVar1 + 0x628) != 0) {
        pbVar5[1] = pbVar5[1] | 0x40;
      }
      if (*(int *)(iVar1 + 0x62c) != 0) {
        pbVar5[1] = pbVar5[1] | 0x80;
      }
      iVar4 = iVar4 + 1;
      puVar3 = puVar3 + 5;
      pbVar5 = pbVar5 + 0xc;
    } while (iVar4 < *(int *)(iVar1 + 0x5e0));
    return 0;
  }
  return 0;
}



// --------------------------------------------
// DSP_Display__OpenResoultion   ab 0x005092e0   2257 Byte
// Texte: DSP_Display::OpenResolution(), DSP_Display::OpenResoultion(), illegal resolution specified, texture format argb1555 not supported, texture format argb8888 not supported, texture format rgb565 not supported, the gfx card driver is not DX8 compliant
// --------------------------------------------

undefined4 __thiscall
DSP_Display__OpenResoultion
          (undefined4 *param_1,int param_2,int param_3,int param_4,int param_5,uint param_6,
          int param_7,undefined4 param_8)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  int iVar5;
  int *piVar6;
  int *piVar7;
  int iStack_40;
  undefined4 uStack_3c;
  undefined4 *puStack_38;
  undefined4 *puStack_34;
  int *piStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  int iStack_24;
  int iVar8;
  int *local_8;
  
  param_1[0x1b5b] = 1;
  param_1[0x33] = param_8;
  param_1[0x1b77] = 0;
  param_1[0x1b78] = 1;
  param_1[6999] = 0;
  param_1[7000] = 0;
  param_1[0x1b59] = 0;
  param_1[0x1b5a] = 0;
  param_1[0x1b60] = 0;
  param_1[0x1b62] = 0;
  param_1[0x1b63] = 0;
  param_1[0x1b61] = 0;
  param_1[0x1b5f] = 0;
  iVar8 = *(int *)(param_1[0x32] + 4) + param_1[0x35] * 0x10a4;
  if (param_1[0x29] == 0) {
    iVar5 = 0;
    if (0 < *(int *)(iVar8 + 0xa1c)) {
      piVar7 = (int *)(iVar8 + 0x51c);
      do {
        local_8 = piVar7;
        if (((*local_8 == param_2) && (local_8[1] == param_3)) &&
           (iVar1 = FUN_0050ed40(), iVar1 == param_4)) break;
        iVar5 = iVar5 + 1;
        piVar7 = local_8 + 5;
      } while (iVar5 < *(int *)(iVar8 + 0xa1c));
    }
    if (*(int *)(iVar8 + 0xa1c) <= iVar5) {
      iStack_24 = 0x5093d2;
      TERMINATION();
    }
  }
  else {
    local_8 = (int *)(iVar8 + 0x51c);
  }
  iStack_24 = 0x5093f4;
  GetWindowRect((HWND)param_1[0x27],(LPRECT)(param_1 + 0x2a));
  iStack_24 = 0x509408;
  GetClientRect((HWND)param_1[0x27],(LPRECT)(param_1 + 0x2e));
  piVar7 = param_1 + 0x36;
  piVar6 = piVar7;
  for (iVar5 = 0xd; iVar5 != 0; iVar5 = iVar5 + -1) {
    *piVar6 = 0;
    piVar6 = piVar6 + 1;
  }
  param_1[0x3d] = param_1[0x29];
  if ((param_1[0x29] == 0) || (param_7 == 0)) {
    param_1[0x39] = 1;
  }
  else {
    param_1[0x39] = 2;
  }
  param_1[0x3b] = 1;
  param_1[0x3e] = 1;
  param_1[0x3f] = local_8[4];
  param_1[0x3c] = param_1[0x27];
  param_1[0x40] = 0;
  if (param_1[0x33] != 0) {
    param_1[0x40] = 1;
    param_1[0x34] = 0;
  }
  if ((param_6 & 0x8000) != 0) {
    param_1[0x3a] = 0x10;
  }
  if ((param_6 & 0x4000) != 0) {
    param_1[0x3a] = 0xf;
  }
  if ((param_6 & 0x2000) != 0) {
    param_1[0x3a] = 0xe;
  }
  if ((param_6 & 0x1000) != 0) {
    param_1[0x3a] = 0xd;
  }
  if ((param_6 & 0x800) != 0) {
    param_1[0x3a] = 0xc;
  }
  if ((param_6 & 0x400) != 0) {
    param_1[0x3a] = 0xb;
  }
  if ((param_6 & 0x200) != 0) {
    param_1[0x3a] = 10;
  }
  if ((param_6 & 0x100) != 0) {
    param_1[0x3a] = 9;
  }
  if ((param_6 & 0x80) != 0) {
    param_1[0x3a] = 8;
  }
  if ((param_6 & 0x40) != 0) {
    param_1[0x3a] = 7;
  }
  if ((param_6 & 0x20) != 0) {
    param_1[0x3a] = 6;
  }
  if ((param_6 & 0x10) != 0) {
    param_1[0x3a] = 5;
  }
  if ((param_6 & 8) != 0) {
    param_1[0x3a] = 4;
  }
  if ((param_6 & 4) != 0) {
    param_1[0x3a] = 3;
  }
  if ((param_6 & 2) != 0) {
    param_1[0x3a] = 2;
  }
  if (param_1[0x29] == 0) {
    *piVar7 = *local_8;
    param_1[0x37] = local_8[1];
    param_1[0x38] = local_8[2];
    param_1[0x41] = 0;
    if (param_5 == 0) {
      param_1[0x42] = 0x80000000;
    }
    else {
      param_1[0x42] = 1;
    }
    iStack_24 = local_8[2];
    piStack_30 = *(int **)param_1[0x32];
    iVar8 = 0;
    uStack_2c = param_1[0x35];
    uStack_28 = 1;
    puStack_34 = (undefined4 *)0x50962b;
    iVar5 = (**(code **)(*piStack_30 + 0x2c))();
  }
  else {
    *piVar7 = param_1[0x30] - ((LPRECT)(param_1 + 0x2e))->left;
    param_1[0x37] = param_1[0x31] - param_1[0x2f];
    param_1[0x38] = *(undefined4 *)(iVar8 + 0x438);
    param_1[0x42] = 0;
    iStack_24 = *(int *)(iVar8 + 0x438);
    piStack_30 = *(int **)param_1[0x32];
    iVar8 = 1;
    uStack_2c = param_1[0x35];
    uStack_28 = 1;
    puStack_34 = (undefined4 *)0x5095cf;
    iVar5 = (**(code **)(*piStack_30 + 0x2c))();
  }
  if (iVar5 != 0) {
    param_1[0x3a] = 0;
  }
  uVar3 = param_1[0x38];
  puVar4 = param_1 + 0x43;
  puStack_38 = param_1 + 0x36;
  uStack_3c = *(undefined4 *)(iVar8 + 0xc);
  iStack_40 = param_1[0x27];
  iVar8 = *(int *)(param_2 + 0x43c);
  puStack_34 = puVar4;
  uVar2 = (**(code **)(**(int **)param_1[0x32] + 0x3c))(*(int **)param_1[0x32],param_1[0x35]);
  FUN_0050ddf0(uVar2,0x2fa);
  piVar7 = param_1 + 0x44;
  uVar2 = (**(code **)(*(int *)*puVar4 + 0x1c))((int *)*puVar4);
  FUN_0050ddf0(uVar2,0x2fe);
  if (param_1[0x73] == 0) {
    TERMINATION(s_DSP_Display__OpenResolution___00639aac,s_the_gfx_card_driver_is_not_DX8_c_00639a80
               );
  }
  piVar6 = &iStack_40;
  iVar1 = 0;
  uVar2 = (**(code **)(*(int *)*puVar4 + 0x40))((int *)*puVar4,0,0);
  FUN_0050ddf0(uVar2,0x305);
  uVar2 = (**(code **)(*piVar7 + 0x20))(piVar7,param_1 + 0x79);
  FUN_0050ddf0(uVar2,0x307);
  (**(code **)(*piVar6 + 8))(piVar6);
  param_1[0x1b71] = 0;
  param_1[0x1b72] = 0;
  param_1[0x1b73] = param_1[0x36];
  param_1[0x1b74] = param_1[0x37];
  param_1[0x1b75] = 0;
  param_1[0x1b76] = 0x3f800000;
  uVar2 = (**(code **)(*(int *)*puVar4 + 0xa0))((int *)*puVar4,param_1 + 0x1b71);
  FUN_0050ddf0(uVar2,0x314);
  iVar5 = 0x19;
  iVar8 = (**(code **)(**(int **)param_1[0x32] + 0x28))
                    (*(int **)param_1[0x32],param_1[0x35],*(undefined4 *)(iVar8 + 0x43c),uVar3,0,3);
  if (iVar8 == 0) {
    param_1[0x1883] = 1;
  }
  else {
    param_1[0x1883] = 0;
  }
  iVar8 = (**(code **)(**(int **)param_1[0x32] + 0x28))
                    (*(int **)param_1[0x32],param_1[0x35],*(undefined4 *)(iVar1 + 0x43c),uVar3,0,3);
  if (iVar8 == 0) {
    param_1[0x1882] = 1;
  }
  else {
    param_1[0x1882] = 0;
  }
  iVar8 = (**(code **)(**(int **)param_1[0x32] + 0x28))
                    (*(int **)param_1[0x32],param_1[0x35],*(undefined4 *)(iVar5 + 0x43c),uVar3,0,3);
  if (iVar8 == 0) {
    param_1[0x1884] = 1;
  }
  else {
    param_1[0x1884] = 0;
  }
  iVar8 = (**(code **)(**(int **)param_1[0x32] + 0x28))
                    (*(int **)param_1[0x32],param_1[0x35],
                     CONCAT13((undefined1)uRam00000456,CONCAT12(uRam00000455,uRam00000453)),uVar3,0,
                     3);
  if (iVar8 == 0) {
    param_1[0x1885] = 1;
  }
  else {
    param_1[0x1885] = 0;
  }
  iVar8 = (**(code **)(**(int **)param_1[0x32] + 0x28))
                    (*(int **)param_1[0x32],param_1[0x35],CONCAT22(uRam00000453,uRam00000451),uVar3,
                     0,3);
  if (iVar8 == 0) {
    param_1[0x1886] = 1;
  }
  else {
    param_1[0x1886] = 0;
  }
  iVar8 = (**(code **)(**(int **)param_1[0x32] + 0x28))
                    (*(int **)param_1[0x32],param_1[0x35],uRam00000456,uVar3,0,3);
  if (iVar8 == 0) {
    param_1[0x1887] = 1;
  }
  else {
    param_1[0x1887] = 0;
  }
  iVar8 = (**(code **)(**(int **)param_1[0x32] + 0x28))
                    (*(int **)param_1[0x32],param_1[0x35],uRam31545c80,uVar3,0,3);
  if (iVar8 == 0) {
    param_1[0x1888] = 1;
  }
  else {
    param_1[0x1888] = 0;
  }
  iVar8 = (**(code **)(**(int **)param_1[0x32] + 0x28))
                    (*(int **)param_1[0x32],param_1[0x35],uRam32545c80,uVar3,0,3);
  if (iVar8 == 0) {
    param_1[0x1889] = 1;
  }
  else {
    param_1[0x1889] = 0;
  }
  iVar8 = (**(code **)(**(int **)param_1[0x32] + 0x28))
                    (*(int **)param_1[0x32],param_1[0x35],uRam33545c80,uVar3,0,3,0x35545844);
  if (iVar8 == 0) {
    param_1[0x188a] = 1;
  }
  else {
    param_1[0x188a] = 0;
  }
  if (param_1[0x1882] == 0) {
    TERMINATION(s_DSP_Display__OpenResoultion___00639a3c,s_texture_format_rgb565_not_suppor_00639a5c
               );
  }
  if (param_1[0x1883] == 0) {
    TERMINATION(s_DSP_Display__OpenResoultion___00639a3c,s_texture_format_argb1555_not_supp_00639a14
               );
  }
  if (param_1[0x1884] == 0) {
    TERMINATION(s_DSP_Display__OpenResoultion___00639a3c,s_texture_format_argb8888_not_supp_006399ec
               );
  }
  iVar8 = (**(code **)(**(int **)param_1[0x32] + 0x28))
                    (*(int **)param_1[0x32],param_1[0x35],uRam34545c80,uVar3,1,3,0x15);
  if (iVar8 == 0) {
    param_1[0x1b5f] = 1;
    uVar3 = (**(code **)(*(int *)*puVar4 + 0x80))((int *)*puVar4,param_1 + 0x1b62);
    FUN_0050ddf0(uVar3,0x35c);
    uVar3 = (**(code **)(*(int *)*puVar4 + 0x84))((int *)*puVar4,param_1 + 0x1b63);
    FUN_0050ddf0(uVar3,0x35f);
    uVar3 = (**(code **)(*(int *)*puVar4 + 0x50))
                      ((int *)*puVar4,0x200,0x200,1,1,0x15,0,param_1 + 0x1b60);
    FUN_0050ddf0(uVar3,0x362);
    piVar7 = (int *)param_1[0x1b60];
    uVar3 = (**(code **)(*piVar7 + 0x3c))(piVar7,0,param_1 + 0x1b61);
    FUN_0050ddf0(uVar3,0x365);
  }
  param_1[0x81] = 1;
  FUN_0050d090();
  FUN_0050d1c0();
  param_1[0x1b51] = 0;
  param_1[0x1b52] = 0;
  FUN_0050d4c0();
  FUN_0050d9d0();
  puVar4 = param_1 + 0x18fb;
  iVar8 = 8;
  do {
    *puVar4 = 0xffffffff;
    puVar4 = puVar4 + 0x55;
    iVar8 = iVar8 + -1;
  } while (iVar8 != 0);
  uVar3 = operator_new(0x300);
  param_1[0x1b64] = uVar3;
  iVar8 = 0;
  do {
    *(undefined4 *)(param_1[0x1b64] + iVar8) = 0;
    *(undefined4 *)(param_1[0x1b64] + 8 + iVar8) = 0;
    iVar8 = iVar8 + 0xc;
  } while (iVar8 < 0x300);
  param_1[0x1b65] = 0xffffffff;
  param_1[0x24] = 0;
  param_1[0x25] = 0;
  param_1[0x26] = 0;
  param_1[4] = 0;
  uVar3 = operator_new(0xc00);
  param_1[0x1b66] = uVar3;
  iVar8 = 0;
  do {
    *(undefined4 *)(param_1[0x1b66] + iVar8) = 0;
    *(undefined4 *)(param_1[0x1b66] + 8 + iVar8) = 0;
    iVar8 = iVar8 + 0xc;
  } while (iVar8 < 0xc00);
  param_1[0x1b67] = 0xffffffff;
  param_1[0x21] = 0;
  param_1[0x22] = 0;
  param_1[0x23] = 0;
  param_1[5] = 0;
  DSP_Display__VertexBuffer_Create(param_1 + 0x1b68,1,0x4000);
  DSP_Display__IndexBuffer_Create(param_1 + 0x1b69,1,0x4000);
  param_1[1] = 0;
  *param_1 = 0;
  param_1[3] = 0;
  param_1[2] = 0;
  return 0;
}



// --------------------------------------------
// DSP_Display__SetTextureStageState   ab 0x00509ee0   537 Byte
// Texte: DSP_Display::SetTextureStageState(), invalid cubetexture, rendertarget texture, texture ID is out of range
// --------------------------------------------

undefined4 __thiscall DSP_Display__SetTextureStageState(int param_1,int param_2,uint *param_3)

{
  uint uVar1;
  int *piVar2;
  int iVar3;
  undefined4 *puVar4;
  uint uVar5;
  int local_4;
  
  if (param_3 == (uint *)0x0) {
    iVar3 = param_1 + param_2 * 0x154;
    if ((*(int *)(param_1 + 0x62ac + param_2 * 0x154) == 1) && (*(int *)(iVar3 + 0x62fc) == 1)) {
      return 0;
    }
    *(undefined4 *)(iVar3 + 0x62ac) = 1;
    *(undefined4 *)(iVar3 + 0x62fc) = 1;
    (**(code **)(**(int **)(param_1 + 0x10c) + 0xfc))(*(int **)(param_1 + 0x10c),param_2,1,1);
    (**(code **)(**(int **)(param_1 + 0x10c) + 0xfc))(*(int **)(param_1 + 0x10c),param_2,4,1);
    return 0;
  }
  local_4 = -0xc;
  puVar4 = (undefined4 *)(param_1 + 0x62a4 + param_2 * 0x154);
  do {
    uVar1 = *param_3;
    if (puVar4[2] != uVar1) {
      uVar5 = uVar1;
      switch(local_4) {
      case 0:
        piVar2 = *(int **)(param_1 + 0x10c);
        iVar3 = *piVar2;
        if (uVar1 == 6) {
          uVar5 = *(uint *)(param_1 + 0x6d70);
        }
        break;
      case 1:
        piVar2 = *(int **)(param_1 + 0x10c);
        iVar3 = *piVar2;
        if (uVar1 == 6) {
          uVar5 = *(uint *)(param_1 + 0x6d74);
        }
        break;
      case 2:
        piVar2 = *(int **)(param_1 + 0x10c);
        iVar3 = *piVar2;
        if (uVar1 == 6) {
          uVar5 = *(uint *)(param_1 + 0x6d78);
        }
        break;
      default:
        piVar2 = *(int **)(param_1 + 0x10c);
        iVar3 = *piVar2;
        break;
      case 4:
        if ((uVar1 < 0x10000) || (0x10003 < uVar1)) {
          if (uVar1 == 0x10004) {
            if (*(int *)(param_1 + 0x6d80) == 0) {
              TERMINATION(s_DSP_Display__SetTextureStageStat_00639b20,
                          s_rendertarget_texture_00639b08);
            }
            (**(code **)(**(int **)(param_1 + 0x10c) + 0xf4))
                      (*(int **)(param_1 + 0x10c),param_2,*(undefined4 *)(param_1 + 0x6d80));
          }
          else {
            if (((int)uVar1 < -1) || (*(int *)(param_1 + 0x6d58) <= (int)uVar1)) {
              TERMINATION(s_DSP_Display__SetTextureStageStat_00639b20,
                          s_texture_ID_is_out_of_range_00639aec);
            }
            piVar2 = *(int **)(param_1 + 0x10c);
            if (uVar1 == 0xffffffff) {
              (**(code **)(*piVar2 + 0xf4))(piVar2,param_2,0);
            }
            else {
              (**(code **)(*piVar2 + 0xf4))
                        (piVar2,param_2,*(undefined4 *)(*(int *)(param_1 + 0x6d54) + uVar1 * 4));
            }
          }
        }
        else {
          if (*(int *)(param_1 + -0x392a4 + uVar1 * 4) == 0) {
            TERMINATION(s_DSP_Display__SetTextureStageStat_00639b20,s_invalid_cubetexture_00639b44);
          }
          (**(code **)(**(int **)(param_1 + 0x10c) + 0xf4))
                    (*(int **)(param_1 + 0x10c),param_2,
                     *(undefined4 *)(param_1 + -0x392a4 + uVar1 * 4));
        }
        goto LAB_0050a0c9;
      }
      (**(code **)(iVar3 + 0xfc))(piVar2,param_2,*puVar4,uVar5);
LAB_0050a0c9:
      puVar4[2] = uVar1;
    }
    param_3 = param_3 + 1;
    puVar4 = puVar4 + 5;
    iVar3 = local_4 + 0xd;
    local_4 = local_4 + 1;
    if (0x10 < iVar3) {
      return 0;
    }
  } while( true );
}



// --------------------------------------------
// DSP_Display__Clear   ab 0x0050a110   225 Byte
// Texte: DSP_Display::Clear(), illegal depthstencil format
// --------------------------------------------

undefined4 __thiscall DSP_Display__Clear(int param_1,int param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  if (*(int *)(param_1 + 0x6da8) != 0) {
    return 0;
  }
  switch(*(undefined4 *)(param_1 + 0xfc)) {
  case 0x47:
  case 0x4d:
  case 0x50:
    uVar1 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x90))
                      (*(int **)(param_1 + 0x10c),0,0,param_2 != 0 | -(param_3 != 0) & 2U,param_4,
                       0x3f800000,0);
    FUN_0050ddf0(uVar1,0x7ed);
    return 0;
  default:
    TERMINATION(s_DSP_Display__Clear___00639b58,s_illegal_depthstencil_format_00639b70);
    return 0;
  case 0x49:
  case 0x4b:
  case 0x4f:
    uVar1 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x90))
                      (*(int **)(param_1 + 0x10c),0,0,param_2 != 0 | -(param_3 != 0) & 2U | 4,
                       param_4,0x3f800000,0);
    FUN_0050ddf0(uVar1,0x7f4);
    return 0;
  }
}



// --------------------------------------------
// DSP_Display__DrawVertexArray   ab 0x0050a390   328 Byte
// Texte: DSP_Display::DrawVertexArray(), illegal mode
// --------------------------------------------

undefined4 __thiscall
DSP_Display__DrawVertexArray
          (int param_1,undefined4 param_2,int param_3,undefined4 param_4,uint param_5,int param_6,
          uint param_7,undefined4 param_8,int param_9)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  
  if (((*(int *)(param_1 + 0x6da8) == 0) && (param_9 != 0)) && (param_5 != 0)) {
    switch(param_2) {
    case 0:
      uVar4 = 4;
      param_5 = param_5 / 3;
      break;
    case 1:
      uVar4 = 5;
      param_5 = param_5 - 2;
      break;
    case 2:
      uVar4 = 6;
      param_5 = param_5 - 2;
      break;
    case 3:
      param_5 = param_5 >> 1;
      uVar4 = 2;
      break;
    case 4:
      param_5 = param_5 - 1;
      uVar4 = 3;
      break;
    default:
      TERMINATION(s_DSP_Display__DrawVertexArray___00639b8c,s_illegal_mode_0060da90);
      uVar4 = param_7;
      param_5 = param_7;
    }
    iVar1 = param_6 * 3 + -3;
    iVar3 = *(int *)(param_1 + 0x208 + iVar1 * 4);
    if (*(int *)(param_1 + 0x6d44) != iVar3) {
      (**(code **)(**(int **)(param_1 + 0x10c) + 0x14c))(*(int **)(param_1 + 0x10c),0,iVar3,0x28);
      *(undefined4 *)(param_1 + 0x6d44) = *(undefined4 *)(param_1 + 0x208 + iVar1 * 4);
    }
    piVar2 = (int *)(param_1 + 0x3208 + (param_3 * 3 + -3) * 4);
    iVar1 = *piVar2;
    if ((*(int *)(param_1 + 0x6d48) != iVar1) || (*(uint *)(param_1 + 0x6d4c) != param_7)) {
      (**(code **)(**(int **)(param_1 + 0x10c) + 0x154))(*(int **)(param_1 + 0x10c),iVar1,param_7);
      *(int *)(param_1 + 0x6d48) = *piVar2;
      *(uint *)(param_1 + 0x6d4c) = param_7;
    }
    (**(code **)(**(int **)(param_1 + 0x10c) + 0x11c))
              (*(int **)(param_1 + 0x10c),uVar4,param_8,param_9,param_4,param_5);
    return 0;
  }
  return 0;
}



// --------------------------------------------
// DSP_Display__Texture_FlushTextures   ab 0x0050a5b0   148 Byte
// Texte: DSP_Display::Texture_FlushTextures(), maxid must be less than maxnumoftextures, minid must be lower than maxid
// --------------------------------------------

undefined4 __thiscall DSP_Display__Texture_FlushTextures(int param_1,int param_2,int param_3)

{
  if (*(int *)(param_1 + 0x6d54) == 0) {
    return 1;
  }
  if (param_3 < param_2) {
    TERMINATION(s_DSP_Display__Texture_FlushTextur_00639bd8,
                s_minid_must_be_lower_than_maxid_00639c00);
  }
  if (*(int *)(param_1 + 0x6d58) <= param_3) {
    TERMINATION(s_DSP_Display__Texture_FlushTextur_00639bd8,
                s_maxid_must_be_less_than_maxnumof_00639bac);
  }
  DSP_Display__Texture_ReleaseTextureSurfaces(param_2,param_3);
  *(undefined4 *)(param_1 + 0x63ec) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x6540) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x6694) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x67e8) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x693c) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x6a90) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x6be4) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x6d38) = 0xffffffff;
  return 0;
}



// --------------------------------------------
// DSP_Display__RequestTexture   ab 0x0050a650   58 Byte
// Texte: DSP_Display::RequestTexture(), no texturcache set
// --------------------------------------------

undefined4 __thiscall DSP_Display__RequestTexture(int param_1,undefined4 param_2,undefined4 param_3)

{
  if (*(int *)(param_1 + 0x6d50) == 0) {
    TERMINATION(s_DSP_Display__RequestTexture___00639c20,s_no_texturcache_set_00639c40);
  }
  DSP_TextureCache__GetTextureLevel(param_3,param_2);
  return 0;
}



// --------------------------------------------
// DSP_Display__Texture_FlushTextures_2   ab 0x0050a690   918 Byte
// Texte: DSP_Display::Texture_FlushTextures(), maxid must be less than maxnumoftextures, minid must be lower than maxid
// --------------------------------------------

undefined4 __thiscall
DSP_Display__Texture_FlushTextures_2
          (int param_1,int param_2,int param_3,undefined4 param_4,undefined4 param_5,int param_6)

{
  int iVar1;
  int iVar2;
  int iVar3;
  bool bVar4;
  undefined4 uVar5;
  
  iVar2 = param_3;
  iVar3 = param_2;
  if (param_3 < param_2) {
    TERMINATION(s_DSP_Display__Texture_FlushTextur_00639bd8,
                s_minid_must_be_lower_than_maxid_00639c00);
  }
  if (*(int *)(param_1 + 0x6d58) <= iVar2) {
    TERMINATION(s_DSP_Display__Texture_FlushTextur_00639bd8,
                s_maxid_must_be_less_than_maxnumof_00639bac);
  }
  bVar4 = param_6 == 0;
  if (bVar4) {
    DSP_TextureCache__AllowFormat(0,0);
    DSP_TextureCache__AllowFormat(1,0);
    DSP_TextureCache__AllowFormat(2,0);
    DSP_TextureCache__AllowFormat(3,0);
  }
  else {
    DSP_TextureCache__AllowFormat(0,1);
    DSP_TextureCache__AllowFormat(1,1);
    DSP_TextureCache__AllowFormat(2,1);
    DSP_TextureCache__AllowFormat(3,1);
  }
  DSP_TextureCache__AllowFormat(4,!bVar4);
  DSP_TextureCache__AllowFormat(5,*(int *)(param_1 + 0x620c) != 0);
  DSP_TextureCache__AllowFormat(6,*(int *)(param_1 + 0x6208) != 0);
  DSP_TextureCache__AllowFormat(7,*(int *)(param_1 + 0x6210) != 0);
  DSP_TextureCache__AllowFormat(8,1);
  if ((*(uint *)(param_1 + 0x168) < 0x800) || (*(uint *)(param_1 + 0x16c) < 0x800)) {
    uVar5 = 0;
  }
  else {
    uVar5 = 1;
  }
  DSP_TextureCache__AllowLevel(0xb,uVar5);
  if ((*(uint *)(param_1 + 0x168) < 0x400) || (*(uint *)(param_1 + 0x16c) < 0x400)) {
    uVar5 = 0;
  }
  else {
    uVar5 = 1;
  }
  DSP_TextureCache__AllowLevel(10,uVar5);
  if ((*(uint *)(param_1 + 0x168) < 0x200) || (*(uint *)(param_1 + 0x16c) < 0x200)) {
    uVar5 = 0;
  }
  else {
    uVar5 = 1;
  }
  DSP_TextureCache__AllowLevel(9,uVar5);
  if ((*(uint *)(param_1 + 0x168) < 0x100) || (*(uint *)(param_1 + 0x16c) < 0x100)) {
    uVar5 = 0;
  }
  else {
    uVar5 = 1;
  }
  DSP_TextureCache__AllowLevel(8,uVar5);
  if ((*(uint *)(param_1 + 0x168) < 0x80) || (*(uint *)(param_1 + 0x16c) < 0x80)) {
    uVar5 = 0;
  }
  else {
    uVar5 = 1;
  }
  DSP_TextureCache__AllowLevel(7,uVar5);
  if ((*(uint *)(param_1 + 0x168) < 0x40) || (*(uint *)(param_1 + 0x16c) < 0x40)) {
    uVar5 = 0;
  }
  else {
    uVar5 = 1;
  }
  DSP_TextureCache__AllowLevel(6,uVar5);
  if ((*(uint *)(param_1 + 0x168) < 0x20) || (*(uint *)(param_1 + 0x16c) < 0x20)) {
    uVar5 = 0;
  }
  else {
    uVar5 = 1;
  }
  DSP_TextureCache__AllowLevel(5,uVar5);
  if ((*(uint *)(param_1 + 0x168) < 0x10) || (*(uint *)(param_1 + 0x16c) < 0x10)) {
    uVar5 = 0;
  }
  else {
    uVar5 = 1;
  }
  DSP_TextureCache__AllowLevel(4,uVar5);
  if ((*(uint *)(param_1 + 0x168) < 8) || (*(uint *)(param_1 + 0x16c) < 8)) {
    uVar5 = 0;
  }
  else {
    uVar5 = 1;
  }
  DSP_TextureCache__AllowLevel(3,uVar5);
  if ((*(uint *)(param_1 + 0x168) < 4) || (*(uint *)(param_1 + 0x16c) < 4)) {
    uVar5 = 0;
  }
  else {
    uVar5 = 1;
  }
  DSP_TextureCache__AllowLevel(2,uVar5);
  if ((*(uint *)(param_1 + 0x168) < 2) || (*(uint *)(param_1 + 0x16c) < 2)) {
    uVar5 = 0;
  }
  else {
    uVar5 = 1;
  }
  DSP_TextureCache__AllowLevel(1,uVar5);
  if ((*(int *)(param_1 + 0x168) == 0) || (*(int *)(param_1 + 0x16c) == 0)) {
    uVar5 = 0;
  }
  else {
    uVar5 = 1;
  }
  DSP_TextureCache__AllowLevel(0,uVar5);
  iVar1 = FUN_0050f030(param_4);
  if (iVar1 != 0) {
    DSP_Display__Texture_FlushTextures(iVar3,iVar2);
    uVar5 = param_5;
    if (iVar3 == -1) {
      iVar3 = 0;
      iVar2 = *(int *)(param_1 + 0x6d58) + -1;
    }
    for (; iVar3 <= iVar2; iVar3 = iVar3 + 1) {
      iVar1 = DSP_TextureCache__GetTextureLevel_2(iVar3,&param_2);
      if (iVar1 != 0) {
        DSP_Display__Texture_Unlock_3(iVar3,param_2,uVar5);
      }
    }
    return 0;
  }
  return 1;
}



// --------------------------------------------
// DSP_Display__Texture_Create   ab 0x0050aa30   679 Byte
// Texte: DSP_Display::Texture_Create(), ID is out of range, illegal type, numofmiplevels is out of range
// --------------------------------------------

undefined4 __thiscall
DSP_Display__Texture_Create
          (int param_1,int param_2,undefined4 param_3,undefined4 param_4,int param_5)

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  FUN_0050f180();
  if ((param_2 < 0) || (*(int *)(param_1 + 0x6d58) <= param_2)) {
    TERMINATION(s_DSP_Display__Texture_Create___00639c74,s_ID_is_out_of_range_00639c94);
  }
  if ((param_5 < 1) || (0xc < param_5)) {
    TERMINATION(s_DSP_Display__Texture_Create___00639c74,s_numofmiplevels_is_out_of_range_00639c54);
  }
  uVar2 = DSP_Texture__GetTextureWidth(param_4);
  uVar3 = DSP_Texture__GetTextureHeight(param_4);
  param_2 = param_2 * 4;
  piVar1 = *(int **)(*(int *)(param_1 + 0x6d54) + param_2);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 8))(piVar1);
    *(undefined4 *)(*(int *)(param_1 + 0x6d54) + param_2) = 0;
  }
  switch(param_3) {
  case 0:
    uVar2 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x50))
                      (*(int **)(param_1 + 0x10c),uVar2,uVar3,param_5,0,0x31545844,1,
                       *(int *)(param_1 + 0x6d54) + param_2);
    FUN_0050ddf0(uVar2,0xbaf);
    break;
  case 1:
    uVar2 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x50))
                      (*(int **)(param_1 + 0x10c),uVar2,uVar3,param_5,0,0x32545844,1,
                       *(int *)(param_1 + 0x6d54) + param_2);
    FUN_0050ddf0(uVar2,0xbb4);
    break;
  case 2:
    uVar2 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x50))
                      (*(int **)(param_1 + 0x10c),uVar2,uVar3,param_5,0,0x33545844,1,
                       *(int *)(param_1 + 0x6d54) + param_2);
    FUN_0050ddf0(uVar2,0xbb9);
    break;
  case 3:
    uVar2 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x50))
                      (*(int **)(param_1 + 0x10c),uVar2,uVar3,param_5,0,0x34545844,1,
                       *(int *)(param_1 + 0x6d54) + param_2);
    FUN_0050ddf0(uVar2,0xbbe);
    break;
  case 4:
    uVar2 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x50))
                      (*(int **)(param_1 + 0x10c),uVar2,uVar3,param_5,0,0x35545844,1,
                       *(int *)(param_1 + 0x6d54) + param_2);
    FUN_0050ddf0(uVar2,0xbc3);
    break;
  case 5:
    uVar2 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x50))
                      (*(int **)(param_1 + 0x10c),uVar2,uVar3,param_5,0,0x19,1,
                       *(int *)(param_1 + 0x6d54) + param_2);
    FUN_0050ddf0(uVar2,0xbc8);
    break;
  case 6:
    uVar2 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x50))
                      (*(int **)(param_1 + 0x10c),uVar2,uVar3,param_5,0,0x17,1,
                       *(int *)(param_1 + 0x6d54) + param_2);
    FUN_0050ddf0(uVar2,0xbcd);
    break;
  case 7:
    uVar2 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x50))
                      (*(int **)(param_1 + 0x10c),uVar2,uVar3,param_5,0,0x15,1,
                       *(int *)(param_1 + 0x6d54) + param_2);
    FUN_0050ddf0(uVar2,0xbd2);
    break;
  case 8:
    uVar2 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x50))
                      (*(int **)(param_1 + 0x10c),uVar2,uVar3,param_5,0,0x1a,1,
                       *(int *)(param_1 + 0x6d54) + param_2);
    FUN_0050ddf0(uVar2,0xbd7);
    break;
  default:
    TERMINATION(s_DSP_Display__Texture_Create___00639c74,s_illegal_type_0060ff1c);
  }
  FUN_00565cf0();
  return 0;
}



// --------------------------------------------
// DSP_Display__Texture_Unlock   ab 0x0050ad00   447 Byte
// Texte: DSP_Display::Texture_Lock(), DSP_Display::Texture_Refresh(), DSP_Display::Texture_Unlock(), ID is out of range, no surface created
// --------------------------------------------

undefined4 __thiscall DSP_Display__Texture_Unlock(int param_1,int param_2)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  uint uVar5;
  uint uVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  int iVar9;
  int *piVar10;
  undefined4 *puVar11;
  undefined4 uStack_2c;
  int iStack_28;
  uint uStack_24;
  undefined1 auStack_20 [4];
  int iStack_1c;
  undefined4 *puStack_18;
  
  if ((param_2 < 0) || (*(int *)(param_1 + 0x6d58) <= param_2)) {
    TERMINATION(s_DSP_Display__Texture_Refresh___00639cf8,s_ID_is_out_of_range_00639c94);
  }
  if (*(int *)(*(int *)(param_1 + 0x6d54) + param_2 * 4) == 0) {
    TERMINATION(s_DSP_Display__Texture_Refresh___00639cf8,s_no_surface_created_00639ca8);
  }
  piVar10 = *(int **)(*(int *)(param_1 + 0x6d54) + param_2 * 4);
  puVar11 = (undefined4 *)0x0;
  uVar2 = (**(code **)(*piVar10 + 0x38))(piVar10,0,auStack_20);
  FUN_0050ddf0(uVar2,0xcb1);
  iVar3 = FUN_0050ed40(uStack_2c);
  if (iVar3 != 0) {
    if ((param_2 < 0) || (*(int *)(param_1 + 0x6d58) <= param_2)) {
      TERMINATION(s_DSP_Display__Texture_Lock___00639cdc,s_ID_is_out_of_range_00639c94);
    }
    if (*(int *)(*(int *)(param_1 + 0x6d54) + param_2 * 4) == 0) {
      TERMINATION(s_DSP_Display__Texture_Lock___00639cdc,s_no_surface_created_00639ca8);
    }
    piVar1 = *(int **)(*(int *)(param_1 + 0x6d54) + param_2 * 4);
    iVar9 = 0;
    uVar2 = (**(code **)(*piVar1 + 0x40))(piVar1,0,&stack0xffffffcc,0,0);
    FUN_0050ddf0(uVar2,0xd2d);
    puVar4 = puStack_18;
    puStack_18 = (undefined4 *)0x0;
    if (uStack_24 != 0) {
      uVar5 = (uint)(iStack_28 * iVar3) >> 3;
      do {
        puVar7 = puVar4;
        puVar8 = puVar11;
        for (uVar6 = uVar5 >> 2; uVar6 != 0; uVar6 = uVar6 - 1) {
          *puVar8 = *puVar7;
          puVar7 = puVar7 + 1;
          puVar8 = puVar8 + 1;
        }
        for (uVar5 = uVar5 & 3; uVar5 != 0; uVar5 = uVar5 - 1) {
          *(undefined1 *)puVar8 = *(undefined1 *)puVar7;
          puVar7 = (undefined4 *)((int)puVar7 + 1);
          puVar8 = (undefined4 *)((int)puVar8 + 1);
        }
        uVar5 = (uint)(iStack_28 * iVar9) >> 3;
        puVar11 = (undefined4 *)((int)puVar11 + (int)piVar10);
        puVar4 = (undefined4 *)((int)puVar4 + uVar5);
        puStack_18 = (undefined4 *)((int)puStack_18 + 1);
        param_2 = iStack_1c;
      } while (puStack_18 < uStack_24);
    }
    if ((param_2 < 0) || (*(int *)(param_1 + 0x6d58) <= param_2)) {
      TERMINATION(s_DSP_Display__Texture_Unlock___00639cbc,s_ID_is_out_of_range_00639c94);
    }
    if (*(int *)(*(int *)(param_1 + 0x6d54) + param_2 * 4) == 0) {
      TERMINATION(s_DSP_Display__Texture_Unlock___00639cbc,s_no_surface_created_00639ca8);
    }
    piVar10 = *(int **)(*(int *)(param_1 + 0x6d54) + param_2 * 4);
    uVar2 = (**(code **)(*piVar10 + 0x44))(piVar10,0);
    FUN_0050ddf0(uVar2,0xd4f);
    return 0;
  }
  return 1;
}



// --------------------------------------------
// DSP_Display__Texture_GetTexture   ab 0x0050aec0   90 Byte
// Texte: DSP_Display::Texture_GetTexture(), ID is out of range, no surface created
// --------------------------------------------

undefined4 __thiscall DSP_Display__Texture_GetTexture(int param_1,int param_2,undefined4 *param_3)

{
  if ((param_2 < 0) || (*(int *)(param_1 + 0x6d58) <= param_2)) {
    TERMINATION(s_DSP_Display__Texture_GetTexture__00639d18,s_ID_is_out_of_range_00639c94);
  }
  if (*(int *)(*(int *)(param_1 + 0x6d54) + param_2 * 4) == 0) {
    TERMINATION(s_DSP_Display__Texture_GetTexture__00639d18,s_no_surface_created_00639ca8);
  }
  *param_3 = *(undefined4 *)(*(int *)(param_1 + 0x6d54) + param_2 * 4);
  return 0;
}



// --------------------------------------------
// DSP_Display__Texture_Lock   ab 0x0050af20   143 Byte
// Texte: DSP_Display::Texture_Lock(), ID is out of range, no surface created
// --------------------------------------------

undefined4 __thiscall DSP_Display__Texture_Lock(int param_1,int param_2,undefined4 param_3)

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 **ppuVar3;
  undefined4 uVar4;
  undefined4 *puStack_8;
  int *piStack_4;
  
  if ((param_2 < 0) || (*(int *)(param_1 + 0x6d58) <= param_2)) {
    TERMINATION(s_DSP_Display__Texture_Lock___00639cdc,s_ID_is_out_of_range_00639c94);
  }
  if (*(int *)(*(int *)(param_1 + 0x6d54) + param_2 * 4) == 0) {
    TERMINATION(s_DSP_Display__Texture_Lock___00639cdc,s_no_surface_created_00639ca8);
  }
  piVar1 = *(int **)(*(int *)(param_1 + 0x6d54) + param_2 * 4);
  uVar4 = 0;
  ppuVar3 = &puStack_8;
  uVar2 = (**(code **)(*piVar1 + 0x40))(piVar1,param_3,ppuVar3,0,0);
  FUN_0050ddf0(uVar2,0xd2d);
  *puStack_8 = uVar4;
  *piStack_4 = (int)ppuVar3;
  return 0;
}



// --------------------------------------------
// DSP_Display__Texture_Unlock_2   ab 0x0050afb0   108 Byte
// Texte: DSP_Display::Texture_Unlock(), ID is out of range, no surface created
// --------------------------------------------

undefined4 __thiscall DSP_Display__Texture_Unlock_2(int param_1,int param_2,undefined4 param_3)

{
  int *piVar1;
  undefined4 uVar2;
  
  if ((param_2 < 0) || (*(int *)(param_1 + 0x6d58) <= param_2)) {
    TERMINATION(s_DSP_Display__Texture_Unlock___00639cbc,s_ID_is_out_of_range_00639c94);
  }
  if (*(int *)(*(int *)(param_1 + 0x6d54) + param_2 * 4) == 0) {
    TERMINATION(s_DSP_Display__Texture_Unlock___00639cbc,s_no_surface_created_00639ca8);
  }
  piVar1 = *(int **)(*(int *)(param_1 + 0x6d54) + param_2 * 4);
  uVar2 = (**(code **)(*piVar1 + 0x44))(piVar1,param_3);
  FUN_0050ddf0(uVar2,0xd4f);
  return 0;
}



// --------------------------------------------
// DSP_Display__Texture_Unlock_3   ab 0x0050b020   794 Byte
// Texte: DSP_Display::Texture_CreateFromFile(), DSP_Display::Texture_LoadFromFile(), DSP_Display::Texture_Lock(), DSP_Display::Texture_Unlock(), ID is out of range, illegal type, no surface created
// --------------------------------------------

undefined4 __thiscall
DSP_Display__Texture_Unlock_3(int param_1,int param_2,undefined4 param_3,int param_4)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 unaff_EBX;
  int iVar5;
  undefined4 unaff_EBP;
  undefined4 uStack_12c;
  undefined4 local_128;
  undefined4 local_120;
  int aiStack_11c [2];
  undefined1 local_114 [4];
  undefined4 local_110;
  undefined4 local_10c;
  undefined4 local_108;
  undefined1 auStack_104 [260];
  
  FUN_005ed530();
  if ((param_2 < 0) || (*(int *)(param_1 + 0x6d58) <= param_2)) {
    TERMINATION(s_DSP_Display__Texture_CreateFromF_00639d68,s_ID_is_out_of_range_00639c94);
  }
  DSP_Texture__GetTexelCount(&local_120,&local_10c,&local_110,&local_108,local_114);
  if (param_4 == 0) {
    aiStack_11c[0] = 1;
  }
  else {
    aiStack_11c[0] = DSP_Texture__GetNumOfMipLevels();
  }
  iVar2 = aiStack_11c[0];
  switch(local_120) {
  case 0:
    if (*(int *)(param_1 + 0x6218) != 0) goto switchD_0050b0b4_caseD_5;
    uStack_12c = 0x19;
    goto LAB_0050b0d1;
  case 1:
    iVar5 = *(int *)(param_1 + 0x621c);
    break;
  case 2:
    iVar5 = *(int *)(param_1 + 0x6220);
    break;
  case 3:
    iVar5 = *(int *)(param_1 + 0x6224);
    break;
  case 4:
    iVar5 = *(int *)(param_1 + 0x6228);
    break;
  case 5:
  case 6:
  case 7:
  case 8:
    goto switchD_0050b0b4_caseD_5;
  default:
    TERMINATION(s_DSP_Display__Texture_LoadFromFil_00639d3c,s_illegal_type_0060ff1c);
    goto switchD_0050b0b4_caseD_5;
  }
  if (iVar5 == 0) {
    uStack_12c = 0x1a;
LAB_0050b0d1:
    param_2 = param_2 * 4;
    piVar1 = *(int **)(param_2 + *(int *)(param_1 + 0x6d54));
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 8))(piVar1);
      *(undefined4 *)(param_2 + *(int *)(param_1 + 0x6d54)) = 0;
    }
    uVar3 = FUN_0053e0e0();
    str_copy(auStack_104,uVar3);
    FUN_00520670(auStack_104,&DAT_00639d60);
    iVar2 = FUN_00521a80(auStack_104,0);
    if (iVar2 == 0) {
      FUN_005216e0();
      return 0;
    }
    FUN_00521c80(0);
    uVar3 = FUN_00521d00();
    FUN_00521b80(0);
    uVar4 = operator_new(uVar3);
    FUN_00521db0(uVar4,uVar3);
    FUN_00521b30();
    uVar3 = FUN_005b1878(*(undefined4 *)(param_1 + 0x10c),uVar4,uVar3,local_110,local_108,
                         aiStack_11c[0],0,uStack_12c,1,5,5,0,0,0,
                         param_2 + *(int *)(param_1 + 0x6d54));
    FUN_0050ddf0(uVar3,0xe28);
    operator_delete(uVar4);
  }
  else {
switchD_0050b0b4_caseD_5:
    DSP_Display__Texture_Create(param_2,local_120,local_10c,iVar2);
    iVar5 = 0;
    if (0 < iVar2) {
      do {
        if ((param_2 < 0) || (*(int *)(param_1 + 0x6d58) <= param_2)) {
          TERMINATION(s_DSP_Display__Texture_Lock___00639cdc,s_ID_is_out_of_range_00639c94);
        }
        if (*(int *)(*(int *)(param_1 + 0x6d54) + param_2 * 4) == 0) {
          TERMINATION(s_DSP_Display__Texture_Lock___00639cdc,s_no_surface_created_00639ca8);
        }
        piVar1 = *(int **)(*(int *)(param_1 + 0x6d54) + param_2 * 4);
        uVar3 = (**(code **)(*piVar1 + 0x40))(piVar1,iVar5,aiStack_11c,0,0);
        FUN_0050ddf0(uVar3,0xd2d);
        DSP_Texture__GetTexelCount_4(uStack_12c,unaff_EBX,local_128,unaff_EBP,iVar5);
        if ((param_2 < 0) || (*(int *)(param_1 + 0x6d58) <= param_2)) {
          TERMINATION(s_DSP_Display__Texture_Unlock___00639cbc,s_ID_is_out_of_range_00639c94);
        }
        if (*(int *)(*(int *)(param_1 + 0x6d54) + param_2 * 4) == 0) {
          TERMINATION(s_DSP_Display__Texture_Unlock___00639cbc,s_no_surface_created_00639ca8);
        }
        piVar1 = *(int **)(*(int *)(param_1 + 0x6d54) + param_2 * 4);
        uVar3 = (**(code **)(*piVar1 + 0x44))(piVar1,iVar5);
        FUN_0050ddf0(uVar3,0xd4f);
        iVar5 = iVar5 + 1;
      } while (iVar5 < iVar2);
    }
  }
  FUN_005216e0();
  return 1;
}



// --------------------------------------------
// DSP_Display__PixelShader_CreateFromMemory   ab 0x0050b490   283 Byte
// Texte: DSP_Display::PixelShader_CreateFromMemory(), no device available, call OpenResolution(), overflow
// --------------------------------------------

undefined4 __thiscall
DSP_Display__PixelShader_CreateFromMemory(int param_1,int *param_2,int *param_3)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  
  if (*(int *)(param_1 + 0x10c) == 0) {
    TERMINATION(s_DSP_Display__PixelShader_CreateF_00639d9c,
                s_no_device_available__call_OpenRe_00639dc8);
  }
  if ((*(uint *)(param_1 + 0x1dc) & 0xffff) < 0x100) {
    *param_2 = 0;
    return 0;
  }
  piVar2 = *(int **)(param_1 + 0x6d90);
  iVar6 = 0;
  do {
    if (*piVar2 == 0) {
      if (iVar6 < 0x40) goto LAB_0050b503;
      break;
    }
    iVar6 = iVar6 + 1;
    piVar2 = piVar2 + 3;
  } while (iVar6 < 0x40);
  TERMINATION(s_DSP_Display__PixelShader_CreateF_00639d9c,s_overflow_00639d90);
LAB_0050b503:
  if (DAT_0066d190 == 0) {
    uVar3 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x15c))
                      (*(int **)(param_1 + 0x10c),param_3,
                       *(int *)(param_1 + 0x6d90) + 4 + iVar6 * 0xc);
    FUN_0050ddf0(uVar3,0xebc);
  }
  iVar7 = iVar6 * 0xc;
  *(undefined4 *)(*(int *)(param_1 + 0x6d90) + iVar7) = 1;
  iVar1 = *param_3;
  piVar2 = param_3;
  while (piVar2 = piVar2 + 1, iVar1 != 0xffff) {
    iVar1 = *piVar2;
  }
  uVar4 = (int)piVar2 - (int)param_3;
  uVar3 = operator_new(uVar4);
  *(undefined4 *)(*(int *)(param_1 + 0x6d90) + 8 + iVar7) = uVar3;
  piVar2 = *(int **)(*(int *)(param_1 + 0x6d90) + 8 + iVar7);
  for (uVar5 = uVar4 >> 2; uVar5 != 0; uVar5 = uVar5 - 1) {
    *piVar2 = *param_3;
    param_3 = param_3 + 1;
    piVar2 = piVar2 + 1;
  }
  for (uVar4 = uVar4 & 3; uVar4 != 0; uVar4 = uVar4 - 1) {
    *(char *)piVar2 = (char)*param_3;
    param_3 = (int *)((int)param_3 + 1);
    piVar2 = (int *)((int)piVar2 + 1);
  }
  *param_2 = iVar6 + 1;
  return 0;
}



// --------------------------------------------
// DSP_Display__PixelShader_Destroy   ab 0x0050b5b0   234 Byte
// Texte: DSP_Display::PixelShader_Destroy(), ID is out of range, pixel shader not created
// --------------------------------------------

undefined4 __thiscall DSP_Display__PixelShader_Destroy(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar1 = param_2 + -1;
  if (param_2 == 0) {
    return 0;
  }
  if ((iVar1 < 0) || (0x3f < iVar1)) {
    TERMINATION(s_DSP_Display__PixelShader_Destroy_00639e10,s_ID_is_out_of_range_00639c94);
  }
  iVar3 = iVar1 * 0xc;
  if (*(int *)(iVar3 + *(int *)(param_1 + 0x6d90)) == 0) {
    TERMINATION(s_DSP_Display__PixelShader_Destroy_00639e10,s_pixel_shader_not_created_00639df4);
  }
  if (*(int *)(param_1 + 0x6d94) == iVar1) {
    uVar2 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x160))(*(int **)(param_1 + 0x10c),0);
    FUN_0050ddf0(uVar2,0xef6);
    *(undefined4 *)(param_1 + 0x6d94) = 0xffffffff;
  }
  if (DAT_0066d190 == 0) {
    uVar2 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x168))
                      (*(int **)(param_1 + 0x10c),
                       *(undefined4 *)(iVar3 + 4 + *(int *)(param_1 + 0x6d90)));
    FUN_0050ddf0(uVar2,0xeff);
  }
  *(undefined4 *)(iVar3 + *(int *)(param_1 + 0x6d90)) = 0;
  operator_delete(*(undefined4 *)(iVar3 + 8 + *(int *)(param_1 + 0x6d90)));
  *(undefined4 *)(iVar3 + 8 + *(int *)(param_1 + 0x6d90)) = 0;
  return 0;
}



// --------------------------------------------
// DSP_Display__PixelShader_Set   ab 0x0050b6a0   168 Byte
// Texte: DSP_Display::PixelShader_Set(), ID is out of range, pixel shader not created
// --------------------------------------------

undefined4 __thiscall DSP_Display__PixelShader_Set(int param_1,int param_2)

{
  int iVar1;
  
  param_2 = param_2 + -1;
  if (param_2 != *(int *)(param_1 + 0x6d94)) {
    if (param_2 == -1) {
      iVar1 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x160))(*(int **)(param_1 + 0x10c),0);
    }
    else {
      if ((param_2 < 0) || (0x3f < param_2)) {
        TERMINATION(s_DSP_Display__PixelShader_Set___00639e34,s_ID_is_out_of_range_00639c94);
      }
      if (*(int *)(param_2 * 0xc + *(int *)(param_1 + 0x6d90)) == 0) {
        TERMINATION(s_DSP_Display__PixelShader_Set___00639e34,s_pixel_shader_not_created_00639df4);
      }
      iVar1 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x160))
                        (*(int **)(param_1 + 0x10c),
                         *(undefined4 *)(param_2 * 0xc + 4 + *(int *)(param_1 + 0x6d90)));
    }
    if (iVar1 != 0) {
      FUN_0050ddf0(iVar1,0xf4b);
    }
    *(int *)(param_1 + 0x6d94) = param_2;
  }
  return 0;
}



// --------------------------------------------
// DSP_Display__VertexShader_CreateFromFile   ab 0x0050b7a0   372 Byte
// Texte: DSP_Display::VertexShader_CreateFromFile(), no device available, call OpenResolution(), overflow
// --------------------------------------------

undefined4 __thiscall
DSP_Display__VertexShader_CreateFromFile(int param_1,int *param_2,int *param_3)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  undefined4 uVar8;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_1c = 0x20000000;
  local_18 = 0x40020000;
  local_14 = 0x40020001;
  local_10 = 0x40040002;
  local_c = 0x40010003;
  local_8 = 0x40000004;
  local_4 = 0xffffffff;
  if (*(int *)(param_1 + 0x10c) == 0) {
    TERMINATION(s_DSP_Display__VertexShader_Create_00639e54,
                s_no_device_available__call_OpenRe_00639dc8);
  }
  piVar2 = *(int **)(param_1 + 0x6d98);
  iVar6 = 0;
  do {
    if (*piVar2 == 0) {
      if (iVar6 < 0x100) goto LAB_0050b832;
      break;
    }
    iVar6 = iVar6 + 1;
    piVar2 = piVar2 + 3;
  } while (iVar6 < 0x100);
  TERMINATION(s_DSP_Display__VertexShader_Create_00639e54,s_overflow_00639d90);
LAB_0050b832:
  if (DAT_0066d190 == 0) {
    piVar2 = *(int **)(param_1 + 0x10c);
    if ((*(uint *)(param_1 + 300) & 0x100000) == 0) {
      uVar3 = (**(code **)(*piVar2 + 300))
                        (piVar2,&local_1c,param_3,*(int *)(param_1 + 0x6d98) + 4 + iVar6 * 0xc,0x10)
      ;
      uVar8 = 0xfd5;
    }
    else {
      uVar3 = (**(code **)(*piVar2 + 300))
                        (piVar2,&local_1c,param_3,*(int *)(param_1 + 0x6d98) + 4 + iVar6 * 0xc,0);
      uVar8 = 0xfd0;
    }
    FUN_0050ddf0(uVar3,uVar8);
  }
  iVar7 = iVar6 * 0xc;
  *(undefined4 *)(*(int *)(param_1 + 0x6d98) + iVar7) = 1;
  iVar1 = *param_3;
  piVar2 = param_3;
  while (piVar2 = piVar2 + 1, iVar1 != 0xffff) {
    iVar1 = *piVar2;
  }
  uVar4 = (int)piVar2 - (int)param_3;
  uVar3 = operator_new(uVar4);
  *(undefined4 *)(*(int *)(param_1 + 0x6d98) + 8 + iVar7) = uVar3;
  piVar2 = *(int **)(*(int *)(param_1 + 0x6d98) + 8 + iVar7);
  for (uVar5 = uVar4 >> 2; uVar5 != 0; uVar5 = uVar5 - 1) {
    *piVar2 = *param_3;
    param_3 = param_3 + 1;
    piVar2 = piVar2 + 1;
  }
  for (uVar4 = uVar4 & 3; uVar4 != 0; uVar4 = uVar4 - 1) {
    *(char *)piVar2 = (char)*param_3;
    param_3 = (int *)((int)param_3 + 1);
    piVar2 = (int *)((int)piVar2 + 1);
  }
  *param_2 = iVar6 + 1;
  return 0;
}



// --------------------------------------------
// DSP_Display__VertexShader_Destroy   ab 0x0050b920   207 Byte
// Texte: DSP_Display::VertexShader_Destroy(), ID is out of range, vertex shader not created
// --------------------------------------------

undefined4 __thiscall DSP_Display__VertexShader_Destroy(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar1 = param_2 + -1;
  if (param_2 == 0) {
    return 0;
  }
  if ((iVar1 < 0) || (0xff < iVar1)) {
    TERMINATION(s_DSP_Display__VertexShader_Destro_00639e9c,s_ID_is_out_of_range_00639c94);
  }
  iVar3 = iVar1 * 0xc;
  if (*(int *)(iVar3 + *(int *)(param_1 + 0x6d98)) == 0) {
    TERMINATION(s_DSP_Display__VertexShader_Destro_00639e9c,s_vertex_shader_not_created_00639e80);
  }
  if (*(int *)(param_1 + 0x6d9c) == iVar1) {
    *(undefined4 *)(param_1 + 0x6d9c) = 0xffffffff;
  }
  if (DAT_0066d190 == 0) {
    uVar2 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x138))
                      (*(int **)(param_1 + 0x10c),
                       *(undefined4 *)(iVar3 + 4 + *(int *)(param_1 + 0x6d98)));
    FUN_0050ddf0(uVar2,0x1019);
  }
  *(undefined4 *)(iVar3 + *(int *)(param_1 + 0x6d98)) = 0;
  operator_delete(*(undefined4 *)(iVar3 + 8 + *(int *)(param_1 + 0x6d98)));
  *(undefined4 *)(iVar3 + 8 + *(int *)(param_1 + 0x6d98)) = 0;
  return 0;
}



// --------------------------------------------
// DSP_Display__VertexShader_Set   ab 0x0050b9f0   147 Byte
// Texte: DSP_Display::VertexShader_Set(), ID is out of range, vertex shader not created
// --------------------------------------------

undefined4 __thiscall DSP_Display__VertexShader_Set(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  
  iVar1 = param_2 + -1;
  if (param_2 != 0) {
    if ((iVar1 < 0) || (0xff < iVar1)) {
      TERMINATION(s_DSP_Display__VertexShader_Set___00639ec0,s_ID_is_out_of_range_00639c94);
    }
    if (*(int *)(iVar1 * 0xc + *(int *)(param_1 + 0x6d98)) == 0) {
      TERMINATION(s_DSP_Display__VertexShader_Set___00639ec0,s_vertex_shader_not_created_00639e80);
    }
    if (iVar1 != *(int *)(param_1 + 0x6d9c)) {
      iVar2 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x130))
                        (*(int **)(param_1 + 0x10c),
                         *(undefined4 *)(iVar1 * 0xc + 4 + *(int *)(param_1 + 0x6d98)));
      if (iVar2 != 0) {
        FUN_0050ddf0(iVar2,0x105e);
      }
      *(int *)(param_1 + 0x6d9c) = iVar1;
    }
  }
  return 0;
}



// --------------------------------------------
// DSP_Display__VertexBuffer_Create   ab 0x0050bae0   240 Byte
// Texte: DSP_Display::VertexBuffer_Create(), illegal type, overflow
// --------------------------------------------

undefined4 __thiscall
DSP_Display__VertexBuffer_Create(int param_1,undefined4 param_2,uint param_3,int param_4)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  undefined4 unaff_ESI;
  int iVar4;
  int *unaff_EDI;
  int iStack_4;
  
  iVar4 = 0;
  piVar2 = (int *)(param_1 + 0x208);
  do {
    if (*piVar2 == 0) {
      if (iVar4 < 0x400) goto LAB_0050bb1c;
      break;
    }
    iVar4 = iVar4 + 1;
    piVar2 = piVar2 + 3;
  } while (iVar4 < 0x400);
  TERMINATION(s_DSP_Display__VertexBuffer_Create_00639ee0,s_overflow_00639d90);
LAB_0050bb1c:
  if (param_3 == 0) {
    param_3 = *(uint *)(param_1 + 300) >> 0x11 & 8;
    iStack_4 = 1;
  }
  else if (param_3 == 1) {
    param_3 = (*(uint *)(param_1 + 300) & 0x100000 | 0x4000000) >> 0x11;
    iStack_4 = 0;
  }
  else {
    TERMINATION(s_DSP_Display__VertexBuffer_Create_00639ee0,s_illegal_type_0060ff1c);
    iStack_4 = param_1;
  }
  iVar1 = param_1 + iVar4 * 0xc;
  uVar3 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x5c))
                    (*(int **)(param_1 + 0x10c),param_4 * 0x28,param_3,0,iStack_4,iVar1 + 0x208);
  FUN_0050ddf0(uVar3,0x10cb);
  *(undefined4 *)(iVar1 + 0x20c) = unaff_ESI;
  *(int *)(param_1 + (iVar4 * 3 + 0x84) * 4) = param_4;
  *unaff_EDI = iVar4 + 1;
  return 0;
}



// --------------------------------------------
// DSP_Display__VertexBuffer_Destroy   ab 0x0050bbd0   131 Byte
// Texte: DSP_Display::VertexBuffer_Destroy(), ID is out of range
// --------------------------------------------

undefined4 __thiscall DSP_Display__VertexBuffer_Destroy(int param_1,int param_2)

{
  int iVar1;
  int *piVar2;
  
  iVar1 = param_2 + -1;
  if (param_2 != 0) {
    if ((iVar1 < 0) || (0x3ff < iVar1)) {
      TERMINATION(s_DSP_Display__VertexBuffer_Destro_00639f04,s_ID_is_out_of_range_00639c94);
    }
    piVar2 = (int *)(param_1 + 0x208 + iVar1 * 0xc);
    if (*piVar2 == 0) {
      return 1;
    }
    if (*(int *)(param_1 + 0x6d44) == *piVar2) {
      (**(code **)(**(int **)(param_1 + 0x10c) + 0x14c))(*(int **)(param_1 + 0x10c),0,0,0);
      *(undefined4 *)(param_1 + 0x6d44) = 0;
    }
    (**(code **)(*(int *)*piVar2 + 8))((int *)*piVar2);
    *piVar2 = 0;
  }
  return 0;
}



// --------------------------------------------
// DSP_Display__VertexBuffer_Lock   ab 0x0050bc60   204 Byte
// Texte: DSP_Display::VertexBuffer_Lock(), illegal ID, illegal lock type, vb has not been created
// --------------------------------------------

undefined4 __thiscall
DSP_Display__VertexBuffer_Lock
          (int param_1,int param_2,int param_3,undefined4 param_4,int param_5,int param_6)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  int *unaff_EDI;
  undefined4 *puVar5;
  
  iVar1 = param_2 + -1;
  if ((iVar1 < 0) || (0x3ff < iVar1)) {
    TERMINATION(s_DSP_Display__VertexBuffer_Lock___00639f54,s_illegal_ID_00639f78);
  }
  if (*(int *)(param_1 + 0x208 + iVar1 * 0xc) == 0) {
    TERMINATION(s_DSP_Display__VertexBuffer_Lock___00639f54,s_vb_has_not_been_created_00639f3c);
  }
  if (param_3 == 0) {
    iVar4 = 0x800;
  }
  else if (param_3 == 1) {
    iVar4 = 0x2800;
  }
  else if (param_3 == 2) {
    iVar4 = 0x1800;
  }
  else {
    TERMINATION(s_DSP_Display__VertexBuffer_Lock___00639f54,s_illegal_lock_type_00639f28);
    iVar4 = param_2;
  }
  piVar2 = *(int **)(param_1 + 0x208 + iVar1 * 0xc);
  puVar5 = &param_2;
  uVar3 = (**(code **)(*piVar2 + 0x2c))(piVar2,param_5 * 0x28,param_6 * 0x28,puVar5,iVar4);
  FUN_0050ddf0(uVar3,0x113b);
  *unaff_EDI = (int)puVar5;
  return 0;
}



// --------------------------------------------
// DSP_Display__VertexBuffer_Lock_2   ab 0x0050bd30   108 Byte
// Texte: DSP_Display::VertexBuffer_Lock(), DSP_Display::VertexBuffer_Unlock(), illegal vb ID, vb has not been created
// --------------------------------------------

undefined4 __thiscall DSP_Display__VertexBuffer_Lock_2(int param_1,int param_2)

{
  int *piVar1;
  undefined4 uVar2;
  
  param_2 = param_2 + -1;
  if ((param_2 < 0) || (0x3ff < param_2)) {
    TERMINATION(s_DSP_Display__VertexBuffer_Lock___00639f54,s_illegal_vb_ID_00639fa8);
  }
  if (*(int *)(param_1 + 0x208 + param_2 * 0xc) == 0) {
    TERMINATION(s_DSP_Display__VertexBuffer_Unlock_00639f84,s_vb_has_not_been_created_00639f3c);
  }
  piVar1 = *(int **)(param_1 + 0x208 + param_2 * 0xc);
  uVar2 = (**(code **)(*piVar1 + 0x30))(piVar1);
  FUN_0050ddf0(uVar2,0x115b);
  return 0;
}



// --------------------------------------------
// DSP_Display__IndexBuffer_Create   ab 0x0050bdc0   233 Byte
// Texte: DSP_Display::IndexBuffer_Create(), illegal type, overflow
// --------------------------------------------

undefined4 __thiscall
DSP_Display__IndexBuffer_Create(int param_1,undefined4 param_2,uint param_3,int param_4)

{
  uint uVar1;
  uint uVar2;
  undefined4 uVar3;
  int *piVar4;
  int iVar5;
  
  uVar1 = param_3;
  iVar5 = 0;
  piVar4 = (int *)(param_1 + 0x3208);
  do {
    if (*piVar4 == 0) {
      if (iVar5 < 0x400) goto LAB_0050bdfb;
      break;
    }
    iVar5 = iVar5 + 1;
    piVar4 = piVar4 + 3;
  } while (iVar5 < 0x400);
  TERMINATION(s_DSP_Display__IndexBuffer_Create__00639fb8,s_overflow_00639d90);
LAB_0050bdfb:
  if (param_3 == 0) {
    param_3 = 1;
    uVar2 = *(uint *)(param_1 + 300) >> 0x11 & 8;
  }
  else if (param_3 == 1) {
    uVar2 = (*(uint *)(param_1 + 300) & 0x100000 | 0x4000000) >> 0x11;
    param_3 = 0;
  }
  else {
    TERMINATION(s_DSP_Display__IndexBuffer_Create__00639fb8,s_illegal_type_0060ff1c);
    uVar2 = param_3;
  }
  *(uint *)(param_1 + 0x320c + iVar5 * 0xc) = uVar1;
  piVar4 = (int *)(param_1 + iVar5 * 0xc + 0x3208);
  *(int *)(param_1 + (iVar5 * 3 + 0xc84) * 4) = param_4;
  uVar3 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x60))
                    (*(int **)(param_1 + 0x10c),param_4 * 2,uVar2,0x65,param_3);
  FUN_0050ddf0(uVar3,0x122c);
  *piVar4 = iVar5 + 1;
  return 0;
}



// --------------------------------------------
// DSP_Display__IndexBuffer_Destroy   ab 0x0050beb0   139 Byte
// Texte: DSP_Display::IndexBuffer_Destroy(), ID is out of range
// --------------------------------------------

undefined4 __thiscall DSP_Display__IndexBuffer_Destroy(int param_1,int param_2)

{
  int iVar1;
  int *piVar2;
  
  iVar1 = param_2 + -1;
  if (param_2 != 0) {
    if ((iVar1 < 0) || (0x3ff < iVar1)) {
      TERMINATION(s_DSP_Display__IndexBuffer_Destroy_00639fdc,s_ID_is_out_of_range_00639c94);
    }
    piVar2 = (int *)(param_1 + 0x3208 + iVar1 * 0xc);
    if (*piVar2 == 0) {
      return 1;
    }
    if (*(int *)(param_1 + 0x6d48) == *piVar2) {
      (**(code **)(**(int **)(param_1 + 0x10c) + 0x154))(*(int **)(param_1 + 0x10c),0,0);
      *(undefined4 *)(param_1 + 0x6d48) = 0;
      *(undefined4 *)(param_1 + 0x6d4c) = 0;
    }
    (**(code **)(*(int *)*piVar2 + 8))((int *)*piVar2);
    *piVar2 = 0;
  }
  return 0;
}



// --------------------------------------------
// DSP_Display__IndexBuffer_Lock   ab 0x0050bf40   196 Byte
// Texte: DSP_Display::IndexBuffer_Lock(), ib has not been created, illegal ID, illegal lock type
// --------------------------------------------

undefined4 __thiscall
DSP_Display__IndexBuffer_Lock
          (int param_1,int param_2,int param_3,undefined4 param_4,int param_5,int param_6)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  int *unaff_EDI;
  undefined4 *puVar5;
  
  iVar1 = param_2 + -1;
  if ((iVar1 < 0) || (0x3ff < iVar1)) {
    TERMINATION(s_DSP_Display__IndexBuffer_Lock___0063a018,s_illegal_ID_00639f78);
  }
  if (*(int *)(param_1 + 0x3208 + iVar1 * 0xc) == 0) {
    TERMINATION(s_DSP_Display__IndexBuffer_Lock___0063a018,s_ib_has_not_been_created_0063a000);
  }
  if (param_3 == 0) {
    iVar4 = 0x800;
  }
  else if (param_3 == 1) {
    iVar4 = 0x2800;
  }
  else if (param_3 == 2) {
    iVar4 = 0x1800;
  }
  else {
    TERMINATION(s_DSP_Display__IndexBuffer_Lock___0063a018,s_illegal_lock_type_00639f28);
    iVar4 = param_2;
  }
  piVar2 = *(int **)(param_1 + 0x3208 + iVar1 * 0xc);
  puVar5 = &param_2;
  uVar3 = (**(code **)(*piVar2 + 0x2c))(piVar2,param_5 * 2,param_6 * 2,puVar5,iVar4);
  FUN_0050ddf0(uVar3,0x1299);
  *unaff_EDI = (int)puVar5;
  return 0;
}



// --------------------------------------------
// DSP_Display__IndexBuffer_Unlock   ab 0x0050c010   108 Byte
// Texte: DSP_Display::IndexBuffer_Unlock(), ib has not been created, illegal ID
// --------------------------------------------

undefined4 __thiscall DSP_Display__IndexBuffer_Unlock(int param_1,int param_2)

{
  int *piVar1;
  undefined4 uVar2;
  
  param_2 = param_2 + -1;
  if ((param_2 < 0) || (0x3ff < param_2)) {
    TERMINATION(s_DSP_Display__IndexBuffer_Unlock__0063a038,s_illegal_ID_00639f78);
  }
  if (*(int *)(param_1 + 0x3208 + param_2 * 0xc) == 0) {
    TERMINATION(s_DSP_Display__IndexBuffer_Unlock__0063a038,s_ib_has_not_been_created_0063a000);
  }
  piVar1 = *(int **)(param_1 + 0x3208 + param_2 * 0xc);
  uVar2 = (**(code **)(*piVar1 + 0x30))(piVar1);
  FUN_0050ddf0(uVar2,0x12b9);
  return 0;
}



// --------------------------------------------
// DSP_Display__Export   ab 0x0050c2d0   600 Byte
// Texte: DSP_Display::Export(), illegal depth pointer, illegal height pointer, illegal width pointer
// --------------------------------------------

undefined4 __thiscall
DSP_Display__Export(int param_1,int param_2,int *param_3,int *param_4,int *param_5)

{
  undefined1 *puVar1;
  int iVar2;
  BOOL BVar3;
  undefined4 uVar4;
  undefined1 *puVar5;
  int *piVar6;
  undefined1 *puVar7;
  int unaff_EBX;
  int *piVar8;
  undefined1 *puVar9;
  int unaff_EDI;
  int *piVar10;
  int *piVar11;
  int in_stack_ffffffb0;
  int *piVar12;
  int *piStack_40;
  char *pcStack_3c;
  char *pcStack_38;
  undefined4 auStack_24 [2];
  int iStack_1c;
  int *piStack_18;
  undefined4 auStack_10 [4];
  
  if (((*(int **)(param_1 + 200) != (int *)0x0) && (**(int **)(param_1 + 200) != 0)) &&
     (*(int *)(param_1 + 0x10c) != 0)) {
    if (param_3 == (int *)0x0) {
      pcStack_38 = s_illegal_width_pointer_0063a0a4;
      pcStack_3c = s_DSP_Display__Export___0063a08c;
      piStack_40 = (int *)0x50c315;
      TERMINATION();
    }
    if (param_4 == (int *)0x0) {
      pcStack_38 = s_illegal_height_pointer_0063a074;
      pcStack_3c = s_DSP_Display__Export___0063a08c;
      piStack_40 = (int *)0x50c32f;
      TERMINATION();
    }
    if (param_5 == (int *)0x0) {
      pcStack_38 = s_illegal_depth_pointer_0063a05c;
      pcStack_3c = s_DSP_Display__Export___0063a08c;
      piStack_40 = (int *)0x50c349;
      TERMINATION();
    }
    puVar1 = *(undefined1 **)(param_1 + 0xd8);
    piVar6 = *(int **)(param_1 + 0xdc);
    *param_3 = (int)puVar1;
    *param_4 = (int)piVar6;
    piVar8 = (int *)0x0;
    if (param_2 == 0) {
      *param_5 = (int)piVar6 * (int)puVar1 * 3;
      return 0;
    }
    if ((int)piVar6 * (int)puVar1 * 3 <= *param_5) {
      if (*(int *)(param_1 + 0xa4) == 0) {
        pcStack_38 = (char *)auStack_24;
        pcStack_3c = (char *)0x15;
        piVar12 = (int *)0x50c432;
        puVar5 = puVar1;
        piStack_40 = piVar6;
        uVar4 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x6c))(*(int **)(param_1 + 0x10c),puVar1)
        ;
        FUN_0050ddf0(uVar4,0x1420);
        auStack_10[0] = 0;
LAB_0050c447:
        piVar11 = *(int **)(param_1 + 0x10c);
        uVar4 = (**(code **)(*piVar11 + 0x78))(piVar11,puVar5);
        FUN_0050ddf0(uVar4,0x142a);
        piVar10 = (int *)0x0;
        uVar4 = (**(code **)(*piVar12 + 0x24))(piVar12,&piStack_40,0);
        FUN_0050ddf0(uVar4,0x1432);
        iVar2 = (int)piVar12 + (int)piVar8 * 4 + in_stack_ffffffb0 * unaff_EBX;
        if (0 < (int)piVar6) {
          do {
            if (0 < (int)puVar1) {
              puVar7 = (undefined1 *)(unaff_EDI + 1);
              puVar5 = (undefined1 *)(iVar2 + 1);
              puVar9 = puVar1;
              do {
                puVar7[1] = puVar5[1];
                *puVar7 = *puVar5;
                puVar7[-1] = puVar5[-1];
                puVar5 = puVar5 + 4;
                puVar7 = puVar7 + 3;
                puVar9 = puVar9 + -1;
              } while (puVar9 != (undefined1 *)0x0);
            }
            unaff_EDI = unaff_EDI + (int)puVar1 * 3;
            iVar2 = iVar2 + in_stack_ffffffb0;
            piVar6 = (int *)((int)piVar6 + -1);
          } while (piVar6 != (int *)0x0);
        }
        uVar4 = (**(code **)(*piVar11 + 0x28))(piVar11);
        FUN_0050ddf0(uVar4,0x144e);
        (**(code **)(*piVar10 + 8))(piVar10);
        return 0;
      }
      piStack_40 = (int *)**(int **)(param_1 + 200);
      pcStack_38 = (char *)auStack_10;
      pcStack_3c = *(char **)(param_1 + 0xd4);
      iVar2 = (**(code **)(*piStack_40 + 0x20))();
      if (iVar2 == 0) {
        unaff_EBX = 0;
        BVar3 = ClientToScreen(*(HWND *)(param_1 + 0x9c),(LPPOINT)&stack0xffffffd4);
        if (BVar3 != 0) {
          puVar5 = &stack0xffffffd0;
          uVar4 = (**(code **)(**(int **)(param_1 + 0x10c) + 0x6c))
                            (*(int **)(param_1 + 0x10c),iStack_1c,piStack_18,0x15,puVar5);
          FUN_0050ddf0(uVar4,0x1415);
          auStack_10[0] = pcStack_3c;
          piVar8 = piStack_40;
          in_stack_ffffffb0 = iStack_1c;
          piVar12 = piStack_18;
          goto LAB_0050c447;
        }
      }
    }
  }
  return 1;
}



// --------------------------------------------
// DSP_Display__IsTextureTypeSupported   ab 0x0050c8e0   120 Byte
// Texte: DSP_Display::IsTextureTypeSupported(), illegal type
// --------------------------------------------

undefined4 __thiscall DSP_Display__IsTextureTypeSupported(int param_1,undefined4 param_2)

{
  switch(param_2) {
  case 0:
    return *(undefined4 *)(param_1 + 0x6218);
  case 1:
    return *(undefined4 *)(param_1 + 0x621c);
  case 2:
    return *(undefined4 *)(param_1 + 0x6220);
  case 3:
    return *(undefined4 *)(param_1 + 0x6224);
  case 4:
    return *(undefined4 *)(param_1 + 0x6228);
  case 5:
    return *(undefined4 *)(param_1 + 0x620c);
  case 6:
    return *(undefined4 *)(param_1 + 0x6208);
  case 7:
    return *(undefined4 *)(param_1 + 0x6210);
  case 8:
    return *(undefined4 *)(param_1 + 0x6214);
  default:
    TERMINATION(s_DSP_Display__IsTextureTypeSuppor_0063a0d0,s_illegal_type_0060ff1c);
    return 0;
  }
}



// --------------------------------------------
// DSP_Display__Texture_ReleaseTextureSurfaces   ab 0x0050d010   122 Byte
// Texte: DSP_Display::Texture_ReleaseTextureSurfaces(), maxid must be less than maxnumoftextures, minid must be lower than maxid
// --------------------------------------------

void __thiscall DSP_Display__Texture_ReleaseTextureSurfaces(int param_1,int param_2,int param_3)

{
  int *piVar1;
  
  if (param_3 < param_2) {
    TERMINATION(s_DSP_Display__Texture_ReleaseText_0063a0f8,
                s_minid_must_be_lower_than_maxid_00639c00);
  }
  if (*(int *)(param_1 + 0x6d58) <= param_3) {
    TERMINATION(s_DSP_Display__Texture_ReleaseText_0063a0f8,
                s_maxid_must_be_less_than_maxnumof_00639bac);
  }
  if (param_2 == -1) {
    param_2 = 0;
    param_3 = *(int *)(param_1 + 0x6d58) + -1;
  }
  for (; param_2 <= param_3; param_2 = param_2 + 1) {
    piVar1 = *(int **)(*(int *)(param_1 + 0x6d54) + param_2 * 4);
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 8))(piVar1);
      *(undefined4 *)(*(int *)(param_1 + 0x6d54) + param_2 * 4) = 0;
    }
  }
  return;
}



