4
100

;part 1 test
LDM R1,7
LDM R2,6
LDM R0,5
LDM R4,10
Add R1,R2
OR  R2,R0
Sub R0,R4
Mov R4,R1
AND R1,R2

.100
SETC
LDM R1,5
LDM R2,5
NOP
NOP
SUB R1,R2
RTI

