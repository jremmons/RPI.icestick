import RPI_icestick as ri

spi_iface = ri.SPI()
print ord(spi_iface.sendrecv_byte(b'\x07'))
