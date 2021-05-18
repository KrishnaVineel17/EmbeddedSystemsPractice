;PROGRAM - 2
;Finding maximum and minimum values in an array of length = 10
;Target - LPC2148
;Date: 15/04/2021
;Name: Ramayanam Hemanth Krishna Vineel
;Roll No: 118CS0017
;Initial Assumption: Here in this algorith, we initially assume that our minimum and maximum value is our datar[0] value, which is the first element of our array.	
	AREA 	Assignment2, CODE, READONLY		;Name this block of code Assignment2
	ENTRY									;Mark first instruction to execute
											;ENTRY for the program
	
start										;starting the program

	LDR r0, =datar	;loads the address of the first value in array
    LDR r1, [r0]	;loads the first value of array in r1
	MOV r2, r1		;As mentioned in the Initial Assumption part, R2 is assumed to have the maximum value i.e datar[0]
	MOV r3, r1		;As mentioned in the Initial Assumption part, R3 is assumed to have the minimum value i.e datar[0]
	LDR r4, =length ;the address value of the variable 'length' is loaded into R4
	LDR r5, [r4]	;the value of length is loaded into R5
	MOV r6, #1      ;used in decrementing the R5 

loopus				;a label for loop
	ADD r0, r0, #4  ;increments the address location to next location in array by +4
	LDR r1, [r0]	;stores the second value of array into r3
	CMP r2, r1		;compares values in r2 and r1
	BGT loopik		;branch instruction BGT - "Branch on Greater Than"
	MOV r2, r1		;moves value from R1 to R2
	SUBS r5, r5, r6 ;Decrementing the value in R5 by 1 unit or simply subtracts 1 from R5
    CMP r5, #0		;Compare if r5 equal to 0 or not
	BNE loopus		;branch instruction BNE - "Branch if Not Equal"
	BEQ stop		;branch instruction BEQ - "Branch if Equal"

loopik				;a label for loop
	MOV r3,r1		;moves value from R1 to R3
	SUBS r5, r5, r6 ;Decrementing the value in R5 by 1 unit or simply subtracts 1 from R5
	CMP r5, #0      ;Compare if r5 equal to 0 or not
	BNE loopus      ;branch instruction BNE - "Branch if Not Equal"
	BEQ stop        ;branch instruction BEQ - "Branch if Equal" 

stop 	B stop      ;stopping the program

datar dcd  500,45,410,35,310,25,20,5,10,1	;initializing an array of length 10 and named as 'datar'
length dcd 9										;storing the value (length - 1) in variable length
	
	END             ;reached the END of the program

