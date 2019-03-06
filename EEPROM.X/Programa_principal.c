/*
 * File:   Programa_principal.c
 * Author: Wels
 *
 * Created on 4 de marzo de 2019, 07:06 AM
 */


#include <xc.h>
#include "Configuracion.h"
#include "EEPROM_Libreria.h"

void main(void) {
    TRISD = 0;
    LATD = 0;
    EEPROM_Guardar(0,'W');
    EEPROM_Guardar(1,'E');
    EEPROM_Guardar(2,'L');
    EEPROM_Guardar(3,'S');
    EEPROM_Guardar(128,'X');
    while(1){
        LATD = EEPROM_Lectura(4);
    }
}
