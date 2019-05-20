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

#### Note: A complete detailed report, HSPICE codes and steps have been attached in the folder 'Moment Matching'

---

## Buffer insertion for reducing the delay

This part involves analysing a large design with a specified arrival time at the output points. Buffers must be inserted at selected fan-out points by considering the optimal design option at fan out points. Redundant designs are eliminated at each step.

### Requirement

For the below diagram of network with several different nodes, we must insert buffers at selected fanouts to achieve an arrival time of 1.9ns or lower at the end points.


<img src="Buffer Insertion/Images/Capture.PNG" width="600" >

<img src="Buffer Insertion/Images/Capturse.PNG" width="600" >

---

### Approach

To achieve this, we will first number all the nodes and perform the calculations.

The calculations will follow the below steps,


a. Determine (𝐿𝑖,𝑇𝑖) at all the end points. 

b. Then we traverse to the point before on the same line. We can determine the load and time as shown,


𝑇𝑖’ = 𝑇𝑖 – 𝑅𝑖 ∗ 𝐶𝑖 𝐿𝑖’ = 𝐿𝑖 + 𝐶𝑖 

c. Complete this traverse back along the line for all the end points. 

d. At Fan-out points, we need to choose the optimum design option from the available design option at various points. This can be done using the below method 

𝐼𝑛 𝑐𝑎𝑠𝑒 𝑤𝑒 ℎ𝑎𝑣𝑒 𝑑𝑒𝑠𝑖𝑔𝑛 𝑜𝑝𝑡𝑖𝑜𝑛𝑠 𝑙𝑖𝑘𝑒  (𝐿1,𝑇1),(𝐿2,𝑇2),(𝐿3,𝑇3)


 𝑇 = 𝑚𝑖𝑛 (𝑇1,𝑇2,𝑇3)
 
 𝐿 = 𝐿1 + 𝐿2 + 𝐿3
 
 e. Once we do that, we must do a redundancy check. This can be done using the following method, 𝑆𝑢𝑝𝑝𝑜𝑠𝑒 𝑤𝑒 ℎ𝑎𝑣𝑒 𝑡𝑤𝑜 𝑑𝑒𝑠𝑖𝑔𝑛 𝑜𝑝𝑡𝑖𝑜𝑛𝑠 (𝐿1,𝑇1) 𝑎𝑛𝑑 (𝐿2,𝑇2)
 
 𝐼𝑓 𝐿1 > = 𝐿2 𝑎𝑛𝑑 𝑇1 <= 𝑇2
 
 𝑇ℎ𝑒𝑛,(𝐿1,𝑇1) 𝑖𝑠 𝑟𝑒𝑑𝑢𝑛𝑑𝑎𝑛𝑡. 
 
f. When buffer is inserted, we use different set of formulas to calculate the time. 

When we insert buffer, L = Cbuff Tbuff = Tmin – Rbuff * L  
 
Using these steps mentioned above, the calculations can be done to determine the various design options and buffer insertion points. 

---

### Result

The below image shows the responses before and after buffer insertion. 

The image to the right is after insertion and left is before insertion.


<img src="Buffer Insertion/Images/Result.PNG" width="600" >

As we can see, with buffer, the response is much linear and the time of arrival is less than that was required.

#### Note: A complete detailed report, HSPICE codes and steps have been attached in the folder 'Buffer Insertion'

---

## Lagrangian relaxation to optimize timing and area

This part of the completed based on the research paper on Langrangian relaxation. The main idea behind this is that each component 
or wire can be viewed as a RC connection. Then we calculate Elmore delay to determine the propogation delay. The critical path is 
determined and the gate/wire resizing is done to achieve minimum propogational delay while having an optimim area.


### Requirement


The requirements for this part of the project are specified as shown,
<img src="Lagrangian relaxation/Requirements.png" width="600" >

The circuit was described as a HSPICE code. Along with the resistance and capacitance of individual components.

------
### Approach

First we need to implement the HSPICE code on paper to obtain a complete circuit. Then subsititute the componets by thier RC
equivalents to start analyzing using Elmore technique.

Ciruit is as shown below

<img src="Lagrangian relaxation/Circuit.png" width="600" >

Principle of replacing the components by thier RC equivalents

<img src="Lagrangian relaxation/Principle.png" width="600" >

Now, using Elmore delay at different stages the final propogational delay at the primary output was determined.
The critical path was identified as shown,

<img src="Lagrangian relaxation/CriticalPath.png" width="600" >

-----

### Result

The intial delay at primary output node 27 and 28 was 125ns and 145ns respectively. By resizing the gates along the critical path,
we achieved an optimal small delay of 95ns and 63ns at the primary outputs. The area was also optimised using the timing as a constraint.
The complete report along with the EXCEL sheet used for calculationa and the research paper based of which this lab was performed
are attached to the folder "Lagrangian relaxation". 
