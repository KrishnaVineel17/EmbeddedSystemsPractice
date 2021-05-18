;PROGRAM - 1
;Adding 10 numbers using loop with control instructions
;Target - LPC2148
;Date: 13/04/2021
;Name: Ramayanam Hemanth Krishna Vineel
;Roll No: 118CS0017
	 AREA	Assignment1, CODE, READONLY   ;Name this block of code Assignment1
   	 ENTRY 				 ;Mark first instruction to execute
						 ;ENTRY for the program
start					 ;starting the program
		MOV  r0,  #1     ;starting point
		MOV  r1,  #11    ;ending point
		MOV  r2,  #0     ;summation variable which is initially set to zero 
    	MOV  r3,  #1     ;used in incrementing the "r0"

la						 ;a label for loop
		ADD r2, r2, r0   ;r2 <- r2 + r0
    	ADD r0, r0, r3   ;r0 <- r0 + r3
    	CMP r0, r1       ;compare if our value reached end point or not
    	BNE la			 ;BRANCH NOT EQUAL

stop	B 	stop		 ;stopping the program

	END					 ;reached the END of the program

