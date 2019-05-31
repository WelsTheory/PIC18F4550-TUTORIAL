/*
 * File:   Programa_principal.c
 * Author: Wels
 *
 * Created on 30 de mayo de 2019, 11:51 PM
 */


#include <xc.h>
#include "Configuracion.h"
#include "SPI_libreria.h"

#define SS LATAbits.LA5 

void main(void) {
    SPI_Init_Master(SPI_Clock_64, MODO_1, DATO_Mitad);
    __delay_ms(100);
    while(1){
        SS = 0;
        SPI_Tx(0x01);
        __delay_ms(500);
        SPI_Tx(0x06);
        __delay_ms(500);
        SPI_Tx(0xff);
        __delay_ms(500);
        SS = 1;
        __delay_ms(1000);
    }
}
