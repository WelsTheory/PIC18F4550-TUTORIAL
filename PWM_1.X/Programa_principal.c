/*

 * Tutorial 7 PIC18F4550 - PWM

 * Descripción:     PWM con el microcontrolador PIC18F4550  

 * Autor:           Wels (@welstheory) 
 
 * Copyright: 		Wels Theory 2018

 * Fecha			04 de Mayo del 2018
  
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

void main(){
    PR2 = 0x26;
    CCPR1L = 0x1F;
    TRISCbits.RC1 = 0; //Salida
    TRISCbits.RC2 = 0;
    T2CON = 0x03;   // Prescaler 16 Timer 2 OFF
    CCP1CON = 0x0C;
    TMR2 = 0;
    T2CONbits.TMR2ON = 1; //Timer 2 ON
    while(1){
    }
}