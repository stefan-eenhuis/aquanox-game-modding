// Muster: VEC_Material   2 Funktionen, 1844 Byte

// --------------------------------------------
// VEC_Material__Parse_Diffuse   ab 0x0052d2e0   1491 Byte
// Texte: (%s): Get "%s" in file "%s" failed, Additive, Bitmap, DES FILE ERROR, DESTCOLOR_INVSRCALPHA, DESTCOLOR_SRCCOLOR, DESTCOLOR_ZERO, DepthBias, DepthBuffered, Diffuse, Filter, Invers, ... (+13)
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall VEC_Material__Parse_Diffuse(undefined4 *param_1,undefined4 param_2)

{
  undefined1 uVar1;
  byte bVar2;
  int iVar3;
  undefined4 uVar4;
  undefined1 local_150 [264];
  int local_48;
  undefined1 local_44 [16];
  float local_34;
  float local_30;
  float local_2c;
  int local_28;
  int local_24;
  float local_20;
  float local_1c;
  undefined4 local_18;
  int local_14;
  int local_10;
  float local_c;
  float local_8;
  
  *(undefined1 *)(param_1 + 4) = 0;
  *param_1 = 0xffffffff;
  *(undefined1 *)(param_1 + 2) = 0;
  *(undefined1 *)((int)param_1 + 9) = 0xff;
  *(undefined1 *)((int)param_1 + 10) = 7;
  *(undefined1 *)((int)param_1 + 0xb) = 0;
  param_1[3] = 0x3f800000;
  *(undefined1 *)(param_1 + 1) = 0;
  *(undefined1 *)((int)param_1 + 5) = 0;
  param_1[0x28] = 0xffffffff;
  iVar3 = FUN_00507510(s_Diffuse_00655e2c,&local_34);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_VEC_Material__Parse_Diffuse___00655e0c,s_Diffuse_00655e2c,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  local_20 = (float)(int)ROUND(local_2c * _DAT_005f3394 + -0.49999988);
  local_28 = (int)ROUND(local_30 * _DAT_005f3394 + -0.49999988);
  local_24 = 0xbefffffc;
  local_1c = local_34 * _DAT_005f3394;
  local_48 = (int)ROUND(local_1c + -0.49999988);
  *(undefined1 *)((int)param_1 + 0xa2) = (undefined1)local_48;
  *(undefined1 *)((int)param_1 + 0xa1) = (undefined1)local_28;
  *(undefined1 *)(param_1 + 0x28) = local_20._0_1_;
  *(undefined1 *)((int)param_1 + 0xa3) = 0;
  iVar3 = FUN_00507800(s_Opacity_00611290,&local_8);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_VEC_Material__Parse_Diffuse___00655e0c,s_Opacity_00611290,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  if (_DAT_005f336c <= local_8) {
    if (_DAT_005f3350 <= local_8) {
      local_8 = 1.0;
    }
  }
  else {
    local_8 = 0.0;
  }
  uVar1 = __ftol();
  *(undefined1 *)((int)param_1 + 9) = uVar1;
  iVar3 = FUN_00507800(s_SelfIllumination_00655df8,&local_c);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_VEC_Material__Parse_Diffuse___00655e0c,s_SelfIllumination_00655df8,uVar4)
    ;
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  local_24 = (int)ROUND(local_c * _DAT_005f3394 + -0.49999988);
  local_1c = (float)(int)ROUND(local_c * _DAT_005f3394 + -0.49999988);
  local_28 = 0xbefffffc;
  local_20 = local_c * _DAT_005f3394;
  local_48 = (int)ROUND(local_20 + -0.49999988);
  *(undefined1 *)((int)param_1 + 0xa6) = (undefined1)local_48;
  *(undefined1 *)((int)param_1 + 0xa5) = local_1c._0_1_;
  *(undefined1 *)(param_1 + 0x29) = (undefined1)local_24;
  *(undefined1 *)((int)param_1 + 0xa7) = 0;
  iVar3 = FUN_00507710(s_TrancparencyType_00655de4,local_150);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_VEC_Material__Parse_Diffuse___00655e0c,s_TrancparencyType_00655de4,uVar4)
    ;
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  iVar3 = FUN_00520710(local_150,s_Filter_00655ddc);
  if (iVar3 == 0) {
    *(byte *)(param_1 + 2) = -(*(char *)((int)param_1 + 9) != -1) & 2;
  }
  else {
    iVar3 = FUN_00520710(local_150,s_Subtractive_00655dd0);
    if (iVar3 == 0) {
      *(byte *)(param_1 + 2) = -(*(char *)((int)param_1 + 9) != -1) & 2;
    }
    else {
      iVar3 = FUN_00520710(local_150,s_Additive_00655dc4);
      if (iVar3 == 0) {
        *(undefined1 *)(param_1 + 2) = 1;
      }
      else {
        iVar3 = FUN_00520710(local_150,s_Multiplicative_00655db4);
        if (iVar3 == 0) {
          *(undefined1 *)(param_1 + 2) = 3;
        }
        else {
          iVar3 = FUN_00520710(local_150,s_Invers_00655dac);
          if (iVar3 == 0) {
            *(undefined1 *)(param_1 + 2) = 4;
          }
          else {
            iVar3 = FUN_00520710(local_150,s_DESTCOLOR_INVSRCALPHA_00655d94);
            if (iVar3 == 0) {
              *(undefined1 *)(param_1 + 2) = 5;
            }
            else {
              iVar3 = FUN_00520710(local_150,s_ONE_INVSRCALPHA_00655d84);
              if (iVar3 == 0) {
                *(undefined1 *)(param_1 + 2) = 6;
              }
              else {
                iVar3 = FUN_00520710(local_150,s_ONE_ONE_00655d7c);
                if (iVar3 == 0) {
                  *(undefined1 *)(param_1 + 2) = 7;
                }
                else {
                  iVar3 = FUN_00520710(local_150,s_DESTCOLOR_SRCCOLOR_00655d68);
                  if (iVar3 == 0) {
                    *(undefined1 *)(param_1 + 2) = 8;
                  }
                  else {
                    iVar3 = FUN_00520710(local_150,s_DESTCOLOR_ZERO_00655d58);
                    if (iVar3 == 0) {
                      *(undefined1 *)(param_1 + 2) = 9;
                    }
                    else {
                      TERMINATION(s_VEC_Material__Parse_Diffuse___00655e0c,
                                  s_unknown_render_mode_00655d44);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  iVar3 = FUN_00507240(s_DepthBias_00655d38,(int)&param_2 + 3);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_VEC_Material__Parse_Diffuse___00655e0c,s_DepthBias_00655d38,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  *(undefined1 *)((int)param_1 + 0xb) = param_2._3_1_;
  iVar3 = FUN_00507420(s_DepthBuffered_00655d28,&local_10);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_VEC_Material__Parse_Diffuse___00655e0c,s_DepthBuffered_00655d28,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  if (local_10 == 0) {
    bVar2 = *(byte *)((int)param_1 + 10) & 0xfe;
  }
  else {
    bVar2 = *(byte *)((int)param_1 + 10) | 1;
  }
  *(byte *)((int)param_1 + 10) = bVar2;
  iVar3 = FUN_00507420(s_OneSided_00655d1c,&local_14);
  if (iVar3 == 0) {
    FUN_0052e040();
    uVar4 = FUN_0052e130();
    uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                         s_VEC_Material__Parse_Diffuse___00655e0c,s_OneSided_00655d1c,uVar4);
    TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
  }
  if (local_14 == 0) {
    bVar2 = *(byte *)((int)param_1 + 10) & 0xfb;
  }
  else {
    bVar2 = *(byte *)((int)param_1 + 10) | 4;
  }
  *(byte *)((int)param_1 + 10) = bVar2;
  iVar3 = FUN_00507980(local_44,s_Map_Diffuse_00655d10);
  if (iVar3 != 0) {
    iVar3 = FUN_00507710(s_Bitmap_00655d08,local_150);
    if (iVar3 == 0) {
      FUN_0052e040();
      uVar4 = FUN_0052e130();
      uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_VEC_Material__Parse_Diffuse___00655e0c,s_Bitmap_00655d08,uVar4);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
    }
    iVar3 = str_len(local_150);
    if (0x3e < iVar3) {
      TERMINATION(s_VEC_Map__SetTextureName___textur_00655cd8,local_150);
    }
    str_copy(param_1 + 4,local_150);
    iVar3 = FUN_00507800(s_TilingU_00655cd0,&local_18);
    if (iVar3 == 0) {
      FUN_0052e040();
      uVar4 = FUN_0052e130();
      uVar4 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_VEC_Material__Parse_Diffuse___00655e0c,s_TilingU_00655cd0,uVar4);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar4);
    }
    param_1[3] = local_18;
  }
  return;
}



// --------------------------------------------
// VEC_Material__Parse_Detail   ab 0x0052d8c0   353 Byte
// Texte: (%s): Get "%s" in file "%s" failed, Amount, Bitmap, DES FILE ERROR, Map_Bump, TilingU, VEC_Map::SetTextureName() texturename too long, VEC_Material::Parse_Detail()
// --------------------------------------------

void __fastcall VEC_Material__Parse_Detail(int param_1)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined1 auStack_120 [4];
  undefined4 uStack_11c;
  undefined1 local_118 [16];
  undefined1 local_108 [264];
  
  iVar2 = FUN_00507980(local_118,s_Map_Bump_00655e5c);
  if (iVar2 != 0) {
    iVar2 = FUN_00507710(s_Bitmap_00655d08,local_108);
    if (iVar2 == 0) {
      FUN_0052e040();
      uVar3 = FUN_0052e130();
      uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_VEC_Material__Parse_Detail___00655e3c,s_Bitmap_00655d08,uVar3);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
    }
    iVar2 = str_len(local_108);
    if (0x3e < iVar2) {
      TERMINATION(s_VEC_Map__SetTextureName___textur_00655cd8,local_108);
    }
    str_copy(param_1 + 0x60,local_108);
    iVar2 = FUN_00507800(s_TilingU_00655cd0,&uStack_11c);
    if (iVar2 == 0) {
      FUN_0052e040();
      uVar3 = FUN_0052e130();
      uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_VEC_Material__Parse_Detail___00655e3c,s_TilingU_00655cd0,uVar3);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
    }
    *(undefined4 *)(param_1 + 0x5c) = uStack_11c;
    iVar2 = FUN_00507800(s_Amount_00655e34,auStack_120);
    if (iVar2 == 0) {
      FUN_0052e040();
      uVar3 = FUN_0052e130();
      uVar3 = FUN_005222c0(s___s___Get___s__in_file___s__fail_006035ec,
                           s_VEC_Material__Parse_Detail___00655e3c,s_Amount_00655e34,uVar3);
      TERMINATION(s_DES_FILE_ERROR_00603624,uVar3);
    }
    uVar1 = __ftol();
    *(undefined1 *)(param_1 + 0x59) = uVar1;
    *(undefined1 *)(param_1 + 0x58) = 3;
  }
  return;
}



