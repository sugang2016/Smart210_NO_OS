.globl _start

_start:
	//关闭看门狗
	ldr r0, =0xE2700000
	mov r1, #0
	str r1, [r0]

	//设置栈，以便调用C函数
	ldr sp, =0xD0037D80

	//调用C函数
	bl led_loop


halt:
	b halt

	
	
























