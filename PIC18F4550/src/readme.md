# Proyecto 1 - Parpadeo de LED en RB0 (PIC18F4550)

## Objetivo

Hacer que un LED conectado al pin **RB0** del PIC18F4550 parpadee cada 500 ms.

---

## Materiales

- PIC18F4550
- LED
- Resistencia de 220 Ω o 330 Ω
- PICkit (para programar)
- XC8 v4.00
- GitHub Codespaces

---

## Conexión del LED

```text
PIC18F4550

RB0 ----[220Ω]---->|---- GND
```

Donde:

- RB0 = pin de salida
- Resistencia = 220 Ω o 330 Ω
- LED = cualquier color

---

## Paso 1. Ir al proyecto

```bash
cd /workspaces/-2.-GitHub-Codespaces/PIC18F4550
```

---

## Paso 2. Crear el programa

Editar el archivo:

```bash
nano src/main.c
```

Contenido:

```c
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
```

Guardar:

```text
Ctrl + O
Enter
Ctrl + X
```

---

## Explicación del código

### Configuración del microcontrolador

```c
#pragma config FOSC = HS
```

Configura un oscilador externo de alta velocidad.

```c
#pragma config WDT = OFF
```

Deshabilita el Watchdog Timer.

```c
#pragma config LVP = OFF
```

Deshabilita la programación de bajo voltaje.

```c
#pragma config PBADEN = OFF
```

Configura PORTB como puerto digital al arrancar.

---

### Frecuencia del oscilador

```c
#define _XTAL_FREQ 8000000
```

Indica que el sistema trabaja a:

```text
8 MHz
```

Esta definición es necesaria para que `__delay_ms()` funcione correctamente.

---

### Configurar RB0 como salida

```c
TRISBbits.TRISB0 = 0;
```

```text
0 = Salida
1 = Entrada
```

---

### Encender LED

```c
LATBbits.LATB0 = 1;
```

---

### Esperar 500 ms

```c
__delay_ms(500);
```

---

### Apagar LED

```c
LATBbits.LATB0 = 0;
```

---

## Paso 3. Compilar

```bash
xc8-cc \
-mcpu=pic18f4550 \
-mdfp=$HOME/.mchp_packs/PIC18Fxxxx_DFP/xc8 \
src/main.c
```

---

## Paso 4. Verificar archivos generados

```bash
ls
```

Debe aparecer:

```text
main.hex
main.elf
```

---

## Paso 5. Revisar uso de memoria

Salida esperada:

```text
18F4550 Memory Summary:
Program space used
```

Esto indica que el programa fue compilado correctamente.

---

## Paso 6. Programar el PIC

1. Abrir MPLAB IPE.
2. Seleccionar:

```text
PIC18F4550
```

3. Cargar:

```text
main.hex
```

4. Presionar:

```text
Program
```

---

## Resultado esperado

El LED conectado a RB0 debe parpadear de la siguiente manera:

```text
ENCENDIDO  0.5 s
APAGADO    0.5 s
ENCENDIDO  0.5 s
APAGADO    0.5 s
...
```

---

## Verificación adicional

Visualizar el contenido del HEX:

```bash
head main.hex
```

Debería verse algo similar a:

```text
:020000040000FA
```

Lo que confirma que el archivo está listo para ser programado.

---

## Estado del proyecto

✅ XC8 v4.00 configurado

✅ DFP PIC18Fxxxx instalado

✅ PIC18F4550 compilando correctamente

✅ Generación de `main.hex`

✅ Generación de `main.elf`

✅ Parpadeo de LED en RB0
