# VLSI-Timing-Analysis
This project discusses various methods used in optimising time in VLSI
---

## Elmore delay

The first part involves analysing a RC tree based circuit where the detemination the delay at the end points by first done using convenctional RC tree traversing and then by moment matching technique.

### Requirement
<img src="Moment Matching/Images/Capture.PNG" width="600" >

---

### Approach

To achieve this, we use MATLAB and HSPICE. HSPICE will give the convenctional Elmore and MATLAB will give the moment matched response.

The MATLAB method has the following steps:-

1. B Calculation using Inverse Matrix menthod
<img src="Moment Matching/Images/Bcalc.PNG" width="400" >

NOTE: B is shown as 'a' in the above image

2. Solving the Quadratic equation to optain P
<img src="Moment Matching/Images/Pcalc.jpeg" width="400" >

3. K Calculation solving the equation in Matrix method
<img src="Moment Matching/Images/KCalc.PNG" width="400" >

4. Plot response on MATLAB for the function 
<img src="Moment Matching/Images/Resp.PNG" width="400" >

---

### Result

The responses on the MATLAB were found improving at each approximation at 4th order. The various order comparisons shown below,

1st Approximation

<img src="Moment Matching/Images/First.PNG" width="400" >

2nd Approximation

<img src="Moment Matching/Images/Sec.PNG" width="400" >

3rd Approximation

<img src="Moment Matching/Images/Third.PNG" width="400" >

4th Approximation

<img src="Moment Matching/Images/Fourth.PNG" width="400" >

---

## Buffer insertion for reducing the delay

This part involves analysing a large design with a specified arrival time at the output points. Buffers must be inserted at selected fan-out points by considering the optimal design option at fan out points. Redundant designs are eliminated at each step.

### Requirement
<img src="Buffer Insertion/Images/Capture.PNG" width="600" >
