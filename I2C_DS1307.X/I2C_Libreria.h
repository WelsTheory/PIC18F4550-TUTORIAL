//MACROS
#define TRIS_SCL TRISBbits.RB1
#define TRIS_SDA TRISBbits.RB0

//FUNCIONES
void I2C_Init(void);
void I2C_Start(void);
void I2C_Stop(void);
void I2C_Restart(void);
void I2C_Ack(void);
void I2C_Nack(void);
char I2C_Rx(void);
void I2C_Tx(char data);