/*
 * File:   Programa_principal.c
 * Author: Wels
 *
 * Created on 21 de agosto de 2020, 06:22 PM
 */


#include <xc.h>
#include "Configuracion.h"
#include "I2C_Libreria.h"

int i;
void main(void) {
    I2C_Init();
    while(1){
        for(i = 0; i<16;i++){
            I2C_Start();
            I2C_Tx(0x40);
            I2C_Tx(i);
            I2C_Stop();
            __delay_ms(250);
        }
    }
    return;
}
