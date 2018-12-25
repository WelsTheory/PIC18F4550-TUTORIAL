/*
 * File:   Hola_mundo.c
 * Author: WELS
 *
 * Created on 4 de enero de 2018, 01:01 AM
 */


#include <xc.h>
#include "Configuracion.h"
#include "pic18f4550.h"

void InitPort(){
    ADCON1bits.PCFG = 0xFF;
    LATD=0;
    LATA=0;
    LATB=0;
    LATC=0;
    LATE=0;
    TRISDbits.RD0=0; //PORTD = SALIDA 0 , 1 ENTRADA
    TRISAbits.RA1=0;
    TRISBbits.RB1=0;
    TRISCbits.RC1=0;
    TRISEbits.RE1=0;
}

void main(void) {
    InitPort();
    while(1){
        PORTDbits.RD0 = 0;
        PORTAbits.RA1 = 1;
        PORTBbits.RB1 = 1;
        PORTCbits.RC1 = 1;
        PORTEbits.RE1 = 1;
        __delay_ms(100);
        PORTDbits.RD0 = 1;
        PORTAbits.RA1 = 0;
        PORTBbits.RB1 = 0;
        PORTCbits.RC1 = 0;
        PORTEbits.RE1 = 0;
        __delay_ms(100);
    }
}
