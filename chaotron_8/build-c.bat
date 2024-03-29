@echo off
echo ============== compiling ===================
cd firmware 

avr-gcc -Wall -Os -mmcu=atmega8 -c main.c -o main.o
avr-gcc -Wall -Os -mmcu=atmega8 -o main.elf main.o

::avr-gcc -Wall -Os -mmcu=attiny841 -c main.c -o main.o
::avr-gcc -Wall -Os -mmcu=attiny841 -o main.elf main.o

::avr-gcc -Wall -Os -DF_CPU=8000000 -mmcu=atmega8 -c main.c -o main.o
::avr-gcc -Wall -Os -DF_CPU=8000000 -mmcu=atmega8 -o main.elf main.o

rm -f main.hex
avr-objcopy -j .text -j .data -O ihex main.elf main.hex

echo ================= done =====================
