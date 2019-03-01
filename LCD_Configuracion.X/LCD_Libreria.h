//4 bits -> RD0 RD1 RD2 RD3
//Variables:
#define LCD_PORT PORTD
#define LCD_TRIS TRISD

//Variables de configuracion
#define RW_PIN LATDbits.LATD6
#define RW_TRIS TRISDbits.RD6

#define RS_PIN LATDbits.LATD5
#define RS_TRIS TRISDbits.RD5

#define E_PIN   LATDbits.LATD4
#define E_TRIS TRISDbits.RD4

//Función:
void LCD_Init(void);
void LCD_Comando(unsigned char cmd);
void LCD_XY(int x,int y);
void LCD_Cadena(const char *);
void LCD_Data(char);
