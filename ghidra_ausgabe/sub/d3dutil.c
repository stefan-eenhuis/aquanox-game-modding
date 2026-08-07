// Muster: D3DUtil   2 Funktionen, 2368 Byte

// --------------------------------------------
// D3DUtil__D3DUtil   ab 0x0050e180   66 Byte
// Texte: D3DUtil::D3DUtil(), creation of d3d8 failed
// --------------------------------------------

int * __fastcall D3DUtil__D3DUtil(int *param_1)

{
  int iVar1;
  
  param_1[1] = 0;
  param_1[4] = 1;
  param_1[5] = 0x10;
  param_1[6] = 0;
  iVar1 = Direct3DCreate8(0x78);
  *param_1 = iVar1;
  if (iVar1 == 0) {
    TERMINATION(s_D3DUtil__D3DUtil___0063a3a8,s_creation_of_d3d8_failed_0063a3bc);
  }
  return param_1;
}



// --------------------------------------------
// D3DUtil__BuildAdpaterInfoArray   ab 0x0050e1f0   2302 Byte
// Texte: D3DUtil::BuildAdpaterInfoArray(), adapter count is 0, device info array overflow, display format array overflow, num of display modes overflow
// --------------------------------------------

void __fastcall D3DUtil__BuildAdpaterInfoArray(undefined4 *param_1)

{
  code *pcVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  int *piVar7;
  int unaff_EBX;
  int *piVar8;
  int *piVar9;
  uint unaff_EDI;
  int *piVar10;
  bool bVar11;
  int *piVar12;
  int *piVar13;
  int *piVar14;
  int *piVar15;
  int iVar16;
  int iVar17;
  int iVar18;
  int iVar19;
  int *piVar20;
  int *piStack_d0;
  int aiStack_c0 [4];
  int *piStack_b0;
  int aiStack_a0 [12];
  undefined **local_70 [6];
  undefined4 uStack_58;
  int aiStack_50 [4];
  undefined4 uStack_40;
  code *pcStack_2c;
  undefined4 uStack_28;
  
  piStack_d0 = (int *)*param_1;
  local_70[0] = &PTR_LAB_0063a46c;
  local_70[1] = (undefined **)&DAT_0063a468;
  local_70[2] = (undefined **)0x1;
  local_70[3] = (undefined **)0x2;
  aiStack_c0[2] = 0;
  iVar2 = (**(code **)(*piStack_d0 + 0x10))();
  if (iVar2 == 0) {
    TERMINATION(s_D3DUtil__BuildAdpaterInfoArray___0063a430,s_adapter_count_is_0_0063a454);
  }
  operator_delete(param_1[1]);
  piVar7 = (int *)*param_1;
  iVar2 = (**(code **)(*piVar7 + 0x10))();
  uVar3 = operator_new(iVar2 * 0x10a4);
  param_1[1] = uVar3;
  piVar20 = (int *)*param_1;
  param_1[2] = 0;
  piVar8 = (int *)0x0;
  piStack_b0 = (int *)0x0;
  iVar2 = (**(code **)(*piVar20 + 0x10))();
  if (0 < iVar2) {
    do {
      piVar9 = (int *)((int)piVar8 * 0x10a4);
      piVar10 = piVar8;
      piStack_b0 = piVar9;
      (**(code **)(*(int *)*param_1 + 0x14))((int *)*param_1,piVar8,2,(int)piVar9 + param_1[1]);
      (**(code **)(*(int *)*param_1 + 0x20))
                ((int *)*param_1,piVar8,(int)piVar9 + param_1[1] + 0x42c);
      *(undefined4 *)((int)piVar9 + param_1[1] + 0x109c) = 0;
      *(undefined4 *)((int)piVar9 + param_1[1] + 0x10a0) = 0;
      piVar15 = (int *)*param_1;
      iVar2 = (**(code **)(*piVar15 + 0x18))(piVar15,piVar8);
      if (iVar2 != 0) {
        operator_delete(piVar10);
        iVar17 = iVar2;
        iVar4 = operator_new(iVar2 << 4);
        aiStack_a0[4] = *(undefined4 *)((int)piVar9 + param_1[1] + 0x438);
        iVar19 = 0;
        iVar18 = 1;
        iVar16 = 0;
        if (0 < iVar2) {
          piVar14 = aiStack_a0 + 5;
          piVar10 = (int *)(iVar4 + 0xc);
          do {
            (**(code **)(*(int *)*param_1 + 0x1c))((int *)*param_1,piVar8,iVar16,&piStack_d0);
            if (((int *)0x13f < piStack_d0) && (0xef < unaff_EDI)) {
              iVar2 = 0;
              if (0 < iVar19) {
                piVar5 = (int *)(iVar4 + 0xc);
                do {
                  if ((((int *)piVar5[-3] == piStack_d0) && (piVar5[-2] == unaff_EDI)) &&
                     (*piVar5 == unaff_EBX)) {
                    if (iVar2 < iVar19) goto LAB_0050e43b;
                    break;
                  }
                  iVar2 = iVar2 + 1;
                  piVar5 = piVar5 + 4;
                } while (iVar2 < iVar19);
              }
              piVar10[-3] = (int)piStack_d0;
              piVar10[-2] = unaff_EDI;
              iVar2 = 0;
              *piVar10 = unaff_EBX;
              piVar10[-1] = 0;
              iVar19 = iVar19 + 1;
              piVar10 = piVar10 + 4;
              if (0 < iVar18) {
                piVar5 = aiStack_a0 + 4;
                do {
                  if (*piVar5 == unaff_EBX) {
                    if (iVar2 < iVar18) goto LAB_0050e43b;
                    break;
                  }
                  iVar2 = iVar2 + 1;
                  piVar5 = piVar5 + 1;
                } while (iVar2 < iVar18);
              }
              if (7 < iVar18) {
                TERMINATION(s_D3DUtil__BuildAdpaterInfoArray___0063a430,
                            s_display_format_array_overflow_0063a410);
              }
              iVar18 = iVar18 + 1;
              *piVar14 = unaff_EBX;
              piVar14 = piVar14 + 1;
            }
LAB_0050e43b:
            iVar16 = iVar16 + 1;
          } while (iVar16 < iVar17);
        }
        FUN_005abaca(iVar4,iVar19,0x10,&LAB_0050eaf0);
        iVar2 = 0;
        do {
          iVar17 = *(int *)((int)aiStack_a0 + iVar2 + 8);
          piVar10 = (int *)((int)piVar9 +
                           param_1[1] + *(int *)((int)piVar9 + param_1[1] + 0x109c) * 0x630 + 0x43c)
          ;
          iVar16 = *(int *)((int)aiStack_a0 + iVar2);
          *piVar10 = iVar17;
          piVar10[0x36] = iVar16;
          piVar10[0x178] = 0;
          piVar10[0x179] = 0;
          piVar10[0x37] = 0;
          piVar10[0x17a] = 0;
          piVar10[0x17b] = 0;
          piVar10[0x17c] = 1;
          piVar10[0x17d] = 0;
          piVar10[0x17e] = 0;
          piVar10[0x17f] = 0;
          piVar10[0x180] = 0;
          piVar10[0x181] = 0;
          piVar10[0x182] = 0;
          piVar10[0x183] = 0;
          piVar10[0x184] = 0;
          piVar10[0x185] = 0;
          piVar10[0x186] = 0;
          piVar10[0x187] = 0;
          piVar10[0x188] = 0;
          piVar10[0x189] = 0;
          piVar10[0x18a] = 0;
          piVar10[0x18b] = 0;
          (**(code **)(*(int *)*param_1 + 0x34))(*param_1,piVar8,iVar17,piVar10 + 1);
          iVar17 = 0;
          piVar9 = piVar7;
          if (0 < iVar18) {
            do {
              iVar16 = aiStack_a0[iVar17 + 4];
              piVar9 = (int *)*param_1;
              aiStack_50[iVar17] = 0;
              iVar6 = *piVar9;
              aiStack_c0[iVar17] = 0;
              iVar6 = (**(code **)(iVar6 + 0x24))(piVar9,piVar8,*piVar10,iVar16,iVar16,uStack_28);
              if (iVar6 == 0) {
                if (*piVar10 == 1) {
                  piVar9 = (int *)*param_1;
                  iVar6 = (**(code **)(*piVar9 + 0x2c))(piVar9,piVar8,1,iVar16,uStack_28,2);
                  if (iVar6 == 0) {
                    piVar10[0x17d] = 1;
                  }
                  piVar14 = (int *)*param_1;
                  iVar6 = (**(code **)(*piVar14 + 0x2c))(piVar14,piVar8,*piVar10,iVar16,uStack_40,3)
                  ;
                  if (iVar6 == 0) {
                    piVar10[0x17e] = 1;
                  }
                  piVar5 = (int *)*param_1;
                  iVar6 = (**(code **)(*piVar5 + 0x2c))(piVar5,piVar8,*piVar10,iVar16,uStack_58,4);
                  if (iVar6 == 0) {
                    piVar10[0x17f] = 1;
                  }
                  piVar13 = (int *)*param_1;
                  iVar6 = (**(code **)(*piVar13 + 0x2c))
                                    (piVar13,piVar8,*piVar10,iVar16,local_70[0],5);
                  if (iVar6 == 0) {
                    piVar10[0x180] = 1;
                  }
                  piVar12 = (int *)*param_1;
                  iVar6 = (**(code **)(*piVar12 + 0x2c))
                                    (piVar12,piVar8,*piVar10,iVar16,aiStack_a0[6],6);
                  if (iVar6 == 0) {
                    piVar10[0x181] = 1;
                  }
                  iVar6 = (**(code **)(*(int *)*param_1 + 0x2c))
                                    ((int *)*param_1,piVar8,*piVar10,iVar16,aiStack_a0[0],7);
                  if (iVar6 == 0) {
                    piVar10[0x182] = 1;
                  }
                  iVar6 = (**(code **)(*(int *)*param_1 + 0x2c))
                                    ((int *)*param_1,piVar8,*piVar10,iVar16,aiStack_c0[2],8);
                  if (iVar6 == 0) {
                    piVar10[0x183] = 1;
                  }
                  iVar6 = (**(code **)(*(int *)*param_1 + 0x2c))
                                    ((int *)*param_1,piVar8,*piVar10,iVar16,piStack_d0,9);
                  if (iVar6 == 0) {
                    piVar10[0x184] = 1;
                  }
                  iVar6 = (**(code **)(*(int *)*param_1 + 0x2c))
                                    ((int *)*param_1,piVar8,*piVar10,iVar16,iVar4,10);
                  if (iVar6 == 0) {
                    piVar10[0x185] = 1;
                  }
                  iVar6 = (**(code **)(*(int *)*param_1 + 0x2c))
                                    ((int *)*param_1,piVar8,*piVar10,iVar16,piVar15,0xb);
                  if (iVar6 == 0) {
                    piVar10[0x186] = 1;
                  }
                  iVar6 = (**(code **)(*(int *)*param_1 + 0x2c))
                                    ((int *)*param_1,piVar8,*piVar10,iVar16,piVar9,0xc);
                  if (iVar6 == 0) {
                    piVar10[0x187] = 1;
                  }
                  iVar6 = (**(code **)(*(int *)*param_1 + 0x2c))
                                    ((int *)*param_1,piVar8,*piVar10,iVar16,piVar14,0xd);
                  if (iVar6 == 0) {
                    piVar10[0x188] = 1;
                  }
                  iVar6 = (**(code **)(*(int *)*param_1 + 0x2c))
                                    ((int *)*param_1,piVar8,*piVar10,iVar16,piVar5,0xe);
                  if (iVar6 == 0) {
                    piVar10[0x189] = 1;
                  }
                  iVar6 = (**(code **)(*(int *)*param_1 + 0x2c))
                                    ((int *)*param_1,piVar8,*piVar10,iVar16,piVar13,0xf);
                  if (iVar6 == 0) {
                    piVar10[0x18a] = 1;
                  }
                  iVar6 = (**(code **)(*(int *)*param_1 + 0x2c))
                                    ((int *)*param_1,piVar8,*piVar10,iVar16,piVar12,0x10);
                  if (iVar6 == 0) {
                    piVar10[0x18b] = 1;
                  }
                }
                pcVar1 = pcStack_2c;
                if ((piVar10[8] & 0x10000U) == 0) {
LAB_0050e881:
                  pcVar1 = pcStack_2c;
                  if (aiStack_c0[iVar17] == 0) {
                    bVar11 = pcStack_2c == (code *)0x0;
                    local_70[iVar17] = (undefined **)0x20;
                    if (bVar11) {
                      aiStack_c0[iVar17] = 1;
                    }
                    else {
                      iVar6 = (*pcVar1)(piVar10 + 1,0x20,iVar16);
                      aiStack_c0[iVar17] = iVar6;
                    }
                    if (aiStack_c0[iVar17] == 0) goto LAB_0050e8fc;
                  }
                }
                else {
                  if ((piVar10[8] & 0x100000U) != 0) {
                    bVar11 = pcStack_2c == (code *)0x0;
                    local_70[iVar17] = (undefined **)0x50;
                    if (bVar11) {
                      aiStack_c0[iVar17] = 1;
                    }
                    else {
                      iVar6 = (*pcVar1)(piVar10 + 1,0x50,iVar16);
                      aiStack_c0[iVar17] = iVar6;
                    }
                  }
                  pcVar1 = pcStack_2c;
                  if (aiStack_c0[iVar17] == 0) {
                    bVar11 = pcStack_2c == (code *)0x0;
                    local_70[iVar17] = (undefined **)0x40;
                    if (bVar11) {
                      aiStack_c0[iVar17] = 1;
                    }
                    else {
                      iVar6 = (*pcVar1)(piVar10 + 1,0x40,iVar16);
                      aiStack_c0[iVar17] = iVar6;
                    }
                    pcVar1 = pcStack_2c;
                    if (aiStack_c0[iVar17] == 0) {
                      bVar11 = pcStack_2c == (code *)0x0;
                      local_70[iVar17] = (undefined **)0x80;
                      if (bVar11) {
                        aiStack_c0[iVar17] = 1;
                      }
                      else {
                        iVar6 = (*pcVar1)(piVar10 + 1,0x80,iVar16);
                        aiStack_c0[iVar17] = iVar6;
                      }
                      goto LAB_0050e881;
                    }
                  }
                }
                if (param_1[4] != 0) {
                  iVar16 = FUN_0050eb40(piVar8,*piVar10,iVar16,aiStack_50 + iVar17);
                  aiStack_c0[iVar17] = iVar16;
                }
              }
LAB_0050e8fc:
              iVar17 = iVar17 + 1;
              piVar9 = piVar7;
            } while (iVar17 < iVar18);
          }
          piVar8 = piVar20;
          if (0 < iVar19) {
            piVar7 = (int *)(iVar4 + 0xc);
            iVar17 = iVar19;
            do {
              iVar16 = 0;
              if (0 < iVar18) {
                do {
                  if ((*piVar7 == aiStack_a0[iVar16 + 4]) && (aiStack_c0[iVar16] != 0)) {
                    if (0x3f < piVar10[0x178]) {
                      TERMINATION(s_D3DUtil__BuildAdpaterInfoArray___0063a430,
                                  s_num_of_display_modes_overflow_0063a3f0);
                    }
                    piVar10[piVar10[0x178] * 5 + 0x38] = piVar7[-3];
                    piVar10[piVar10[0x178] * 5 + 0x39] = piVar7[-2];
                    piVar10[piVar10[0x178] * 5 + 0x3a] = *piVar7;
                    piVar10[piVar10[0x178] * 5 + 0x3b] = (int)local_70[iVar16];
                    piVar10[(piVar10[0x178] + 0xc) * 5] = aiStack_50[iVar16];
                    piVar10[0x178] = piVar10[0x178] + 1;
                  }
                  iVar16 = iVar16 + 1;
                } while (iVar16 < iVar18);
              }
              piVar7 = piVar7 + 4;
              iVar17 = iVar17 + -1;
            } while (iVar17 != 0);
          }
          iVar17 = piVar10[0x178];
          iVar16 = 0;
          if (0 < iVar17) {
            piVar7 = piVar10 + 0x3a;
            do {
              if ((piVar7[-2] == 0x280) && (piVar7[-1] == 0x1e0)) {
                piVar10[0x179] = iVar16;
                iVar6 = *piVar7;
                if ((iVar6 == 0x17) || ((iVar6 == 0x18 || (iVar6 == 0x19)))) break;
              }
              iVar16 = iVar16 + 1;
              piVar7 = piVar7 + 5;
            } while (iVar16 < iVar17);
          }
          if ((aiStack_c0[0] != 0) && ((piVar10[4] & 0x80000U) != 0)) {
            piVar10[0x37] = 1;
            piVar10[0x17a] = 1;
          }
          piVar7 = piVar9;
          if (0 < iVar17) {
            if (1 < *(int *)((int)piVar9 + param_1[1] + 0x109c)) {
              TERMINATION(s_D3DUtil__BuildAdpaterInfoArray___0063a430,
                          s_device_info_array_overflow_0063a3d4);
            }
            *(int *)((int)piVar9 + param_1[1] + 0x109c) =
                 *(int *)((int)piVar9 + param_1[1] + 0x109c) + 1;
          }
          iVar2 = iVar2 + 4;
          piVar20 = piVar8;
        } while (iVar2 < 8);
        if (0 < *(int *)((int)piVar9 + param_1[1] + 0x109c)) {
          param_1[2] = param_1[2] + 1;
        }
      }
      piVar8 = (int *)((int)piVar8 + 1);
      piVar20 = piVar8;
      iVar2 = (**(code **)(*(int *)*param_1 + 0x10))((int *)*param_1);
    } while ((int)piVar8 < iVar2);
  }
  operator_delete(unaff_EBX);
  return;
}



