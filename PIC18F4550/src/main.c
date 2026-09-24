#include <xc.h>
 
#pragma config FOSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF
#pragma config PBADEN = OFF
 
#define _XTAL_FREQ 8000000
 
void main(void)
{
TRISBbits.TRISB0 = 0;
 
while(1)
{
LATBbits.LATB0 = 1;
__delay_ms(500);
 
LATBbits.LATB0 = 0;
__delay_ms(500);
}
}
