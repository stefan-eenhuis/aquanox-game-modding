import sys
sys.path.insert(0, r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\tools")
from exe_tool import Exe
e = Exe()
for name, va in (("Game_SetFog 11013", 0x4554fe), ("Game_LoadFog 11006", 0x4553d0),
                 ("Camera_SetBackPlane 7000", 0x444a85),
                 ("Camera_SetFrontPlane 7001", 0x444a11)):
    print(f"\n===== {name}  {va:#x} =====")
    print(e.dis(va, 26))
