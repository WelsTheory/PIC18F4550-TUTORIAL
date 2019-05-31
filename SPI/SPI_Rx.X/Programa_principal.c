/*
 * File:   Programa_principal.c
 * Author: Wels
 *
 * Created on 30 de mayo de 2019, 11:51 PM
 */


#include <xc.h>
#include "Configuracion.h"
#include "SPI_libreria.h"

#define LED LATD

void main(void) {
    char dato;
    SPI_Init_Slave(SPI_Slave_R5, MODO_1);
    __delay_ms(100);
    TRISD = 0;
    LED = 0;
    while(1){
        dato = SPI_Rx();
        if ( dato == 0x01){
            LED = 15;
        }
        else if( dato == 0x06){
            LED = 5;
        }
        else if( dato == 0xff){
            LED = 0;
        }
    }
}
