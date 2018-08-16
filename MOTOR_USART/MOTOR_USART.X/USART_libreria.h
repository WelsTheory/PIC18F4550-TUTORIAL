/*

 * Tutorial 12 PIC18F4550 - USART Librería
 * 
 * Descripción:     Configurar el USART en modo Tx y Rx 

 * Autor:           Wels (@welstheory) 
 
 * Copyright: 		Wels Theory 2018

 * Fecha			16 de Julio del 2018
  
 * Facebook:        https://www.facebook.com/welstheory
 
 * Youtube:         https://www.youtube.com/wels_theory
 
 * Instagram:       https://www.instagram.com/wels_theory/  
 
 * Twitter:         https://www.twitter.com/welstheory 

 */

void USART_Init(long BAUD);
void USART_Tx(char data);
char USART_Rx();