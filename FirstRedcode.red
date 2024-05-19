;name First Redcode
;By dean morgan
;A suicidal Imp
Spacer equ 4 ;The distance from the mov command to the last jmp
Dist equ 2 
Start   mov @Spacer, @Dist      ; Copy the instruction at address 3 (jmp Start) to a new location pointed by Dist
        add #Spacer, Dist  	; adds the space the the jmp was moved to the space that the mov will look for
	add #Dist, Spacer	; does the inverse of the line above
        mov #0, $Spacer         ; Clear the original jmp Start
        jmp Start          	; Repeat the process
        jmp Start          	; This is the instruction to be copied
        dat #0             	; End of the program
