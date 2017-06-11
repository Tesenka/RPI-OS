.section .init
.global _start
_start:
/* add 4 to the GPIO controller address and write the value in r1 to it */
/* ready the 16th GPIO bit for output */
ldr r0,=0x3F200000 /*load register */
mov r1,#1 /* mov puts val into register */
lsl r1,#18 /* logical shift left */
str r1,[r0,#4] /* stores number in register to [dest reg + val] */
mov r1,#1
lsl r1,#16
str r1,[r0,#40]
loop$:
b loop$