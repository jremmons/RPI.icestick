import sys
import RPI_icestick as r

if( len(sys.argv) != 2):
    print("usage: python lights.py <NUM>")

spi = r.SPI_interface()    
spi.send_byte( chr(int(sys.argv[1])))
spi.send_byte( chr(int(sys.argv[1])))

spi.recv_byte()
print ord(spi.recv_byte())
