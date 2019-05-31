/* Frecuencia del reloj */
#define SPI_Clock_4  0
#define SPI_Clock_16 1
#define SPI_Clock_64 2
#define SPI_TMR2     3
#define SPI_Slave_R5 4
#define SPI_Slave_IO 5

/* Modos de Reloj */
#define MODO_1  '1'
#define MODO_2  '2'
#define MODO_3  '3'
#define MODO_4  '4'

/* SMP */
#define DATO_Mitad 0
#define DATO_Fin   1

void SPI_Init_Master(char reloj, char modo, char smp);
void SPI_Init_Slave(char reloj, char modo);
void SPI_Tx(char dato);
char SPI_Rx();
