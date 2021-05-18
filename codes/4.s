;PROGRAM - 4
;Finding the bit reversal of a 32-bit number
;Target - LPC2148
;Date: 22/04/2021
;Name: Ramayanam Hemanth Krishna Vineel
;Roll No: 118CS0017		
		AREA	Assignment4,	CODE,	READONLY	;Name this block of code Assignment3
		ENTRY										;Mark first instruction to execute
													;ENTRY for the program

start												;starting the program

		LDR r6, =datavalue							;loads the address of the value in 'datavalue'
		LDR r7, [r6]								;load the value present in that address location i.e present in r6 into r7
		MOV r0, r7									;moves the value present in r7 to r0.								
		;MOV r0, #45								;this line is actualy a comment, but can also be used instead of above three lines
		MOV r1, #0									;moves the value '0' into r1
		MOV r5, #1									;moves the value '1' into r5 
		
loop												;a loop labelled 'loop'

		LSL r1, #1									;Logical Shift Left the bit in r1 by 1 bit
		AND r2, r0, #1								;AND operation between value in r0 and 1 and store the final value in r2
		LSR r0, #1									;Logical Shift Right the bit in r0 by 1 bit
		cmp r2, #1                                  ;Compare the value in r2 with '1'
		BEQ loops									;if value in r2 and '1' are EQUAL, then the control goes to loop labelled loops
		ADD r5, r5, #1								;Increment the value in r5 by 1 unit / add 1 unit to r5 and store the final value in r5
		CMP r5, #33									;Compare the value in r5 with 33
		BEQ stop									;if value in r5 is equal to 33, then go to label 'stop'
		BNE loop									;if value in r5 is not equal to 33, then go to label 'loop'
		
loops												;a loop labelled 'loops'

		ADD r1, r1, #1								;adding value '1' to the value in r1
		ADD r5, r5, #1								;Increment the value in r5 by 1 unit / add 1 unit to r5 and store the final value in r5
		CMP r5, #33 								;Compare the value in r5 with 33
		BEQ stop									;if value in r5 is equal to 33, then go to label 'stop'
		BNE loop									;if value in r5 is not equal to 33, then go to label 'loop'
	
		
stop 	B stop										;stopping the program (also a label)

datavalue dcd 45									;Giving our input value in decimal form say (45)10.
		
		END											;reached the END of the program
