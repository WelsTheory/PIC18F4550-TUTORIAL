/*
 * File:   Programa_principal.c
 * Author: Wels
 *
 * Created on 11 de abril de 2019, 10:43 PM
 */


#include <xc.h>
#include "Configuracion.h"

int w;

void main(void) {
    ADCON1bits.PCFG = 0xf;
    TRISD = 0;
    TRISBbits.RB0 = 1;
    OSCCONbits.IDLEN = 0; // Modo Sleep
    INTCON2bits.INTEDG0 = 0; //Flanco de bajada
    INTCONbits.INT0IE = 1;
    INTCONbits.INT0IF = 0;
    INTCONbits.GIE = 1;
    LATDbits.LATD0 = 0;
    w = 1;
    while(1){
        LATDbits.LATD0 = ~LATDbits.LATD0;
        __delay_ms(100);
        while(w == 1){
            SLEEP();
        }
    }
}

void __interrupt() Sleep_int(void){
    w = ~w;
    INTCONbits.INT0IF = 0;
}
