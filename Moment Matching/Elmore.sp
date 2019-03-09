*This file will describe the HSPICE of the given problem

*Define the voltage source that is unit step function
vs vs gnd PWL(0 0V 5n 0V 5.01n 4V 10.01n 4V 20n 4v 50n 4v)

*Define the design

R1 vs 1 120
C1 1 gnd 2pF
R2 1 2 30
C2 2 gnd 0.8pF
R3 2 3 95
C3 3 gnd 2.5pF
R4 3 4 125
C4 4 gnd 5pF
R5 1 5 80
C5 5 gnd 1.4pF
R6 5 6 40
C6 6 gnd 0.5pF
R7 6 7 120
C7 7 gnd 1.5pF
R8 5 8 250
C8 8 gnd 2.9pF
R9 8 9 380
C9 9 gnd 3pF
R10 9 10 580
C10 10 gnd 9pF

*Perform the analysis

.tran 0.01n 100n

.print tran V(vs) V(10)

.option post


.end



