.global main
; este es el if-then -else de ASM
; va variando entre else y then al cambiar el valor de 25 a 26 segun condicion
main:
	LDI R16, 25  ; registro R16 se asigna el valor 25
	LDI R17, 25  ; registro R16 se asigna el valor 25	
loop:
	CP R16, R17  ; comnpara registros R16 y R17 afecta banderas Z, N, V, C, H
	BREQ else  ; si son iguales va a "else" Si no va a "then"					
then:	LDI R17, 25
	JMP done  ; salta a done para repetirse
else:	LDI R17, 26		
done:	JMP loop  ; se repite
