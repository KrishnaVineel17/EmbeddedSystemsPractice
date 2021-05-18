;PROGRAM - 5
;Generate the first 10 Fibonacci Numbers
;Target - LPC2148
;Date: 26/04/2021
;Name: Ramayanam Hemanth Krishna Vineel
;Roll No: 118CS0017		
		AREA	Assignment5, 	CODE, 	READONLY			;Name this block of code Assignment5
		ENTRY												;Mark first instruction to execute
															;ENTRY for the program
start														;starting the program
		MOV r0, #0											;Moving the value 0 into r0
		MOV r1, #1											;Moving the value 1 into r1
		MOV r10, #1											;Moving the value 1 into r10 --> this helps in repetition of 'loops'
		
		
loops														;a loop labelled 'loops'
		ADD r2, r0, r1										;Adding the values in r0 & r1 and store the value into r2
		MOV r0, r1											;Moving the value in r1 into r0
		MOV r1, r2											;Moving the value in r2 into r1
		ADD r10, r10, #1									;Add 1 to the value in r10 (or) increment the value in r10 by +1
		CMP r10, #11										;Compare the value in r10 with 11
		BEQ stop											;Branch Instruction - if value in r10 and 11 are equal then the control goes to label 'stop'
		BNE loops											;Branch Instruction - if value in r10 is not equal to 11 then the control goes to laebl 'loops'
		
stop 	B stop												;stopping the program (a label)

		END													;reached the END of the program