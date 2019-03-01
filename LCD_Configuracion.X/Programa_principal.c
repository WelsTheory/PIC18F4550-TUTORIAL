/*
 * File:   Programa_principal.c
 * Author: Wels
 *
 * Created on 24 de febrero de 2019, 04:04 PM
 */


#include <xc.h>
#include "Configuracion.h"
#include "LCD_Libreria.h"

void main(void) {
    LCD_Init();
    while(1){
        LCD_XY(0,0);
        LCD_Cadena("Suscribete!");
        __delay_ms(100);
        LCD_XY(1,5);
        LCD_Cadena("=D");
        __delay_ms(100);
    }
}
