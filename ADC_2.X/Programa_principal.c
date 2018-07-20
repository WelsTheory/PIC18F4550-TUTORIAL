/*

 * Tutorial 10 PIC18F4550 - ADC

 * Descripción: Como mostrar los valores obtenidos por el ADC en un LCD  

 * Autor:           Wels (@welstheory) 
 
 * Copyright: 		Wels Theory 2018

 * Fecha			18 de Mayo del 2018
  
 * Facebook:        https://www.facebook.com/welstheory
 
 * Youtube:         https://www.youtube.com/wels_theory
 
 * Instagram:       https://www.instagram.com/wels_theory/  
 
 * Twitter:         https://www.twitter.com/welstheory 

 */

#include <xc.h>
#include <stdio.h>
#include <stdint.h>
#include "Configuracion.h"
#include "LCD_libreria.h"
#include "ADC_libreria.h"

// 10 bit -> 2^10= 1024, 12  bit 2^12, 8 bits 2^8

//Voltaje de referencia 5v -> adc = 5/ 1024 = 4.8mV 1bit -> 3.3V 

//20Mhz -> 1/20MHz = 50ns : Tosc
// TAD > 0.7us
// 8Tosc -> 8*50ns =  0.4us 
// 16Tosc -> 16*50ns = 0.8us : TAD 
// 2.45us < xTAD
//TACQ = 6*TAD = 6*0.8us = 4.8us > 2.45us 

//
uint16_t valor;
float voltaje; 
char datos[20];

void LCD_Init(void){
    OpenXLCD(FOUR_BIT & LINES_5X7 );
    while(BusyXLCD()); // LCD esta ocupado
    WriteCmdXLCD(0x06); //Mover el cursor a la derecha
    WriteCmdXLCD(0x0C); //Desactivar el cursor
}

void main(){
    LCD_Init();
    ADC_init();
    TRISA = 1; // PORTA -> Entrada
    LCD_gotoXY(0,0);
    putrsXLCD("******ADC*******");
    __delay_ms(100);
    LCD_gotoXY(1,0);
    putrsXLCD("    By WELS    ");
    __delay_ms(500);
    WriteCmdXLCD(BORRAR_LCD);
    while(1){
        LCD_gotoXY(0,0);
        putrsXLCD("VOLTAJE ES:");
        __delay_ms(100);
        valor = ADC_read(0);
        voltaje = (valor*5.0)/1023;
        LCD_gotoXY(1,12);
        sprintf(datos,"%.2f",voltaje);
        putrsXLCD(datos);
        __delay_ms(500);
    }
}















