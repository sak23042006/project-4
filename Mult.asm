// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

@sum
M=0 // Initialize sum to 0

@i
M=1 // Initialize i to 1

(LOOP)
@i
D=M // Load the current value of i into the D-register

@R0
D=D-M // Calculate D = i - R0

@END
D;JGT // If (i - R0) > 0, jump to END

@R1
D=M // Load the value from R1 into the D-register

@sum
M=D+M // Add D (R1) to sum and store the result in sum

@i
M=M+1 // Increment i by 1

@LOOP
0;JMP // Jump back to LOOP

(END)
@sum
D=M // Load the final result (sum) into the D-register

@R2
M=D // Store the result in R2