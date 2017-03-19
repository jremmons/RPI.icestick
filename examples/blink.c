#include <stdio.h>
#include <wiringPi.h>

int main (void)
{
  wiringPiSetup () ;
  pinMode (12, OUTPUT) ;
  pinMode (14, OUTPUT) ;
  for (;;)
    {
      printf("writing 1\n");
      digitalWrite (12,  HIGH) ; delay (1) ;
      digitalWrite (14, HIGH) ; delay(1);
      digitalWrite (14, LOW) ; delay (20) ;

      printf("writing 0\n");
      digitalWrite (12,  LOW) ; delay (1) ;
      digitalWrite (14, HIGH) ; delay(1);
      digitalWrite (14, LOW) ; delay (20) ;

    }
  return 0;
}

