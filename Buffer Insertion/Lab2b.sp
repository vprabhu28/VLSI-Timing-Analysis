*This file will describe the HSPICE of Lab 2
*HSPICE code for without buffer
.include ./cmos45nm_PTM_HP
*Define the voltage source that is unit step function
vs Vin gnd PWL(0 0V 1n 0V 1.01n 4V 10.01n 4V 20n 4v 50n 4v)

*BUFFER Macro
.MACRO buf16 IN OUT VDD VSS L=45n W=45n
M0p N1 IN VDD VDD PMOS L=L W='16*W'
M0n N1 IN VSS VSS NMOS L=L W='16*W'
M1p OUT N1 VDD VDD PMOS L=L W='32*W'
M1n OUT N1 VSS VSS NMOS L=L W='32*W'

.EOM

*Define the design
.option post


*Defining R in the design

R1 Vin 1 1K
R2 a 2 10k
R3 a 3 10k
R4 b 4 10k
R5 c 5 10k
R6 d 6 10k
R7 6 7 10k
R8 6 8 10k
R9 d 9 10k
R10 c 10 10k
R11 b 11 10k
R12 e 12 10k
R13 12 13 10k
R14 12 14 10k
R15 e 15 10k
R16 f 16 10k
R17 g 17 10k
R18 h 18 30k
R19 18 19 20k
R20 i 20 40k
R21 g 21 20k
R22 h 22 40k
R23 i 23 30k
R24 i 24 20k
R25 h 25 30k
R26 g 26 30k
R27 f 27 10k
R28 j 28 40k
R29 j 29 10k
R30 j 30 10k
R31 j 31 10k
R32 f 32 10k
R33 e 33 10k
R34 k 34 40k
R35 k 35 10k
R36 k 36 10k
R37 l 37 10k
R38 l 38 10k
R39 k 39 10k
R40 m 40 10k
R41 m 41 10k
R42 m 42 10k 
R43 m 43 60k
R44 a 44 10k
R45 n 45 10k
R46 o 46 20k
R47 o 47 40k
R48 n 48 10k
R49 p 49 20k
R50 p 50 50k
R51 p 51 40k
R52 n 52 10k
R53 n 53 40k
R54 n 54 10k

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


*Buffer insertion
X1 1 a Vin gnd buf16
X2 3 b Vin gnd buf16
X3 4 c Vin gnd buf16
X4 5 d Vin gnd buf16
X5 2 e Vin gnd buf16
X6 15 f Vin gnd buf16
X7 16 g Vin gnd buf16
X8 17 h Vin gnd buf16
X9 19 i Vin gnd buf16
X10 32 j Vin gnd buf16
X11 33 k Vin gnd buf16
X12 36 l Vin gnd buf16
X13 39 m Vin gnd buf16
X14 44 n Vin gnd buf16
X15 45 o Vin gnd buf16
X16 48 p Vin gnd buf16

*Perform the analysis

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


