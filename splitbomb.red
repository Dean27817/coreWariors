;name splitBomb
;author Dean Morgan
;loops over creating multiple bomb procecies
				;the first chunk of code is for coppying the bombers around the field
Start	mov	bomb1,	@ptr1	;moves the first line of the bomber code
	add	#1,	ptr1	;adds one from the pointer to make sure that the bomber code is in the right order
	mov	bomb2,	@ptr1	;the next several serve the same perpose as the above two
	add	#1,	ptr1	;
	mov	bomb3,	@ptr1	;
	sub	#2,	ptr1	;subtracts 3 from the pointer to start the bomber correctaly
	spl	@ptr1		;splits the program to start the bomber
	add	#400,	ptr1	;moves the pointer to where we want the next bomber to start
	jmp	Start		;resets the coppying part of the program
bomb1	mov	ptr1,	3	;first part of the bomber code used to move the dat command forward to kill any process in that core
bomb2	add	#3,	-1	;adds the first number to the move command alowing making the dat move along the line
bomb3	jmp	-2		;loops the program
ptr1	dat	300		;tells the program where the next bomber should be also used as the dat command to kill cores by the bombers
