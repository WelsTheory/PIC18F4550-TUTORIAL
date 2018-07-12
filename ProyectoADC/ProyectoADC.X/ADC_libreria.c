/*

 * Tutorial 10 PIC18F4550 - ADC + LCD

 * Descripción: Libreria usada para el tutorial 10  

 * Autor:           Wels (@soywels) 
 
 * Copyright: 		Wels Theory 2018

 * Fecha			21 de Junio del 2018
  
 * Facebook:        https://www.facebook.com/welstheory
 
 * Youtube:         https://www.youtube.com/wels_theory
 
 * Instagram:       https://www.instagram.com/wels_theory/  

 */

#include <xc.h>

void ADC_init(void){
    ADCON1bits.PCFG = 0b1100; // RA0 RA1 RA2 
    ADCON1bits.VCFG = 0;
    ADCON0 = 0;
    ADCON2bits.ACQT = 3;
    ADCON2bits.ADCS = 5;
    ADCON2bits.ADFM = 1;
}

unsigned int ADC_read(unsigned char ch){
    if(ch > 13)return 0;
    ADCON0 = 0;
    ADCON0 = (ch<<2);
    ADCON0bits.ADON = 1;
    ADCON0bits.GO_DONE = 1;
    while(ADCON0bits.GO_DONE == 1);
    ADCON0bits.ADON = 0;
    return ADRES;
}

