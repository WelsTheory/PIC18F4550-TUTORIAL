#include <xc.h>

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
