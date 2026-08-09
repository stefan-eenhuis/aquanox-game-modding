// --------------------------------------------
// FUN_004e74c0   ab 0x004e74c0   31439 Byte
// gerufen von: FUN_0045f630, FUN_0046a650, FUN_0046cc50, FUN_0046d980, FUN_0046f9b0, FUN_00473570, FUN_00482320, FUN_00482b70, FUN_00485d70, FUN_00487ba0, ... (+10)
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall FUN_004e74c0(int *param_1,int param_2,int param_3)

{
  float *pfVar1;
  float fVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  float fVar6;
  
  if ((*(byte *)(param_1 + 1) & 1) == 0) {
    switch(*param_1 >> 3 & 0xf) {
    case 1:
      iVar3 = param_1[0x20];
      param_1[0x22] = 0x3f800000;
      pfVar1 = (float *)(param_1 + 0x20);
      param_1[0x21] = 0;
      *pfVar1 = 0.0;
      FUN_0051f050((float)param_1[0x23] * *(float *)(param_2 + 4) +
                   (float)param_1[0x24] * *(float *)(param_2 + 0x10) +
                   *(float *)(param_2 + 0x14) * (float)param_1[0x25]);
      param_1[0x23] =
           (int)((float)param_1[0x25] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x24] * *(float *)(param_2 + 4) + (float)param_1[0x23]);
      param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
      FUN_0051dc60(pfVar1);
      FUN_0051f050(iVar3);
      fVar2 = *pfVar1;
      fVar6 = (float)param_1[0x28];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e760c;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e760c:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      break;
    case 2:
      iVar3 = param_1[0x12];
      iVar4 = param_1[0x20];
      pfVar1 = (float *)(param_1 + 0x12);
      param_1[0x14] = 0x3f800000;
      param_1[0x13] = 0;
      *pfVar1 = 0.0;
      param_1[0x22] = 0x3f800000;
      param_1[0x21] = 0;
      param_1[0x20] = 0;
      FUN_0051f050((float)param_1[0x16] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x15] * *(float *)(param_2 + 4) +
                   *(float *)(param_2 + 0x14) * (float)param_1[0x17]);
      param_1[0x15] =
           (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
                 (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
      param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
      FUN_0051f050((float)param_1[0x24] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x23] * *(float *)(param_2 + 4) +
                   (float)param_1[0x25] * *(float *)(param_2 + 0x14));
      param_1[0x23] =
           (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
                 (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
      param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
      FUN_0051dc60(param_1 + 0x20);
      FUN_0051da80(pfVar1);
      FUN_0051f050(iVar3);
      FUN_0051f050(iVar4);
      fVar2 = *pfVar1;
      fVar6 = (float)param_1[0x26];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e7879;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e7879:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
      fVar6 = (float)param_1[0x28];
      fVar2 = (float)param_1[0x20];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e79ef;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e79ef:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (ABS(fVar6) < _DAT_005f3464) {
LAB_004e7acb:
        fVar2 = fVar2 - fVar6;
      }
      else if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004e7acb;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004e7acb;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      break;
    case 3:
      iVar3 = param_1[0x19];
      iVar4 = param_1[0x20];
      pfVar1 = (float *)(param_1 + 0x19);
      param_1[0x1b] = 0x3f800000;
      param_1[0x1a] = 0;
      *pfVar1 = 0.0;
      param_1[0x22] = 0x3f800000;
      param_1[0x21] = 0;
      param_1[0x20] = 0;
      FUN_0051f050((float)param_1[0x1c] * *(float *)(param_2 + 4) +
                   (float)param_1[0x1e] * *(float *)(param_2 + 0x14) +
                   (float)param_1[0x1d] * *(float *)(param_2 + 0x10));
      param_1[0x1c] =
           (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
                 (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
      param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
      FUN_0051f050((float)param_1[0x24] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x23] * *(float *)(param_2 + 4) +
                   *(float *)(param_2 + 0x14) * (float)param_1[0x25]);
      param_1[0x23] =
           (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
                 (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
      param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
      FUN_0051dc60(param_1 + 0x20);
      FUN_0051db70(pfVar1);
      FUN_0051f050(iVar3);
      FUN_0051f050(iVar4);
      fVar2 = *pfVar1;
      fVar6 = (float)param_1[0x27];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e7c5d;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e7c5d:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x27] = (int)(fVar2 + (float)param_1[0x27]);
      fVar6 = (float)param_1[0x28];
      fVar2 = (float)param_1[0x20];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e7dd3;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e7dd3:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (ABS(fVar6) < _DAT_005f3464) {
LAB_004e7eaf:
        fVar2 = fVar2 - fVar6;
      }
      else if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004e7eaf;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004e7eaf;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      break;
    case 4:
      iVar3 = param_1[0x20];
      iVar4 = param_1[0x12];
      iVar5 = param_1[0x19];
      pfVar1 = (float *)(param_1 + 0x12);
      param_1[0x14] = 0x3f800000;
      param_1[0x13] = 0;
      *pfVar1 = 0.0;
      param_1[0x1b] = 0x3f800000;
      param_1[0x1a] = 0;
      param_1[0x19] = 0;
      param_1[0x22] = 0x3f800000;
      param_1[0x21] = 0;
      param_1[0x20] = 0;
      FUN_0051f050((float)param_1[0x15] * *(float *)(param_2 + 4) +
                   (float)param_1[0x17] * *(float *)(param_2 + 0x14) +
                   (float)param_1[0x16] * *(float *)(param_2 + 0x10));
      param_1[0x15] =
           (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
                 (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
      param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
      FUN_0051f050((float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x1c] * *(float *)(param_2 + 4) +
                   *(float *)(param_2 + 0x14) * (float)param_1[0x1e]);
      param_1[0x1c] =
           (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
                 (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
      param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
      FUN_0051f050((float)param_1[0x24] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x23] * *(float *)(param_2 + 4) +
                   (float)param_1[0x25] * *(float *)(param_2 + 0x14));
      param_1[0x23] =
           (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
                 (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
      param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
      FUN_0051dc60(param_1 + 0x20);
      FUN_0051da80(pfVar1);
      FUN_0051db70(param_1 + 0x19);
      FUN_0051f050(iVar4);
      FUN_0051f050(iVar5);
      FUN_0051f050(iVar3);
      fVar2 = *pfVar1;
      fVar6 = (float)param_1[0x26];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e80ab;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e80ab:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
      fVar6 = (float)param_1[0x27];
      fVar2 = (float)param_1[0x19];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e8222;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e8222:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x27] = (int)(fVar2 + (float)param_1[0x27]);
      fVar6 = (float)param_1[0x28];
      fVar2 = (float)param_1[0x20];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e839c;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e839c:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (ABS(fVar6) < _DAT_005f3464) {
LAB_004e8478:
        fVar2 = fVar2 - fVar6;
      }
      else if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004e8478;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004e8478;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      break;
    case 5:
      iVar3 = param_1[0x20];
      iVar4 = param_1[0x12];
      iVar5 = param_1[0x19];
      pfVar1 = (float *)(param_1 + 0x12);
      param_1[0x14] = 0x3f800000;
      param_1[0x13] = 0;
      *pfVar1 = 0.0;
      param_1[0x1b] = 0x3f800000;
      param_1[0x1a] = 0;
      param_1[0x19] = 0;
      param_1[0x22] = 0x3f800000;
      param_1[0x21] = 0;
      param_1[0x20] = 0;
      FUN_0051f050((float)param_1[0x16] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x15] * *(float *)(param_2 + 4) +
                   (float)param_1[0x17] * *(float *)(param_2 + 0x14));
      param_1[0x15] =
           (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
                 (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
      param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
      FUN_0051f050((float)param_1[0x1e] * *(float *)(param_2 + 0x14) +
                   (float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x1c] * *(float *)(param_2 + 4));
      param_1[0x1c] =
           (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
                 (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
      param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
      FUN_0051f050((float)param_1[0x23] * *(float *)(param_2 + 4) +
                   (float)param_1[0x25] * *(float *)(param_2 + 0x14) +
                   (float)param_1[0x24] * *(float *)(param_2 + 0x10));
      param_1[0x23] =
           (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
                 (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
      param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
      FUN_0051dc60(param_1 + 0x20);
      FUN_0051db70(param_1 + 0x19);
      FUN_0051da80(pfVar1);
      FUN_0051f050(iVar4);
      FUN_0051f050(iVar5);
      FUN_0051f050(iVar3);
      fVar2 = *pfVar1;
      fVar6 = (float)param_1[0x26];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e8674;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e8674:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
      fVar6 = (float)param_1[0x27];
      fVar2 = (float)param_1[0x19];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e87eb;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e87eb:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x27] = (int)(fVar2 + (float)param_1[0x27]);
      fVar6 = (float)param_1[0x28];
      fVar2 = (float)param_1[0x20];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e8965;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e8965:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (ABS(fVar6) < _DAT_005f3464) {
LAB_004e8a41:
        fVar2 = fVar2 - fVar6;
      }
      else if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004e8a41;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004e8a41;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      break;
    case 6:
      iVar3 = param_1[0x12];
      param_1[0x14] = 0x3f800000;
      pfVar1 = (float *)(param_1 + 0x12);
      param_1[0x13] = 0;
      *pfVar1 = 0.0;
      FUN_0051f050((float)param_1[0x16] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x15] * *(float *)(param_2 + 4) +
                   *(float *)(param_2 + 0x14) * (float)param_1[0x17]);
      param_1[0x15] =
           (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
                 (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
      param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
      FUN_0051da80(pfVar1);
      FUN_0051f050(iVar3);
      fVar2 = *pfVar1;
      fVar6 = (float)param_1[0x26];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e8b3d;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e8b3d:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) goto LAB_004e8c28;
      goto LAB_004e8c11;
    case 7:
      iVar3 = param_1[0x12];
      iVar4 = param_1[0x20];
      pfVar1 = (float *)(param_1 + 0x12);
      param_1[0x14] = 0x3f800000;
      param_1[0x13] = 0;
      *pfVar1 = 0.0;
      param_1[0x22] = 0x3f800000;
      param_1[0x21] = 0;
      param_1[0x20] = 0;
      FUN_0051f050((float)param_1[0x16] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x15] * *(float *)(param_2 + 4) +
                   *(float *)(param_2 + 0x14) * (float)param_1[0x17]);
      param_1[0x15] =
           (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
                 (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
      param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
      FUN_0051f050((float)param_1[0x24] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x23] * *(float *)(param_2 + 4) +
                   (float)param_1[0x25] * *(float *)(param_2 + 0x14));
      param_1[0x23] =
           (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
                 (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
      param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
      FUN_0051da80(pfVar1);
      FUN_0051dc60(param_1 + 0x20);
      FUN_0051f050(iVar3);
      FUN_0051f050(iVar4);
      fVar2 = *pfVar1;
      fVar6 = (float)param_1[0x26];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e8dd6;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e8dd6:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
      fVar6 = (float)param_1[0x28];
      fVar2 = (float)param_1[0x20];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e8f4c;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e8f4c:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (ABS(fVar6) < _DAT_005f3464) {
LAB_004e9028:
        fVar2 = fVar2 - fVar6;
      }
      else if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004e9028;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004e9028;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      break;
    case 8:
      iVar3 = param_1[0x12];
      iVar4 = param_1[0x19];
      pfVar1 = (float *)(param_1 + 0x12);
      param_1[0x14] = 0x3f800000;
      param_1[0x13] = 0;
      *pfVar1 = 0.0;
      param_1[0x1b] = 0x3f800000;
      param_1[0x1a] = 0;
      param_1[0x19] = 0;
      FUN_0051f050((float)param_1[0x16] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x15] * *(float *)(param_2 + 4) +
                   *(float *)(param_2 + 0x14) * (float)param_1[0x17]);
      param_1[0x15] =
           (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
                 (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
      param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
      FUN_0051f050((float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x1c] * *(float *)(param_2 + 4) +
                   (float)param_1[0x1e] * *(float *)(param_2 + 0x14));
      param_1[0x1c] =
           (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
                 (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
      param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
      FUN_0051da80(pfVar1);
      FUN_0051db70(param_1 + 0x19);
      FUN_0051f050(iVar3);
      FUN_0051f050(iVar4);
      fVar2 = *pfVar1;
      fVar6 = (float)param_1[0x26];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e918a;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e918a:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
      fVar6 = (float)param_1[0x27];
      fVar2 = (float)param_1[0x19];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e9300;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e9300:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) goto LAB_004e93eb;
      goto LAB_004e93d4;
    case 9:
      iVar3 = param_1[0x20];
      iVar4 = param_1[0x12];
      iVar5 = param_1[0x19];
      pfVar1 = (float *)(param_1 + 0x12);
      param_1[0x14] = 0x3f800000;
      param_1[0x13] = 0;
      *pfVar1 = 0.0;
      param_1[0x1b] = 0x3f800000;
      param_1[0x1a] = 0;
      param_1[0x19] = 0;
      param_1[0x22] = 0x3f800000;
      param_1[0x21] = 0;
      param_1[0x20] = 0;
      FUN_0051f050((float)param_1[0x16] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x15] * *(float *)(param_2 + 4) +
                   (float)param_1[0x17] * *(float *)(param_2 + 0x14));
      param_1[0x15] =
           (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
                 (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
      param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
      FUN_0051f050((float)param_1[0x1e] * *(float *)(param_2 + 0x14) +
                   (float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x1c] * *(float *)(param_2 + 4));
      param_1[0x1c] =
           (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
                 (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
      param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
      FUN_0051f050((float)param_1[0x23] * *(float *)(param_2 + 4) +
                   (float)param_1[0x25] * *(float *)(param_2 + 0x14) +
                   (float)param_1[0x24] * *(float *)(param_2 + 0x10));
      param_1[0x23] =
           (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
                 (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
      param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
      FUN_0051da80(pfVar1);
      FUN_0051dc60(param_1 + 0x20);
      FUN_0051db70(param_1 + 0x19);
      FUN_0051f050(iVar4);
      FUN_0051f050(iVar5);
      FUN_0051f050(iVar3);
      fVar2 = *pfVar1;
      fVar6 = (float)param_1[0x26];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e9603;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e9603:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
      fVar6 = (float)param_1[0x27];
      fVar2 = (float)param_1[0x19];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e977a;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e977a:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x27] = (int)(fVar2 + (float)param_1[0x27]);
      fVar6 = (float)param_1[0x28];
      fVar2 = (float)param_1[0x20];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e98f4;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e98f4:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (ABS(fVar6) < _DAT_005f3464) {
LAB_004e99d0:
        fVar2 = fVar2 - fVar6;
      }
      else if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004e99d0;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004e99d0;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      break;
    case 10:
      iVar3 = param_1[0x20];
      iVar4 = param_1[0x12];
      iVar5 = param_1[0x19];
      pfVar1 = (float *)(param_1 + 0x12);
      param_1[0x14] = 0x3f800000;
      param_1[0x13] = 0;
      *pfVar1 = 0.0;
      param_1[0x1b] = 0x3f800000;
      param_1[0x1a] = 0;
      param_1[0x19] = 0;
      param_1[0x22] = 0x3f800000;
      param_1[0x21] = 0;
      param_1[0x20] = 0;
      FUN_0051f050((float)param_1[0x15] * *(float *)(param_2 + 4) +
                   (float)param_1[0x17] * *(float *)(param_2 + 0x14) +
                   (float)param_1[0x16] * *(float *)(param_2 + 0x10));
      param_1[0x15] =
           (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
                 (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
      param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
      FUN_0051f050((float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x1c] * *(float *)(param_2 + 4) +
                   *(float *)(param_2 + 0x14) * (float)param_1[0x1e]);
      param_1[0x1c] =
           (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
                 (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
      param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
      FUN_0051f050((float)param_1[0x24] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x23] * *(float *)(param_2 + 4) +
                   (float)param_1[0x25] * *(float *)(param_2 + 0x14));
      param_1[0x23] =
           (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
                 (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
      param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
      FUN_0051da80(pfVar1);
      FUN_0051db70(param_1 + 0x19);
      FUN_0051dc60(param_1 + 0x20);
      FUN_0051f050(iVar4);
      FUN_0051f050(iVar5);
      FUN_0051f050(iVar3);
      fVar2 = *pfVar1;
      fVar6 = (float)param_1[0x26];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e9bcc;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e9bcc:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
      fVar6 = (float)param_1[0x27];
      fVar2 = (float)param_1[0x19];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e9d43;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e9d43:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x27] = (int)(fVar2 + (float)param_1[0x27]);
      fVar6 = (float)param_1[0x28];
      fVar2 = (float)param_1[0x20];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004e9ebd;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004e9ebd:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (ABS(fVar6) < _DAT_005f3464) {
LAB_004e9f99:
        fVar2 = fVar2 - fVar6;
      }
      else if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004e9f99;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004e9f99;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      break;
    case 0xb:
      iVar3 = param_1[0x19];
      param_1[0x1b] = 0x3f800000;
      pfVar1 = (float *)(param_1 + 0x19);
      param_1[0x1a] = 0;
      *pfVar1 = 0.0;
      FUN_0051f050((float)param_1[0x1c] * *(float *)(param_2 + 4) +
                   (float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                   *(float *)(param_2 + 0x14) * (float)param_1[0x1e]);
      param_1[0x1c] =
           (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
                 (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
      param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
      FUN_0051db70(pfVar1);
      FUN_0051f050(iVar3);
      fVar2 = *pfVar1;
      fVar6 = (float)param_1[0x27];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004ea095;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004ea095:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (ABS(fVar6) < _DAT_005f3464) {
LAB_004ea171:
        fVar2 = fVar2 - fVar6;
      }
      else if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004ea171;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004ea171;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      goto LAB_004ed118;
    case 0xc:
      iVar3 = param_1[0x19];
      iVar4 = param_1[0x20];
      pfVar1 = (float *)(param_1 + 0x19);
      param_1[0x1b] = 0x3f800000;
      param_1[0x1a] = 0;
      *pfVar1 = 0.0;
      param_1[0x22] = 0x3f800000;
      param_1[0x21] = 0;
      param_1[0x20] = 0;
      FUN_0051f050((float)param_1[0x1e] * *(float *)(param_2 + 0x14) +
                   (float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x1c] * *(float *)(param_2 + 4));
      param_1[0x1c] =
           (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
                 (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
      param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
      FUN_0051f050((float)param_1[0x23] * *(float *)(param_2 + 4) +
                   (float)param_1[0x25] * *(float *)(param_2 + 0x14) +
                   (float)param_1[0x24] * *(float *)(param_2 + 0x10));
      param_1[0x23] =
           (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
                 (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
      param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
      FUN_0051db70(pfVar1);
      FUN_0051dc60(param_1 + 0x20);
      FUN_0051f050(iVar3);
      FUN_0051f050(iVar4);
      fVar2 = *pfVar1;
      fVar6 = (float)param_1[0x27];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004ea303;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004ea303:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x27] = (int)(fVar2 + (float)param_1[0x27]);
      fVar6 = (float)param_1[0x28];
      fVar2 = (float)param_1[0x20];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004ea479;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004ea479:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (ABS(fVar6) < _DAT_005f3464) {
LAB_004ea555:
        fVar2 = fVar2 - fVar6;
      }
      else if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004ea555;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004ea555;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      break;
    case 0xd:
      iVar3 = param_1[0x12];
      iVar4 = param_1[0x19];
      pfVar1 = (float *)(param_1 + 0x12);
      param_1[0x14] = 0x3f800000;
      param_1[0x13] = 0;
      *pfVar1 = 0.0;
      param_1[0x1b] = 0x3f800000;
      param_1[0x1a] = 0;
      param_1[0x19] = 0;
      FUN_0051f050((float)param_1[0x17] * *(float *)(param_2 + 0x14) +
                   (float)param_1[0x16] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x15] * *(float *)(param_2 + 4));
      param_1[0x15] =
           (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
                 (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
      param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
      FUN_0051f050((float)param_1[0x1c] * *(float *)(param_2 + 4) +
                   (float)param_1[0x1e] * *(float *)(param_2 + 0x14) +
                   (float)param_1[0x1d] * *(float *)(param_2 + 0x10));
      param_1[0x1c] =
           (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
                 (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
      param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
      FUN_0051db70(param_1 + 0x19);
      FUN_0051da80(pfVar1);
      FUN_0051f050(iVar3);
      FUN_0051f050(iVar4);
      fVar2 = *pfVar1;
      fVar6 = (float)param_1[0x26];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004ea6b7;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004ea6b7:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
      fVar6 = (float)param_1[0x27];
      fVar2 = (float)param_1[0x19];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004ea82d;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004ea82d:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (ABS(fVar6) < _DAT_005f3464) {
LAB_004ea909:
        fVar2 = fVar2 - fVar6;
      }
      else if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004ea909;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004ea909;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      goto LAB_004ed118;
    case 0xe:
      iVar3 = param_1[0x20];
      iVar4 = param_1[0x12];
      iVar5 = param_1[0x19];
      pfVar1 = (float *)(param_1 + 0x12);
      param_1[0x14] = 0x3f800000;
      param_1[0x13] = 0;
      *pfVar1 = 0.0;
      param_1[0x1b] = 0x3f800000;
      param_1[0x1a] = 0;
      param_1[0x19] = 0;
      param_1[0x22] = 0x3f800000;
      param_1[0x21] = 0;
      param_1[0x20] = 0;
      FUN_0051f050((float)param_1[0x15] * *(float *)(param_2 + 4) +
                   (float)param_1[0x17] * *(float *)(param_2 + 0x14) +
                   (float)param_1[0x16] * *(float *)(param_2 + 0x10));
      param_1[0x15] =
           (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
                 (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
      param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
      FUN_0051f050((float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x1c] * *(float *)(param_2 + 4) +
                   *(float *)(param_2 + 0x14) * (float)param_1[0x1e]);
      param_1[0x1c] =
           (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
                 (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
      param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
      FUN_0051f050((float)param_1[0x24] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x23] * *(float *)(param_2 + 4) +
                   (float)param_1[0x25] * *(float *)(param_2 + 0x14));
      param_1[0x23] =
           (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
                 (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
      param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
      FUN_0051db70(param_1 + 0x19);
      FUN_0051dc60(param_1 + 0x20);
      FUN_0051da80(pfVar1);
      FUN_0051f050(iVar4);
      FUN_0051f050(iVar5);
      FUN_0051f050(iVar3);
      fVar2 = *pfVar1;
      fVar6 = (float)param_1[0x26];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004eab05;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004eab05:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
      fVar6 = (float)param_1[0x27];
      fVar2 = (float)param_1[0x19];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004eac7c;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004eac7c:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x27] = (int)(fVar2 + (float)param_1[0x27]);
      fVar6 = (float)param_1[0x28];
      fVar2 = (float)param_1[0x20];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004eadf6;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004eadf6:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (ABS(fVar6) < _DAT_005f3464) {
LAB_004eaed2:
        fVar2 = fVar2 - fVar6;
      }
      else if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004eaed2;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004eaed2;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      break;
    case 0xf:
      iVar3 = param_1[0x20];
      iVar4 = param_1[0x12];
      iVar5 = param_1[0x19];
      pfVar1 = (float *)(param_1 + 0x12);
      param_1[0x14] = 0x3f800000;
      param_1[0x13] = 0;
      *pfVar1 = 0.0;
      param_1[0x1b] = 0x3f800000;
      param_1[0x1a] = 0;
      param_1[0x19] = 0;
      param_1[0x22] = 0x3f800000;
      param_1[0x21] = 0;
      param_1[0x20] = 0;
      FUN_0051f050((float)param_1[0x16] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x15] * *(float *)(param_2 + 4) +
                   (float)param_1[0x17] * *(float *)(param_2 + 0x14));
      param_1[0x15] =
           (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
                 (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
      param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
      FUN_0051f050((float)param_1[0x1e] * *(float *)(param_2 + 0x14) +
                   (float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                   (float)param_1[0x1c] * *(float *)(param_2 + 4));
      param_1[0x1c] =
           (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
                 (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
      param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
      FUN_0051f050((float)param_1[0x23] * *(float *)(param_2 + 4) +
                   (float)param_1[0x25] * *(float *)(param_2 + 0x14) +
                   (float)param_1[0x24] * *(float *)(param_2 + 0x10));
      param_1[0x23] =
           (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
                 (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
      param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
      FUN_0051db70(param_1 + 0x19);
      FUN_0051da80(pfVar1);
      FUN_0051dc60(param_1 + 0x20);
      FUN_0051f050(iVar4);
      FUN_0051f050(iVar5);
      FUN_0051f050(iVar3);
      fVar2 = *pfVar1;
      fVar6 = (float)param_1[0x26];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004eb0ce;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004eb0ce:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
      fVar6 = (float)param_1[0x27];
      fVar2 = (float)param_1[0x19];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004eb245;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004eb245:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (_DAT_005f3464 <= ABS(fVar6)) {
        if (ABS(fVar6) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar6) {
            if (_DAT_005f3464 <= fVar6) {
              fVar6 = fVar6 - _DAT_005f3460;
            }
          }
          else {
            fVar6 = fVar6 + _DAT_005f3460;
          }
        }
      }
      fVar2 = fVar2 - fVar6;
      if (_DAT_005f5378 <= fVar2) {
        if (_DAT_005f3464 <= fVar2) {
          fVar2 = fVar2 - _DAT_005f3460;
        }
      }
      else {
        fVar2 = fVar2 + _DAT_005f3460;
      }
      param_1[0x27] = (int)(fVar2 + (float)param_1[0x27]);
      fVar6 = (float)param_1[0x28];
      fVar2 = (float)param_1[0x20];
      if (_DAT_005f3464 <= ABS(fVar2)) {
        if (ABS(fVar2) < _DAT_005f3460) {
          if (_DAT_005f5378 <= fVar2) goto LAB_004eb3bf;
          fVar2 = fVar2 + _DAT_005f3460;
        }
        else {
          fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
          if (_DAT_005f5378 <= fVar2) {
LAB_004eb3bf:
            if (_DAT_005f3464 <= fVar2) {
              fVar2 = fVar2 - _DAT_005f3460;
            }
          }
          else {
            fVar2 = fVar2 + _DAT_005f3460;
          }
        }
      }
      if (ABS(fVar6) < _DAT_005f3464) {
LAB_004eb49b:
        fVar2 = fVar2 - fVar6;
      }
      else if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004eb49b;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (fVar6 < _DAT_005f3464) goto LAB_004eb49b;
          fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
        }
        else {
          fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
        }
      }
      break;
    default:
      goto switchD_004e74e7_default;
    }
    goto LAB_004e76d3;
  }
  switch(*param_1 >> 3 & 0xf) {
  case 1:
    FUN_0051f050((float)param_1[0x24] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x23] * *(float *)(param_2 + 4) +
                 *(float *)(param_2 + 0x14) * (float)param_1[0x25]);
    param_1[0x23] =
         (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
               (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
    param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
    FUN_0051d440(param_1 + 0x20,param_1 + 0x12,param_1 + 0x19);
    fVar2 = (float)param_1[0x20];
    fVar6 = (float)param_1[0x28];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004eb5b9;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004eb5b9:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (ABS(fVar6) < _DAT_005f3464) {
LAB_004eb695:
      fVar2 = fVar2 - fVar6;
    }
    else if (ABS(fVar6) < _DAT_005f3460) {
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004eb695;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    else {
      fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004eb695;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    break;
  case 2:
    FUN_0051f050((float)param_1[0x16] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x17] * *(float *)(param_2 + 0x14) +
                 (float)param_1[0x15] * *(float *)(param_2 + 4));
    param_1[0x15] =
         (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
               (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
    param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
    FUN_0051f050((float)param_1[0x23] * *(float *)(param_2 + 4) +
                 (float)param_1[0x24] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x25] * *(float *)(param_2 + 0x14));
    param_1[0x23] =
         (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
               (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
    param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
    FUN_0051d440(param_1 + 0x20,param_1 + 0x12,param_1 + 0x19);
    fVar2 = (float)param_1[0x12];
    fVar6 = (float)param_1[0x26];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004eb7da;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004eb7da:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
    fVar6 = (float)param_1[0x28];
    fVar2 = (float)param_1[0x20];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004eb950;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004eb950:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (ABS(fVar6) < _DAT_005f3464) {
LAB_004eba2c:
      fVar2 = fVar2 - fVar6;
    }
    else if (ABS(fVar6) < _DAT_005f3460) {
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004eba2c;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    else {
      fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004eba2c;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    break;
  case 3:
    FUN_0051f050((float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x1c] * *(float *)(param_2 + 4) +
                 (float)param_1[0x1e] * *(float *)(param_2 + 0x14));
    param_1[0x1c] =
         (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
               (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
    param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
    FUN_0051f050((float)param_1[0x25] * *(float *)(param_2 + 0x14) +
                 (float)param_1[0x24] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x23] * *(float *)(param_2 + 4));
    param_1[0x23] =
         (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
               (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
    param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
    FUN_0051d440(param_1 + 0x20,param_1 + 0x12,param_1 + 0x19);
    fVar2 = (float)param_1[0x19];
    fVar6 = (float)param_1[0x27];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ebb71;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ebb71:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x27] = (int)(fVar2 + (float)param_1[0x27]);
    fVar6 = (float)param_1[0x28];
    fVar2 = (float)param_1[0x20];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ebce7;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ebce7:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (ABS(fVar6) < _DAT_005f3464) {
LAB_004ebdc3:
      fVar2 = fVar2 - fVar6;
    }
    else if (ABS(fVar6) < _DAT_005f3460) {
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004ebdc3;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    else {
      fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004ebdc3;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    break;
  case 4:
    FUN_0051f050((float)param_1[0x15] * *(float *)(param_2 + 4) +
                 (float)param_1[0x17] * *(float *)(param_2 + 0x14) +
                 (float)param_1[0x16] * *(float *)(param_2 + 0x10));
    param_1[0x15] =
         (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
               (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
    param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
    FUN_0051f050((float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x1c] * *(float *)(param_2 + 4) +
                 *(float *)(param_2 + 0x14) * (float)param_1[0x1e]);
    param_1[0x1c] =
         (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
               (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
    param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
    FUN_0051f050((float)param_1[0x24] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x23] * *(float *)(param_2 + 4) +
                 (float)param_1[0x25] * *(float *)(param_2 + 0x14));
    param_1[0x23] =
         (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
               (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
    param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
    FUN_0051d440(param_1 + 0x20,param_1 + 0x12,param_1 + 0x19);
    fVar2 = (float)param_1[0x12];
    fVar6 = (float)param_1[0x26];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ebf4a;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ebf4a:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
    fVar6 = (float)param_1[0x27];
    fVar2 = (float)param_1[0x19];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ec0c0;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ec0c0:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x27] = (int)(fVar2 + (float)param_1[0x27]);
    fVar6 = (float)param_1[0x28];
    fVar2 = (float)param_1[0x20];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ec23a;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ec23a:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (ABS(fVar6) < _DAT_005f3464) {
LAB_004ec316:
      fVar2 = fVar2 - fVar6;
    }
    else if (ABS(fVar6) < _DAT_005f3460) {
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004ec316;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    else {
      fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004ec316;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    break;
  case 5:
    FUN_0051f050((float)param_1[0x17] * *(float *)(param_2 + 0x14) +
                 (float)param_1[0x16] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x15] * *(float *)(param_2 + 4));
    param_1[0x15] =
         (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
               (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
    param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
    FUN_0051f050((float)param_1[0x1c] * *(float *)(param_2 + 4) +
                 (float)param_1[0x1e] * *(float *)(param_2 + 0x14) +
                 (float)param_1[0x1d] * *(float *)(param_2 + 0x10));
    param_1[0x1c] =
         (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
               (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
    param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
    FUN_0051f050((float)param_1[0x24] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x23] * *(float *)(param_2 + 4) +
                 *(float *)(param_2 + 0x14) * (float)param_1[0x25]);
    param_1[0x23] =
         (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
               (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
    param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
    FUN_0051d700(param_1 + 0x20,param_1 + 0x12,param_1 + 0x19);
    fVar2 = (float)param_1[0x12];
    fVar6 = (float)param_1[0x26];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ec49d;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ec49d:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
    fVar6 = (float)param_1[0x27];
    fVar2 = (float)param_1[0x19];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ec613;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ec613:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x27] = (int)(fVar2 + (float)param_1[0x27]);
    fVar6 = (float)param_1[0x28];
    fVar2 = (float)param_1[0x20];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ec78d;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ec78d:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (ABS(fVar6) < _DAT_005f3464) {
LAB_004ec869:
      fVar2 = fVar2 - fVar6;
    }
    else if (ABS(fVar6) < _DAT_005f3460) {
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004ec869;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    else {
      fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004ec869;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    break;
  case 6:
    FUN_0051f050((float)param_1[0x16] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x15] * *(float *)(param_2 + 4) +
                 *(float *)(param_2 + 0x14) * (float)param_1[0x17]);
    param_1[0x15] =
         (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
               (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
    param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
    FUN_0051d440(param_1 + 0x20,param_1 + 0x12,param_1 + 0x19);
    fVar2 = (float)param_1[0x12];
    fVar6 = (float)param_1[0x26];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ec94b;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ec94b:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
LAB_004e8c28:
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
      param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
      goto switchD_004e74e7_default;
    }
LAB_004e8c11:
    param_1[0x26] = (int)(fVar2 + _DAT_005f3460 + (float)param_1[0x26]);
    goto switchD_004e74e7_default;
  case 7:
    FUN_0051f050((float)param_1[0x17] * *(float *)(param_2 + 0x14) +
                 (float)param_1[0x16] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x15] * *(float *)(param_2 + 4));
    param_1[0x15] =
         (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
               (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
    param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
    FUN_0051f050((float)param_1[0x23] * *(float *)(param_2 + 4) +
                 (float)param_1[0x25] * *(float *)(param_2 + 0x14) +
                 (float)param_1[0x24] * *(float *)(param_2 + 0x10));
    param_1[0x23] =
         (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
               (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
    param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
    FUN_0051d700(param_1 + 0x20,param_1 + 0x12,param_1 + 0x19);
    fVar2 = (float)param_1[0x12];
    fVar6 = (float)param_1[0x26];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ecb65;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ecb65:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
    fVar6 = (float)param_1[0x28];
    fVar2 = (float)param_1[0x20];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004eccdb;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004eccdb:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (ABS(fVar6) < _DAT_005f3464) {
LAB_004ecdb7:
      fVar2 = fVar2 - fVar6;
    }
    else if (ABS(fVar6) < _DAT_005f3460) {
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004ecdb7;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    else {
      fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004ecdb7;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    break;
  case 8:
    FUN_0051f050((float)param_1[0x16] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x15] * *(float *)(param_2 + 4) +
                 *(float *)(param_2 + 0x14) * (float)param_1[0x17]);
    param_1[0x15] =
         (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
               (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
    param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
    FUN_0051f050((float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x1c] * *(float *)(param_2 + 4) +
                 (float)param_1[0x1e] * *(float *)(param_2 + 0x14));
    param_1[0x1c] =
         (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
               (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
    param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
    FUN_0051d440(param_1 + 0x20,param_1 + 0x12,param_1 + 0x19);
    fVar2 = (float)param_1[0x12];
    fVar6 = (float)param_1[0x26];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ecedb;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ecedb:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
    fVar6 = (float)param_1[0x27];
    fVar2 = (float)param_1[0x19];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ed051;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ed051:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    goto LAB_004ed118;
  case 9:
    FUN_0051f050((float)param_1[0x17] * *(float *)(param_2 + 0x14) +
                 (float)param_1[0x16] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x15] * *(float *)(param_2 + 4));
    param_1[0x15] =
         (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
               (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
    param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
    FUN_0051f050((float)param_1[0x1c] * *(float *)(param_2 + 4) +
                 (float)param_1[0x1e] * *(float *)(param_2 + 0x14) +
                 (float)param_1[0x1d] * *(float *)(param_2 + 0x10));
    param_1[0x1c] =
         (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
               (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
    param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
    FUN_0051f050((float)param_1[0x24] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x23] * *(float *)(param_2 + 4) +
                 *(float *)(param_2 + 0x14) * (float)param_1[0x25]);
    param_1[0x23] =
         (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
               (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
    param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
    FUN_0051d700(param_1 + 0x20,param_1 + 0x12,param_1 + 0x19);
    fVar2 = (float)param_1[0x12];
    fVar6 = (float)param_1[0x26];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ed2ad;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ed2ad:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
    fVar6 = (float)param_1[0x27];
    fVar2 = (float)param_1[0x19];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ed423;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ed423:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x27] = (int)(fVar2 + (float)param_1[0x27]);
    fVar6 = (float)param_1[0x28];
    fVar2 = (float)param_1[0x20];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ed59d;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ed59d:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (ABS(fVar6) < _DAT_005f3464) {
LAB_004ed679:
      fVar2 = fVar2 - fVar6;
    }
    else if (ABS(fVar6) < _DAT_005f3460) {
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004ed679;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    else {
      fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004ed679;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    break;
  case 10:
    FUN_0051f050((float)param_1[0x16] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x15] * *(float *)(param_2 + 4) +
                 (float)param_1[0x17] * *(float *)(param_2 + 0x14));
    param_1[0x15] =
         (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
               (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
    param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
    FUN_0051f050((float)param_1[0x1e] * *(float *)(param_2 + 0x14) +
                 (float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x1c] * *(float *)(param_2 + 4));
    param_1[0x1c] =
         (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
               (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
    param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
    FUN_0051f050((float)param_1[0x23] * *(float *)(param_2 + 4) +
                 (float)param_1[0x25] * *(float *)(param_2 + 0x14) +
                 (float)param_1[0x24] * *(float *)(param_2 + 0x10));
    param_1[0x23] =
         (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
               (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
    param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
    FUN_0051d700(param_1 + 0x20,param_1 + 0x12,param_1 + 0x19);
    fVar2 = (float)param_1[0x12];
    fVar6 = (float)param_1[0x26];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ed800;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ed800:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
    fVar6 = (float)param_1[0x27];
    fVar2 = (float)param_1[0x19];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ed976;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ed976:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x27] = (int)(fVar2 + (float)param_1[0x27]);
    fVar6 = (float)param_1[0x28];
    fVar2 = (float)param_1[0x20];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004edaf0;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004edaf0:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (ABS(fVar6) < _DAT_005f3464) {
LAB_004edbcc:
      fVar2 = fVar2 - fVar6;
    }
    else if (ABS(fVar6) < _DAT_005f3460) {
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004edbcc;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    else {
      fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004edbcc;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    break;
  case 0xb:
    FUN_0051f050((float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x1c] * *(float *)(param_2 + 4) +
                 *(float *)(param_2 + 0x14) * (float)param_1[0x1e]);
    param_1[0x1c] =
         (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
               (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
    param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
    FUN_0051d440(param_1 + 0x20,param_1 + 0x12,param_1 + 0x19);
    fVar2 = (float)param_1[0x19];
    fVar6 = (float)param_1[0x27];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004edcae;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004edcae:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (ABS(fVar6) < _DAT_005f3464) {
LAB_004edd8a:
      fVar2 = fVar2 - fVar6;
    }
    else if (ABS(fVar6) < _DAT_005f3460) {
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004edd8a;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    else {
      fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004edd8a;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    goto LAB_004ed118;
  case 0xc:
    FUN_0051f050((float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x1c] * *(float *)(param_2 + 4) +
                 (float)param_1[0x1e] * *(float *)(param_2 + 0x14));
    param_1[0x1c] =
         (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
               (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
    param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
    FUN_0051f050((float)param_1[0x25] * *(float *)(param_2 + 0x14) +
                 (float)param_1[0x24] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x23] * *(float *)(param_2 + 4));
    param_1[0x23] =
         (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
               (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
    param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
    FUN_0051d700(param_1 + 0x20,param_1 + 0x12,param_1 + 0x19);
    fVar2 = (float)param_1[0x19];
    fVar6 = (float)param_1[0x27];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004edecf;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004edecf:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x27] = (int)(fVar2 + (float)param_1[0x27]);
    fVar6 = (float)param_1[0x28];
    fVar2 = (float)param_1[0x20];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ee045;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ee045:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (ABS(fVar6) < _DAT_005f3464) {
LAB_004ee121:
      fVar2 = fVar2 - fVar6;
    }
    else if (ABS(fVar6) < _DAT_005f3460) {
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004ee121;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    else {
      fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004ee121;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    break;
  case 0xd:
    FUN_0051f050((float)param_1[0x15] * *(float *)(param_2 + 4) +
                 (float)param_1[0x17] * *(float *)(param_2 + 0x14) +
                 (float)param_1[0x16] * *(float *)(param_2 + 0x10));
    param_1[0x15] =
         (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
               (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
    param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
    FUN_0051f050((float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x1c] * *(float *)(param_2 + 4) +
                 *(float *)(param_2 + 0x14) * (float)param_1[0x1e]);
    param_1[0x1c] =
         (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
               (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
    param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
    FUN_0051d700(param_1 + 0x20,param_1 + 0x12,param_1 + 0x19);
    fVar2 = (float)param_1[0x12];
    fVar6 = (float)param_1[0x26];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ee245;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ee245:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
    fVar6 = (float)param_1[0x27];
    fVar2 = (float)param_1[0x19];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ee3bb;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ee3bb:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (ABS(fVar6) < _DAT_005f3464) {
LAB_004ee497:
      fVar2 = fVar2 - fVar6;
    }
    else if (ABS(fVar6) < _DAT_005f3460) {
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004ee497;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
    else {
      fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
      if (_DAT_005f5378 <= fVar6) {
        if (fVar6 < _DAT_005f3464) goto LAB_004ee497;
        fVar2 = fVar2 - (fVar6 - _DAT_005f3460);
      }
      else {
        fVar2 = fVar2 - (fVar6 + _DAT_005f3460);
      }
    }
LAB_004ed118:
    if (_DAT_005f5378 <= fVar2) {
LAB_004e93eb:
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
      param_1[0x27] = (int)(fVar2 + (float)param_1[0x27]);
    }
    else {
LAB_004e93d4:
      param_1[0x27] = (int)(fVar2 + _DAT_005f3460 + (float)param_1[0x27]);
    }
    goto switchD_004e74e7_default;
  case 0xe:
    FUN_0051f050((float)param_1[0x16] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x15] * *(float *)(param_2 + 4) +
                 (float)param_1[0x17] * *(float *)(param_2 + 0x14));
    param_1[0x15] =
         (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
               (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
    param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
    FUN_0051f050((float)param_1[0x1e] * *(float *)(param_2 + 0x14) +
                 (float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x1c] * *(float *)(param_2 + 4));
    param_1[0x1c] =
         (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
               (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
    param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
    FUN_0051f050((float)param_1[0x23] * *(float *)(param_2 + 4) +
                 (float)param_1[0x25] * *(float *)(param_2 + 0x14) +
                 (float)param_1[0x24] * *(float *)(param_2 + 0x10));
    param_1[0x23] =
         (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
               (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
    param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
    FUN_0051d1c0(0x3f800000);
    fVar2 = (float)param_1[0x12];
    fVar6 = (float)param_1[0x26];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ee615;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ee615:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
    fVar6 = (float)param_1[0x27];
    fVar2 = (float)param_1[0x19];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ee78c;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ee78c:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x27] = (int)(fVar2 + (float)param_1[0x27]);
    fVar6 = (float)param_1[0x28];
    fVar2 = (float)param_1[0x20];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004ee906;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004ee906:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (fVar2 < _DAT_005f5378) {
      fVar2 = fVar2 + _DAT_005f3460;
      goto LAB_004eef59;
    }
    goto LAB_004ee9e5;
  case 0xf:
    FUN_0051f050((float)param_1[0x16] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x15] * *(float *)(param_2 + 4) +
                 *(float *)(param_2 + 0x14) * (float)param_1[0x17]);
    param_1[0x15] =
         (int)((float)param_1[0x16] * *(float *)(param_2 + 4) +
               (float)param_1[0x17] * *(float *)(param_2 + 0x10) + (float)param_1[0x15]);
    param_1[0x16] = (int)((float)param_1[0x17] * *(float *)(param_2 + 4) + (float)param_1[0x16]);
    FUN_0051f050((float)param_1[0x1d] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x1c] * *(float *)(param_2 + 4) +
                 (float)param_1[0x1e] * *(float *)(param_2 + 0x14));
    param_1[0x1c] =
         (int)((float)param_1[0x1d] * *(float *)(param_2 + 4) +
               (float)param_1[0x1e] * *(float *)(param_2 + 0x10) + (float)param_1[0x1c]);
    param_1[0x1d] = (int)((float)param_1[0x1e] * *(float *)(param_2 + 4) + (float)param_1[0x1d]);
    FUN_0051f050((float)param_1[0x25] * *(float *)(param_2 + 0x14) +
                 (float)param_1[0x24] * *(float *)(param_2 + 0x10) +
                 (float)param_1[0x23] * *(float *)(param_2 + 4));
    param_1[0x23] =
         (int)((float)param_1[0x24] * *(float *)(param_2 + 4) +
               (float)param_1[0x25] * *(float *)(param_2 + 0x10) + (float)param_1[0x23]);
    param_1[0x24] = (int)((float)param_1[0x25] * *(float *)(param_2 + 4) + (float)param_1[0x24]);
    FUN_0051d700(param_1 + 0x20,param_1 + 0x12,param_1 + 0x19);
    fVar2 = (float)param_1[0x12];
    fVar6 = (float)param_1[0x26];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004eeb7a;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004eeb7a:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x26] = (int)(fVar2 + (float)param_1[0x26]);
    fVar6 = (float)param_1[0x27];
    fVar2 = (float)param_1[0x19];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004eecf0;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004eecf0:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (_DAT_005f3464 <= fVar2) {
        fVar2 = fVar2 - _DAT_005f3460;
      }
    }
    else {
      fVar2 = fVar2 + _DAT_005f3460;
    }
    param_1[0x27] = (int)(fVar2 + (float)param_1[0x27]);
    fVar6 = (float)param_1[0x28];
    fVar2 = (float)param_1[0x20];
    if (_DAT_005f3464 <= ABS(fVar2)) {
      if (ABS(fVar2) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar2) goto LAB_004eee6a;
        fVar2 = fVar2 + _DAT_005f3460;
      }
      else {
        fVar2 = fVar2 - (float)(int)ROUND(fVar2 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar2) {
LAB_004eee6a:
          if (_DAT_005f3464 <= fVar2) {
            fVar2 = fVar2 - _DAT_005f3460;
          }
        }
        else {
          fVar2 = fVar2 + _DAT_005f3460;
        }
      }
    }
    if (_DAT_005f3464 <= ABS(fVar6)) {
      if (ABS(fVar6) < _DAT_005f3460) {
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
      else {
        fVar6 = fVar6 - (float)(int)ROUND(fVar6 * _DAT_005f537c + -0.49999988) * _DAT_005f3460;
        if (_DAT_005f5378 <= fVar6) {
          if (_DAT_005f3464 <= fVar6) {
            fVar6 = fVar6 - _DAT_005f3460;
          }
        }
        else {
          fVar6 = fVar6 + _DAT_005f3460;
        }
      }
    }
    fVar2 = fVar2 - fVar6;
    if (_DAT_005f5378 <= fVar2) {
      if (fVar2 < _DAT_005f3464) goto LAB_004eef59;
      goto LAB_004eef53;
    }
    fVar2 = fVar2 + _DAT_005f3460;
    goto LAB_004eef59;
  default:
    goto switchD_004e74e7_default;
  }
LAB_004e76d3:
  if (_DAT_005f5378 <= fVar2) {
LAB_004ee9e5:
    if (_DAT_005f3464 <= fVar2) {
LAB_004eef53:
      fVar2 = fVar2 - _DAT_005f3460;
    }
  }
  else {
    fVar2 = fVar2 + _DAT_005f3460;
  }
LAB_004eef59:
  param_1[0x28] = (int)(fVar2 + (float)param_1[0x28]);
switchD_004e74e7_default:
  if (param_3 != 0) {
    param_1[0x16] = 0;
    param_1[0x17] = 0;
    param_1[0x1d] = 0;
    param_1[0x1e] = 0;
    param_1[0x24] = 0;
    param_1[0x25] = 0;
  }
  return;
}



// --------------------------------------------
// FUN_00409340   ab 0x00409340   6568 Byte
// gerufen von: Aqua_Renderer__LoadTextures
// Texte: vfx\hud\, vfx\menu\
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00409340(int param_1)

{
  byte *pbVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  uint *puVar5;
  undefined4 *puVar6;
  undefined4 local_24;
  undefined4 local_20;
  uint *local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  if (DAT_0066d188 != 0) {
    iVar2 = operator_new(0x1a4);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      local_1c = (uint *)0x4;
      do {
        FUN_0040acf0();
        local_1c = (uint *)((int)local_1c + -1);
      } while (local_1c != (uint *)0x0);
      *(int *)(iVar2 + 400) = iVar2;
      local_1c = (uint *)0x0;
    }
    *(int *)(param_1 + 0x169ac) = iVar2;
    iVar2 = operator_new(0x110);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      FUN_00524940();
      FUN_00524940();
      FUN_00524940();
      FUN_004f97f0();
      FUN_0040ad00(0);
      FUN_0040ad30(1);
    }
    *(int *)(param_1 + 0x169b8) = iVar2;
    *(undefined4 *)(param_1 + 0x169c4) = 0x3f800000;
    *(undefined4 *)(param_1 + 0x169c8) = 0x3f800000;
    *(undefined4 *)(param_1 + 0x169cc) = 0x3a83126f;
    *(undefined4 *)(param_1 + 0x169d0) = 0x3a83126f;
    *(undefined4 *)(param_1 + 0x169d4) = 0x3c23d70a;
    *(undefined4 *)(param_1 + 0x169d8) = 0x3c656042;
    iVar2 = operator_new(0x18);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      FUN_00525c80();
      FUN_0040ad00(0);
      FUN_0040ad30(1);
    }
    *(int *)(param_1 + 0x169b0) = iVar2;
    iVar2 = operator_new(0x24);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      iVar2 = FUN_00528f20(1);
    }
    *(undefined4 *)(iVar2 + 0x20) = 1;
    FUN_0052bef0(4,2);
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x18) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x40) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x68) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x90) = 0xffffffff;
    puVar6 = *(undefined4 **)(*(int *)(iVar2 + 0x18) + 0x20);
    puVar6[1] = 0;
    *puVar6 = 0xbf000000;
    puVar6[2] = 0xbf000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x1c) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x20) = 0;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x28) = 0xbf000000;
    *(undefined4 *)(iVar3 + 0x2c) = 0;
    *(undefined4 *)(iVar3 + 0x30) = 0x3f000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x44) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x48) = 0x3f800000;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x50) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x54) = 0;
    *(undefined4 *)(iVar3 + 0x58) = 0x3f000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x6c) = 0x3f800000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x70) = 0x3f800000;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x80) = 0xbf000000;
    *(undefined4 *)(iVar3 + 0x78) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x7c) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x94) = 0x3f800000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x98) = 0;
    *(undefined1 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 6) = 0;
    **(undefined2 **)(*(int *)(iVar2 + 0x18) + 0x2c) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 2) = 1;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 4) = 2;
    *(undefined1 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 0xe) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 8) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 10) = 2;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 0xc) = 3;
    *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) = *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) & 0xfe;
    *(undefined1 *)(*(int *)(iVar2 + 0x18) + 0x38) = 1;
    *(undefined4 *)(*(int *)(iVar2 + 0x18) + 0x18) = 4;
    *(undefined4 *)(*(int *)(iVar2 + 0x18) + 0x24) = 2;
    FUN_0052b6d0(0);
    iVar3 = operator_new(0x38);
    if (iVar3 == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = FUN_00524970(iVar2);
    }
    *(undefined4 *)(param_1 + 0x169b4) = uVar4;
    if (iVar2 != 0) {
      FUN_00528f40();
      operator_delete(iVar2);
    }
    iVar2 = operator_new(0x1c);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      FUN_004f9720();
      FUN_0040ad00(0);
      FUN_0040ad30(1);
    }
    *(int *)(param_1 + 0x169dc) = iVar2;
    iVar2 = operator_new(0x24);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      iVar2 = FUN_00528f20(1);
    }
    *(undefined4 *)(iVar2 + 0x20) = 1;
    FUN_0052bef0(4,2);
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x18) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x40) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x68) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x90) = 0xffffffff;
    puVar6 = *(undefined4 **)(*(int *)(iVar2 + 0x18) + 0x20);
    puVar6[1] = 0;
    *puVar6 = 0xbf000000;
    puVar6[2] = 0xbf000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x1c) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x20) = 0;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x28) = 0xbf000000;
    *(undefined4 *)(iVar3 + 0x2c) = 0;
    *(undefined4 *)(iVar3 + 0x30) = 0x3f000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x44) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x48) = 0x3f800000;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x50) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x54) = 0;
    *(undefined4 *)(iVar3 + 0x58) = 0x3f000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x6c) = 0x3f800000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x70) = 0x3f800000;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x80) = 0xbf000000;
    *(undefined4 *)(iVar3 + 0x78) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x7c) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x94) = 0x3f800000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x98) = 0;
    *(undefined1 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 6) = 0;
    **(undefined2 **)(*(int *)(iVar2 + 0x18) + 0x2c) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 2) = 1;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 4) = 2;
    *(undefined1 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 0xe) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 8) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 10) = 2;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 0xc) = 3;
    *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) = *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) & 0xfe;
    *(undefined1 *)(*(int *)(iVar2 + 0x18) + 0x38) = 1;
    *(undefined4 *)(*(int *)(iVar2 + 0x18) + 0x18) = 4;
    *(undefined4 *)(*(int *)(iVar2 + 0x18) + 0x24) = 2;
    FUN_0052b6d0(0);
    iVar3 = operator_new(0x38);
    if (iVar3 == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = FUN_00524970(iVar2);
    }
    *(undefined4 *)(param_1 + 0x169e0) = uVar4;
    if (iVar2 != 0) {
      FUN_00528f40();
      operator_delete(iVar2);
    }
    iVar2 = operator_new(0x1c);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      FUN_004f9720();
      FUN_0040ad00(0);
      FUN_0040ad30(1);
    }
    *(int *)(param_1 + 0x169e4) = iVar2;
    iVar2 = operator_new(0x24);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      iVar2 = FUN_00528f20(1);
    }
    *(undefined4 *)(iVar2 + 0x20) = 1;
    FUN_0052bef0(4,2);
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x18) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x40) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x68) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x90) = 0xffffffff;
    puVar6 = *(undefined4 **)(*(int *)(iVar2 + 0x18) + 0x20);
    puVar6[1] = 0;
    *puVar6 = 0xbf000000;
    puVar6[2] = 0xbf000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x1c) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x20) = 0;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x28) = 0xbf000000;
    *(undefined4 *)(iVar3 + 0x2c) = 0;
    *(undefined4 *)(iVar3 + 0x30) = 0x3f000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x44) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x48) = 0x3f800000;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x50) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x54) = 0;
    *(undefined4 *)(iVar3 + 0x58) = 0x3f000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x6c) = 0x3f800000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x70) = 0x3f800000;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x80) = 0xbf000000;
    *(undefined4 *)(iVar3 + 0x78) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x7c) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x94) = 0x3f800000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x98) = 0;
    *(undefined1 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 6) = 0;
    **(undefined2 **)(*(int *)(iVar2 + 0x18) + 0x2c) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 2) = 1;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 4) = 2;
    *(undefined1 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 0xe) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 8) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 10) = 2;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 0xc) = 3;
    *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) = *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) & 0xfe;
    *(undefined1 *)(*(int *)(iVar2 + 0x18) + 0x38) = 1;
    *(undefined4 *)(*(int *)(iVar2 + 0x18) + 0x18) = 4;
    *(undefined4 *)(*(int *)(iVar2 + 0x18) + 0x24) = 2;
    FUN_0052b6d0(0);
    iVar3 = operator_new(0x38);
    if (iVar3 == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = FUN_00524970(iVar2);
    }
    *(undefined4 *)(param_1 + 0x169e8) = uVar4;
    if (iVar2 != 0) {
      FUN_00528f40();
      operator_delete(iVar2);
    }
    puVar5 = (uint *)operator_new(0xfc);
    if (puVar5 == (uint *)0x0) {
      puVar5 = (uint *)0x0;
    }
    else {
      FUN_004f8e00();
      FUN_0040ad00(0);
      FUN_0040ad30(1);
      FUN_0040ad70(0x15,0x3f000000);
      FUN_0040adb0();
      *puVar5 = *puVar5 & 0xfffffff5 | 4;
    }
    *(uint **)(param_1 + 0x169ec) = puVar5;
    puVar5 = (uint *)operator_new(200);
    if (puVar5 == (uint *)0x0) {
      puVar5 = (uint *)0x0;
    }
    else {
      FUN_004f8640();
      FUN_0040ad00(0);
      FUN_0040ad30(1);
      FUN_0040adb0();
      *puVar5 = *puVar5 & 0xffffffe1;
    }
    *(uint **)(param_1 + 0x169f0) = puVar5;
    *puVar5 = *puVar5 | 0x10;
    puVar5 = (uint *)operator_new(0xfc);
    if (puVar5 == (uint *)0x0) {
      puVar5 = (uint *)0x0;
    }
    else {
      FUN_004f8e00();
      FUN_0040ad00(0);
      FUN_0040ad30(1);
      FUN_0040ad70(0x15,0x3f000000);
      FUN_0040adb0();
      *puVar5 = *puVar5 & 0xfffffff5 | 4;
    }
    *(uint **)(param_1 + 0x17208) = puVar5;
    if (DAT_0066d188 != 0) {
      iVar2 = operator_new(0x38);
      if (iVar2 == 0) {
        uVar4 = 0;
      }
      else {
        uVar4 = FUN_005249f0(1,0x1800,1,0x4800,1);
      }
      *(undefined4 *)(param_1 + 0x1720c) = uVar4;
    }
    iVar2 = operator_new(0x28);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      FUN_00525ae0();
      FUN_0040ad00(0);
      FUN_0040ad30(1);
    }
    *(int *)(param_1 + 0x169f4) = iVar2;
    FUN_005256e0(9,0x44200000,0x43f00000,0x3faaaaab);
    iVar2 = operator_new(0x24);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      iVar2 = FUN_00528f20(1);
    }
    *(undefined4 *)(iVar2 + 0x20) = 1;
    FUN_0052bef0(4,2);
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x18) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x40) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x68) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x90) = 0xffffffff;
    puVar6 = *(undefined4 **)(*(int *)(iVar2 + 0x18) + 0x20);
    puVar6[1] = 0;
    *puVar6 = 0xbf000000;
    puVar6[2] = 0xbf000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x1c) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x20) = 0x3f800000;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x2c) = 0;
    *(undefined4 *)(iVar3 + 0x30) = 0xbf000000;
    *(undefined4 *)(iVar3 + 0x28) = 0x3f000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x44) = 0x3f800000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x48) = 0x3f800000;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x50) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x58) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x54) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x6c) = 0x3f800000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x70) = 0;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x80) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x78) = 0xbf000000;
    *(undefined4 *)(iVar3 + 0x7c) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x94) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x98) = 0;
    *(undefined1 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 6) = 0;
    **(undefined2 **)(*(int *)(iVar2 + 0x18) + 0x2c) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 2) = 1;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 4) = 2;
    *(undefined1 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 0xe) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 8) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 10) = 2;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 0xc) = 3;
    *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) = *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) & 0xfe;
    *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) = *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) & 0xfb;
    *(undefined1 *)(*(int *)(iVar2 + 0x18) + 0x38) = 1;
    *(undefined4 *)(*(int *)(iVar2 + 0x18) + 0x18) = 4;
    *(undefined4 *)(*(int *)(iVar2 + 0x18) + 0x24) = 2;
    FUN_0052b6d0(0);
    iVar3 = operator_new(0x38);
    if (iVar3 == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = FUN_00524970(iVar2);
    }
    *(undefined4 *)(param_1 + 0x169f8) = uVar4;
    if (iVar2 != 0) {
      FUN_00528f40();
      operator_delete(iVar2);
    }
    iVar2 = operator_new(0x20);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      FUN_004f8590();
      FUN_0040ad00(0);
      FUN_0040ad30(1);
    }
    *(int *)(param_1 + 0x169fc) = iVar2;
    FUN_004f8310(9,0x44200000,0x43f00000,0x3faaaaab);
    iVar2 = operator_new(0x24);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      iVar2 = FUN_00528f20(1);
    }
    *(undefined4 *)(iVar2 + 0x20) = 1;
    FUN_0052bef0(4,2);
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x18) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x40) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x68) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x90) = 0xffffffff;
    puVar6 = *(undefined4 **)(*(int *)(iVar2 + 0x18) + 0x20);
    puVar6[1] = 0;
    *puVar6 = 0xbf000000;
    puVar6[2] = 0xbf000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x1c) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x20) = 0x3f800000;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x2c) = 0;
    *(undefined4 *)(iVar3 + 0x30) = 0xbf000000;
    *(undefined4 *)(iVar3 + 0x28) = 0x3f000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x44) = 0x3f800000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x48) = 0x3f800000;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x50) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x58) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x54) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x6c) = 0x3f800000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x70) = 0;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x80) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x78) = 0xbf000000;
    *(undefined4 *)(iVar3 + 0x7c) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x94) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x98) = 0;
    *(undefined1 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 6) = 0;
    **(undefined2 **)(*(int *)(iVar2 + 0x18) + 0x2c) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 2) = 1;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 4) = 2;
    *(undefined1 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 0xe) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 8) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 10) = 2;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 0xc) = 3;
    *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) = *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) & 0xfe;
    *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) = *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) & 0xfb;
    *(undefined1 *)(*(int *)(iVar2 + 0x18) + 0x38) = 1;
    *(undefined4 *)(*(int *)(iVar2 + 0x18) + 0x18) = 4;
    *(undefined4 *)(*(int *)(iVar2 + 0x18) + 0x24) = 2;
    FUN_0052b6d0(0);
    iVar3 = operator_new(0x38);
    if (iVar3 == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = FUN_00524970(iVar2);
    }
    *(undefined4 *)(param_1 + 0x16a00) = uVar4;
    if (iVar2 != 0) {
      FUN_00528f40();
      operator_delete(iVar2);
    }
    iVar2 = operator_new(0x24);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      iVar2 = FUN_00528f20(1);
    }
    *(undefined4 *)(iVar2 + 0x20) = 1;
    FUN_0052bef0(4,2);
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x18) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x40) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x68) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x90) = 0xffffffff;
    puVar6 = *(undefined4 **)(*(int *)(iVar2 + 0x18) + 0x20);
    puVar6[2] = 0;
    *puVar6 = 0xbf800000;
    puVar6[1] = 0xbf800000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x1c) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x20) = 0x3f800000;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x2c) = 0xbf800000;
    *(undefined4 *)(iVar3 + 0x28) = 0x3f800000;
    *(undefined4 *)(iVar3 + 0x30) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x44) = 0x3f800000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x48) = 0x3f800000;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x50) = 0x3f800000;
    *(undefined4 *)(iVar3 + 0x54) = 0x3f800000;
    *(undefined4 *)(iVar3 + 0x58) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x6c) = 0x3f800000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x70) = 0;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x78) = 0xbf800000;
    *(undefined4 *)(iVar3 + 0x7c) = 0x3f800000;
    *(undefined4 *)(iVar3 + 0x80) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x94) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x98) = 0;
    *(undefined1 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 6) = 0;
    **(undefined2 **)(*(int *)(iVar2 + 0x18) + 0x2c) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 2) = 1;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 4) = 2;
    *(undefined1 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 0xe) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 8) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 10) = 2;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 0xc) = 3;
    *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) = *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) & 0xfe;
    *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) = *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) & 0xfb;
    *(undefined1 *)(*(int *)(iVar2 + 0x18) + 0x38) = 1;
    *(undefined4 *)(*(int *)(iVar2 + 0x18) + 0x18) = 4;
    *(undefined4 *)(*(int *)(iVar2 + 0x18) + 0x24) = 2;
    FUN_0052b6d0(0);
    iVar3 = operator_new(0x38);
    if (iVar3 == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = FUN_00524970(iVar2);
    }
    *(undefined4 *)(param_1 + 0x16a0c) = uVar4;
    if (iVar2 != 0) {
      FUN_00528f40();
      operator_delete(iVar2);
    }
    iVar2 = operator_new(0x18);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      FUN_00525c80();
      _DAT_0069242c = 0;
      _DAT_00692428 = 0;
      _DAT_00692424 = 0;
      _DAT_00692420 = 0;
      FUN_0050ba90(0,&DAT_00692420,1);
      FUN_0040ad30(1);
    }
    *(int *)(param_1 + 0x16a04) = iVar2;
    iVar2 = operator_new(0x24);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      iVar2 = FUN_00528f20(1);
    }
    *(undefined4 *)(iVar2 + 0x20) = 1;
    FUN_0052bef0(4,2);
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x18) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x40) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x68) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x90) = 0xffffffff;
    puVar6 = *(undefined4 **)(*(int *)(iVar2 + 0x18) + 0x20);
    puVar6[1] = 0;
    *puVar6 = 0xbf000000;
    puVar6[2] = 0xbf000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x1c) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x20) = 0;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x28) = 0xbf000000;
    *(undefined4 *)(iVar3 + 0x2c) = 0;
    *(undefined4 *)(iVar3 + 0x30) = 0x3f000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x44) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x48) = 0x3f800000;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x50) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x58) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x54) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x6c) = 0x3f800000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x70) = 0x3f800000;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x78) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x7c) = 0;
    *(undefined4 *)(iVar3 + 0x80) = 0xbf000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x94) = 0x3f800000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x98) = 0;
    *(undefined1 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 6) = 0;
    **(undefined2 **)(*(int *)(iVar2 + 0x18) + 0x2c) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 2) = 1;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 4) = 2;
    *(undefined1 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 0xe) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 8) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 10) = 2;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 0xc) = 3;
    *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) = *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) & 0xfe;
    *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) = *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) & 0xfb;
    *(undefined1 *)(*(int *)(iVar2 + 0x18) + 0x38) = 1;
    *(undefined4 *)(*(int *)(iVar2 + 0x18) + 0x18) = 4;
    *(undefined4 *)(*(int *)(iVar2 + 0x18) + 0x24) = 2;
    FUN_0052b6d0(0);
    iVar3 = operator_new(0x38);
    if (iVar3 == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = FUN_00524970(iVar2);
    }
    *(undefined4 *)(param_1 + 0x16a08) = uVar4;
    if (iVar2 != 0) {
      FUN_00528f40();
      operator_delete(iVar2);
    }
    iVar2 = operator_new(0x18);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      FUN_00525660();
      _DAT_0069242c = 0;
      _DAT_00692428 = 0;
      _DAT_00692424 = 0;
      _DAT_00692420 = 0;
      FUN_0050ba90(0,&DAT_00692420,1);
      FUN_0040ad30(1);
    }
    *(int *)(param_1 + 0x16a10) = iVar2;
    local_1c = (uint *)operator_new(0x78);
    if (local_1c == (uint *)0x0) {
      puVar5 = (uint *)0x0;
    }
    else {
      FUN_004f7ff0();
      _DAT_0069242c = 0;
      _DAT_00692428 = 0;
      _DAT_00692424 = 0;
      _DAT_00692420 = 0;
      FUN_0050ba90(0,&DAT_00692420,1);
      FUN_0040ad30(1);
      *local_1c = 0;
      puVar5 = local_1c;
    }
    *(uint **)(param_1 + 0x16a3c) = puVar5;
    FUN_0040ef30(0xc4);
    local_1c = (uint *)operator_new(0x54);
    if (local_1c == (uint *)0x0) {
      puVar5 = (uint *)0x0;
    }
    else {
      FUN_004f7f10();
      _DAT_0069242c = 0;
      _DAT_00692428 = 0;
      _DAT_00692424 = 0;
      _DAT_00692420 = 0;
      FUN_0050ba90(0,&DAT_00692420,1);
      FUN_0040ad30(1);
      puVar5 = local_1c;
    }
    *(uint **)(param_1 + 0x16a4c) = puVar5;
    iVar2 = operator_new(0xe4);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      iVar2 = FUN_0052b4e0(0x100,0x300);
    }
    *(int *)(param_1 + 0x16a48) = iVar2;
    *(undefined1 *)(iVar2 + 0x38) = 1;
    *(byte *)(*(int *)(param_1 + 0x16a48) + 0x3a) =
         *(byte *)(*(int *)(param_1 + 0x16a48) + 0x3a) & 0xfe;
    *(undefined4 *)(*(int *)(param_1 + 0x16a48) + 0xd0) = 0xffffffff;
    *(undefined4 *)(*(int *)(param_1 + 0x16a48) + 0xd4) = 0;
    local_1c = (uint *)operator_new(0x118);
    if (local_1c == (uint *)0x0) {
      puVar5 = (uint *)0x0;
    }
    else {
      local_1c[0x3e] = 0;
      local_1c[0x3d] = 0;
      FUN_004f6d50();
      FUN_0040ad00(0);
      FUN_0040ad30(1);
      *local_1c = *local_1c & 0xffffffc0;
      puVar5 = local_1c;
    }
    *(uint **)(param_1 + 0x16a50) = puVar5;
    if (DAT_0066d188 != 0) {
      uVar4 = operator_new(0x40000);
      *(undefined4 *)(param_1 + 0x16a54) = uVar4;
      uVar4 = operator_new(0x20000);
      *(undefined4 *)(param_1 + 0x16a58) = uVar4;
      iVar2 = operator_new(0x38);
      if (iVar2 == 0) {
        uVar4 = 0;
      }
      else {
        uVar4 = FUN_005249f0(1,0x4000,1,0xc000,1);
      }
      *(undefined4 *)(param_1 + 0x16a5c) = uVar4;
    }
    local_1c = (uint *)operator_new(0x34);
    if (local_1c == (uint *)0x0) {
      puVar5 = (uint *)0x0;
    }
    else {
      FUN_005254b0();
      _DAT_0069242c = 0;
      _DAT_00692428 = 0;
      _DAT_00692424 = 0;
      _DAT_00692420 = 0;
      FUN_0050ba90(0,&DAT_00692420,1);
      FUN_0040ad30(1);
      *local_1c = *local_1c & 0xfffffffd;
      puVar5 = local_1c;
    }
    *(uint **)(param_1 + 0x17204) = puVar5;
    if (*(int *)(param_1 + 0x17228) != 0) {
      local_1c = (uint *)operator_new(0x18);
      if (local_1c == (uint *)0x0) {
        puVar5 = (uint *)0x0;
      }
      else {
        FUN_004f6700();
        puVar5 = local_1c;
      }
      *(uint **)(param_1 + 0x179bc) = puVar5;
      iVar2 = operator_new(0x28);
      if (iVar2 == 0) {
        iVar2 = 0;
      }
      else {
        FUN_00525ae0();
        FUN_0040ad00(0);
        FUN_0040ad30(1);
      }
      *(int *)(param_1 + 0x17a8c) = iVar2;
      FUN_005256e0(5,0x44200000,0x43f00000,0x3faaaaab);
      puVar6 = (undefined4 *)operator_new(0x148);
      if (puVar6 == (undefined4 *)0x0) {
        puVar6 = (undefined4 *)0x0;
      }
      else {
        FUN_004010f0(puVar6 + 0x1b,0xc,3,FUN_00407f60);
        puVar6[0x30] = 0;
        puVar6[0x31] = 0;
        puVar6[0x32] = 0;
        puVar6[0x33] = 0;
        puVar6[0x34] = 0;
        puVar6[0x35] = 0;
        puVar6[0x36] = 0;
        puVar6[0x37] = 0;
        puVar6[0x38] = 0;
        puVar6[0x39] = 0;
        FUN_0040ae40();
        puVar6[0x10] = 0;
        puVar6[0xd] = 0;
        puVar6[0xe] = 0;
        puVar6[0xf] = 0;
        puVar6[0x3b] = 0;
        puVar6[0x3c] = 0;
        puVar6[0x2d] = 0;
        puVar6[0x2e] = 0;
        puVar6[0x2f] = 0;
      }
      *(undefined4 **)(param_1 + 0x179c0) = puVar6;
      local_1c = (uint *)0xc5800000;
      puVar6[4] = 0xc5800000;
      local_18 = 0xc5800000;
      puVar6[5] = 0xc5800000;
      local_24 = 0;
      puVar6[6] = 0;
      local_20 = 0;
      puVar6[7] = 0;
      local_c = 0x44400000;
      puVar6[8] = 0x44400000;
      local_8 = 0x44400000;
      puVar6[9] = 0x44400000;
      local_4 = 0x44800000;
      puVar6[10] = 0x44800000;
      local_14 = 0x3f000000;
      local_10 = 0x3e19999a;
      puVar6[0xb] = 0x3f000000;
      puVar6[0xc] = 0x3e19999a;
      *puVar6 = 0x3e400000;
      puVar6[1] = 0x3e400000;
      puVar6[2] = 0xbdc00000;
      puVar6[3] = 0xbce66667;
      FUN_004f3530(0x403,0x404,0x3f000000);
      local_24 = 0xff101010;
      local_1c = (uint *)0xff101010;
      FUN_004f37f0(0x79e,0x40,&local_1c,&local_24);
      FUN_004f4780(0x405);
      local_1c = (uint *)operator_new(0xa48);
      if (local_1c == (uint *)0x0) {
        puVar5 = (uint *)0x0;
      }
      else {
        FUN_0055d280();
        puVar5 = local_1c;
      }
      *(uint **)(param_1 + 0x179c4) = puVar5;
      puVar6 = (undefined4 *)operator_new(4);
      if (puVar6 == (undefined4 *)0x0) {
        puVar6 = (undefined4 *)0x0;
      }
      else {
        *puVar6 = 0x3e8ccccd;
      }
      *(undefined4 **)(param_1 + 0x179c8) = puVar6;
      FUN_0040fe30(s_vfx_hud__0060413c);
    }
    FUN_004f49f0(0x7a1);
    if (*(int *)(param_1 + 0x17b94) != 0) {
      local_1c = (uint *)operator_new(0x18);
      if (local_1c == (uint *)0x0) {
        puVar5 = (uint *)0x0;
      }
      else {
        FUN_004f6700();
        puVar5 = local_1c;
      }
      *(uint **)(param_1 + 0x18328) = puVar5;
      local_1c = (uint *)operator_new(0x11f0);
      if (local_1c == (uint *)0x0) {
        puVar5 = (uint *)0x0;
      }
      else {
        FUN_0055d280();
        puVar5 = local_1c;
      }
      *(uint **)(param_1 + 0x1832c) = puVar5;
      Aqua_Renderer__Menu_InGame_AllocateResources(s_vfx_menu__00604130);
    }
    iVar2 = operator_new(0x28);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      FUN_00525ae0();
      FUN_0040ad00(0);
      FUN_0040ad30(1);
    }
    *(int *)(param_1 + 0x1721c) = iVar2;
    FUN_005256e0(5,0x44200000,0x43f00000,0x3faaaaab);
    puVar5 = (uint *)operator_new(0xfc);
    if (puVar5 == (uint *)0x0) {
      puVar5 = (uint *)0x0;
    }
    else {
      FUN_004f8e00();
      FUN_0040ad00(0);
      FUN_0040ad30(1);
      FUN_0040ad70(0x15,0x3f000000);
      FUN_005254b0();
      FUN_0040ad00(0);
      FUN_0040ad30(1);
      *puVar5 = *puVar5 & 0xfffffff5 | 4;
    }
    *(uint **)(param_1 + 0x17210) = puVar5;
    iVar2 = operator_new(0x18);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      FUN_00525c80();
      _DAT_0069242c = 0;
      _DAT_00692428 = 0;
      _DAT_00692424 = 0;
      _DAT_00692420 = 0;
      FUN_0050ba90(0,&DAT_00692420,1);
      _DAT_0069243c = 0x3f800000;
      _DAT_00692438 = 0x3f800000;
      _DAT_00692434 = 0x3f800000;
      _DAT_00692430 = 0x3f800000;
      FUN_0050ba90(1,&DAT_00692430,1);
    }
    *(int *)(param_1 + 0x17214) = iVar2;
    iVar2 = operator_new(0x24);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      iVar2 = FUN_00528f20(1);
    }
    *(undefined4 *)(iVar2 + 0x20) = 1;
    FUN_0052bef0(4,2);
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x18) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x40) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x68) = 0xffffffff;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x90) = 0xffffffff;
    puVar6 = *(undefined4 **)(*(int *)(iVar2 + 0x18) + 0x20);
    puVar6[1] = 0;
    *puVar6 = 0xbf000000;
    puVar6[2] = 0xbf000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x1c) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x20) = 0;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x28) = 0xbf000000;
    *(undefined4 *)(iVar3 + 0x2c) = 0;
    *(undefined4 *)(iVar3 + 0x30) = 0x3f000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x44) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x48) = 0x3f800000;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x50) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x58) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x54) = 0;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x6c) = 0x3f800000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x70) = 0x3f800000;
    iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x20);
    *(undefined4 *)(iVar3 + 0x78) = 0x3f000000;
    *(undefined4 *)(iVar3 + 0x7c) = 0;
    *(undefined4 *)(iVar3 + 0x80) = 0xbf000000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x94) = 0x3f800000;
    *(undefined4 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x20) + 0x98) = 0;
    *(undefined1 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 6) = 0;
    **(undefined2 **)(*(int *)(iVar2 + 0x18) + 0x2c) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 2) = 1;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 4) = 2;
    *(undefined1 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 0xe) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 8) = 0;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 10) = 2;
    *(undefined2 *)(*(int *)(*(int *)(iVar2 + 0x18) + 0x2c) + 0xc) = 3;
    *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) = *(byte *)(*(int *)(iVar2 + 0x18) + 0x3a) & 0xfe;
    *(undefined1 *)(*(int *)(iVar2 + 0x18) + 0x38) = 1;
    *(undefined4 *)(*(int *)(iVar2 + 0x18) + 0x18) = 4;
    *(undefined4 *)(*(int *)(iVar2 + 0x18) + 0x24) = 2;
    FUN_0052b6d0(0);
    iVar3 = operator_new(0x38);
    if (iVar3 == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = FUN_00524970(iVar2);
    }
    *(undefined4 *)(param_1 + 0x17218) = uVar4;
    if (iVar2 != 0) {
      FUN_00528f40();
      operator_delete(iVar2);
    }
    iVar2 = operator_new(0x38);
    if (iVar2 == 0) {
      iVar2 = 0;
    }
    else {
      iVar2 = FUN_005249f0(1,0x400,1,0xc00,1);
    }
    *(int *)(param_1 + 0x17224) = iVar2;
    *(undefined4 *)(*(int *)(iVar2 + 0x18) + 0xa4) = 0;
    pbVar1 = (byte *)(*(int *)(*(int *)(param_1 + 0x17224) + 0x18) + 10);
    *pbVar1 = *pbVar1 & 0xfb;
    pbVar1 = (byte *)(*(int *)(*(int *)(param_1 + 0x17224) + 0x18) + 10);
    *pbVar1 = *pbVar1 & 0xfe;
    *(undefined1 *)(*(int *)(*(int *)(param_1 + 0x17224) + 0x18) + 8) = 1;
    FUN_004b0600();
    FUN_0050c0a0();
  }
  return;
}



// --------------------------------------------
// FUN_004d7ff0   ab 0x004d7ff0   10514 Byte
// gerufen von: FUN_004d5a80
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 __thiscall
FUN_004d7ff0(float *param_1,float *param_2,float *param_3,int *param_4,float *param_5,float *param_6
            )

{
  int iVar1;
  float fVar2;
  ushort uVar3;
  int *piVar4;
  bool bVar5;
  float fVar6;
  float fVar7;
  undefined4 *puVar8;
  undefined4 uVar9;
  int iVar10;
  int iVar11;
  float *pfVar12;
  int iVar13;
  int iVar14;
  float10 fVar15;
  undefined1 *puVar16;
  undefined1 local_280 [12];
  undefined4 local_274;
  undefined4 local_270;
  float local_26c;
  undefined4 local_268;
  undefined4 local_264;
  float local_260;
  undefined4 local_25c;
  undefined4 local_258;
  float local_254;
  float local_250;
  undefined4 local_24c;
  float local_248;
  undefined1 local_244 [12];
  float local_238;
  undefined1 local_234 [12];
  int local_228;
  float local_224;
  float local_220;
  float local_21c;
  undefined4 local_218;
  undefined4 local_214;
  undefined4 local_210;
  float local_20c;
  float local_208;
  float local_204;
  undefined4 local_200;
  undefined4 local_1fc;
  undefined4 local_1f8;
  float local_1f4;
  float local_1f0;
  float local_1ec;
  float local_1e8;
  float local_1e4;
  float local_1e0;
  float local_1dc;
  float local_1d8;
  float local_1d4;
  float local_1d0;
  float local_1cc;
  float local_1c8;
  float local_1c4;
  float local_1c0;
  float local_1bc;
  float local_1b8;
  float local_1b4;
  float local_1b0;
  float local_1ac;
  float local_1a8;
  float local_1a4;
  float local_1a0;
  float local_19c;
  float local_198;
  float local_194;
  float local_190;
  float local_18c;
  float local_188;
  float local_184;
  float local_180;
  float local_17c;
  float local_178;
  float local_174;
  float local_170;
  float local_16c;
  float local_168;
  float local_164;
  float local_160;
  float local_15c;
  float local_158;
  float local_154;
  float local_150;
  float local_14c;
  float local_148;
  float local_144;
  float local_140;
  float local_13c;
  float local_138;
  float local_134;
  float local_130;
  float local_12c;
  float local_128;
  float local_124;
  float local_120;
  float local_11c;
  float local_118;
  float local_114;
  float local_110;
  float local_10c;
  float local_108;
  float local_104;
  float local_100;
  float local_fc;
  float local_f8;
  float local_f4;
  float local_f0;
  float local_ec;
  float local_e8;
  float local_e4;
  float local_e0;
  float local_dc;
  float local_d8;
  float local_d4;
  float local_d0;
  float local_cc;
  float local_c8;
  float local_c4;
  float local_c0;
  float local_bc;
  float local_b8;
  float local_b4;
  float local_b0;
  float local_ac;
  float local_a8;
  float local_a4;
  float local_a0;
  float local_9c;
  float local_98;
  float local_94;
  float local_90;
  float local_8c;
  float local_88;
  float local_84;
  float local_80;
  float local_7c;
  float local_78;
  float local_74;
  float local_70;
  float local_6c;
  float local_68;
  float local_64;
  float local_60;
  float local_5c;
  float local_58;
  float local_54;
  float local_50;
  float local_4c;
  int local_48;
  int *local_44;
  int local_40;
  float local_3c;
  float local_38;
  float local_34;
  float local_30;
  float local_2c;
  float local_28;
  float local_24;
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  int local_8;
  
  if (param_4 != (int *)0x0) {
    local_64 = *param_2;
    local_60 = param_2[1];
    local_5c = param_2[2];
    local_70 = *param_3;
    local_6c = param_3[1];
    local_68 = param_3[2];
    local_20c = *param_3;
    local_208 = param_3[1];
    local_204 = param_3[2];
    puVar8 = (undefined4 *)FUN_00436530(&local_20,&local_64);
    local_200 = *puVar8;
    local_1fc = puVar8[1];
    local_1f8 = puVar8[2];
    fVar15 = (float10)FUN_00436830();
    local_1f4 = (float)fVar15;
    puVar8 = (undefined4 *)FUN_00436860(&local_20,(float)fVar15);
    local_218 = *puVar8;
    local_214 = puVar8[1];
    local_210 = puVar8[2];
    local_224 = local_64;
    local_220 = local_60;
    local_21c = local_5c;
    if (_DAT_005f3370 <= local_1f4) {
      iVar10 = (int)ROUND(*param_2 + -0.49999988);
      local_38 = param_2[1];
      local_58 = -0.49999988;
      local_8 = (int)ROUND(local_38 + -0.49999988);
      local_40 = iVar10;
      if ((local_8 + iVar10 & 1U) == 0) {
        if (-1 < iVar10) {
          piVar4 = (int *)*param_4;
          if (((((iVar10 < *piVar4) && (-1 < local_8)) && (local_8 < piVar4[1])) &&
              ((iVar13 = local_8 + 1, -1 < iVar13 && (iVar13 < piVar4[1])))) &&
             (((local_30 = (float)(iVar10 + 1), -1 < (int)local_30 &&
               (((int)local_30 < *piVar4 && (-1 < iVar13)))) && (iVar13 < piVar4[1])))) {
            local_2c = (float)(int)local_30;
            local_28 = (float)iVar13;
            local_24 = (float)*(ushort *)(*(int *)(piVar4[4] + iVar13 * 4) + (int)local_30 * 2);
            local_38 = (float)iVar10;
            local_18 = (float)*(ushort *)(*(int *)(piVar4[4] + iVar13 * 4) + iVar10 * 2);
            local_10 = (float)local_8;
            local_c = (float)*(ushort *)(*(int *)(piVar4[4] + local_8 * 4) + iVar10 * 2);
            *param_6 = local_38;
            param_6[1] = local_10;
            param_6[2] = local_c;
            param_6[3] = local_38;
            param_6[4] = local_28;
            param_6[5] = local_18;
            param_6[6] = local_2c;
            param_6[7] = local_28;
            param_6[8] = local_24;
            local_20 = local_38;
            local_1c = local_28;
            local_14 = local_38;
            uVar9 = FUN_00436530(&local_54,&local_14);
            pfVar12 = &local_94;
            FUN_00436530(&local_88,&local_14);
            uVar9 = FUN_004d59c0(pfVar12,uVar9);
            FUN_004d5a00(&local_14,uVar9);
            iVar13 = FUN_005151e0(param_6,param_5);
            if ((iVar13 != 0) && (_DAT_005f336c < *param_5)) {
              *param_5 = *param_5 / local_1f4;
              return 1;
            }
          }
          piVar4 = (int *)*param_4;
          if (((((iVar10 < *piVar4) && (-1 < local_8)) && (local_8 < piVar4[1])) &&
              (((local_30 = (float)(iVar10 + 1), -1 < (int)local_30 && ((int)local_30 < *piVar4)) &&
               ((iVar13 = local_8 + 1, -1 < (int)local_30 &&
                (((int)local_30 < *piVar4 && (-1 < iVar13)))))))) && (iVar13 < piVar4[1])) {
            local_2c = (float)(int)local_30;
            local_38 = (float)(uint)*(ushort *)
                                     (*(int *)(piVar4[4] + local_8 * 4) + (int)local_30 * 2);
            local_58 = (float)local_8;
            local_24 = (float)(int)local_38;
            local_1c = (float)iVar13;
            local_18 = (float)*(ushort *)(*(int *)(piVar4[4] + iVar13 * 4) + (int)local_30 * 2);
            local_14 = (float)local_40;
            uVar3 = *(ushort *)(*(int *)(piVar4[4] + local_8 * 4) + iVar10 * 2);
            *param_6 = local_14;
            param_6[1] = local_58;
            local_c = (float)uVar3;
            param_6[2] = local_c;
            param_6[3] = local_2c;
            param_6[4] = local_1c;
            param_6[5] = local_18;
            param_6[6] = local_2c;
            param_6[7] = local_58;
            param_6[8] = local_24;
            local_28 = local_58;
            local_20 = local_2c;
            local_10 = local_58;
            uVar9 = FUN_00436530(&local_54,&local_14);
            pfVar12 = &local_94;
            FUN_00436530(&local_88,&local_14);
            uVar9 = FUN_004d59c0(pfVar12,uVar9);
            FUN_004d5a00(&local_14,uVar9);
            iVar10 = FUN_005151e0(param_6,param_5);
            if ((iVar10 != 0) && (_DAT_005f336c < *param_5)) {
              *param_5 = *param_5 / local_1f4;
              return 1;
            }
          }
        }
      }
      else {
        if ((((-1 < iVar10) && (piVar4 = (int *)*param_4, iVar10 < *piVar4)) && (-1 < local_8)) &&
           (((local_8 < piVar4[1] && (iVar13 = local_8 + 1, -1 < iVar13)) &&
            ((iVar13 < piVar4[1] &&
             ((local_30 = (float)(iVar10 + 1), -1 < (int)local_30 && ((int)local_30 < *piVar4)))))))
           ) {
          local_2c = (float)(int)local_30;
          local_38 = (float)(uint)*(ushort *)(*(int *)(piVar4[4] + local_8 * 4) + (int)local_30 * 2)
          ;
          local_28 = (float)local_8;
          local_24 = (float)(int)local_38;
          local_20 = (float)iVar10;
          local_1c = (float)iVar13;
          local_18 = (float)*(ushort *)(*(int *)(piVar4[4] + iVar13 * 4) + iVar10 * 2);
          uVar3 = *(ushort *)(*(int *)(piVar4[4] + local_8 * 4) + iVar10 * 2);
          *param_6 = local_20;
          local_c = (float)uVar3;
          param_6[1] = local_28;
          param_6[2] = local_c;
          param_6[3] = local_20;
          param_6[4] = local_1c;
          param_6[5] = local_18;
          param_6[6] = local_2c;
          param_6[7] = local_28;
          param_6[8] = local_24;
          local_14 = local_20;
          local_10 = local_28;
          uVar9 = FUN_00436530(&local_54,&local_14);
          pfVar12 = &local_94;
          FUN_00436530(&local_88,&local_14);
          uVar9 = FUN_004d59c0(pfVar12,uVar9);
          FUN_004d5a00(&local_14,uVar9);
          iVar13 = FUN_005151e0(param_6,param_5);
          if ((iVar13 != 0) && (_DAT_005f336c < *param_5)) {
            *param_5 = *param_5 / local_1f4;
            return 1;
          }
        }
        iVar13 = local_8 + 1;
        if (((((((-1 < iVar10) && (piVar4 = (int *)*param_4, iVar10 < *piVar4)) && (-1 < iVar13)) &&
              ((iVar13 < piVar4[1] && (local_30 = (float)(iVar10 + 1), -1 < (int)local_30)))) &&
             ((int)local_30 < *piVar4)) && ((-1 < iVar13 && (iVar13 < piVar4[1])))) &&
           ((-1 < (int)local_30 &&
            ((((int)local_30 < *piVar4 && (-1 < local_8)) && (local_8 < piVar4[1])))))) {
          local_2c = (float)(int)local_30;
          local_28 = (float)local_8;
          local_24 = (float)*(ushort *)(*(int *)(piVar4[4] + local_8 * 4) + (int)local_30 * 2);
          local_38 = (float)(uint)*(ushort *)(*(int *)(piVar4[4] + iVar13 * 4) + (int)local_30 * 2);
          local_1c = (float)iVar13;
          local_18 = (float)(int)local_38;
          local_14 = (float)local_40;
          uVar3 = *(ushort *)(*(int *)(piVar4[4] + iVar13 * 4) + iVar10 * 2);
          *param_6 = local_14;
          param_6[1] = local_1c;
          local_c = (float)uVar3;
          param_6[2] = local_c;
          param_6[3] = local_2c;
          param_6[4] = local_1c;
          param_6[5] = local_18;
          param_6[6] = local_2c;
          param_6[7] = local_28;
          param_6[8] = local_24;
          local_20 = local_2c;
          local_10 = local_1c;
          uVar9 = FUN_00436530(&local_54,&local_14);
          pfVar12 = &local_94;
          FUN_00436530(&local_88,&local_14);
          uVar9 = FUN_004d59c0(pfVar12,uVar9);
          FUN_004d5a00(&local_14,uVar9);
          iVar10 = FUN_005151e0(param_6,param_5);
          if ((iVar10 != 0) && (_DAT_005f336c < *param_5)) {
            *param_5 = *param_5 / local_1f4;
            return 1;
          }
        }
      }
      FUN_004d7a40(param_2,param_3);
      param_1[0x25] = param_1[0x18];
      param_1[0x21] = 0.0;
      param_1[0x22] = 1.4013e-45;
      param_1[0x26] = param_1[0x19];
      param_1[0x23] = 2.8026e-45;
      param_1[0x27] = param_1[0x1a];
      param_1[0x24] = 4.2039e-45;
      param_1[0x28] = param_1[0x1b];
      do {
        bVar5 = false;
        pfVar12 = param_1 + 0x26;
        iVar10 = 3;
        do {
          if (*pfVar12 < pfVar12[-1]) {
            fVar2 = pfVar12[-1];
            pfVar12[-1] = *pfVar12;
            *pfVar12 = fVar2;
            fVar2 = pfVar12[-5];
            pfVar12[-5] = pfVar12[-4];
            pfVar12[-4] = fVar2;
            bVar5 = true;
          }
          pfVar12 = pfVar12 + 1;
          iVar10 = iVar10 + -1;
        } while (iVar10 != 0);
      } while (bVar5);
      if (param_1[0x25] <= param_1[0x20]) {
        do {
          local_38 = param_1[0x21];
          switch(local_38) {
          case 0.0:
            local_264 = 0xbefffffc;
            local_34 = *param_1 + _DAT_005f3390;
            iVar10 = (int)ROUND(local_34 + -0.49999988);
            local_248 = param_1[1];
            local_270 = 0xbefffffc;
            iVar13 = (int)ROUND(local_248 + -0.49999988);
            local_48 = iVar10;
            iVar11 = FUN_004da920(iVar10,iVar13);
            if (iVar11 == 0) {
              local_30 = 0.0;
            }
            else {
              local_34 = (float)(uint)*(ushort *)
                                       (*(int *)(*(int *)(*param_4 + 0x10) + iVar13 * 4) +
                                       iVar10 * 2);
              local_30 = (float)(int)local_34;
            }
            iVar11 = FUN_004da920(iVar10,iVar13 + 1);
            fVar2 = _DAT_005f336c;
            if (iVar11 != 0) {
              local_34 = (float)(uint)*(ushort *)
                                       (*(int *)(*(int *)(*param_4 + 0x10) + (iVar13 + 1) * 4) +
                                       iVar10 * 2);
              fVar2 = (float)(int)local_34;
            }
            if (param_1[2] < (fVar2 - local_30) * (param_1[1] - (float)iVar13) + local_30) {
              if ((iVar13 + iVar10 & 1U) == 0) {
                iVar11 = iVar10 + -1;
                iVar14 = iVar13 + 1;
                if (-1 < iVar11) {
                  piVar4 = (int *)*param_4;
                  if (((iVar11 < *piVar4) && (-1 < iVar14)) && (iVar1 = piVar4[1], iVar14 < iVar1))
                  {
                    if (iVar10 < 0) {
                      return 0;
                    }
                    if (((iVar10 < *piVar4) && (-1 < iVar14)) &&
                       ((iVar14 < iVar1 && ((-1 < iVar13 && (iVar13 < iVar1)))))) {
                      local_1e4 = (float)local_48;
                      local_1e0 = (float)iVar13;
                      local_1dc = (float)*(ushort *)(*(int *)(piVar4[4] + iVar13 * 4) + iVar10 * 2);
                      local_3c = (float)(uint)*(ushort *)
                                               (*(int *)(piVar4[4] + iVar14 * 4) + iVar10 * 2);
                      local_120 = (float)iVar14;
                      local_11c = (float)(int)local_3c;
                      local_dc = (float)iVar11;
                      local_d4 = (float)*(ushort *)
                                         (*(int *)(piVar4[4] + iVar14 * 4) + -2 + iVar10 * 2);
                      *param_6 = local_dc;
                      param_6[1] = local_120;
                      param_6[2] = local_d4;
                      param_6[3] = local_1e4;
                      param_6[4] = local_120;
                      param_6[5] = local_11c;
                      param_6[6] = local_1e4;
                      param_6[7] = local_1e0;
                      param_6[8] = local_1dc;
                      local_124 = local_1e4;
                      local_d8 = local_120;
                      uVar9 = FUN_00436530(local_234,&local_dc);
                      puVar16 = local_244;
                      FUN_00436530(&local_20,&local_dc);
                      uVar9 = FUN_004d59c0(puVar16,uVar9);
                      FUN_004d5a00(&local_dc,uVar9);
                      iVar11 = FUN_005151e0(param_6,param_5);
                      if ((iVar11 != 0) && (_DAT_005f336c < *param_5)) {
                        *param_5 = *param_5 / local_1f4;
                        return 1;
                      }
                    }
                  }
                }
                if (iVar10 < 0) {
                  return 0;
                }
                param_4 = (int *)*param_4;
                if (*param_4 <= iVar10) {
                  return 0;
                }
                if (iVar14 < 0) {
                  return 0;
                }
                if (param_4[1] <= iVar14) {
                  return 0;
                }
                iVar11 = iVar10 + 1;
                if (iVar11 < 0) {
                  return 0;
                }
                if (*param_4 <= iVar11) {
                  return 0;
                }
                if (iVar14 < 0) {
                  return 0;
                }
                if (param_4[1] <= iVar14) {
                  return 0;
                }
                if (iVar13 < 0) {
                  return 0;
                }
                if (param_4[1] <= iVar13) {
                  return 0;
                }
                local_148 = (float)local_48;
                local_144 = (float)iVar13;
                local_140 = (float)*(ushort *)(*(int *)(param_4[4] + iVar13 * 4) + iVar10 * 2);
                local_19c = (float)iVar11;
                local_198 = (float)iVar14;
                local_194 = (float)*(ushort *)(*(int *)(param_4[4] + iVar14 * 4) + iVar11 * 2);
                uVar3 = *(ushort *)(*(int *)(param_4[4] + iVar14 * 4) + iVar10 * 2);
                *param_6 = local_148;
                param_6[1] = local_198;
                local_a4 = (float)uVar3;
                param_6[2] = local_a4;
                param_6[3] = local_19c;
                param_6[4] = local_198;
                param_6[5] = local_194;
                param_6[6] = local_148;
                param_6[7] = local_144;
                param_6[8] = local_140;
                local_ac = local_148;
                local_a8 = local_198;
                uVar9 = FUN_00436530(local_234,&local_ac);
                puVar16 = local_244;
                FUN_00436530(&local_20,&local_ac);
                uVar9 = FUN_004d59c0(puVar16,uVar9);
                pfVar12 = &local_ac;
              }
              else {
                iVar11 = iVar10 + -1;
                if (-1 < iVar11) {
                  piVar4 = (int *)*param_4;
                  if (((((iVar11 < *piVar4) && (-1 < iVar13)) && (iVar13 < piVar4[1])) &&
                      ((-1 < iVar10 && (iVar10 < *piVar4)))) &&
                     ((iVar14 = iVar13 + 1, -1 < iVar14 && (iVar14 < piVar4[1])))) {
                    local_1cc = (float)local_48;
                    local_3c = (float)(uint)*(ushort *)
                                             (*(int *)(piVar4[4] + iVar13 * 4) + iVar10 * 2);
                    local_238 = (float)iVar13;
                    local_164 = (float)(int)local_3c;
                    local_1c8 = (float)iVar14;
                    local_1c4 = (float)*(ushort *)(*(int *)(piVar4[4] + iVar14 * 4) + iVar10 * 2);
                    local_c4 = (float)iVar11;
                    local_bc = (float)*(ushort *)
                                       (*(int *)(piVar4[4] + iVar13 * 4) + -2 + iVar10 * 2);
                    *param_6 = local_c4;
                    param_6[1] = local_238;
                    param_6[2] = local_bc;
                    param_6[3] = local_1cc;
                    param_6[4] = local_1c8;
                    param_6[5] = local_1c4;
                    param_6[6] = local_1cc;
                    param_6[7] = local_238;
                    param_6[8] = local_164;
                    local_16c = local_1cc;
                    local_168 = local_238;
                    local_c0 = local_238;
                    uVar9 = FUN_00436530(&local_20,&local_c4);
                    puVar16 = local_244;
                    FUN_00436530(local_234,&local_c4);
                    uVar9 = FUN_004d59c0(puVar16,uVar9);
                    FUN_004d5a00(&local_c4,uVar9);
                    iVar11 = FUN_005151e0(param_6,param_5);
                    if ((iVar11 != 0) && (_DAT_005f336c < *param_5)) {
                      *param_5 = *param_5 / local_1f4;
                      return 1;
                    }
                  }
                }
                iVar11 = iVar13 + 1;
                if (iVar10 < 0) {
                  return 0;
                }
                param_4 = (int *)*param_4;
                if (*param_4 <= iVar10) {
                  return 0;
                }
                if (iVar11 < 0) {
                  return 0;
                }
                if (param_4[1] <= iVar11) {
                  return 0;
                }
                iVar14 = iVar10 + 1;
                if (iVar14 < 0) {
                  return 0;
                }
                if (*param_4 <= iVar14) {
                  return 0;
                }
                if (iVar13 < 0) {
                  return 0;
                }
                if (param_4[1] <= iVar13) {
                  return 0;
                }
                local_184 = (float)local_48;
                local_1b0 = (float)iVar13;
                local_17c = (float)*(ushort *)(*(int *)(param_4[4] + iVar13 * 4) + iVar10 * 2);
                local_1b4 = (float)iVar14;
                local_1ac = (float)*(ushort *)(*(int *)(param_4[4] + iVar13 * 4) + iVar14 * 2);
                uVar3 = *(ushort *)(*(int *)(param_4[4] + iVar11 * 4) + iVar10 * 2);
                local_f0 = (float)iVar11;
                *param_6 = local_184;
                param_6[1] = local_f0;
                local_ec = (float)uVar3;
                param_6[2] = local_ec;
                param_6[3] = local_1b4;
                param_6[4] = local_1b0;
                param_6[5] = local_1ac;
                param_6[6] = local_184;
                param_6[7] = local_1b0;
                param_6[8] = local_17c;
                local_180 = local_1b0;
                local_f4 = local_184;
                uVar9 = FUN_00436530(local_234,&local_f4);
                puVar16 = local_244;
                FUN_00436530(&local_20,&local_f4);
                uVar9 = FUN_004d59c0(puVar16,uVar9);
                pfVar12 = &local_f4;
              }
LAB_004da343:
              FUN_004d5a00(pfVar12,uVar9);
LAB_004da34e:
              iVar10 = FUN_005151e0(param_6,param_5);
              if (iVar10 == 0) {
                return 0;
              }
              if (*param_5 <= _DAT_005f336c) {
                return 0;
              }
              *param_5 = *param_5 / local_1f4;
              return 1;
            }
            *param_1 = param_1[0xc] + *param_1;
            param_1[1] = param_1[0xd] + param_1[1];
            param_1[2] = param_1[0xe] + param_1[2];
            param_1[0x18] = param_1[0x1c] + param_1[0x18];
            break;
          case 1.4013e-45:
            local_254 = param_1[3];
            local_274 = 0xbefffffc;
            iVar10 = (int)ROUND(local_254 + -0.49999988);
            local_34 = param_1[4] + _DAT_005f3390;
            local_25c = 0xbefffffc;
            iVar13 = (int)ROUND(local_34 + -0.49999988);
            local_44 = (int *)iVar13;
            iVar11 = FUN_004da920(iVar10,iVar13);
            if (iVar11 == 0) {
              local_30 = 0.0;
            }
            else {
              local_34 = (float)(uint)*(ushort *)
                                       (*(int *)(*(int *)(*param_4 + 0x10) + iVar13 * 4) +
                                       iVar10 * 2);
              local_30 = (float)(int)local_34;
            }
            iVar11 = FUN_004da920(iVar10 + 1,iVar13);
            fVar2 = _DAT_005f336c;
            if (iVar11 != 0) {
              local_34 = (float)(uint)*(ushort *)
                                       (*(int *)(*(int *)(*param_4 + 0x10) + iVar13 * 4) + 2 +
                                       iVar10 * 2);
              fVar2 = (float)(int)local_34;
            }
            if (param_1[5] < (fVar2 - local_30) * (param_1[3] - (float)iVar10) + local_30) {
              if ((iVar13 + iVar10 & 1U) != 0) {
                iVar11 = iVar13 + 1;
                if ((((-1 < iVar10) && (piVar4 = (int *)*param_4, iVar10 < *piVar4)) &&
                    (-1 < iVar11)) &&
                   (((iVar11 < piVar4[1] && (-1 < iVar13)) &&
                    ((iVar13 < piVar4[1] &&
                     ((iVar14 = iVar10 + 1, -1 < iVar14 && (iVar14 < *piVar4)))))))) {
                  local_160 = (float)iVar10;
                  local_3c = (float)(uint)*(ushort *)(*(int *)(piVar4[4] + iVar13 * 4) + iVar10 * 2)
                  ;
                  local_15c = (float)(int)local_44;
                  local_158 = (float)(int)local_3c;
                  local_13c = (float)iVar14;
                  local_134 = (float)*(ushort *)(*(int *)(piVar4[4] + iVar13 * 4) + iVar14 * 2);
                  local_b4 = (float)iVar11;
                  local_b0 = (float)*(ushort *)(*(int *)(piVar4[4] + iVar11 * 4) + iVar10 * 2);
                  *param_6 = local_160;
                  param_6[1] = local_b4;
                  param_6[2] = local_b0;
                  param_6[3] = local_13c;
                  param_6[4] = local_15c;
                  param_6[5] = local_134;
                  param_6[6] = local_160;
                  param_6[7] = local_15c;
                  param_6[8] = local_158;
                  local_138 = local_15c;
                  local_b8 = local_160;
                  uVar9 = FUN_00436530(local_234,&local_b8);
                  puVar16 = local_244;
                  FUN_00436530(&local_20,&local_b8);
                  uVar9 = FUN_004d59c0(puVar16,uVar9);
                  FUN_004d5a00(&local_b8,uVar9);
                  iVar11 = FUN_005151e0(param_6,param_5);
                  if ((iVar11 != 0) && (_DAT_005f336c < *param_5)) {
                    *param_5 = *param_5 / local_1f4;
                    return 1;
                  }
                }
                iVar11 = iVar13 + -1;
                if (iVar10 < 0) {
                  return 0;
                }
                param_4 = (int *)*param_4;
                if (*param_4 <= iVar10) {
                  return 0;
                }
                if (iVar11 < 0) {
                  return 0;
                }
                if (param_4[1] <= iVar11) {
                  return 0;
                }
                if (iVar13 < 0) {
                  return 0;
                }
                if (param_4[1] <= iVar13) {
                  return 0;
                }
                iVar14 = iVar10 + 1;
                if (iVar14 < 0) {
                  return 0;
                }
                if (*param_4 <= iVar14) {
                  return 0;
                }
                local_178 = (float)iVar14;
                local_174 = (float)(int)local_44;
                local_170 = (float)*(ushort *)(*(int *)(param_4[4] + iVar13 * 4) + iVar14 * 2);
                local_130 = (float)iVar10;
                local_128 = (float)*(ushort *)(*(int *)(param_4[4] + iVar13 * 4) + iVar10 * 2);
                local_cc = (float)iVar11;
                local_c8 = (float)*(ushort *)(*(int *)(param_4[4] + -4 + iVar13 * 4) + iVar10 * 2);
                *param_6 = local_130;
                param_6[1] = local_cc;
                param_6[2] = local_c8;
                param_6[3] = local_130;
                param_6[4] = local_174;
                param_6[5] = local_128;
                param_6[6] = local_178;
                param_6[7] = local_174;
                param_6[8] = local_170;
                local_12c = local_174;
                local_d0 = local_130;
                uVar9 = FUN_00436530(local_234,&local_d0);
                puVar16 = local_244;
                FUN_00436530(&local_20,&local_d0);
                uVar9 = FUN_004d59c0(puVar16,uVar9);
                FUN_004d5a00(&local_d0,uVar9);
                goto LAB_004da34e;
              }
              if (-1 < iVar10) {
                piVar4 = (int *)*param_4;
                iVar11 = *piVar4;
                if ((((iVar10 < iVar11) && (-1 < iVar13)) && (iVar13 < piVar4[1])) &&
                   ((((iVar14 = iVar10 + 1, -1 < iVar14 && (iVar14 < iVar11)) &&
                     ((iVar1 = iVar13 + 1, -1 < iVar14 && ((iVar14 < iVar11 && (-1 < iVar1)))))) &&
                    (iVar1 < piVar4[1])))) {
                  local_1a8 = (float)iVar10;
                  local_1a4 = (float)(int)local_44;
                  local_1a0 = (float)*(ushort *)(*(int *)(piVar4[4] + iVar13 * 4) + iVar10 * 2);
                  local_190 = (float)iVar14;
                  local_188 = (float)*(ushort *)(*(int *)(piVar4[4] + iVar13 * 4) + iVar14 * 2);
                  local_9c = (float)iVar1;
                  local_98 = (float)*(ushort *)(*(int *)(piVar4[4] + iVar1 * 4) + iVar14 * 2);
                  *param_6 = local_190;
                  param_6[1] = local_9c;
                  param_6[2] = local_98;
                  param_6[3] = local_190;
                  param_6[4] = local_1a4;
                  param_6[5] = local_188;
                  param_6[6] = local_1a8;
                  param_6[7] = local_1a4;
                  param_6[8] = local_1a0;
                  local_18c = local_1a4;
                  local_a0 = local_190;
                  local_3c = local_190;
                  uVar9 = FUN_00436530(local_234,&local_a0);
                  puVar16 = local_244;
                  FUN_00436530(&local_20,&local_a0);
                  uVar9 = FUN_004d59c0(puVar16,uVar9);
                  FUN_004d5a00(&local_a0,uVar9);
                  iVar11 = FUN_005151e0(param_6,param_5);
                  if ((iVar11 != 0) && (_DAT_005f336c < *param_5)) {
                    *param_5 = *param_5 / local_1f4;
                    return 1;
                  }
                }
              }
              iVar11 = iVar10 + 1;
              if (iVar11 < 0) {
                return 0;
              }
              param_4 = (int *)*param_4;
              if (*param_4 <= iVar11) {
                return 0;
              }
              if (iVar13 < 0) {
                return 0;
              }
              if (param_4[1] <= iVar13) {
                return 0;
              }
              iVar14 = iVar13 + -1;
              if (iVar11 < 0) {
                return 0;
              }
              if (*param_4 <= iVar11) {
                return 0;
              }
              if (iVar14 < 0) {
                return 0;
              }
              if (param_4[1] <= iVar14) {
                return 0;
              }
              if (iVar10 < 0) {
                return 0;
              }
              if (*param_4 <= iVar10) {
                return 0;
              }
              local_1d8 = (float)iVar10;
              local_1d4 = (float)(int)local_44;
              local_1d0 = (float)*(ushort *)(*(int *)(param_4[4] + iVar13 * 4) + iVar10 * 2);
              local_1c0 = (float)iVar11;
              local_1bc = (float)iVar14;
              local_1b8 = (float)*(ushort *)(*(int *)(param_4[4] + -4 + iVar13 * 4) + iVar11 * 2);
              uVar3 = *(ushort *)(*(int *)(param_4[4] + iVar13 * 4) + iVar11 * 2);
              *param_6 = local_1c0;
              local_e0 = (float)uVar3;
              param_6[1] = local_1d4;
              param_6[2] = local_e0;
              param_6[3] = local_1c0;
              param_6[4] = local_1bc;
              param_6[5] = local_1b8;
              param_6[6] = local_1d8;
              param_6[7] = local_1d4;
              param_6[8] = local_1d0;
              local_e8 = local_1c0;
              local_e4 = local_1d4;
              uVar9 = FUN_00436530(local_234,&local_e8);
              puVar16 = local_244;
              FUN_00436530(&local_20,&local_e8);
              uVar9 = FUN_004d59c0(puVar16,uVar9);
              pfVar12 = &local_e8;
              goto LAB_004da343;
            }
            param_1[3] = param_1[0xf] + param_1[3];
            param_1[4] = param_1[0x10] + param_1[4];
            param_1[5] = param_1[0x11] + param_1[5];
            param_1[0x19] = param_1[0x1d] + param_1[0x19];
            break;
          case 2.8026e-45:
            local_26c = param_1[6];
            local_24c = 0xbefffffc;
            iVar10 = (int)ROUND(local_26c + -0.49999988);
            local_250 = param_1[7];
            local_258 = 0xbefffffc;
            local_8 = (int)ROUND(local_250 + -0.49999988);
            local_228 = iVar10;
            iVar13 = FUN_004da920(iVar10,local_8);
            if (iVar13 == 0) {
              local_30 = 0.0;
            }
            else {
              local_34 = (float)(uint)*(ushort *)
                                       (*(int *)(*(int *)(*param_4 + 0x10) + local_8 * 4) +
                                       iVar10 * 2);
              local_30 = (float)(int)local_34;
            }
            iVar13 = FUN_004da920(iVar10 + 1,local_8 + 1);
            fVar2 = _DAT_005f336c;
            if (iVar13 != 0) {
              local_34 = (float)(uint)*(ushort *)
                                       (*(int *)(*(int *)(*param_4 + 0x10) + 4 + local_8 * 4) + 2 +
                                       iVar10 * 2);
              fVar2 = (float)(int)local_34;
            }
            if (param_1[8] < (fVar2 - local_30) * (param_1[6] - (float)local_228) + local_30) {
              if (-1 < iVar10) {
                piVar4 = (int *)*param_4;
                if ((((((iVar10 < *piVar4) && (-1 < local_8)) && (local_8 < piVar4[1])) &&
                     ((iVar13 = local_8 + 1, -1 < iVar13 && (iVar13 < piVar4[1])))) &&
                    ((iVar11 = iVar10 + 1, -1 < iVar11 && ((iVar11 < *piVar4 && (-1 < iVar13))))))
                   && (iVar13 < piVar4[1])) {
                  local_154 = (float)local_228;
                  local_150 = (float)local_8;
                  local_14c = (float)*(ushort *)(*(int *)(piVar4[4] + local_8 * 4) + iVar10 * 2);
                  local_1f0 = (float)iVar11;
                  local_1ec = (float)iVar13;
                  local_1e8 = (float)*(ushort *)(*(int *)(piVar4[4] + iVar13 * 4) + iVar11 * 2);
                  local_f8 = (float)*(ushort *)(*(int *)(piVar4[4] + iVar13 * 4) + iVar10 * 2);
                  *param_6 = local_154;
                  param_6[1] = local_1ec;
                  param_6[2] = local_f8;
                  param_6[3] = local_1f0;
                  param_6[4] = local_1ec;
                  param_6[5] = local_1e8;
                  param_6[6] = local_154;
                  param_6[7] = local_150;
                  param_6[8] = local_14c;
                  local_100 = local_154;
                  local_fc = local_1ec;
                  uVar9 = FUN_00436530(local_234,&local_100);
                  puVar16 = local_244;
                  FUN_00436530(&local_20,&local_100);
                  uVar9 = FUN_004d59c0(puVar16,uVar9);
                  FUN_004d5a00(&local_100,uVar9);
                  iVar13 = FUN_005151e0(param_6,param_5);
                  if ((iVar13 != 0) && (_DAT_005f336c < *param_5)) {
                    *param_5 = *param_5 / local_1f4;
                    return 1;
                  }
                }
              }
              iVar13 = local_8 + 1;
              iVar11 = iVar10 + 1;
              if (iVar11 < 0) {
                return 0;
              }
              param_4 = (int *)*param_4;
              if (*param_4 <= iVar11) {
                return 0;
              }
              if (iVar13 < 0) {
                return 0;
              }
              if (param_4[1] <= iVar13) {
                return 0;
              }
              if (iVar11 < 0) {
                return 0;
              }
              if (*param_4 <= iVar11) {
                return 0;
              }
              if (local_8 < 0) {
                return 0;
              }
              if (param_4[1] <= local_8) {
                return 0;
              }
              if (iVar10 < 0) {
                return 0;
              }
              if (*param_4 <= iVar10) {
                return 0;
              }
              local_94 = (float)local_228;
              local_90 = (float)local_8;
              local_8c = (float)*(ushort *)(*(int *)(param_4[4] + local_8 * 4) + iVar10 * 2);
              local_118 = (float)iVar11;
              local_80 = (float)*(ushort *)(*(int *)(param_4[4] + local_8 * 4) + iVar11 * 2);
              local_114 = (float)iVar13;
              local_110 = (float)*(ushort *)(*(int *)(param_4[4] + iVar13 * 4) + iVar11 * 2);
              *param_6 = local_118;
              param_6[1] = local_114;
              param_6[2] = local_110;
              param_6[3] = local_118;
              param_6[4] = local_90;
              param_6[5] = local_80;
              param_6[6] = local_94;
              param_6[7] = local_90;
              param_6[8] = local_8c;
              local_88 = local_118;
              local_84 = local_90;
              uVar9 = FUN_00436530(local_234,&local_118);
              puVar16 = local_244;
              FUN_00436530(&local_20,&local_118);
              uVar9 = FUN_004d59c0(puVar16,uVar9);
              pfVar12 = &local_118;
              goto LAB_004da343;
            }
            param_1[6] = param_1[6] + param_1[0x12];
            param_1[7] = param_1[0x13] + param_1[7];
            param_1[8] = param_1[0x14] + param_1[8];
            param_1[0x1a] = param_1[0x1e] + param_1[0x1a];
            break;
          case 4.2039e-45:
            local_260 = param_1[9];
            local_268 = 0xbefffffc;
            fVar2 = (float)(int)ROUND(local_260 + -0.49999988);
            local_238 = param_1[10];
            local_3c = -0.49999988;
            local_40 = (int)ROUND(local_238 + -0.49999988);
            iVar10 = local_40 + 1;
            fVar6 = _DAT_005f336c;
            if (((-1 < (int)fVar2) && (piVar4 = (int *)*param_4, (int)fVar2 < *piVar4)) &&
               ((-1 < iVar10 && (iVar10 < piVar4[1])))) {
              local_34 = (float)(uint)*(ushort *)(*(int *)(piVar4[4] + iVar10 * 4) + (int)fVar2 * 2)
              ;
              fVar6 = (float)(int)local_34;
            }
            iVar10 = (int)fVar2 + 1;
            fVar7 = _DAT_005f336c;
            if ((((-1 < iVar10) && (piVar4 = (int *)*param_4, iVar10 < *piVar4)) && (-1 < local_40))
               && (local_40 < piVar4[1])) {
              local_34 = (float)(uint)*(ushort *)(*(int *)(piVar4[4] + local_40 * 4) + iVar10 * 2);
              fVar7 = (float)(int)local_34;
            }
            local_58 = fVar2;
            if (param_1[0xb] < (fVar7 - fVar6) * (param_1[9] - (float)(int)fVar2) + fVar6) {
              if (-1 < (int)fVar2) {
                piVar4 = (int *)*param_4;
                if ((((int)fVar2 < *piVar4) && (-1 < local_40)) &&
                   ((((local_40 < piVar4[1] &&
                      ((iVar10 = (int)fVar2 + 1, -1 < iVar10 && (iVar10 < *piVar4)))) &&
                     (iVar13 = local_40 + 1, -1 < iVar13)) && (iVar13 < piVar4[1])))) {
                  local_10c = (float)(int)fVar2;
                  local_50 = (float)local_40;
                  local_24 = (float)*(ushort *)(*(int *)(piVar4[4] + local_40 * 4) + (int)fVar2 * 2)
                  ;
                  local_54 = (float)iVar10;
                  local_4c = (float)*(ushort *)(*(int *)(piVar4[4] + local_40 * 4) + iVar10 * 2);
                  local_108 = (float)iVar13;
                  local_104 = (float)*(ushort *)(*(int *)(piVar4[4] + iVar13 * 4) + (int)fVar2 * 2);
                  *param_6 = local_10c;
                  param_6[1] = local_108;
                  param_6[2] = local_104;
                  param_6[3] = local_54;
                  param_6[4] = local_50;
                  param_6[5] = local_4c;
                  param_6[6] = local_10c;
                  param_6[7] = local_50;
                  param_6[8] = local_24;
                  local_2c = local_10c;
                  local_28 = local_50;
                  uVar9 = FUN_00436530(local_234,&local_10c);
                  puVar16 = local_244;
                  FUN_00436530(&local_20,&local_10c);
                  FUN_004d59c0(puVar16,uVar9);
                  fVar15 = (float10)FUN_00436830();
                  pfVar12 = (float *)FUN_00436860(local_280,(float)fVar15);
                  param_6[9] = *pfVar12;
                  param_6[10] = pfVar12[1];
                  param_6[0xb] = pfVar12[2];
                  fVar15 = (float10)FUN_00439bf0(param_6 + 9);
                  param_6[0xc] = (float)-fVar15;
                  iVar10 = FUN_005151e0(param_6,param_5);
                  if ((iVar10 != 0) && (_DAT_005f336c < *param_5)) {
                    *param_5 = *param_5 / local_1f4;
                    return 1;
                  }
                }
              }
              iVar10 = local_40 + 1;
              if ((int)fVar2 < 0) {
                return 0;
              }
              param_4 = (int *)*param_4;
              if (*param_4 <= (int)fVar2) {
                return 0;
              }
              if (iVar10 < 0) {
                return 0;
              }
              if (param_4[1] <= iVar10) {
                return 0;
              }
              iVar13 = (int)fVar2 + 1;
              if (iVar13 < 0) {
                return 0;
              }
              if (*param_4 <= iVar13) {
                return 0;
              }
              if (iVar10 < 0) {
                return 0;
              }
              if (param_4[1] <= iVar10) {
                return 0;
              }
              if (iVar13 < 0) {
                return 0;
              }
              if (*param_4 <= iVar13) {
                return 0;
              }
              if (local_40 < 0) {
                return 0;
              }
              if (param_4[1] <= local_40) {
                return 0;
              }
              local_20 = (float)iVar13;
              local_10 = (float)local_40;
              local_c = (float)*(ushort *)(*(int *)(param_4[4] + local_40 * 4) + iVar13 * 2);
              iVar11 = *(int *)(param_4[4] + iVar10 * 4);
              uVar3 = *(ushort *)(iVar11 + (int)fVar2 * 2);
              local_78 = (float)iVar10;
              local_18 = (float)*(ushort *)(iVar11 + iVar13 * 2);
              local_7c = (float)(int)local_58;
              *param_6 = local_7c;
              local_74 = (float)uVar3;
              param_6[1] = local_78;
              param_6[2] = local_74;
              param_6[3] = local_20;
              param_6[4] = local_78;
              param_6[5] = local_18;
              param_6[6] = local_20;
              param_6[7] = local_10;
              param_6[8] = local_c;
              local_1c = local_78;
              local_14 = local_20;
              FUN_004f2a50(local_20 - local_7c,local_78 - local_78,local_18 - local_74);
              pfVar12 = &local_20;
              puVar16 = local_280;
              FUN_00436530(local_234,&local_7c);
              uVar9 = FUN_004d59c0(puVar16,pfVar12);
              pfVar12 = &local_7c;
              goto LAB_004da343;
            }
            param_1[9] = param_1[9] + param_1[0x15];
            param_1[10] = param_1[0x16] + param_1[10];
            param_1[0xb] = param_1[0x17] + param_1[0xb];
            param_1[0x1b] = param_1[0x1f] + param_1[0x1b];
          }
          if (param_1[0x26] <= param_1[(int)local_38 + 0x18]) {
            if (param_1[0x27] <= param_1[(int)local_38 + 0x18]) {
              if (param_1[0x28] <= param_1[(int)local_38 + 0x18]) {
                param_1[0x25] = param_1[0x26];
                param_1[0x21] = param_1[0x22];
                param_1[0x26] = param_1[0x27];
                param_1[0x22] = param_1[0x23];
                param_1[0x27] = param_1[0x28];
                param_1[0x23] = param_1[0x24];
                param_1[0x28] = param_1[(int)local_38 + 0x18];
                param_1[0x24] = local_38;
              }
              else {
                param_1[0x25] = param_1[0x26];
                param_1[0x21] = param_1[0x22];
                param_1[0x26] = param_1[0x27];
                param_1[0x22] = param_1[0x23];
                param_1[0x27] = param_1[(int)local_38 + 0x18];
                param_1[0x23] = local_38;
              }
            }
            else {
              param_1[0x25] = param_1[0x26];
              param_1[0x21] = param_1[0x22];
              param_1[0x26] = param_1[(int)local_38 + 0x18];
              param_1[0x22] = local_38;
            }
          }
          else {
            param_1[0x25] = param_1[(int)local_38 + 0x18];
            param_1[0x21] = local_38;
          }
        } while (param_1[0x25] <= param_1[0x20]);
      }
      iVar10 = (int)ROUND(*param_3 + -0.49999988);
      iVar13 = (int)ROUND(param_3[1] + -0.49999988);
      local_48 = iVar10;
      if ((iVar13 + iVar10 & 1U) == 0) {
        if (-1 < iVar10) {
          local_44 = (int *)*param_4;
          if (((((iVar10 < *local_44) && (-1 < iVar13)) && (iVar13 < local_44[1])) &&
              (((iVar11 = iVar13 + 1, -1 < iVar11 && (iVar11 < local_44[1])) &&
               ((iVar14 = iVar10 + 1, -1 < iVar14 && ((iVar14 < *local_44 && (-1 < iVar11)))))))) &&
             (iVar11 < local_44[1])) {
            local_2c = (float)iVar14;
            iVar1 = *(int *)(local_44[4] + iVar11 * 4);
            local_28 = (float)iVar11;
            local_24 = (float)*(ushort *)(iVar1 + iVar14 * 2);
            uVar3 = *(ushort *)(*(int *)(local_44[4] + iVar13 * 4) + iVar10 * 2);
            local_3c = (float)iVar10;
            local_18 = (float)*(ushort *)(iVar1 + iVar10 * 2);
            *param_6 = local_3c;
            local_10 = (float)iVar13;
            local_c = (float)uVar3;
            param_6[1] = local_10;
            param_6[2] = local_c;
            param_6[3] = local_3c;
            param_6[4] = local_28;
            param_6[5] = local_18;
            param_6[6] = local_2c;
            param_6[7] = local_28;
            param_6[8] = local_24;
            local_20 = local_3c;
            local_1c = local_28;
            local_14 = local_3c;
            FUN_004f2a50(local_3c - local_3c,local_28 - local_10,local_18 - local_c);
            FUN_004f2a50(local_2c - local_14,local_28 - local_10,local_24 - local_c);
            uVar9 = FUN_004d59c0(local_280,&local_20);
            FUN_004d5a00(&local_14,uVar9);
            iVar11 = FUN_005151e0(param_6,param_5);
            if ((iVar11 != 0) && (_DAT_005f336c < *param_5)) {
              *param_5 = *param_5 / local_1f4;
              return 1;
            }
          }
          local_44 = (int *)*param_4;
          iVar11 = *local_44;
          if (((((iVar10 < iVar11) && (-1 < iVar13)) && (iVar13 < local_44[1])) &&
              (((iVar14 = iVar10 + 1, -1 < iVar14 && (iVar14 < iVar11)) &&
               ((iVar1 = iVar13 + 1, -1 < iVar14 && ((iVar14 < iVar11 && (-1 < iVar1)))))))) &&
             (iVar1 < local_44[1])) {
            local_2c = (float)iVar14;
            iVar11 = *(int *)(local_44[4] + iVar13 * 4);
            local_28 = (float)iVar13;
            local_24 = (float)*(ushort *)(iVar11 + iVar14 * 2);
            local_18 = (float)*(ushort *)(*(int *)(local_44[4] + iVar1 * 4) + iVar14 * 2);
            local_14 = (float)local_48;
            local_c = (float)*(ushort *)(iVar11 + iVar10 * 2);
            *param_6 = local_14;
            param_6[1] = local_28;
            param_6[2] = local_c;
            fVar2 = (float)iVar1 - local_28;
            param_6[3] = local_2c;
            param_6[4] = (float)iVar1;
            param_6[5] = local_18;
            local_54 = local_2c - local_14;
            param_6[6] = local_2c;
            local_50 = local_28 - local_28;
            param_6[7] = local_28;
            param_6[8] = local_24;
            local_20 = local_50 * (local_18 - local_c) - (local_24 - local_c) * fVar2;
            local_1c = (local_24 - local_c) * (local_2c - local_14) -
                       (local_18 - local_c) * local_54;
            fVar2 = fVar2 * local_54 - local_50 * (local_2c - local_14);
            fVar6 = _DAT_005f3350 / SQRT(local_20 * local_20 + local_1c * local_1c + fVar2 * fVar2);
            local_10 = local_28;
            FUN_004f2a50(fVar6 * local_20,local_1c * fVar6,fVar2 * fVar6);
            param_6[9] = local_20;
            param_6[10] = local_1c;
            param_6[0xb] = local_18;
            fVar15 = (float10)FUN_00439bf0(param_6 + 9);
            param_6[0xc] = (float)-fVar15;
            iVar10 = FUN_005151e0(param_6,param_5);
            if ((iVar10 != 0) && (_DAT_005f336c < *param_5)) {
              *param_5 = *param_5 / local_1f4;
              return 1;
            }
          }
        }
      }
      else {
        if ((((((-1 < iVar10) && (piVar4 = (int *)*param_4, iVar10 < *piVar4)) && (-1 < iVar13)) &&
             ((iVar13 < piVar4[1] && (iVar11 = iVar13 + 1, -1 < iVar11)))) && (iVar11 < piVar4[1]))
           && ((iVar14 = iVar10 + 1, -1 < iVar14 && (iVar14 < *piVar4)))) {
          local_2c = (float)iVar14;
          local_28 = (float)iVar13;
          local_24 = (float)*(ushort *)(*(int *)(piVar4[4] + iVar13 * 4) + iVar14 * 2);
          local_20 = (float)iVar10;
          local_1c = (float)iVar11;
          uVar3 = *(ushort *)(*(int *)(piVar4[4] + iVar13 * 4) + iVar10 * 2);
          local_18 = (float)*(ushort *)(*(int *)(piVar4[4] + iVar11 * 4) + iVar10 * 2);
          *param_6 = local_20;
          local_c = (float)uVar3;
          param_6[1] = local_28;
          param_6[2] = local_c;
          param_6[3] = local_20;
          param_6[4] = local_1c;
          param_6[5] = local_18;
          param_6[6] = local_2c;
          param_6[7] = local_28;
          param_6[8] = local_24;
          local_14 = local_20;
          local_10 = local_28;
          FUN_004f2a50(local_20 - local_20,local_1c - local_28,local_18 - local_c);
          pfVar12 = &local_20;
          puVar16 = local_280;
          FUN_00436530(local_234,&local_14);
          uVar9 = FUN_004d59c0(puVar16,pfVar12);
          FUN_004d5a00(&local_14,uVar9);
          iVar11 = FUN_005151e0(param_6,param_5);
          if ((iVar11 != 0) && (_DAT_005f336c < *param_5)) {
            *param_5 = *param_5 / local_1f4;
            return 1;
          }
        }
        iVar11 = iVar13 + 1;
        if (-1 < iVar10) {
          local_44 = (int *)*param_4;
          if ((((((iVar10 < *local_44) && (-1 < iVar11)) && (iVar14 = local_44[1], iVar11 < iVar14))
               && (((iVar1 = iVar10 + 1, -1 < iVar1 && (iVar1 < *local_44)) &&
                   ((-1 < iVar11 && ((iVar11 < iVar14 && (-1 < iVar1)))))))) && (iVar1 < *local_44))
             && ((-1 < iVar13 && (iVar13 < iVar14)))) {
            local_2c = (float)iVar1;
            local_28 = (float)iVar13;
            local_24 = (float)*(ushort *)(*(int *)(local_44[4] + iVar13 * 4) + iVar1 * 2);
            iVar13 = *(int *)(local_44[4] + iVar11 * 4);
            uVar3 = *(ushort *)(iVar13 + iVar10 * 2);
            local_1c = (float)iVar11;
            local_18 = (float)*(ushort *)(iVar13 + iVar1 * 2);
            local_14 = (float)local_48;
            *param_6 = local_14;
            local_c = (float)uVar3;
            param_6[1] = local_1c;
            param_6[2] = local_c;
            param_6[3] = local_2c;
            param_6[4] = local_1c;
            param_6[5] = local_18;
            param_6[6] = local_2c;
            param_6[7] = local_28;
            param_6[8] = local_24;
            local_20 = local_2c;
            local_10 = local_1c;
            FUN_004f2a50(local_2c - local_14,local_1c - local_1c,local_18 - local_c);
            pfVar12 = &local_20;
            puVar16 = local_280;
            FUN_00436530(local_234,&local_14);
            uVar9 = FUN_004d59c0(puVar16,pfVar12);
            FUN_004d5a00(&local_14,uVar9);
            iVar10 = FUN_005151e0(param_6,param_5);
            if ((iVar10 != 0) && (_DAT_005f336c < *param_5)) {
              *param_5 = *param_5 / local_1f4;
              return 1;
            }
          }
        }
      }
    }
  }
  return 0;
}



// --------------------------------------------
// FUN_004d5a80   ab 0x004d5a80   6399 Byte
// gerufen von: FUN_004365e0, FUN_004369b0, FUN_0043be50, FUN_0043ca10, FUN_004d7520, FUN_004d76b0
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 __thiscall
FUN_004d5a80(int *param_1,float *param_2,float *param_3,float *param_4,float *param_5)

{
  int iVar1;
  int iVar2;
  float fVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  undefined4 uVar7;
  float *pfVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  float fVar11;
  float fVar12;
  float *pfVar13;
  float *pfVar14;
  undefined1 *puVar15;
  undefined1 local_160 [48];
  undefined1 local_130 [116];
  int local_bc;
  int local_b8;
  undefined1 local_b4 [12];
  int *local_a8;
  float local_a4 [3];
  float local_98;
  float local_94;
  float local_90;
  float local_8c;
  int local_88;
  int local_84;
  float local_80;
  float local_7c;
  float local_78;
  float local_74;
  float local_70;
  float local_6c;
  float local_68;
  float local_64;
  float local_60;
  float local_5c;
  float local_58;
  float local_54;
  float local_50;
  float local_4c;
  float local_48;
  float local_44;
  float local_40;
  float local_3c;
  float local_38;
  float local_34;
  float local_30;
  float local_2c;
  float local_28;
  float local_24;
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  float local_8;
  
  local_a8 = param_1;
  FUN_004010f0(local_160,0xc,4,FUN_00407f60);
  FUN_004010f0(local_130,0xc,4,FUN_00407f60);
  iVar4 = *param_1;
  local_1c = *(float *)(iVar4 + 0x11c);
  local_18 = *(float *)(iVar4 + 0x120);
  local_14 = *(float *)(iVar4 + 0x124);
  local_10 = *(float *)(iVar4 + 0x128);
  local_c = *(float *)(iVar4 + 300);
  local_8 = *(float *)(iVar4 + 0x130);
  FUN_004f2a50(*param_2 - local_1c,param_2[1] - local_18,param_2[2] - local_14);
  FUN_004f2a50(local_40 / local_10,local_3c / local_c,local_38 / local_8);
  FUN_004f2a50(*param_3 - local_1c,param_3[1] - local_18,param_3[2] - local_14);
  FUN_004f2a50(local_40 / local_10,local_3c / local_c,local_38 / local_8);
  FUN_004f2a50(local_34 - local_64,local_30 - local_60,local_2c - local_5c);
  local_68 = local_38;
  local_70 = local_40;
  local_6c = local_3c;
  iVar6 = *(int *)**(int **)(*param_1 + 0x828);
  local_8c = (float)iVar6;
  iVar2 = ((int *)**(int **)(*param_1 + 0x828))[1];
  iVar4 = (int)ROUND(local_64 / local_8c + -0.49999988);
  local_80 = (float)iVar2;
  iVar1 = (int)ROUND(local_60 / local_80 + -0.49999988);
  local_84 = (int)ROUND(local_34 / local_8c + -0.49999988);
  local_88 = (int)ROUND(local_30 / local_80 + -0.49999988);
  local_4c = local_64 - (float)(iVar4 * iVar6);
  local_48 = local_60 - (float)(iVar1 * iVar2);
  local_44 = local_5c;
  local_98 = local_34 - (float)(local_84 * iVar6);
  local_94 = local_30 - (float)(local_88 * iVar2);
  local_90 = local_2c;
  local_bc = iVar4;
  local_b8 = iVar1;
  if (iVar4 == local_84) {
    if (iVar1 == local_88) {
      iVar6 = *param_1;
      if (((iVar4 < 0) || (*(int *)(iVar6 + 0x82c) <= iVar4)) ||
         ((iVar1 < 0 || (*(int *)(iVar6 + 0x830) <= iVar1)))) {
        uVar5 = 0;
      }
      else {
        uVar5 = *(undefined4 *)(*(int *)(*(int *)(iVar6 + 0x83c) + iVar1 * 4) + iVar4 * 4);
      }
      iVar4 = FUN_004d7ff0(&local_4c,&local_98,uVar5,param_4,param_5);
      if (iVar4 != 0) {
        FUN_004f2a50(local_10 * param_5[6],local_c * param_5[7],local_8 * param_5[8]);
        FUN_004f2a50(local_7c + local_1c,local_78 + local_18,local_74 + local_14);
        FUN_004f2a50(local_10 * param_5[3],local_c * param_5[4],local_8 * param_5[5]);
        FUN_004f2a50(local_58 + local_1c,local_54 + local_18,local_50 + local_14);
        FUN_004f2a50(local_10 * *param_5,local_c * param_5[1],local_8 * param_5[2]);
        FUN_004f2a50(local_28 + local_1c,local_24 + local_18,local_20 + local_14);
        *param_5 = local_34;
        param_5[1] = local_30;
        param_5[2] = local_2c;
        param_5[3] = local_64;
        param_5[4] = local_60;
        param_5[6] = local_40;
        param_5[7] = local_3c;
        param_5[5] = local_5c;
        param_5[8] = local_38;
        uVar5 = FUN_00436530(local_a4,&local_34);
        pfVar8 = &local_10;
        FUN_00436530(local_b4,&local_34);
        uVar5 = FUN_004d59c0(pfVar8,uVar5);
        FUN_004d5a00(&local_34,uVar5);
        return 1;
      }
    }
    else {
      if (iVar1 < local_88) {
        param_2 = (float *)((local_80 - local_48) / ((local_80 - local_48) + local_94));
      }
      else {
        param_2 = (float *)(local_48 / ((local_80 + local_48) - local_94));
      }
      iVar6 = *param_1;
      if (((iVar4 < 0) || (*(int *)(iVar6 + 0x82c) <= iVar4)) ||
         ((iVar1 < 0 || (*(int *)(iVar6 + 0x830) <= iVar1)))) {
        param_3 = (float *)0x0;
      }
      else {
        param_3 = *(float **)(*(int *)(*(int *)(iVar6 + 0x83c) + iVar1 * 4) + iVar4 * 4);
      }
      FUN_004f2a50(local_40 * (float)param_2,local_3c * (float)param_2,local_38 * (float)param_2);
      FUN_004f2a50(local_28 + local_4c,local_24 + local_48,local_44 + local_20);
      iVar4 = FUN_004d7ff0(&local_4c,&local_58,param_3,param_4,param_5);
      if (iVar4 != 0) {
        *param_4 = (float)param_2 * *param_4;
        FUN_004f2a50(local_10 * param_5[6],local_c * param_5[7],local_8 * param_5[8]);
        FUN_004f2a50(local_28 + local_1c,local_24 + local_18,local_20 + local_14);
        FUN_004f2a50(local_10 * param_5[3],local_c * param_5[4],local_8 * param_5[5]);
        FUN_004f2a50(local_58 + local_1c,local_54 + local_18,local_50 + local_14);
        FUN_004f2a50(local_10 * *param_5,local_c * param_5[1],local_8 * param_5[2]);
        FUN_004f2a50(local_7c + local_1c,local_78 + local_18,local_74 + local_14);
        *param_5 = local_34;
        param_5[1] = local_30;
        param_5[2] = local_2c;
        param_5[3] = local_40;
        param_5[4] = local_3c;
        param_5[6] = local_64;
        param_5[5] = local_38;
        param_5[7] = local_60;
        param_5[8] = local_5c;
        uVar5 = FUN_00436530(local_b4,&local_34);
        pfVar8 = local_a4;
        FUN_00436530(&local_10,&local_34);
        uVar5 = FUN_004d59c0(pfVar8,uVar5);
        FUN_004d5a00(&local_34,uVar5);
        return 1;
      }
      iVar4 = *param_1;
      if ((((local_84 < 0) || (*(int *)(iVar4 + 0x82c) <= local_84)) || (local_88 < 0)) ||
         (*(int *)(iVar4 + 0x830) <= local_88)) {
        uVar5 = 0;
      }
      else {
        uVar5 = *(undefined4 *)(*(int *)(*(int *)(iVar4 + 0x83c) + local_88 * 4) + local_84 * 4);
      }
      fVar11 = _DAT_005f3350 - (float)param_2;
      FUN_004f2a50(fVar11 * local_70,fVar11 * local_6c,fVar11 * local_68);
      FUN_004f2a50(local_98 - local_28,local_94 - local_24,local_90 - local_20);
      iVar4 = FUN_004d7ff0(&local_58,&local_98,uVar5,param_4,param_5);
      if (iVar4 != 0) {
        *param_4 = fVar11 * *param_4 + (float)param_2;
        FUN_004f2a50(local_10 * param_5[6],local_c * param_5[7],local_8 * param_5[8]);
        FUN_004f2a50(local_28 + local_1c,local_24 + local_18,local_20 + local_14);
        FUN_004f2a50(local_10 * param_5[3],local_c * param_5[4],local_8 * param_5[5]);
        FUN_004f2a50(local_58 + local_1c,local_54 + local_18,local_50 + local_14);
        FUN_004f2a50(local_10 * *param_5,local_c * param_5[1],local_8 * param_5[2]);
        FUN_004f2a50(local_7c + local_1c,local_78 + local_18,local_74 + local_14);
        *param_5 = local_34;
        param_5[1] = local_30;
        param_5[2] = local_2c;
        param_5[3] = local_40;
        param_5[4] = local_3c;
        param_5[6] = local_64;
        param_5[7] = local_60;
        param_5[5] = local_38;
        param_5[8] = local_5c;
        uVar5 = FUN_00436530(local_b4,&local_34);
        pfVar8 = local_a4;
        FUN_00436530(&local_10,&local_34);
        uVar5 = FUN_004d59c0(pfVar8,uVar5);
        FUN_004d5a00(&local_34,uVar5);
        return 1;
      }
    }
    return 0;
  }
  if (iVar1 == local_88) {
    if (iVar4 < local_84) {
      param_2 = (float *)((local_8c - local_4c) / ((local_8c - local_4c) + local_98));
    }
    else {
      param_2 = (float *)(local_4c / ((local_8c + local_4c) - local_98));
    }
    iVar6 = *param_1;
    if ((((iVar4 < 0) || (*(int *)(iVar6 + 0x82c) <= iVar4)) || (iVar1 < 0)) ||
       (*(int *)(iVar6 + 0x830) <= iVar1)) {
      param_3 = (float *)0x0;
    }
    else {
      param_3 = *(float **)(*(int *)(*(int *)(iVar6 + 0x83c) + iVar1 * 4) + iVar4 * 4);
    }
    FUN_004f2a50(local_40 * (float)param_2,local_3c * (float)param_2,local_38 * (float)param_2);
    FUN_004f2a50(local_28 + local_4c,local_24 + local_48,local_44 + local_20);
    iVar4 = FUN_004d7ff0(&local_4c,&local_58,param_3,param_4,param_5);
    if (iVar4 != 0) {
      *param_4 = (float)param_2 * *param_4;
      FUN_004f2a50(local_10 * param_5[6],local_c * param_5[7],local_8 * param_5[8]);
      FUN_004f2a50(local_28 + local_1c,local_24 + local_18,local_20 + local_14);
      FUN_004f2a50(local_10 * param_5[3],local_c * param_5[4],local_8 * param_5[5]);
      FUN_004f2a50(local_58 + local_1c,local_54 + local_18,local_50 + local_14);
      FUN_004f2a50(local_10 * *param_5,local_c * param_5[1],local_8 * param_5[2]);
      FUN_004f2a50(local_7c + local_1c,local_78 + local_18,local_74 + local_14);
      *param_5 = local_34;
      param_5[1] = local_30;
      param_5[2] = local_2c;
      param_5[3] = local_40;
      param_5[4] = local_3c;
      param_5[6] = local_64;
      param_5[5] = local_38;
      param_5[7] = local_60;
      param_5[8] = local_5c;
      uVar5 = FUN_00436530(local_b4,&local_34);
      pfVar8 = local_a4;
      FUN_00436530(&local_10,&local_34);
      uVar5 = FUN_004d59c0(pfVar8,uVar5);
      FUN_004d5a00(&local_34,uVar5);
      return 1;
    }
    iVar4 = *param_1;
    if (((local_84 < 0) || (*(int *)(iVar4 + 0x82c) <= local_84)) ||
       ((local_88 < 0 || (*(int *)(iVar4 + 0x830) <= local_88)))) {
      uVar5 = 0;
    }
    else {
      uVar5 = *(undefined4 *)(*(int *)(*(int *)(iVar4 + 0x83c) + local_88 * 4) + local_84 * 4);
    }
    fVar11 = _DAT_005f3350 - (float)param_2;
    FUN_004f2a50(fVar11 * local_70,fVar11 * local_6c,fVar11 * local_68);
    FUN_004f2a50(local_98 - local_28,local_94 - local_24,local_90 - local_20);
    iVar4 = FUN_004d7ff0(&local_58,&local_98,uVar5,param_4,param_5);
    if (iVar4 != 0) {
      *param_4 = fVar11 * *param_4 + (float)param_2;
      FUN_004f2a50(local_10 * param_5[6],local_c * param_5[7],local_8 * param_5[8]);
      FUN_004f2a50(local_28 + local_1c,local_24 + local_18,local_20 + local_14);
      FUN_004f2a50(local_10 * param_5[3],local_c * param_5[4],local_8 * param_5[5]);
      FUN_004f2a50(local_58 + local_1c,local_54 + local_18,local_50 + local_14);
      FUN_004f2a50(local_10 * *param_5,local_c * param_5[1],local_8 * param_5[2]);
      FUN_004f2a50(local_7c + local_1c,local_78 + local_18,local_74 + local_14);
      *param_5 = local_34;
      param_5[1] = local_30;
      param_5[2] = local_2c;
      param_5[3] = local_40;
      param_5[4] = local_3c;
      param_5[6] = local_64;
      param_5[7] = local_60;
      param_5[5] = local_38;
      param_5[8] = local_5c;
      uVar5 = FUN_00436530(local_b4,&local_34);
      pfVar8 = local_a4;
      FUN_00436530(&local_10,&local_34);
      uVar5 = FUN_004d59c0(pfVar8,uVar5);
      FUN_004d5a00(&local_34,uVar5);
      return 1;
    }
    return 0;
  }
  if (iVar4 < local_84) {
    param_2 = (float *)((local_8c - local_4c) / ((local_8c - local_4c) + local_98));
  }
  else {
    param_2 = (float *)(local_4c / ((local_8c + local_4c) - local_98));
  }
  if (iVar1 < local_88) {
    param_3 = (float *)((local_80 - local_48) / ((local_80 - local_48) + local_94));
  }
  else {
    param_3 = (float *)(local_48 / ((local_80 + local_48) - local_94));
  }
  if ((float)param_2 < (float)param_3) {
    iVar6 = *param_1;
    if (((iVar4 < 0) || (*(int *)(iVar6 + 0x82c) <= iVar4)) ||
       ((iVar1 < 0 || (*(int *)(iVar6 + 0x830) <= iVar1)))) {
      local_80 = 0.0;
    }
    else {
      local_80 = *(float *)(*(int *)(*(int *)(iVar6 + 0x83c) + iVar1 * 4) + iVar4 * 4);
    }
    FUN_004f2a50(local_40 * (float)param_2,local_3c * (float)param_2,local_38 * (float)param_2);
    FUN_004f2a50(local_28 + local_4c,local_24 + local_48,local_44 + local_20);
    iVar6 = FUN_004d7ff0(&local_4c,&local_58,local_80,param_4,param_5);
    if (iVar6 != 0) {
      *param_4 = (float)param_2 * *param_4;
      FUN_004f2a50(local_10 * param_5[6],local_c * param_5[7],local_8 * param_5[8]);
      FUN_004f2a50(local_28 + local_1c,local_24 + local_18,local_20 + local_14);
      FUN_004f2a50(local_10 * param_5[3],local_c * param_5[4],local_8 * param_5[5]);
      FUN_004f2a50(local_58 + local_1c,local_54 + local_18,local_50 + local_14);
      FUN_004f2a50(local_10 * *param_5,local_c * param_5[1],local_8 * param_5[2]);
      FUN_004f2a50(local_1c + local_7c,local_78 + local_18,local_74 + local_14);
      *param_5 = local_34;
      param_5[1] = local_30;
      param_5[2] = local_2c;
      param_5[3] = local_40;
      param_5[4] = local_3c;
      param_5[6] = local_64;
      param_5[7] = local_60;
      param_5[5] = local_38;
      param_5[8] = local_5c;
      uVar5 = FUN_00436530(local_b4,&local_34);
      pfVar8 = local_a4;
      FUN_00436530(&local_10,&local_34);
      uVar5 = FUN_004d59c0(pfVar8,uVar5);
      FUN_004d5a00(&local_34,uVar5);
      return 1;
    }
    iVar6 = *local_a8;
    if (iVar4 < local_84) {
      if (((local_84 < 0) || (*(int *)(iVar6 + 0x82c) <= local_84)) ||
         ((iVar1 < 0 || (*(int *)(iVar6 + 0x830) <= iVar1)))) {
        uVar5 = 0;
      }
      else {
        uVar5 = *(undefined4 *)(*(int *)(*(int *)(iVar6 + 0x83c) + iVar1 * 4) + local_84 * 4);
      }
      local_34 = local_8c;
      FUN_004f2a50(local_70 * (float)param_3,local_6c * (float)param_3,local_68 * (float)param_3);
      FUN_004f2a50(local_4c + local_28,local_24 + local_48,local_44 + local_20);
      FUN_004f2a50(local_58 - local_34,local_54,local_50);
      local_34 = local_8c;
      FUN_004f2a50(local_70 * (float)param_2,local_6c * (float)param_2,local_68 * (float)param_2);
      FUN_004f2a50(local_4c + local_7c,local_78 + local_48,local_44 + local_74);
      FUN_004f2a50(local_40 - local_34,local_3c,local_38);
      iVar4 = FUN_004d7ff0(local_a4,&local_64,uVar5,param_4,param_5);
      if (iVar4 != 0) {
        *param_4 = ((float)param_3 - (float)param_2) * *param_4 + (float)param_2;
        FUN_004f2a50(local_10 * param_5[6],local_c * param_5[7],local_8 * param_5[8]);
        FUN_004f2a50(local_1c + local_28,local_24 + local_18,local_20 + local_14);
        FUN_004f2a50(local_10 * param_5[3],local_c * param_5[4],local_8 * param_5[5]);
        FUN_004f2a50(local_1c + local_58,local_54 + local_18,local_50 + local_14);
        FUN_004f2a50(local_10 * *param_5,local_c * param_5[1],local_8 * param_5[2]);
        FUN_004f2a50(local_1c + local_7c,local_78 + local_18,local_74 + local_14);
        *param_5 = local_34;
        param_5[1] = local_30;
        param_5[2] = local_2c;
        param_5[3] = local_40;
        param_5[4] = local_3c;
        param_5[6] = local_64;
        param_5[7] = local_60;
        param_5[5] = local_38;
        param_5[8] = local_5c;
        uVar5 = FUN_00436530(local_b4,&local_34);
        pfVar8 = local_a4;
        FUN_00436530(&local_10,&local_34);
        uVar5 = FUN_004d59c0(pfVar8,uVar5);
        FUN_004d5a00(&local_34,uVar5);
        return 1;
      }
    }
    else {
      if ((((local_84 < 0) || (*(int *)(iVar6 + 0x82c) <= local_84)) || (iVar1 < 0)) ||
         (*(int *)(iVar6 + 0x830) <= iVar1)) {
        uVar5 = 0;
      }
      else {
        uVar5 = *(undefined4 *)(*(int *)(*(int *)(iVar6 + 0x83c) + iVar1 * 4) + local_84 * 4);
      }
      local_a4[0] = local_8c;
      FUN_004f2a50(local_70 * (float)param_3,local_6c * (float)param_3,local_68 * (float)param_3);
      FUN_004f2a50(local_4c + local_28,local_24 + local_48,local_44 + local_20);
      FUN_004f2a50(local_58 + local_a4[0],local_54,local_50);
      local_a4[0] = local_8c;
      FUN_004f2a50(local_70 * (float)param_2,local_6c * (float)param_2,local_68 * (float)param_2);
      FUN_004f2a50(local_4c + local_7c,local_78 + local_48,local_44 + local_74);
      FUN_004f2a50(local_40 + local_a4[0],local_3c,local_38);
      iVar4 = FUN_004d7ff0(&local_64,&local_34,uVar5,param_4,param_5);
      if (iVar4 != 0) {
        *param_4 = ((float)param_3 - (float)param_2) * *param_4 + (float)param_2;
        FUN_004f2a50(local_10 * param_5[6],local_c * param_5[7],local_8 * param_5[8]);
        FUN_004f2a50(local_1c + local_28,local_24 + local_18,local_20 + local_14);
        FUN_004f2a50(local_10 * param_5[3],local_c * param_5[4],local_8 * param_5[5]);
        pfVar8 = local_a4;
        uVar5 = FUN_0055f860(local_b4,&local_1c);
        fVar11 = local_10;
        fVar12 = local_c;
        goto LAB_004d6e8b;
      }
    }
    fVar3 = _DAT_005f3350 - (float)param_3;
    pfVar13 = param_4;
    uVar5 = FUN_004d74e0(local_84,local_88);
    pfVar8 = &local_98;
    uVar7 = FUN_00471e30(local_b4,fVar3);
    uVar7 = FUN_00436530(local_a4,uVar7);
    iVar4 = FUN_004d7ff0(uVar7,pfVar8,uVar5,pfVar13,param_5);
    fVar12 = local_c;
    fVar11 = local_10;
    if (iVar4 == 0) {
      return 0;
    }
    pfVar8 = &local_1c;
    puVar15 = local_b4;
    *param_4 = fVar3 * *param_4 + (float)param_3;
    FUN_004d7380(local_a4,local_10,local_c,local_8);
    pfVar8 = (float *)FUN_0055f860(puVar15,pfVar8);
    pfVar13 = &local_1c;
    pfVar14 = &local_28;
    FUN_004d7380(&local_58,fVar11,fVar12,local_8);
    uVar5 = FUN_0055f860(pfVar14,pfVar13);
  }
  else {
    pfVar8 = param_4;
    pfVar13 = param_5;
    uVar5 = FUN_004d74e0(iVar4,iVar1);
    uVar7 = FUN_00471e30(local_b4,param_3);
    uVar7 = FUN_0055f860(local_a4,uVar7);
    iVar4 = FUN_004d7ff0(&local_4c,uVar7,uVar5,pfVar8,pfVar13);
    if (iVar4 != 0) {
      *param_4 = (float)param_3 * *param_4;
      return 1;
    }
    if (iVar1 < local_88) {
      pfVar13 = param_4;
      pfVar14 = param_5;
      uVar5 = FUN_004d74e0(local_84,iVar1);
      uVar7 = FUN_004f2a50(0,local_80,0);
      pfVar8 = local_a4;
      uVar9 = FUN_00471e30(&local_28,param_2);
      FUN_0055f860(&local_58,uVar9);
      uVar7 = FUN_00436530(pfVar8,uVar7);
      uVar9 = FUN_004f2a50(0,local_80,0);
      pfVar8 = &local_40;
      uVar10 = FUN_00471e30(&local_34,param_3);
      FUN_0055f860(&local_64,uVar10);
      uVar9 = FUN_00436530(pfVar8,uVar9);
      iVar4 = FUN_004d7ff0(uVar9,uVar7,uVar5,pfVar13,pfVar14);
      fVar12 = local_c;
      fVar11 = local_10;
      if (iVar4 != 0) {
        pfVar8 = &local_1c;
        puVar15 = local_b4;
        *param_4 = ((float)param_2 - (float)param_3) * *param_4 + (float)param_3;
        FUN_004d7380(local_a4,local_10,local_c,local_8);
        pfVar8 = (float *)FUN_0055f860(puVar15,pfVar8);
        pfVar13 = &local_1c;
        pfVar14 = &local_28;
        FUN_004d7380(&local_58,fVar11,fVar12,local_8);
        uVar5 = FUN_0055f860(pfVar14,pfVar13);
        goto LAB_004d6e8b;
      }
    }
    else {
      pfVar13 = param_4;
      pfVar14 = param_5;
      uVar5 = FUN_004d74e0(local_84,iVar1);
      uVar7 = FUN_004f2a50(0,local_80,0);
      pfVar8 = local_a4;
      uVar9 = FUN_00471e30(&local_28,param_2);
      FUN_0055f860(&local_58,uVar9);
      uVar7 = FUN_0055f860(pfVar8,uVar7);
      uVar9 = FUN_004f2a50(0,local_80,0);
      pfVar8 = &local_40;
      uVar10 = FUN_00471e30(&local_34,param_3);
      FUN_0055f860(&local_64,uVar10);
      uVar9 = FUN_0055f860(pfVar8,uVar9);
      iVar4 = FUN_004d7ff0(uVar9,uVar7,uVar5,pfVar13,pfVar14);
      fVar12 = local_c;
      fVar11 = local_10;
      if (iVar4 != 0) {
        pfVar8 = &local_1c;
        puVar15 = local_b4;
        *param_4 = ((float)param_2 - (float)param_3) * *param_4 + (float)param_3;
        FUN_004d7380(local_a4,local_10,local_c,local_8);
        pfVar8 = (float *)FUN_0055f860(puVar15,pfVar8);
        pfVar13 = &local_1c;
        pfVar14 = &local_28;
        FUN_004d7380(&local_58,fVar11,fVar12,local_8);
        uVar5 = FUN_0055f860(pfVar14,pfVar13);
        goto LAB_004d6e8b;
      }
    }
    fVar3 = _DAT_005f3350 - (float)param_2;
    pfVar13 = param_4;
    uVar5 = FUN_004d74e0(local_84,local_88);
    pfVar8 = &local_98;
    uVar7 = FUN_00471e30(local_b4,fVar3);
    uVar7 = FUN_00436530(local_a4,uVar7);
    iVar4 = FUN_004d7ff0(uVar7,pfVar8,uVar5,pfVar13,param_5);
    fVar12 = local_c;
    fVar11 = local_10;
    if (iVar4 == 0) {
      return 0;
    }
    pfVar8 = &local_1c;
    puVar15 = local_b4;
    *param_4 = fVar3 * *param_4 + (float)param_2;
    FUN_004d7380(local_a4,local_10,local_c,local_8);
    pfVar8 = (float *)FUN_0055f860(puVar15,pfVar8);
    pfVar13 = &local_1c;
    pfVar14 = &local_28;
    FUN_004d7380(&local_58,fVar11,fVar12,local_8);
    uVar5 = FUN_0055f860(pfVar14,pfVar13);
  }
LAB_004d6e8b:
  pfVar14 = &local_1c;
  pfVar13 = &local_7c;
  FUN_004d7380(&local_40,fVar11,fVar12,local_8);
  uVar7 = FUN_0055f860(pfVar13,pfVar14);
  FUN_004d73b0(uVar7,uVar5,pfVar8);
  return 1;
}



