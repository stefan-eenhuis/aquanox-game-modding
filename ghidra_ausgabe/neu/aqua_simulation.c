// Muster: Aqua_Simulation   2 Funktionen, 184 Byte

// --------------------------------------------
// Aqua_Simulation__GetMaxNumOfAttackers   ab 0x004145a0   101 Byte
// Texte: Aqua_Simulation::GetMaxNumOfAttackers(), illegal difficulty mode
// --------------------------------------------

undefined4 __thiscall Aqua_Simulation__GetMaxNumOfAttackers(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = FUN_0045cce0(param_2);
  if (iVar1 != 0) {
    switch(*(undefined4 *)(param_1 + 0xbf4)) {
    case 0:
      return 4;
    case 1:
      return 5;
    case 2:
      break;
    case 3:
      return 7;
    case 4:
      return 8;
    default:
      TERMINATION(s_Aqua_Simulation__GetMaxNumOfAtta_006048c0,s_illegal_difficulty_mode_006048e8);
    }
  }
  return 6;
}



// --------------------------------------------
// Aqua_Simulation__GetMaxNumOfTorpedos   ab 0x00414620   83 Byte
// Texte: Aqua_Simulation::GetMaxNumOfTorpedos(), illegal difficulty mode
// --------------------------------------------

undefined4 __thiscall Aqua_Simulation__GetMaxNumOfTorpedos(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = FUN_0045cce0(param_2);
  if (iVar1 != 0) {
    switch(*(undefined4 *)(param_1 + 0xbf4)) {
    case 0:
      return 1;
    case 1:
    case 2:
      break;
    case 3:
    case 4:
      return 3;
    default:
      TERMINATION(s_Aqua_Simulation__GetMaxNumOfTorp_00604900,s_illegal_difficulty_mode_006048e8);
    }
  }
  return 2;
}



