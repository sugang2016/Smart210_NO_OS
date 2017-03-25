.globl _start

_start:
	ldr r0, =0xE0200280		//GPJ2CON地址
	ldr r1, =0x00001111		//GPJ2CON 0~3配置为输出
	str r1, [r0]

	mov r2, #0x1000


led_blink:
	ldr r0, =0xE0200284   //GPJ2DAT地址
	mov r1, #0
	str r1, [r0]

	bl delay

	ldr r0, =0xE0200284   //GPJ2DAT地址
	mov r1, #0xf
	str r1, [r0]

	bl delay

	sub r2, r2,#1
	cmp r2, #0
	bne led_blink

halt:
	b halt

delay:
	mov r1, #0x100000

delay_loop:
	cmp r1, #0
	sub r1, r1,#1
	bne delay_loop
	mov pc, lr
	
	
























