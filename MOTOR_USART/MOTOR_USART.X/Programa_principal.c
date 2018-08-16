/*

 * Tutorial 14 PIC18F4550 - MOTOR DC y USART
 * 
 * Descripción:     Manejaremos un motor DC a través del puerto USART usando el USB Serial TTL

 * Autor:           Wels (@welstheory) 
 
 * Copyright: 		Wels Theory 2018

 * Fecha			16 de Julio del 2018
  
 * Facebook:        https://www.facebook.com/welstheory
 
 * Youtube:         https://www.youtube.com/wels_theory
 
 * Instagram:       https://www.instagram.com/wels_theory/  
 
 * Twitter:         https://www.twitter.com/welstheory 

 */

#include <xc.h>
#include "Configuracion.h"
#include "USART_libreria.h"

char datos[7] ={'A','P','A','G','A','D','O'};

void main(void) {
    USART_Init(9600);
    TRISDbits.RD0 = 0;    //M1
    TRISDbits.RD1 = 0;    
    TRISDbits.RD2 = 0;    //M2
    TRISDbits.RD3 = 0;
    TRISDbits.RD7 = 0;    //Enable
    while(1){
        char data = USART_Rx();
        if(data == '1'){
            LATDbits.LD7 = 1; //Activamos el enable
            while(1){
                char dato = USART_Rx();
                if(dato == 'w'){
                    LATDbits.LD0 = 1;
                    LATDbits.LD1 = 0;
                    LATDbits.LD2 = 0;
                    LATDbits.LD3 = 0;
                }
                else if(dato == 'e'){
                    LATDbits.LD0 = 0;
                    LATDbits.LD1 = 0;
                    LATDbits.LD2 = 1;
                    LATDbits.LD3 = 0;
                }
                else if(dato == 'l'){
                    LATDbits.LD0 = 1;
                    LATDbits.LD1 = 0;
                    LATDbits.LD2 = 1;
                    LATDbits.LD3 = 0;
                }
                else if(dato == 's'){
                    LATDbits.LD0 = 0;
                    LATDbits.LD1 = 0;
                    LATDbits.LD2 = 0;
                    LATDbits.LD3 = 0;
                    for(int i=0;i<8;i++){
                        USART_Tx(datos[i]);
                        __delay_ms(100);
                    }
                    LATDbits.LD7 = 0;
                    break;
                }
            }
        }
        else{
            LATDbits.LD7 = 0; //Deshabilitado el enable
        }
    }
}
