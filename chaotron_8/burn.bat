avrdude -c USBasp -p atmega8 -U lfuse:w:0xef:m -U hfuse:w:0xd9:m -U flash:w:firmware/main.hex:i

sleep 15
