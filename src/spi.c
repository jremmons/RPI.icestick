#include <stdio.h>
#include <wiringPiSPI.h>
#include <wiringPi.h>

int main (void)
{
  wiringPiSetup ();

  int fd;
  if( (fd = wiringPiSPISetup(0, 500000)) == -1 ){
    fprintf(stderr, "ERROR: could not setup spi interface\n");
    return -1;
  }
  printf("initialized the driver: fd=%i\n", fd);

  unsigned char data[5];
  data[0] = 'j';
  data[1] = 'o';
  data[2] = 'h';
  data[3] = 'n';
  data[4] = '\0';
  printf("about to send the buffer: %s\n", (char*) data);
  
  if( wiringPiSPIDataRW(0, data, 5) == -1 ){
    fprintf(stderr, "ERROR: data transfer error\n");
    return -1;    
  }
  printf("received the buffer: %s\n", (char*) data);
  
  return 0;
}

