/*

 * Tutorial 8 PIC18F4550 - PWM 2

 * Descripción:     PWM con el microcontrolador PIC18F4550  

 * Autor:           Wels (@welstheory) 
 
 * Copyright: 		Wels Theory 2018

 * Fecha			15 de Mayo del 2018
  
 * Facebook:        https://www.facebook.com/welstheory
 
 * Youtube:         https://www.youtube.com/wels_theory
 
 * Instagram:       https://www.instagram.com/wels_theory/  
 
 * Twitter:         https://www.twitter.com/welstheory 

 */

//PWM periodo = (PR2 + 1)*4*Tosc*Prescaler
// 1/8KHz = (PR2 + 1)*4*(1/20MHZ)*16
// PR2 + 1 = 39.06
// PR2 = 38.06 = 38 -> 26 hex

//PWM Duty Cycle = (CCPRXL:CCPXCON<5:4>) ? TOSC ? (TMR2 Prescale Value)
//CCPRXL = PWM / Tosc * Prescaler 
// = (1/8KHz)/(1/20MHz)*16 = 156.25 = 156

// 156 -> 100% 
//  x  -> 80%   : X =124.8 = 124  0001 1111 00


#include <xc.h>
#include "Configuracion.h"

int duty_cicle;

void main(){
    PORTDbits.RD0 = 1;      //RD0 - RD1 = Entradas
    PORTDbits.RD1 = 1; 
    PR2 = 0x26;
    CCPR1L = 1;
    TRISCbits.RC1 = 0; //Salida
    TRISCbits.RC2 = 0;
    T2CON = 0x03;   // Prescaler 16 Timer 2 OFF
    CCP1CON = 0x0C;
    TMR2 = 0;
    T2CONbits.TMR2ON = 1; //Timer 2 ON
    while(1){
//        for(duty_cicle= 1; duty_cicle<PR2; duty_cicle++){
//            CCPR1L = duty_cicle;
//            __delay_ms(20);
//        }
//        __delay_ms(500);
//        for(duty_cicle= PR2; duty_cicle>1; duty_cicle--){
//            CCPR1L = duty_cicle;
//            __delay_ms(20);
//        }
//        __delay_ms(500);
        if(PORTDbits.RD0 == 0){
            duty_cicle = duty_cicle + 1;
            if (duty_cicle > PR2){
                duty_cicle = PR2 - 1;
            }
            CCPR1L = duty_cicle;
        }
        if(PORTDbits.RD1 == 0){
            duty_cicle = duty_cicle - 1;
            if (duty_cicle < 1){
                duty_cicle = 1;
            }
            CCPR1L = duty_cicle;
        }
        __delay_ms(50);
    }
}