/*
 * File:   Programa_principal.c
 * Author: Wels
 *
 * Created on 13 de marzo de 2019, 09:42 AM
 */


#include <xc.h>
#include "EEPROM_libreria.h"
#include "Configuracion.h"

int sus = 0xAAFF;
int cribete;

long like = 0xFFAACDEE;
long asd;

float wels = 54.55;
float sad;

void main(void) {
    EEPROM_Guardar_int16(0,sus);
    cribete = EEPROM_Lectura_int16(0);
    EEPROM_Guardar_int32(8,like);
    asd = EEPROM_Lectura_int32(8);
    EEPROM_Guardar_float(15,wels);
    sad = EEPROM_Lectura_float(15);
    while(1){
    }
}