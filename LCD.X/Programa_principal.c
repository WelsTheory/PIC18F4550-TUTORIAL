/*

 * Tutorial 4 PIC18F4550 - LCD

 * Descripción: Como mostrar caracteres en el LCD usando el PIC18F4550!  

 * Autor:           Wels (@soywels) 
 
 * Copyright: 		Wels Theory 2018

 * Fecha			16 de Febrero del 2018
  
 * Facebook:        https://www.facebook.com/welstheory
 
 * Youtube:         https://www.youtube.com/wels_theory
 
 * Instagram:       https://www.instagram.com/wels_theory/  

 */


#include <xc.h>
#include "Configuracion.h"
#include "LCD_libreria.h"

//Wels
const char wels[]={     0b00000111,
                        0b00001110,
                        0b00000101,
                        0b00001110,
                        0b00010100,
                        0b00001010,
                        0b00010001,
                        0b00000000,0
};
const char wels1[]={    0b00000111,
                        0b00001110,
                        0b00000100,
                        0b00001111,
                        0b00010100,
                        0b00001010,
                        0b00010001,
                        0b00000000,0};
//Pokeball
const char pokeball[]={ 0b00000000,
                        0b00000000,
                        0b00001110,
                        0b00010001,
                        0b00011011,
                        0b00010001,
                        0b00001110,
                        0b00000000,0};
//Pikachu
const char pikachu[]={  0b00010001,
                        0b00001110,
                        0b00001110,
                        0b00000100,
                        0b00011111,
                        0b00001110,
                        0b00011011,
                        0b00000000,0};
//Squirtle
const char squirtle[]={ 0b00000000,
                        0b00001110,
                        0b00001110,
                        0b00000100,
                        0b00011111,
                        0b00001110,
                        0b00010001,
                        0b00000000,0};
//Bulbasaur
const char bulbasaur[]={0b00000000,
                        0b00000100,
                        0b00001110,
                        0b00011111,
                        0b00001110,
                        0b00001110,
                        0b00001010,
                        0b00000000,0};
//Charmander
const char charmander[]={0b00001110,
                         0b00001110,
                         0b00000100,
                         0b00011111,
                         0b00001110,
                         0b00001111,
                         0b00001010,
                         0b00000000,0};

void LCD_Init(void){
    OpenXLCD(FOUR_BIT & LINES_5X7 );
    while(BusyXLCD()); // LCD esta ocupado
    WriteCmdXLCD(0x06); //Mover el cursor a la derecha
    WriteCmdXLCD(0x0C); //Desactivar el cursor
}

void InitPort(void){
    ADCON1bits.PCFG = 0xFF; //Pines en digital
    TRISBbits.RB0 = 1;
    TRISBbits.RB7 = 1;
    TRISBbits.RB5 = 1;
    TRISBbits.RB4 = 1;
    TRISBbits.RB2 = 1;
    INTCON2bits.RBPU = 0;  //Resistencias Pull-Up 
}


void main(void) {
    LCD_Init();
    InitPort();
    LCD_gotoXY(0,0);
    putrsXLCD("**POKEMON GO!***");
    __delay_ms(100);
    LCD_gotoXY(1,0);
    putrsXLCD("Presiona Start!!");
    __delay_ms(100);
    if(PORTBbits.RB0 == 0){
        WriteCmdXLCD(BORRAR_LCD);
        LCD_WriteChr_CGRAM(wels,0);
        LCD_WriteChr_CGRAM(wels1,1);
        LCD_WriteChr_CGRAM(pokeball,3);
        LCD_WriteChr_CGRAM(pikachu,4);
        LCD_WriteChr_CGRAM(charmander,5);
        LCD_WriteChr_CGRAM(squirtle,6);
        LCD_WriteChr_CGRAM(bulbasaur,7);
        __delay_ms(500);
        while(1){
            LCD_gotoXY(0,0);
            putrsXLCD("Wels Ketchup");
            __delay_ms(500);
            LCD_gotoXY(1,0);
            putcXLCD(0);
            __delay_ms(200);
            if(PORTBbits.RB7 == 0){
                WriteCmdXLCD(BORRAR_LCD);
                __delay_ms(5);
                LCD_gotoXY(1,0);
                putcXLCD(1);
                __delay_ms(100);
                LCD_gotoXY(1,3);
                putcXLCD(3);
                __delay_ms(100);
                LCD_gotoXY(1,5);
                putcXLCD(4);
                __delay_ms(100);
                LCD_gotoXY(0,0);
                putrsXLCD("ES PIKACHU!!");
                __delay_ms(1500);
                WriteCmdXLCD(BORRAR_LCD);
                __delay_ms(5);
            }
            if(PORTBbits.RB5 == 0){
                WriteCmdXLCD(BORRAR_LCD);
                __delay_ms(5);
                LCD_gotoXY(1,0);
                putcXLCD(1);
                __delay_ms(100);
                LCD_gotoXY(1,3);
                putcXLCD(3);
                __delay_ms(100);
                LCD_gotoXY(1,5);
                putcXLCD(5);
                __delay_ms(100);
                LCD_gotoXY(0,0);
                putrsXLCD("ES CHARMANDER!!");
                __delay_ms(1500);
                WriteCmdXLCD(BORRAR_LCD);
                __delay_ms(5);
            }
            if(PORTBbits.RB4 == 0){
                WriteCmdXLCD(BORRAR_LCD);
                __delay_ms(5);
                LCD_gotoXY(1,0);
                putcXLCD(1);
                __delay_ms(100);
                LCD_gotoXY(1,3);
                putcXLCD(3);
                __delay_ms(100);
                LCD_gotoXY(1,5);
                putcXLCD(6);
                __delay_ms(100);
                LCD_gotoXY(0,0);
                putrsXLCD("ES SQUIRTLE!!");
                __delay_ms(1500);
                WriteCmdXLCD(BORRAR_LCD);
                __delay_ms(5);
            }
            if(PORTBbits.RB2 == 0){
                WriteCmdXLCD(BORRAR_LCD);
                __delay_ms(5);
                LCD_gotoXY(1,0);
                putcXLCD(1);
                __delay_ms(100);
                LCD_gotoXY(1,3);
                putcXLCD(3);
                __delay_ms(100);
                LCD_gotoXY(1,5);
                putcXLCD(7);
                __delay_ms(100);
                LCD_gotoXY(0,0);
                putrsXLCD("ES BULBASAUR!!");
                __delay_ms(1500);
                WriteCmdXLCD(BORRAR_LCD);
                __delay_ms(5);
            }
        }
    }
    
}
