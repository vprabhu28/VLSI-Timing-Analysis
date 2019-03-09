*This file will describe the HSPICE of Lab 2
*HSPICE code for without buffer

*Define the voltage source that is unit step function
vs Vin gnd PWL(0 0V 1n 0V 1.01n 4V 10.01n 4V 20n 4v 50n 4v)

*Define the design
.option post


*Defining R in the design

R1 Vin 1 1K
R2 1 2 10k
R3 1 3 10k
R4 3 4 10k
R5 4 5 10k
R6 5 6 10k
R7 6 7 10k
R8 6 8 10k
R9 5 9 10k
R10 4 10 10k
R11 3 11 10k
R12 2 12 10k
R13 12 13 10k
R14 12 14 10k
R15 2 15 10k
R16 15 16 10k
R17 16 17 10k
R18 17 18 30k
R19 18 19 20k
R20 19 20 40k
R21 16 21 20k
R22 17 22 40k
R23 19 23 30k
R24 19 24 20k
R25 17 25 30k
R26 16 26 30k
R27 15 27 10k
R28 32 28 40k
R29 32 29 10k
R30 32 30 10k
R31 32 31 10k
R32 15 32 10k
R33 2 33 10k
R34 33 34 40k
R35 33 35 10k
R36 33 36 10k
R37 36 37 10k
R38 36 38 10k
R39 33 39 10k
R40 39 40 10k
R41 39 41 10k
R42 39 42 10k 
R43 39 43 60k
R44 1 44 10k
R45 44 45 10k
R46 45 46 20k
R47 45 47 40k
R48 44 48 10k
R49 48 49 20k
R50 48 50 50k
R51 48 51 40k
R52 44 52 10k
R53 44 53 40k
R54 44 54 10k

*Defining C in the design

C1 1 gnd 0.1fF
C2 2 gnd 0.2fF
C3 3 gnd 0.2fF
C4 4 gnd 0.2fF 
C5 5 gnd 0.2fF
C6 6 gnd 0.2fF
C7 7 gnd 0.2fF
C8 8 gnd 0.2fF
C9 9 gnd 8fF
C10 10 gnd 0.2fF
C11 11 gnd 0.2fF
C12 12 gnd 0.2fF
C13 13 gnd 0.2fF
C14 14 gnd 0.2fF
C15 15 gnd 0.2fF
C16 16 gnd 0.2fF
C17 17 gnd 2fF
C18 18 gnd 1fF
C19 19 gnd 0.5fF
C20 20 gnd 8fF
C21 21 gnd 1fF
C22 22 gnd 6fF
C23 23 gnd 6fF
C24 24 gnd 4fF
C25 25 gnd 4fF
C26 26 gnd 1fF
C27 27 gnd 8fF
C28 28 gnd 8fF
C29 29 gnd 3fF
C30 30 gnd 2fF
C31 31 gnd 2fF
C32 32 gnd 2fF
C33 33 gnd 0.2fF
C34 34 gnd 8fF
C35 35 gnd 0.2fF
C36 36 gnd 0.2fF
C37 37 gnd 8fF
C38 38 gnd 4fF
C39 39 gnd 0.2fF
C40 40 gnd 1fF
C41 41 gnd 4fF
C42 42 gnd 4fF
C43 43 gnd 12fF
C44 44 gnd 0.2fF
C45 45 gnd 0.2fF
C46 46 gnd 1fF
C47 47 gnd 2fF
C48 48 gnd 0.2fF
C49 49 gnd 1fF
C50 50 gnd 8fF
C51 51 gnd 4fF
C52 52 gnd 3fF
C53 53 gnd 8fF
C54 54 gnd 2fF


.tran 0.01n 20n
.print tran V(vs) V(7)
.print tran V(vs) V(8)
.print tran V(vs) V(9)
.print tran V(vs) V(10)
.print tran V(vs) V(11)
.print tran V(vs) V(13)
.print tran V(vs) V(14)
.print tran V(vs) V(20)
.print tran V(vs) V(23)
.print tran V(vs) V(24)
.print tran V(vs) V(22)
.print tran V(vs) V(25)
.print tran V(vs) V(21)
.print tran V(vs) V(26)
.print tran V(vs) V(27)
.print tran V(vs) V(28)
.print tran V(vs) V(29)
.print tran V(vs) V(30)
.print tran V(vs) V(31)
.print tran V(vs) V(34)
.print tran V(vs) V(35)
.print tran V(vs) V(37)
.print tran V(vs) V(38)
.print tran V(vs) V(40)
.print tran V(vs) V(41)
.print tran V(vs) V(42)
.print tran V(vs) V(43)
.print tran V(vs) V(46)
.print tran V(vs) V(47)
.print tran V(vs) V(49)
.print tran V(vs) V(50)
.print tran V(vs) V(51)
.print tran V(vs) V(52)
.print tran V(vs) V(53)
.print tran V(vs) V(54)
.option post

.end


