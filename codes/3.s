;PROGRAM - 3
;Finding the sum of all the numbers that are divisibe by 5 in an array of 10 numbers
;Target - LPC2148
;Date: 20/04/2021
;Name: Ramayanam Hemanth Krishna Vineel
;Roll No: 118CS0017
		AREA 	Assignment3, CODE, READONLY	;Name this block of code Assignment3
		ENTRY								;Mark first instruction to execute
											;ENTRY for the program
											
start										;starting the program

		LDR r0,	=array						;loads the address of the first value in array
		LDR r4,	[r0]	 					;loads the first value of array in r4
		ldr r6, =length						;the address value of the variable 'length' is loaded into r6
		ldr r5,	[r6]	 					;the value of length is loaded into r5
		MOV r2,	#5							;number 5 (divisor) is stored into r2 to check the divisibility
		MOV r7,	#0							;summation variable where we store the total sum of all numbers that are divisible by 5 in our array
		MOV r1,	r4							;moving value in array into r1 and r1 acts as a dummy variable 
		CMP r1,	r2							;compare r1 and r2
		BLT loopk							;if r1 < r2 then the control goes to loop labelled loopk
		BGT loops							;if r1 > r2 then the control goes to loop labelled loops
		BEQ loopt							;if r1 == r2 then the control goes to loop labelled loopt 

loopk										;a loop labelled loopk
		ADD r0,	r0,	#4						;increments the address location to next location in array by +4
		SUB r5,	r5,	#1						;Decrementing the value in r5 by 1 unit or simply subtracts 1 from R5
		CMP r5,	#0							;Compare if r5 equal to 0 or not
		BEQ stop							;branch instruction BEQ - "Branch if Equal" if r5 == 0, then the control goes to 'stop' label
		LDR r4,	[r0]						;loads the address of new value in array after incrementing the address in line 26
		MOV r1,	r4							;moving value in array into r1
		CMP r4,	r2							;compare r4 and r2
		BLT loopk							;if r4 < r2 then the control goes to loop labelled loopk
		BEQ loopt							;if r4 == r2 then the control goes to loop labelled loopt 
		BGT loops							;if r4 > r2 then the control goes to loop labelled loops
											;this helps us in starting our repetetive subtraction methood 
loops										;a loop labelled loops
		SUB r1,	r1,	r2						;Subtracts r2 from r1 and store it in r1			
		CMP r1,	r2							;compare r1 and r2
		BLT loopk		                    ;if r1 < r2 then the control goes to loop labelled loopk					
		BEQ loopt							;if r1 == r2 then the control goes to loop labelled loopt
		BGT loops							;if r1 > r2 then the control goes to loop labelled loops
	
loopt										;this helps us in calculating the sum of all the numbers that are divisible by 5 in our 'array'
		ADD r7,	r7,	r4						;Adds r7 and r4 and store the sum value into r7
		CMP r2,	#1							;compare operation
		BGT loopk							;branch instruction - Branch Greater Than
		
stop 	B stop								;stopping the program (also a label)
array 	dcd 1, 8, 5, 7, 6, 5, 2, 20, 5, 1	;initializing an array of length 10 and named as 'datar'
length 	dcd 10								;storing the value (length) in variable length
		END										;reached the END of the program
