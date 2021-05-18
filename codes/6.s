;PROGRAM - 6
;Binary to Gray Conversion
;Target - LPC2148
;Date: 29/04/2021
;Name: Ramayanam Hemanth Krishna Vineel
;Roll No: 118CS0017		
		AREA	Assignment6,	CODE,	READONLY	;Name this block of code Assignment3
		ENTRY										;Mark first instruction to execute
													;ENTRY for the program

start												;starting the program

		LDR r6, =datavalue							;loads the address of the value in 'datavalue'
		LDR r7, [r6]								;load the value present in that address location i.e present in r6 into r7
		MOV r0, r7									;moves the value present in r7 to r0.								
		;MOV r0, #45								;this line is actualy a comment, but can also be used instead of above three lines
		MOV r1, #0									;moves the value '0' into r1
		MOV r5, #1									;moves the value '1' into r5 

;Reversing the number begins

loop												;a loop labelled 'loop'

		LSL r1, #1									;Logical Shift Left the bit in r1 by 1 bit
		AND r2, r0, #1								;AND operation between value in r0 and 1 and store the final value in r2
		LSR r0, #1									;Logical Shift Right the bit in r0 by 1 bit
		cmp r2, #1                                  ;Compare the value in r2 with '1'
		BEQ loops									;if value in r2 and '1' are EQUAL, then the control goes to loop labelled loops
		ADD r5, r5, #1								;Increment the value in r5 by 1 unit / add 1 unit to r5 and store the final value in r5
		CMP r5, #8									;Compare the value in r5 with 8
		BEQ startagain								;if value in r5 is equal to 8, then go to label 'startagain'
		BNE loop									;if value in r5 is not equal to 8, then go to label 'loop'
		
loops												;a loop labelled 'loops'

		ADD r1, r1, #1								;adding value '1' to the value in r1
		ADD r5, r5, #1								;Increment the value in r5 by 1 unit / add 1 unit to r5 and store the final value in r5
		CMP r5, #8 									;Compare the value in r5 with 8
		BEQ startagain								;if value in r5 is equal to 8, then go to label 'startagain'
		BNE loop									;if value in r5 is not equal to 8, then go to label 'loop'
	
;The Binary to Gray conversion begins		
	
startagain											;a label called 'startagain'
		;mov r0, #3
		;mov r1, #12
		MOV r11, #1									;moves the value 1 into r11
		MOV r3, r1									;moves the value in r1 into r3
		AND r4, r3, #1								;AND operation between value in r3 and 1 and store the value in r4
		LSR r3, #1									;Logical Shift Right the bits in r3 by 1 bit
		MOV r8, r4									;moves the value in r4 into r8
		ADD r11, r11, #1							;adding value '1' to the value in r11
		
loopt												;a loop labelled 'loopt'
		AND r9, r3, #1								;AND operation between value in r8 and r9 and store the value in r9
		EOR r10, r8, r9								;Exclusive-OR operation between the values r8 and r9 and store the value in r10
		LSL r4, #1									;Logical Shift Left the bits in r4 by 1 bit
		ADD r4, r10, r4								;adding the value in r10 and r4 and store the result in r4
		LSR r3, #1									;Logial Shift Right the bits in r3 by 1 bit
		ADD r11, r11, #1							;adding value '1' to the value in r11
		MOV r8, r9									;moves the value in r9 into r8
		CMP r11, #8									;Compare the value in r11 with 8
		BNE loopt									;if value in r11 is not equal to 8, then the control goes to label 'loopt'
		BEQ stop									;if value in r11 is equal to 8, then the the control goes to label 'stop'
				
		
stop    B stop										;stopping the program (also a label)
		

datavalue dcd 45									;Giving our input value in decimal form say (5)10.
		
		END											;reached the END of the program
