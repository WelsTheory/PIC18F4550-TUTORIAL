
#include <xc.h>
#include "SPI_libreria.h"


void SPI_Init_Master(char reloj, char modo, char smp){
    
    /* Pines digitales */
    ADCON1 = 0x0F;
    
    /* Configruacion de Puertos */
    TRISBbits.RB0 = 1;      //RB0 -> SDI
    TRISBbits.RB1 = 0;      //RB1 -> SCK
    TRISAbits.RA5 = 0;      //RA5 -> SS
    TRISCbits.RC7 = 0;      //RC7 -> SDO
    
    /* Reloj */
    SSPCON1bits.SSPM = reloj;
    
    /* Modo Reloj*/
    if (modo == '1'){
        SSPCON1bits.CKP = 1;
        SSPSTATbits.CKE = 1;
    }
    else if(modo == '2'){
        SSPCON1bits.CKP = 0;
        SSPSTATbits.CKE = 1;
    }
    else if(modo == '3'){
        SSPCON1bits.CKP = 1;
        SSPSTATbits.CKE = 0;
    }
    else if(modo == '4'){
        SSPCON1bits.CKP = 0;
        SSPSTATbits.CKE = 0;
    }
    
    /* Pin de lectura de datos */
    SSPSTATbits.SMP = smp;
    
    /* Habilitación de Pines */
    SSPCON1bits.SSPEN = 1;
    
}

void SPI_Init_Slave(char reloj, char modo){
    
    /* Pines digitales */
    ADCON1 = 0x0F;
    
    /* Configruacion de Puertos */
    TRISBbits.RB0 = 1;      //RB0 -> SDI
    TRISBbits.RB1 = 1;      //RB1 -> SCK
    TRISAbits.RA5 = 1;      //RA5 -> SS
    TRISCbits.RC7 = 0;      //RC7 -> SDO
    
    /* Reloj */
    SSPCON1bits.SSPM = reloj;
    
    /* Modo Reloj*/
    if (modo == '1'){
        SSPCON1bits.CKP = 1;
        SSPSTATbits.CKE = 1;
    }
    else if(modo == '2'){
        SSPCON1bits.CKP = 0;
        SSPSTATbits.CKE = 1;
    }
    else if(modo == '3'){
        SSPCON1bits.CKP = 1;
        SSPSTATbits.CKE = 0;
    }
    else if(modo == '4'){
        SSPCON1bits.CKP = 0;
        SSPSTATbits.CKE = 0;
    }
    
    /* Habilitación de Pines */
    SSPCON1bits.SSPEN = 1;
    
}

void SPI_Tx(char dato){ 
    SSPBUF = dato;
}

char SPI_Rx(){
    return SSPBUF;
}
