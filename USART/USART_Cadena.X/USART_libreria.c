/*

 * Tutorial 12 PIC18F4550 - USART Librería
 * 
 * Descripción:     Configurar el USART en modo Tx y Rx 

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

void USART_Init(long BAUD){
    //Configuración de los pines
    TRISCbits.RC6 = 0;      //RC6 = Tx -> Salida
    TRISCbits.RC7 = 1;      //RC7 = Rx -> Entrad
    
    //Baudios
    SPBRG = (unsigned char)(((_XTAL_FREQ/BAUD)/64)-1);
    
    //Configuración 
    TXSTAbits.BRGH = 0;     //Low Speed
    TXSTAbits.SYNC = 0;     //Asincrono
    RCSTAbits.SPEN = 1;     //Habilitar Tx y Rx
    
    //Transmisión
    TXSTAbits.TX9 = 0;      //8 bits
    TXSTAbits.TXEN = 1;     //Activamos transmisión
    
    //Recepción
    RCSTAbits.RC9 = 0;      //8 bits
    RCSTAbits.CREN = 1;     //Activamos recepción
}

void USART_Tx(char data){
    while(TXSTAbits.TRMT == 0);
    TXREG = data;
}

char USART_Rx(){
    return RCREG; 
}


void USART_Cadena(char *str){
    while(*str != '\0'){
        USART_Tx(*str);
        str++;
    }
}