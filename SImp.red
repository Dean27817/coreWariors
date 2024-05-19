;SImp
;author Dean Morgan
;imp type program that will kill itself after coppying
Dist1 equ 6			
Dist2 equ 7
Start	mov virus, @Dist1	
	mov cure, @Dist2
	spl @Dist2	
	add #10, Dist1		
	add #10, Dist2				
	jmp Start
virus dat #0
cure jmp Start
