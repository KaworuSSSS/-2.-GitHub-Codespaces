subtitle "Microchip MPLAB XC8 C Compiler v4.00 build 20260614213421 Og1 "

pagewidth 120
	processor	18F4550
include "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/18f4550.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
skiprom24 macro arg1
	btfsc arg1,7
endm
	global	__ramtop
	global	__accesstop
# 38 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 58 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 135 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 209 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 235 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UFRM equ 0F66h ;# 
# 242 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UFRML equ 0F66h ;# 
# 320 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 360 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UIR equ 0F68h ;# 
# 416 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UIE equ 0F69h ;# 
# 472 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 523 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 574 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 634 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 685 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 749 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 828 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 936 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1044 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1152 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1260 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1368 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1476 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1584 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1692 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1768 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1844 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1920 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 1996 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2072 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2148 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2224 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2300 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2439 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2549 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2691 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PORTD equ 0F83h ;# 
# 2812 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PORTE equ 0F84h ;# 
# 2959 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
LATA equ 0F89h ;# 
# 3059 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3171 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3249 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3361 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3413 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3418 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
DDRA equ 0F92h ;# 
# 3611 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TRISB equ 0F93h ;# 
# 3616 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
DDRB equ 0F93h ;# 
# 3833 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TRISC equ 0F94h ;# 
# 3838 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
DDRC equ 0F94h ;# 
# 3987 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TRISD equ 0F95h ;# 
# 3992 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4209 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4214 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4311 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4370 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4454 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4538 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4622 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4693 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4764 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4835 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4901 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4908 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4915 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4922 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4927 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5132 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5137 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5388 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TXREG equ 0FADh ;# 
# 5393 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5400 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5405 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5412 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5417 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5424 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5431 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5552 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5559 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5566 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5573 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5663 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5748 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5753 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5910 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5915 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6048 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6053 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6228 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6292 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6299 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6306 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6313 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6318 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6475 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6482 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6489 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6496 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6567 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6652 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6771 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6778 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6785 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6792 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6854 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6924 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7172 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7179 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7186 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7284 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7289 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7394 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7401 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7504 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7511 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7518 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7525 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
RCON equ 0FD0h ;# 
# 7674 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7702 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7707 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7972 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8055 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8125 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8132 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8139 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8146 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8217 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8224 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8231 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8238 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8245 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8252 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8259 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8266 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8273 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8280 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8287 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8294 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8301 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8308 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8315 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8322 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8329 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8336 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8343 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8350 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8357 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8364 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8371 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8378 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8385 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8392 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8399 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8491 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8568 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8685 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PROD equ 0FF3h ;# 
# 8692 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8699 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8706 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8715 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8722 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8729 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8736 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8745 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8752 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PC equ 0FF9h ;# 
# 8759 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PCL equ 0FF9h ;# 
# 8766 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8773 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8780 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8856 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TOS equ 0FFDh ;# 
# 8863 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8870 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8877 "/home/codespace/.mchp_packs/PIC18Fxxxx_DFP/xc8/pic/include/proc/pic18f4550.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNROOT	_main
	global	_LATBbits
_LATBbits	set	0xF8A
	global	_TRISBbits
_TRISBbits	set	0xF93
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDT = "OFF"
	config PBADEN = "OFF"
	config LVP = "OFF"
	file	"main.s"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_main:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
	ds   2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95      2       2
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0       0
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMRAM           95      0       0      0.0%
;!BITBANK0           160      0       0      0.0%
;!BITBANK1           256      0       0      0.0%
;!BITBANK2           256      0       0      0.0%
;!BITBANK3           256      0       0      0.0%
;!BITBANK4           256      0       0      0.0%
;!BITBANK5           256      0       0      0.0%
;!BITBANK6           256      0       0      0.0%
;!BITBANK7           256      0       0      0.0%
;!BITBIGSFRh         108      0       0      0.0%
;!BITBIGSFRll         42      0       0      0.0%
;!BITBIGSFRlh          8      0       0      0.0%
;!COMRAM              95      2       2      2.1%
;!BANK0              160      0       0      0.0%
;!BANK1              256      0       0      0.0%
;!BANK2              256      0       0      0.0%
;!BANK3              256      0       0      0.0%
;!BANK4              256      0       0      0.0%
;!BANK5              256      0       0      0.0%
;!BANK6              256      0       0      0.0%
;!BANK7              256      0       0      0.0%
;!BIGRAM            2047      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0       2      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 10 in file "src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"src/main.c"
	line	10
global __ptext0
__ptext0:
psect	text0
	file	"src/main.c"
	line	10
	
_main:
;incstack = 0
	callstack 31
	line	12
	
l800:
	bcf	((c:3987))^0f00h,c,0	;volatile
	line	14
	
l11:
	line	16
	bsf	((c:3978))^0f00h,c,0	;volatile
	line	17
	
l802:
	asmopt push
asmopt off
movlw  6
movwf	(??_main+0+1)^00h,c
movlw	19
movwf	(??_main+0)^00h,c
	movlw	174
u17:
decfsz	wreg,f
	bra	u17
	decfsz	(??_main+0)^00h,c,f
	bra	u17
	decfsz	(??_main+0+1)^00h,c,f
	bra	u17
asmopt pop

	line	19
	
l804:
	bcf	((c:3978))^0f00h,c,0	;volatile
	line	20
	asmopt push
asmopt off
movlw  6
movwf	(??_main+0+1)^00h,c
movlw	19
movwf	(??_main+0)^00h,c
	movlw	174
u27:
decfsz	wreg,f
	bra	u27
	decfsz	(??_main+0)^00h,c,f
	bra	u27
	decfsz	(??_main+0+1)^00h,c,f
	bra	u27
asmopt pop

	goto	l11
	global	start
	goto	start
	callstack 0
	line	22
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	db 0	; dummy byte at the end
	global	__smallconst
__smallconst	set	__psmallconst
	global	__mediumconst
__mediumconst	set	__psmallconst
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
