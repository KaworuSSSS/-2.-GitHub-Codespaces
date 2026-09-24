#include <xc.h>
 
#pragma config FOSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF
#pragma config PBADEN = OFF
 
void main(void)
{
TRISBbits.TRISB0 = 0;
 
while(1)
{
LATBbits.LATB0 = 1;
 
for(unsigned long i=0;i<50000;i++);
 
LATBbits.LATB0 = 0;
 
for(unsigned long i=0;i<50000;i++);
}
}
