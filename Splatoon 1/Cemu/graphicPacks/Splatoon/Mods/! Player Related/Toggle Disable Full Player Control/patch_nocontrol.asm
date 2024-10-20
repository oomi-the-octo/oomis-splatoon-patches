[Toggle Disable Full Player Control]
moduleMatches = 0x659c782e

.origin = codecave
playerControlCheck:
li r13, $playercontrol
cmpwi r13, 1
beq disableControl
blr

disableControl:
mflr r0
b 0x026331dc

playerControlCheckCam:
li r13, $playercontrol
cmpwi r13, 1
beq disableCamControl
blr

disableCamControl:
stwu r1,-0x1e8(r1)
b 0x026621ec

0x026331d8 = b playerControlCheck
0x026621e8 = b playerControlCheckCam