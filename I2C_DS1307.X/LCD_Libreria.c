#include <xc.h>
#include "LCD_Libreria.h"
#include "Configuracion.h"

void LCD_Init(void){
    //4bits -> RD0 RD3
    LCD_PORT = LCD_PORT & 0xf0;
    /*         RD7    RD0
     *         1111  0000
     *                 0 
     */
    LCD_TRIS &= 0xf0; //LCD_TRIS = LCD_TRIS & 0xf0;
    
    RW_TRIS = 0;
    RS_TRIS = 0;
    E_TRIS = 0;
    
    RW_PIN = 0;
    RS_PIN = 0;
    E_PIN = 0;
    
    __delay_ms(15); //Segun datasheet

    LCD_Comando(0x30);
    __delay_ms(5);
    LCD_Comando(0x30);
    __delay_us(100);
    LCD_Comando(0x32);
    __delay_us(100);
    
    //4 bits configuracion:
    __delay_us(100);
    LCD_Comando(0x28);      //Lineas y caracteres
    __delay_us(100);
    LCD_Comando(0x08);      //Display cursor y parpadero: apagado
    __delay_us(100);
    LCD_Comando(0x0f);      //Display cursor y parpadero: enciende
    __delay_us(100);
    LCD_Comando(0x01);      //Limpiar LCD
    __delay_us(100);
    LCD_Comando(0x04);
    __delay_us(100);
    
    __delay_us(100);
    LCD_Comando(0x06);      //Display
    LCD_Comando(0x0C);      //Incremento y no se mueve
    return;
    
}

void LCD_Comando(unsigned char cmd){
    //30 = 0011 0000 
    LCD_PORT &= 0xf0;
    LCD_TRIS &= 0xf0;
    
    //30 -> + significativo 3
    LCD_PORT = LCD_PORT | ((cmd>>4)&0x0f);
    /*      30= 0011 0000
     *     >>4= 0000 0011
     *     &0f= 0000 1111
     *        =  0   0011   
     */ 
    
    //Configuración
    RW_PIN = 0;     //Modo Escritura
    RS_PIN = 0;     //Modo Comando
    __delay_us(5);  //18TCY -> 20MHZ: 18*TCY = 18*(4/20MHZ) = 3.6uS
    E_PIN = 1;      //Habilita LCD
    __delay_us(5);
    E_PIN = 0;      //Deshabilita LCD
    
    //30 -> - significativo 0
    LCD_PORT &= 0xf0;
    LCD_PORT |= cmd&0x0f;
    __delay_us(5);  //18TCY -> 20MHZ: 18*TCY = 18*(4/20MHZ) = 3.6uS
    E_PIN = 1;      //Habilita LCD
    __delay_us(5);
    E_PIN = 0;      //Deshabilita LCD
    
    LCD_TRIS |= 0x0f;
    
    return;
}

void LCD_XY(int x,int y){
    if(x>0){
        LCD_Comando(0xC0+y);
    }
    else{
        LCD_Comando(0x80+y);
    }
}

void LCD_Cadena(const char *dato){
    while(*dato){
        __delay_us(100);
        LCD_Data(*dato);
        dato++;
    }
}

void LCD_Data(char data){
    __delay_us(100);
    LCD_PORT &= 0xf0;
    LCD_TRIS &= 0xf0;
    
    LCD_PORT = LCD_PORT | ((data>>4)&0x0f);
    //Configuración
    RW_PIN = 0;     //Modo Escritura
    RS_PIN = 1;     //Modo Caracter
    __delay_us(5);  //18TCY -> 20MHZ: 18*TCY = 18*(4/20MHZ) = 3.6uS
    E_PIN = 1;      //Habilita LCD
    __delay_us(5);
    E_PIN = 0;      //Deshabilita LCD
    
    LCD_PORT &= 0xf0;
    LCD_PORT |= data&0x0f;
    
    __delay_us(5);  //18TCY -> 20MHZ: 18*TCY = 18*(4/20MHZ) = 3.6uS
    E_PIN = 1;      //Habilita LCD
    __delay_us(5);
    E_PIN = 0;      //Deshabilita LCD
    
    LCD_TRIS |= 0x0f;
    
    return;
    
}
