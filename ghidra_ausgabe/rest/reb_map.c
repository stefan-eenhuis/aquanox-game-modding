// Muster: REB_Map   1 Funktionen, 530 Byte

// --------------------------------------------
// REB_Map__SetMapToRenderState   ab 0x005270d0   530 Byte
// Texte: REB_Map::SetMapToRenderState(RenderMode), illegal mode, illegal texture address mode in material map
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 REB_Map__SetMapToRenderState(undefined4 *param_1,undefined4 param_2)

{
  _DAT_00644910 = (*(byte *)((int)param_1 + 10) & 2) >> 1;
  _DAT_00644918 = *(byte *)((int)param_1 + 10) & 1;
  _DAT_0064493c = (uint)*(byte *)((int)param_1 + 0xb);
  _DAT_00644938 = param_2;
  _DAT_00644928 = (*(byte *)((int)param_1 + 10) & 4 | 2) >> 1;
  switch(*(undefined1 *)(param_1 + 2)) {
  case 0:
    _DAT_00644920 = 2;
    _DAT_00644924 = 1;
    _DAT_0064491c = 1;
    break;
  case 1:
    _DAT_00644920 = 5;
    _DAT_00644924 = 2;
    _DAT_0064491c = 1;
    break;
  case 2:
    _DAT_00644920 = 5;
    _DAT_00644924 = 6;
    _DAT_0064491c = 1;
    break;
  case 3:
    _DAT_00644920 = 9;
    _DAT_00644924 = 2;
    _DAT_0064491c = 0;
    break;
  case 4:
    _DAT_00644920 = 1;
    _DAT_00644924 = 4;
    _DAT_0064491c = 0;
    break;
  case 5:
    _DAT_00644920 = 9;
    goto LAB_005271c4;
  case 6:
    _DAT_00644920 = 2;
LAB_005271c4:
    _DAT_00644924 = 6;
    _DAT_0064491c = 0;
    break;
  case 7:
    _DAT_00644920 = 2;
    _DAT_00644924 = 2;
    _DAT_0064491c = 0;
    break;
  case 8:
    _DAT_00644920 = 9;
    _DAT_00644924 = 3;
    _DAT_0064491c = 0;
    break;
  case 9:
    _DAT_00644920 = 9;
    _DAT_00644924 = 1;
    _DAT_0064491c = 0;
    break;
  default:
    TERMINATION(s_REB_Map__SetMapToRenderState_Ren_0064497c,s_illegal_mode_0060da90);
  }
  switch(*(undefined1 *)((int)param_1 + 5)) {
  case 0:
    _DAT_006448f4 = 1;
    _DAT_006448f8 = 1;
    break;
  case 1:
    _DAT_006448f4 = 2;
    _DAT_006448f8 = 2;
    break;
  case 2:
    _DAT_006448f4 = 3;
    _DAT_006448f8 = 3;
    break;
  case 3:
    _DAT_006448f4 = 4;
    _DAT_006448f8 = 4;
    break;
  case 4:
    _DAT_006448f4 = 5;
    _DAT_006448f8 = 5;
    break;
  default:
    TERMINATION(s_REB_Map__SetMapToRenderState_Ren_0064497c,
                s_illegal_texture_address_mode_in_m_0064494c);
  }
  FUN_00509db0(&DAT_00644910);
  _DAT_0064490c = *param_1;
  DSP_Display__SetTextureStageState(0,&DAT_006448cc);
  DSP_Display__SetTextureStageState(1,0);
  return 1;
}



