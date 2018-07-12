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
#include "Configuracion.h"
#include "LCD_libreria.h"
#include "ADC_libreria.h"

uint16_t valor;
float voltaje; 
char datos[20];

void PORT_Init(){
    TRISBbits.RB0 = 1;
    TRISBbits.RB1 = 1;
    TRISBbits.RB2 = 1;
    INTCON2bits.RBPU = 0;
    TRISA = 1;
}

void main(){
    LCD_Init();
    ADC_init();
    PORT_Init();
    LCD_gotoXY(0,0);
    putrsXLCD(" VARIANDO ADC!!");
    __delay_ms(100);
    LCD_gotoXY(1,0);
    putrsXLCD("    By WELS    ");
    __delay_ms(500);
    WriteCmdXLCD(BORRAR_LCD);
    while(1){
        LCD_gotoXY(0,0);
        putrsXLCD("ADC 1 = PUL1");
        __delay_ms(500);
        LCD_gotoXY(1,0);
        putrsXLCD("ADC 2 = PUL2");
        __delay_ms(500);
        WriteCmdXLCD(BORRAR_LCD);
        LCD_gotoXY(0,0);
        putrsXLCD("ADC 3 = PUL3");
        __delay_ms(500);
        if (PORTBbits.RB0 == 0){
            while(1){
            LCD_gotoXY(0,0);
            putrsXLCD("  -  ADC 1  -  ");
            __delay_ms(100);
            LCD_gotoXY(1,0);
            putrsXLCD("VOLTAJE ES:");
            valor = ADC_read(0);
            voltaje = (valor*5.0)/1023;
            LCD_gotoXY(1,12);
            sprintf(datos,"%.2f",voltaje);
            putrsXLCD(datos);
            __delay_ms(100);
            if(PORTBbits.RB0 == 1)break;
            }
        }
        else if(PORTBbits.RB1 == 0){
            while(1){
            LCD_gotoXY(0,0);
            putrsXLCD("  -  ADC 2  -  ");
            __delay_ms(100);
            LCD_gotoXY(1,0);
            putrsXLCD("VOLTAJE ES:");
            valor = ADC_read(1);
            voltaje = (valor*5.0)/1023;
            LCD_gotoXY(1,12);
            sprintf(datos,"%.2f",voltaje);
            putrsXLCD(datos);
            __delay_ms(100);
            if(PORTBbits.RB1 == 1)break;
            }
        }
        else if(PORTBbits.RB2 == 0){
            while(1){
            LCD_gotoXY(0,0);
            putrsXLCD("  -  ADC 3  -  ");
            __delay_ms(100);
            LCD_gotoXY(1,0);
            putrsXLCD("VOLTAJE ES:");
            valor = ADC_read(2);
            voltaje = (valor*5.0)/1023;
            LCD_gotoXY(1,12);
            sprintf(datos,"%.2f",voltaje);
            putrsXLCD(datos);
            __delay_ms(100);
            if(PORTBbits.RB2 == 1)break;
            }
        }
    }
}
