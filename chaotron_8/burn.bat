avrdude -c USBasp -p atmega8 -U lfuse:w:0xef:m -U hfuse:w:0xd9:m -U flash:w:/Users/mac/Documents/AVR/chaotron_8/firmware/main.hex:i

sleep 15
