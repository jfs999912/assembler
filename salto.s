.global main                                                                .equ PORTB, 0x05 
.equ DDRB, 0x04                       
.equ PORTD, 0x0B                      
.equ DDRD, 0x0A                       
.equ PIND, 0x09
.equ SPH, 0x3E                        
.equ SPL, 0x3D

main:	LDI     R16, 0XFF                     
	OUT     DDRB, R16  ;configura puerto B como salida
	LDI     R17, 0x08                     
	OUT     SPL, R16                      
	OUT     SPH, R17 ;se inicia SP        
	LDI     R18, 0x01                     
	OUT     PORTB, R18
        RCALL   Wait                  
Izq:    ROL     R18
        OUT     PORTB, R18 ;desplaza el Bit activo a la Izquierda
        RCALL   Wait
        BRCC    Izq ; Salta si la bandera C es igual a Ciero
Der:    ROR     R18
        OUT     PORTB, R18 ;desplaza el Bit activo a la Derecha
        RCALL   Wait
        BRCC    Der  ; Salta si la bandera C es igual a Cero
        RJMP    Izq

Wait:   LDI     R19, 2
        LDI     R20, 134
        LDI     R21, 154
L1:     DEC     R21
        BRNE    L1
        DEC     R20
        BRNE    L1
        DEC     R19
        BRNE    L1
        RET
