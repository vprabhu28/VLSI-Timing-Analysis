* A simple RC circuit: RCexample.sp  * Note that the first line is always ignored by the compiler. 
* Circuit topology 
* Voltage source name, positive terminal, negative terminal, value (Piece-Wise Linear) 

vsource  vs  gnd PWL(0 0V 5m 0V 5.01m 5V 10m 5V 10.01m 2.5V)   

* Resistor name, terminal1, terminal2, value 
r1 vs  vo  1k 

* Capacitor name, terminal1, terminal2, value 
c1 vo  gnd  1uF 

* Analysis. 
* Do a transient analysis starting from 0.01ms to 15 ms (Cannot start from 0) 
.tran 0.01m 15m 
 
* Specify what you need to print out.  
* Here we are printing the voltage value at nodes vs and vo 
.print tran V(vs) V(vo) 
 
* If you need to display the waveforms in any tool, you need to explicitly put the “post”   
* option which would make HSPICE generates the .tr file, which is used for display. 
.options post 
 
.end 
 