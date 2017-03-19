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
  /* data[0] = 'j'; */
  /* data[1] = 'o'; */
  /* data[2] = 'h'; */
  /* data[3] = 'n'; */
  /* data[4] = '\0'; */
  data[0] = 0xff;
  data[1] = 0x0;
  printf("about to send the buffer: %s\n", (char*) data);

  int i;
  for( i = 0; i < 100000; i++ ){

    //system("gpio edge 0 falling"
    data[0] = 0x80;
    //fprintf(stderr, "sending %u\n", data[0]);
    if( wiringPiSPIDataRW(0, data, 1) == -1 ){
      fprintf(stderr, "ERROR: data transfer error\n");
      return -1;    
    }
    //printf("received %u\n", data[0]);
    //delay(1000);
      
    data[0] = 1;
    //fprintf(stderr, "sending %u\n", data[0]);
    if( wiringPiSPIDataRW(0, data, 1) == -1 ){
      fprintf(stderr, "ERROR: data transfer error\n");
      return -1;    
    }
    //printf("received %u\n", data[0]);
    //delay(1000);
    
  }
  
  printf("received the buffer: %s\n", (char*) data);
  
  return 0;
}

