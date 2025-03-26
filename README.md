# Multifunction ALU Design & Implementation

## Project Overview 🎯

This project involves the design and implementation of a multifunction Arithmetic and Logic Unit (ALU) in Verilog. The ALU operates on two n-bit signed inputs (X and Y) and produces a signed output (O) in 2's complement. The ALU performs various arithmetic and logical operations based on a 3-bit control input (C).

The main objectives are:
1. **Specifying the Output Size**: Define the minimum number of bits needed for the output to prevent overflow.
2. **ALU Implementation**: Design the ALU using medium-scale integration (MSI) components and the minimum number of gates.
3. **Verilog Coding**: Write behavioral and structural Verilog modules for the ALU.
4. **Simulation and Waveforms**: Simulate the ALU for specific test cases and generate waveforms.
5. **Final Module**: Write a single behavioral Verilog module for the ALU and generate its simulation waveforms.

## ALU Specifications ⚙️

### Inputs:
- **X and Y**: n-bit signed numbers (in 2's complement).
- **C**: A 3-bit unsigned number that selects the operation type.

### Output:
- **O**: Signed ALU output (in 2's complement).

### ALU Operations (based on control code `C`):
| C (Control Code) | Operation                | Description                     |
|------------------|--------------------------|---------------------------------|
| 000              | (X + Y) / 2              | Divide sum of X and Y by 2      |
| 001              | 2 * (X + Y)              | Multiply sum of X and Y by 2    |
| 010              | (X / 2) + Y              | Divide X by 2, then add Y       |
| 011              | X - (Y / 2)              | Subtract half of Y from X       |
| 100              | X NAND Y                 | NAND operation between X and Y |
| 101              | NOT(X)                   | NOT operation on X              |
| 110              | X NOR Y                  | NOR operation between X and Y  |
| 111              | X XOR Y                  | XOR operation between X and Y  |

### Overflow Prevention:
You are tasked with defining the minimum bit width for the output O such that overflow will never occur.

## Design Approach 🛠️

### 1. **ALU Output Size (O)**
- The output size must be large enough to handle the largest possible result of the operations.
  
### 2. **ALU Implementation (MSI Components)**:
- The ALU will be designed using combinational logic gates such as AND, OR, XOR, NOT, and multiplexers to perform the required arithmetic and logical operations.
- Components will be parameterized for flexibility during the testing phase.

### 3. **Verilog Coding**:
- **Behavioral Modules**: Each ALU operation will be modeled in a behavioral style.
- **Structural Verilog**: A structural Verilog module will be created using the previously defined elements.

### 4. **Waveform Generation**:
- The ALU will be tested with specific test cases, where X, Y, and C will be based on the student ID (e.g., for student ID 1220520).

## Verilog Modules 📝

1. **ALU Components**:
   - **Adder/Subtractor**: Handles basic arithmetic operations like addition and subtraction.
   - **Logic Gates**: Implements AND, OR, XOR, NAND, NOR, and NOT operations.
   - **Multiplexer**: Used for selecting the appropriate operation based on the control code `C`.

2. **Behavioral Verilog Code**:
   - A behavioral model for each operation (arithmetic and logic) based on the given specifications.

3. **Structural Verilog Code**:
   - A top-level structural model that connects all components and performs the necessary operations.

4. **Waveforms**:
   - Generated using Quartus for various test cases.

## Test Cases 📋

Test cases will be based on the student ID format, where X and Y are determined by the student ID, and C represents different ALU function codes. The following cases will be tested:

1. **Test Case 1**: 
   - X = 0, Y = 2, C = 5 (Perform the operation for this combination and calculate the output).
   
2. **Test Case 2**:
   - X = 0, Y = 2, C = 2 (NOT(0) operation).

3. **Test Case 3**:
   - X = -X1, Y = -Y1, C = C2 (For this case, divide X by 2 and add Y or subtract as required).

These test cases will be simulated, and waveform outputs will be generated for further analysis.

## Project Submission 📦

- **Folder Structure**:
    - **Project Folder**: `Project_YourStudentID/`
        - Verilog module files: `ALU_Module_YourStudentID.v`, `Adder_YourStudentID.v`, etc.
        - Waveform files: `Waveform_YourStudentID.vwf`
    - **Report**: `Report_YourStudentID.pdf`
        - Detailed explanation of each part of the project, supported with snapshots, figures, and waveform diagrams.

## Tools and Software 💻

- **Quartus Software**: Used for Verilog coding and simulation.
- **ModelSim**: For waveform generation and simulation.
- **Verilog HDL**: For writing the hardware description of the ALU.

## Conclusion 🎉

This project provides an in-depth exploration of designing and implementing a multifunction ALU. By modeling the ALU using Verilog, we gain insight into how arithmetic and logic operations are handled in digital systems. The project helps reinforce concepts like modular design, testing, and the use of hardware description languages in real-world applications.

---

Thank you for exploring the Multifunction ALU Design & Implementation Project! 😄
