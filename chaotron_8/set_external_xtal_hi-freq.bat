cd firmware 

avrdude -c USBasp -p atmega8 -U lfuse:w:0xef:m -U hfuse:w:0xd9:m

sleep 15