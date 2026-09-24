# PIC18F4550 en GitHub Codespaces
 
Entorno configurado con:
 
- MPLAB XC8 v4.00
- Device Family Pack PIC18Fxxxx_DFP v1.8.178
- PIC18F4550
 
Compilar:
 
xc8-cc \
-mcpu=pic18f4550 \
-mdfp=$HOME/.mchp_packs/PIC18Fxxxx_DFP/xc8 \
src/main.c
 
Archivos generados:
 
- main.hex
- main.elf
