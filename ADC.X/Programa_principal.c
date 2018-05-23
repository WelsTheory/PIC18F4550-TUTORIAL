/*

 * Tutorial 9 PIC18F4550 - ADC
 * 
 * Descripción:     Configurar el ADC del microcontrolador PIC18F4550    

 * Autor:           Wels (@welstheory) 
 
 * Copyright: 		Wels Theory 2018

 * Fecha			22 de Mayo del 2018
  
 * Facebook:        https://www.facebook.com/welstheory
 
 * Youtube:         https://www.youtube.com/wels_theory
 
 * Instagram:       https://www.instagram.com/wels_theory/  
 
 * Twitter:         https://www.twitter.com/welstheory 

 */

#include <xc.h>
#include "Configuracion.h"

// 10 bit -> 2^10= 1024, 12  bit 2^12, 8 bits 2^8

//Voltaje de referencia 5v -> adc = 5/ 1024 = 4.8mV 1bit -> 3.3V 

//20Mhz -> 1/20MHz = 50ns : Tosc
// TAD > 0.7us
// 8Tosc -> 8*50ns =  0.4us 
// 16Tosc -> 16*50ns = 0.8us : TAD 
// 2.45us < xTAD
//TACQ = 6*TAD = 6*0.8us = 4.8us > 2.45us 

//

void main(){
    TRISA = 1; // PORTA -> Entrada
    TRISD = 0; // portd -> SALIDA
    ADCON1bits.PCFG = 0; // Todos los puertos Analogicos
    ADCON1bits.VCFG = 0;
    ADCON0 = 0;
    ADCON2bits.ACQT = 3;
    ADCON2bits.ADCS = 5;
    ADCON2bits.ADFM = 1;
    ADCON0bits.ADON = 1;
    while(1){
        ADCON0bits.GO_DONE = 1;
        while(ADCON0bits.GO_DONE == 1);
        PORTD = ADRESL;
    }

}















