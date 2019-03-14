#include <xc.h>
#include <stdint.h>
#include "EEPROM_libreria.h"

int i;

void EEPROM_Guardar(int dir, char data){
    EEADR = dir;
    EEDATA = data;
    EECON1bits.EEPGD = 0; //Acceder a la memoria EEPROM
    EECON1bits.CFGS = 0;  // =
    EECON1bits.WREN = 1;
    INTCONbits.GIE = 0;
    EECON2 = 0x55;
    EECON2 = 0x0AA;
    EECON1bits.WR = 1;   //Inicializa la escritura
    INTCONbits.GIE = 1;
    while(!PIR2bits.EEIF);
    PIR2bits.EEIF = 0;
    EECON1bits.WREN = 0;  //Apagando la escritura
}

unsigned char EEPROM_Lectura(int dir){
    EEADR = dir;
    EECON1bits.EEPGD = 0; //Acceder a la memoria EEPROM
    EECON1bits.CFGS = 0;  // =
    EECON1bits.RD = 1;   //Inicializa la lectura
    return EEDATA;
}


void EEPROM_Guardar_int16(int dir, int data){
    for(i=0;i<2;i++){
        EEPROM_Guardar(dir+i,*((int8_t*)(&data)+i)); 
    }
}

int EEPROM_Lectura_int16(int dir){
    int data;
    for(i=0;i<2;i++){
        *((int8_t*)(&data)+i) = EEPROM_Lectura(dir+i);
    }
    return (data);
}

void EEPROM_Guardar_int32(int dir, long data){
    for(i=0;i<4;i++){
        EEPROM_Guardar(dir+i,*((int8_t*)(&data)+i)); 
    }
}

long EEPROM_Lectura_int32(int dir){
    long data;
    for(i=0;i<4;i++){
        *((int8_t*)(&data)+i) = EEPROM_Lectura(dir+i);
    }
    return (data);
}

void EEPROM_Guardar_float(int dir, float data){
    for(i=0;i<4;i++){
        EEPROM_Guardar(dir+i,*((int8_t*)(&data)+i)); 
    }
}

float EEPROM_Lectura_float(int dir){
    float data;
    for(i=0;i<4;i++){
        *((int8_t*)(&data)+i) = EEPROM_Lectura(dir+i);
    }
    return (data);
}
