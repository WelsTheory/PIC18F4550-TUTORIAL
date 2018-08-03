/*

 * Tutorial 13 PIC18F4550 - APP LED
 * 
 * Descripción:     Encender y apagar un led a través del Bluetooth

 * Autor:           Wels (@welstheory) 
 
 * Copyright: 		Wels Theory 2018

 * Fecha			1 de Agosto del 2018
  
 * Facebook:        https://www.facebook.com/welstheory
 
 * Youtube:         https://www.youtube.com/wels_theory
 
 * Instagram:       https://www.instagram.com/wels.theory/  
 
 * Twitter:         https://www.twitter.com/welstheory 

 */

#include <xc.h>
#include "Configuracion.h"
#include "USART_libreria.h"

void main(void) {
    USART_Init(9600);
    TRISDbits.RD7 = 0; //Salida RD7
    while(1){
        char valor = USART_Rx();
        if(valor == '1'){
            LATDbits.LD7 = 1;
        }
        else if(valor == '2'){
            LATDbits.LD7 = 0;
        }
    }
}
