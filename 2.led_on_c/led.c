#define GPJ2CON (*(volatile unsigned long *)0xe0200280)
#define GPJ2DAT (*(volatile unsigned long *)0xe0200284)

#define LED1_ON 	GPJ2DAT=0xE
#define LED2_ON 	GPJ2DAT=0xD
#define LED3_ON 	GPJ2DAT=0xB
#define LED4_ON 	GPJ2DAT=0x7

#define LED_ALL_ON	 GPJ2DAT=(0<<0)|(0<<1)|(0<<2)|(0<<3)
#define LED_ALL_OFF	 GPJ2DAT=(1<<0)|(1<<1)|(1<<2)|(1<<3)



void delay(int num)
{
	while(num>0)
		num--;
}
void led_blink()
{
	GPJ2CON=0x00001111;
	while(1)
	{
		GPJ2DAT=0xf;
		delay(1000000);
		GPJ2DAT=0x0;
		delay(1000000);	
	}
}

void led_loop()
{
	GPJ2CON=0x00001111;
	while(1)
	{
	LED_ALL_OFF;
	delay(1000000);
	LED1_ON;
	delay(1000000);
	LED_ALL_OFF;


	delay(1000000);
	LED2_ON;
	delay(1000000);
	LED_ALL_OFF;

	delay(1000000);
	LED3_ON;
	delay(1000000);
	LED_ALL_OFF;


	delay(1000000);
	LED4_ON;
	delay(1000000);
	LED_ALL_OFF;
	delay(1000000);
	LED_ALL_ON;	
	delay(1000000);
	
	}
}


