;PROGRAM - 7
;Finding the factorial of a given number
;Target - LPC2148
;Date: 01/05/2021
;Name: Ramayanam Hemanth Krishna Vineel
;Roll No: 118CS0017		
		
		AREA	Assignment7, CODE, READONLY	;Name this block of code Assignment7
		ENTRY								;Mark first instruction to execute
											;ENTRY for the program
		
start										;starting the program

		LDR r0, =valuenum					;loads the address of the value in 'valuenum' 
		LDR r1, [r0]						;load the value present in that address location i.e present in r0 into r1
		MOV r2, #1							;move the value '1' into r2
		MOV r3, r1							;move the value in r1 into r3
		MOV r7, #1							;move the value '1' into r7 --> this register holds the final factorial value

checkzero									;a label named as 'checkzero'

		CMP r3, #0							;Compare the value in r3 with '0'
		BEQ stop							;if the value in r3 is equal to 0, then the control goes to label 'stop'
	
fact										;a label named as 'fact'
		MUL r7, r2, r3						;Multiplication operation, r2 and r3 are multiplied and stored in r7
		SUB r3, r3, #1						;Subtraction operation, decrease the value of r3 by 1 unit
		MOV r2, r7							;move the value in r7 into r2
		CMP r3, #1							;Compare the value in r3 with '1'
		BLT stop							;if the value in r3 is less than 1, then the control goes to label 'stop'
		BGT fact							;if the value in r3 is greater than 1, then the control goes to label 'fact'
		BEQ stop							;if the value in r3 is equal to 1, then the control goes to label 'stop'
		
	
stop 	B stop								;stopping the program (also a label)

valuenum dcd 5								;Giving our input in decimal form say (8)10
	
		END									;reached the END of the program