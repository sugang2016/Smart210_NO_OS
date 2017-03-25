led.bin: start.o led.o 
	arm-linux-ld -Ttext 0xD0020010 -o led.elf $^
	arm-linux-objcopy -O binary led.elf led.bin
	arm-linux-objdump -D led.elf > led_elf.dis
	gcc mkv210_image.c -o mksmart210
	./mksmart210 led.bin smart210.bin
	
%.o : %.S
	arm-linux-gcc -g -c $^

%.o : %.c
	arm-linux-gcc -g -c $^ 

.PHONY:clean
clean:
	rm -rf *.o *.elf *.bin *.dis mksmart210


