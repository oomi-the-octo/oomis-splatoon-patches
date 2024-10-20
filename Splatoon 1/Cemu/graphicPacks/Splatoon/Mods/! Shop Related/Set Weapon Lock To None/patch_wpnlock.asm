[Set Weapon Lock To None]
moduleMatches = 0x659c782e

.origin = codecave
SetWeaponLock:
lis r3, 0x4E6F
ori r3, r3, 0x6E65
b 0x02024f30

0x02024f2c = b SetWeaponLock