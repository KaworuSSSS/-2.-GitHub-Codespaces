# -2.-GitHub-Codespaces
Manual Completo: Configurar XC8 v4.00 + PIC18F4550 en GitHub Codespaces

Este manual documenta exactamente el proceso que seguimos para lograr compilar un programa para el PIC18F4550 usando XC8 v4.00 dentro de GitHub Codespaces y generar correctamente un archivo .hex.

1. Crear el Codespace
Crear un repositorio en GitHub.
Abrir el repositorio.
Seleccionar:
Plain Text
Code → Codespaces → Create Codespace
Mostrar más líneas
Esperar a que VS Code online termine de cargar.

Verificar que tenemos terminal:

Shell
pwd
Mostrar más líneas
2. Descargar XC8

Desde la página de Microchip descargar:

Plain Text
MPLAB XC8 Compiler v4.00 Linux x64
Mostrar más líneas

Subir el instalador al Codespace.

Comprobar:

Shell
ls
Mostrar más líneas

Debe aparecer algo similar a:

Plain Text
xc8-v4.00-full-install-linux-x64-installer.run
Mostrar más líneas
3. Dar permisos al instalador
Shell
chmod +x xc8-v4.00-full-install-linux-x64-installer.run
Mostrar más líneas

Verificar:

Shell
ls -l
Mostrar más líneas

Debe mostrar:

Plain Text
-rwxr-xr-x
Mostrar más líneas
4. Instalar XC8

Ejecutar:

Shell
sudo ./xc8-v4.00-full-install-linux-x64-installer.run
Mostrar más líneas

Durante la instalación:

Licencia

Aceptar:

Plain Text
y
Mostrar más líneas
Directorio

Aceptar:

Plain Text
/opt/microchip/xc8/v4.00
Mostrar más líneas

Presionando Enter.

Apply settings to all users
Plain Text
y
Mostrar más líneas
Add xc8 to PATH
Plain Text
y
Mostrar más líneas
Instalar

Presionar Enter.

5. Verificar instalación

Cerrar y abrir terminal o ejecutar:

Shell
source ~/.bashrc
Mostrar más líneas

Comprobar:

Shell
xc8-cc --version
Mostrar más líneas

Debe responder:

Plain Text
Microchip MPLAB XC8 C Compiler V4.00
Mostrar más líneas
6. Verificar dispositivos soportados
Shell
xc8-cc -mprint-devices | grep pic18f4550
Mostrar más líneas

Resultado esperado:

Plain Text
pic18f4550
pic18lf4550
Mostrar más líneas
7. Instalar extensión MPLAB

Abrir:

Plain Text
Ctrl + Shift + X
Mostrar más líneas

Buscar:

Plain Text
Microchip MPLAB Extensions
Mostrar más líneas

Instalar la extensión oficial.

Esto crea:

Shell
~/.mchp_packs
Mostrar más líneas

Verificar:

Shell
find ~ -type d | grep mchp
Mostrar más líneas

Resultado:

Plain Text
/home/codespace/.mchp_packs
Mostrar más líneas
8. Descargar índice de packs

Verificar:

Shell
ls ~/.mchp_packs
Mostrar más líneas

Debe existir:

Plain Text
index.idx
Mostrar más líneas
9. Encontrar el DFP del PIC18F4550

Buscar:

Shell
grep -i "PIC18Fxxxx_DFP" ~/.mchp_packs/index.idx
Mostrar más líneas

Resultado:

Plain Text
Microchip.PIC18Fxxxx_DFP.pdsc
version="1.8.178"
Mostrar más líneas
10. Descargar el DFP

Entrar:

Shell
cd ~/.mchp_packs
Mostrar más líneas

Descargar:

Shell
wget https://packs.download.microchip.com/Microchip.PIC18Fxxxx_DFP.1.8.178.atpack
Mostrar más líneas
11. Extraer el DFP

Crear carpeta:

Shell
mkdir -p ~/.mchp_packs/PIC18Fxxxx_DFP
Mostrar más líneas

Extraer:

Shell
unzip Microchip.PIC18Fxxxx_DFP.1.8.178.atpack -d ~/.mchp_packs/PIC18Fxxxx_DFP
Mostrar más líneas

Verificar:

Shell
find ~/.mchp_packs/PIC18Fxxxx_DFP | head
Mostrar más líneas
12. Crear proyecto

Ir al proyecto:

Shell
cd /workspaces/-2.-GitHub-Codespaces/PIC18F4550
Mostrar más líneas

Crear estructura:

Shell
mkdir -p src
Mostrar más líneas

Crear archivo:

Shell
cat > src/main.c << 'EOF'
#include <xc.h>
 
void main(void)
{
while(1)
{
}
}
EOF
Mostrar más líneas
13. Compilar

Comando definitivo:

Shell
xc8-cc \
-mcpu=pic18f4550 \
-mdfp=$HOME/.mchp_packs/PIC18Fxxxx_DFP/xc8 \
src/main.c
Mostrar más líneas
14. Resultado esperado

Salida:

Plain Text
18F4550 Memory Summary:
Program space used 18h
Mostrar más líneas
15. Buscar archivos generados
Shell
find . -name "*.hex" -o -name "*.elf"
Mostrar más líneas

Resultado:

Plain Text
./main.hex
./main.elf
Mostrar más líneas
16. Verificar HEX
Shell
head main.hex
Mostrar más líneas

Debe comenzar con algo parecido a:

Plain Text
:020000040000FA
Mostrar más líneas
17. Configurar variable permanente

Para no escribir siempre la ruta DFP:

Shell
echo 'export PIC18_DFP=$HOME/.mchp_packs/PIC18Fxxxx_DFP/xc8' >> ~/.bashrc
Mostrar más líneas

Aplicar:

Shell
source ~/.bashrc
Mostrar más líneas

Ahora puedes compilar con:

Shell
xc8-cc \
-mcpu=pic18f4550 \
-mdfp=$PIC18_DFP \
src/main.c
Mostrar más líneas
18. Programa LED parpadeante para PIC18F4550
C
#include <xc.h>
 
#pragma config FOSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF
#pragma config PBADEN = OFF
 
void delay(void)
{
for(unsigned long i=0;i<50000;i++);
}
 
void main(void)
{
TRISBbits.TRISB0 = 0;
 
while(1)
{
LATBbits.LATB0 = 1;
delay();
 
LATBbits.LATB0 = 0;
delay();
}
}
Mostrar más líneas

Compilar:

Shell
xc8-cc \
-mcpu=pic18f4550 \
-mdfp=$PIC18_DFP \
src/main.c
Mostrar más líneas
Estado final conseguido
Plain Text
✅ GitHub Codespaces
✅ XC8 v4.00
✅ MPLAB Extension
✅ PIC18Fxxxx_DFP
✅ PIC18F4550
✅ main.hex
✅ main.elf
✅ Compilación funcional desde navegador
Mostrar más líneas

Con este procedimiento puedes recrear el entorno completo desde cero y volver a generar archivos .hex para el PIC18F4550 cuando lo necesites. 🚀

Proporcione sus comentarios sobre BizChat
