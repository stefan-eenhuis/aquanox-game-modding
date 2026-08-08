// Muster: REM_Fog   1 Funktionen, 533 Byte

// --------------------------------------------
// REM_FogLayer_Density__LoadDensityFile   ab 0x004fa7b0   533 Byte
// Texte: Density file not found., Height of fogdensity/color *,tga picture must be ONE pixel., Height of map must be > 0., MOS_Map::Reconstruct(const s32 _Width, const s32 _Height), REM_FogLayer_Density::LoadDensityFile(), Width of map must be > 0., couldn't allocate data field (out of memory)., couldn't allocate dataline field (out of memory)., void MOS_Map<T>::Reconstruct()
// --------------------------------------------

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall REM_FogLayer_Density__LoadDensityFile(int param_1,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  int *piVar5;
  undefined4 uVar6;
  int local_28;
  
  FUN_005ed530();
  local_28 = 0;
  FUN_00518cd0();
  iVar1 = FUN_00521950(param_2);
  if (iVar1 == 0) {
    TERMINATION(s_REM_FogLayer_Density__LoadDensit_00638ad4,s_Density_file_not_found__00638afc);
  }
  FUN_00518d00(param_2,1);
  iVar1 = FUN_0051a0d0();
  if (iVar1 != 1) {
    TERMINATION(s_REM_FogLayer_Density__LoadDensit_00638ad4,
                s_Height_of_fogdensity_color___tga_00638a98);
  }
  iVar1 = FUN_0051a0d0();
  iVar2 = FUN_0051a0c0();
  if (iVar2 < 1) {
    TERMINATION(s_Width_of_map_must_be_>_0__006046b4,s_MOS_Map__Reconstruct_const_s32___006046d0);
  }
  if (iVar1 < 1) {
    TERMINATION(s_Height_of_map_must_be_>_0__00604698,s_MOS_Map__Reconstruct_const_s32___006046d0);
  }
  if (iVar2 * iVar1 != 0) {
    operator_delete(0);
    local_28 = operator_new(iVar2 * iVar1 * 4);
    if (local_28 == 0) {
      local_28 = 0;
    }
    if (local_28 == 0) {
      TERMINATION(s_couldn_t_allocate_data_field__ou_00604648,
                  s_void_MOS_Map<T>__Reconstruct___00604678);
    }
  }
  if (iVar1 == 0) {
    piVar3 = (int *)0x0;
  }
  else {
    operator_delete(0);
    piVar3 = (int *)operator_new(iVar1 * 4);
    if (piVar3 == (int *)0x0) {
      TERMINATION(s_couldn_t_allocate_dataline_field_00604614,
                  s_void_MOS_Map<T>__Reconstruct___00604678);
    }
  }
  if (0 < iVar1) {
    iVar4 = local_28;
    piVar5 = piVar3;
    do {
      *piVar5 = iVar4;
      iVar4 = iVar4 + iVar2 * 4;
      piVar5 = piVar5 + 1;
      iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
  }
  iVar1 = *piVar3;
  uVar6 = 1;
  iVar4 = FUN_0051a0c0(1);
  GFX_PictureTGA__ReadData_RGBA8888(iVar1,iVar4 << 2,uVar6);
  FUN_00518e50();
  operator_delete(*(undefined4 *)(param_1 + 0x28));
  uVar6 = operator_new(iVar2 * 4);
  *(undefined4 *)(param_1 + 0x28) = uVar6;
  iVar1 = 0;
  if (0 < iVar2) {
    do {
      *(undefined4 *)(*(int *)(param_1 + 0x28) + iVar1 * 4) = 0;
      iVar1 = iVar1 + 1;
    } while (iVar1 < iVar2);
  }
  iVar1 = 0;
  *(int *)(param_1 + 0x24) = iVar2;
  *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x3c) & 0xfffffffe;
  if (0 < iVar2) {
    do {
      iVar4 = iVar1 * 4;
      iVar1 = iVar1 + 1;
      *(float *)(*(int *)(param_1 + 0x28) + -4 + iVar1 * 4) =
           (float)(*(uint *)(*piVar3 + iVar4) >> 0x18) * _DAT_005f3670;
    } while (iVar1 < iVar2);
  }
  FUN_00518ce0();
  operator_delete(piVar3);
  operator_delete(local_28);
  FUN_005216e0();
  return;
}



