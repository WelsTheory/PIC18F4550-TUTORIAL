/*

 * Tutorial PIC18F4550 - Interrupción Externa
 * 
 * Descripción:     Configurar la interrupción externa y aumentar un contador

 * Autor:           Wels (@welstheory) 
 
 * Copyright: 		Wels Theory 2018

 * Fecha            08 de Octubre del 2018
  
 * Facebook:        https://www.facebook.com/welstheory
 
 * Youtube:         https://www.youtube.com/wels_theory
 
 * Instagram:       https://www.instagram.com/wels.theory/  
 
 * Twitter:         https://www.twitter.com/welstheory 

 */

#include <xc.h>
#include "Configuracion.h"
int cont;
void Int_Ext(void);

void main(void){
    Int_Ext();
    TRISD = 0;  //
    while(1){
        LATD = cont;
    }
    
}

void Int_Ext(void){
    TRISBbits.RB0 = 1;
    INTCONbits.INT0IE = 1; // Habilitar INT0 
    INTCONbits.INT0IF = 0; //FLag 0
    INTCON2bits.INTEDG0 = 0; //Flanco descendete
    INTCONbits.GIE = 1;
}

void __interrupt() INT_isr(void){
    cont++; // cont = cont + 1
    INTCONbits.INT0IF = 0;
}