/*
 * File:   ProgramaPrincipal.c
 * Author: Wels
 *
 * Created on 8 de marzo de 2018, 09:29 PM
 */


#include <xc.h>
#include "Configuracion.h"
#include "LCD_libreria.h"

void LCD_Init(void){
    OpenXLCD(FOUR_BIT & LINES_5X7 );
    while(BusyXLCD()); // LCD esta ocupado
    WriteCmdXLCD(0x06); //Mover el cursor a la derecha
    WriteCmdXLCD(0x0C); //Desactivar el cursor
}

void InitPort(void){
    ADCON1bits.PCFG = 0xFF; // Digitales
    TRISB = 1;
    TRISA = 0;
    LATB = 1;
    LATA = 1;
}

void Timer0_Init(void){
    INTCONbits.GIE = 0;
    T0CONbits.T0CS = 0; // Temporizador
    T0CONbits.PSA = 0; // Habilitamos Pre escaler
    T0CONbits.T0PS = 0b111; //256 Pre escaler
    T0CONbits.T08BIT = 0; // 16 bits de cuenta 
    T0CONbits.TMR0ON = 1; // Tmr0 empieza
    INTCONbits.TMR0IF = 0; //Flag del Timer 0 apagado
    INTCONbits.TMR0IE = 1; // Permitir el desbordamiento del Timer0
    INTCONbits.PEIE = 1; // Interrupciones de perifericos
    INTCONbits.GIE = 1;
}

void main(){
    LCD_Init();
    InitPort();
    Timer0_Init();
    LCD_gotoXY(0,0);
    putrsXLCD("TIEMPO:");
    while(1){
        if(PORTBbits.RB0 == 0){
            __delay_ms(50);
            TMR0L = 6943;
            TMR0H = (6943) >>8;
            LCD_gotoXY(1,5);
            putrsXLCD("3 Segundos");
            LATAbits.LA5 = 1;
            LATAbits.LA4 = 0;
        }
    }
}

void interrupt ISR_TIMER_0(void){
    if(INTCONbits.TMR0IF){
        LCD_gotoXY(1,5);
        putrsXLCD("Terminado");
        INTCONbits.TMR0IF = 0;
        LATAbits.LA5 = 1;
        LATAbits.LA4 = 1;
    }
}

//Temporizador = (4/Fosc)*Pre-escaler*(x+1)
//        3s   = (4/20MHz)*256*(x+1)
//        x  = 58592
//        65535 - 58592 = 6943 