

	.FUNCT	PRINTT,O
	EQUAL?	O,TURN \?ELS5
	PRINTI	" "
	PRINTN	P-NUMBER
	PRINTI	" turns"
	RTRUE	
?ELS5:	CALL	THE?,O
	PRINTI	" "
	PRINTD	O
	RTRUE	


	.FUNCT	PRINTA,O
	FSET?	O,PERSON /?CND1
	FSET?	O,NARTICLEBIT \?ELS3
	JUMP	?CND1
?ELS3:	FSET?	O,VOWELBIT \?ELS7
	PRINTI	"an "
	JUMP	?CND1
?ELS7:	PRINTI	"a "
?CND1:	PRINTD	O
	RTRUE	


	.FUNCT	ZPROB,BASE
	RANDOM	100
	GRTR?	BASE,STACK /TRUE
	RFALSE	


	.FUNCT	PICK-ONE,FROB
	GET	FROB,0
	RANDOM	STACK
	GET	FROB,STACK
	RSTACK	


	.FUNCT	SPLIT-SCREEN?
	GETB	0,1
	BAND	STACK,32
	ZERO?	STACK /FALSE
	RTRUE	

	.ENDI
