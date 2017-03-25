//#define CONFIG_SYS_ICACHE_OFF

.globl _start

_start:
	//�رտ��Ź�
	ldr r0, =0xE2700000
	mov r1, #0
	str r1, [r0]

	//��icache����������ٶ�
#ifdef CONFIG_SYS_ICACHE_OFF
	// clear bit 12 (I) I-cache
	bic r0,r0,#0x00001000
#else
	// set bit 12 (I) I-cache
	orr r0,r0,#0x00001000
#endif
	mcr p15,0,r0,c1,c0,0

	//����ջ���Ա����C����
	ldr sp, =0xD0037D80

	//����C����
	bl led_loop


halt:
	b halt

	
	























