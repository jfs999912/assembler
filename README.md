Aqui ire subiendo codigos creados y compilados en un celular Android 
con la terminal de termux.
Agrego los pasos para configurar tu celular Android
para poder escribir código en ensamblador y compilarlo
en ek mismo celular.

1. Instale en su terminal termux proot-distro
   
   $pgk install proot-distro
3.  instale una distribución de Linux por ejemplo debian

$proot-distro install debian
5. Inicia sesión en el entorno debian
   
   $proot-distro login debian

6. instale la cadena de herramientas AVR
   
   $apt update
   
   $apt install gcc-avr binutils-avr avr-libc avrdude gdb-avr
   

después de seguir estos pasos podrá utilizar 
comandos avr-gcc y comandos avrdude

para compilar:

$avr-gcc -mmcu=atmega328p -DF_CPU=8000000UL 
-x assembler-with-cpp light.s -o light.elf

el archico con tu codigo TUARCHIVO.s
en el ejemplo es light.s
