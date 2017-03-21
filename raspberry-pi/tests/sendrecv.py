import sys
import time
import RPI_icestick as ri

spi_iface = ri.SPI()

for i in range(16):
    c = chr(i)
    print ord(spi_iface.sendrecv_byte(c))
    time.sleep(0.1)

    
