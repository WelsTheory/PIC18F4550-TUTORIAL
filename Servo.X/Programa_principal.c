/*
 * Temporizacion = 20ms = 4/Fosc * Prescaler * x+1 
 * 20ms = 4/20MHz * 8 * Y
 *  Y = 12500 
 * 65535 - 12500 = 53035 
 * 
 * 18ms: 0°
 * 18ms = 4/Fosc * Prescaler * x+1 
 * Y = 11250
 * 65535 - 11250 = 54285
 * 
 * 19ms: 180°
 * 19ms = 4/Fosc * Prescaler * x+1 
 * Y = 11875
 * 65535-11875 = 53660
 * 
 * 
 * 18,5ms: 90°
 * 18,5ms = 4/Fosc * Prescaler * x+1 
 * Y = 11562.5
 * 65535-11562.5 = 53972.5
 */


#include <xc.h>
#include "Configuracion.h"

void Timer0_Init(void);

void main(void) {
    TRISD = 0xf0;
    LATD = 0;
    TMR0L = 0x2B;
    TMR0H = 0xCF;
    Timer0_Init();
    while(1){
    }
}

void Timer0_Init(void){
    INTCONbits.GIE = 0;
    T0CONbits.T0CS = 0; // Temporizador
    T0CONbits.PSA = 0; // Habilitamos Pre escaler
    T0CONbits.T0PS = 0b010; //8 Pre escaler
    T0CONbits.T08BIT = 0; // 16 bits de cuenta 
    INTCONbits.TMR0IF = 0; //Flag del Timer 0 apagado
    INTCONbits.TMR0IE = 1; // Permitir el desbordamiento del Timer0
    INTCONbits.PEIE = 1; // Interrupciones de perifericos
    INTCONbits.GIE = 1;
    T0CONbits.TMR0ON = 1; // Tmr0 empieza
}

void __interrupt() Timer_INT(void){
    if(INTCONbits.TMR0IF){
        if(PORTDbits.RD4){
            LATDbits.LATD1 = 1;
            __delay_ms(2);
            LATDbits.LATD1 = 0;
            TMR0L = 0x0D;
            TMR0H = 0xD4;
            INTCONbits.TMR0IF = 0;
        }
        else{
            LATDbits.LATD1 = 1;
            __delay_ms(1);
            LATDbits.LATD1 = 0;
            TMR0L = 0x9C;
            TMR0H = 0xD1;
            INTCONbits.TMR0IF = 0;
        }
    }
}