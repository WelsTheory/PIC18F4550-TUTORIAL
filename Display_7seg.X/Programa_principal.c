/*

 * Tutorial 3 PIC18F4550 - DISPLAY 7 SEGMENTOS

 * Descripción: Como hacer una cuenta ascendente, cuenta descendente 
   y mostrar sólo un dígito, usando 3 pulsadores y un display de 7 segmentos. 

 * Autor:           Wels (@soywels) 
 
 * Copyright: 		Wels Theory 2018

 * Fecha			09 de Febrero del 2018
  
 * Facebook:        https://www.facebook.com/welstheory
 
 * Youtube:         https://www.youtube.com/wels_theory
 
 * Instagram:       https://www.instagram.com/wels_theory/  

 */


#include <xc.h>
#include "Configuracion.h"
int i;
int display[10]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x67};
void initPort(void){
    ADCON1bits.PCFG = 0xFF; // Puertos en Digital
    LATA = 0;
    LATD = 0;
    TRISA = 0; //Puerto -> Salida
    TRISD = 0; //Puerto -> Salida
    TRISBbits.RB0 = 1;
    TRISBbits.RB1 = 1;
    TRISBbits.RB4 = 1;
    INTCON2bits.RBPU = 0;
}

void main(void) {
    initPort();
    while(1){
        if (PORTBbits.RB4 == 0){
            LATAbits.LA0 = 1;
            LATAbits.LA1 = 0;
            for(i=0;i<10;i++){
                PORTD = display[i];
                __delay_ms(500);
            }
            PORTD = 0;
            LATAbits.LA0 = 0;
            LATAbits.LA1 = 0;
        }
        else if(PORTBbits.RB0 == 0){
            LATAbits.LA0 = 0;
            LATAbits.LA1 = 1;
            for(i=9;i>=0;i--){
                PORTD = display[i];
                __delay_ms(500);
            }
            PORTD = 0;
            LATAbits.LA0 = 0;
            LATAbits.LA1 = 0;
        }
        else if(PORTBbits.RB1 == 0){
            LATAbits.LA0 = 1;
            LATAbits.LA1 = 1;
            PORTD = display[4];
            __delay_ms(500);
            PORTD = 0;
            LATAbits.LA0 = 0;
            LATAbits.LA1 = 0;
        }
    }
}
