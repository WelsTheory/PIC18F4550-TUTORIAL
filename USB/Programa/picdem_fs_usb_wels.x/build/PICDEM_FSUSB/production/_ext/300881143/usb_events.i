
# 1 "../demo_src/usb_events.c"

# 18 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\xc.h"
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 13 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\c90\xc8debug.h"
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);

# 52 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\pic18f4550.h"
extern volatile unsigned char SPPDATA __at(0xF62);

asm("SPPDATA equ 0F62h");


typedef union {
struct {
unsigned DATA :8;
};
} SPPDATAbits_t;
extern volatile SPPDATAbits_t SPPDATAbits __at(0xF62);

# 72
extern volatile unsigned char SPPCFG __at(0xF63);

asm("SPPCFG equ 0F63h");


typedef union {
struct {
unsigned WS :4;
unsigned CLK1EN :1;
unsigned CSEN :1;
unsigned CLKCFG :2;
};
struct {
unsigned WS0 :1;
unsigned WS1 :1;
unsigned WS2 :1;
unsigned WS3 :1;
unsigned :2;
unsigned CLKCFG0 :1;
unsigned CLKCFG1 :1;
};
} SPPCFGbits_t;
extern volatile SPPCFGbits_t SPPCFGbits __at(0xF63);

# 149
extern volatile unsigned char SPPEPS __at(0xF64);

asm("SPPEPS equ 0F64h");


typedef union {
struct {
unsigned ADDR :4;
unsigned SPPBUSY :1;
unsigned :1;
unsigned WRSPP :1;
unsigned RDSPP :1;
};
struct {
unsigned ADDR0 :1;
unsigned ADDR1 :1;
unsigned ADDR2 :1;
unsigned ADDR3 :1;
};
struct {
unsigned :4;
unsigned BUSY :1;
};
} SPPEPSbits_t;
extern volatile SPPEPSbits_t SPPEPSbits __at(0xF64);

# 223
extern volatile unsigned char SPPCON __at(0xF65);

asm("SPPCON equ 0F65h");


typedef union {
struct {
unsigned SPPEN :1;
unsigned SPPOWN :1;
};
} SPPCONbits_t;
extern volatile SPPCONbits_t SPPCONbits __at(0xF65);

# 249
extern volatile unsigned short UFRM __at(0xF66);

asm("UFRM equ 0F66h");




extern volatile unsigned char UFRML __at(0xF66);

asm("UFRML equ 0F66h");


typedef union {
struct {
unsigned FRM :8;
};
struct {
unsigned FRM0 :1;
unsigned FRM1 :1;
unsigned FRM2 :1;
unsigned FRM3 :1;
unsigned FRM4 :1;
unsigned FRM5 :1;
unsigned FRM6 :1;
unsigned FRM7 :1;
};
struct {
unsigned FRML :8;
};
} UFRMLbits_t;
extern volatile UFRMLbits_t UFRMLbits __at(0xF66);

# 334
extern volatile unsigned char UFRMH __at(0xF67);

asm("UFRMH equ 0F67h");


typedef union {
struct {
unsigned FRM :3;
};
struct {
unsigned FRM8 :1;
unsigned FRM9 :1;
unsigned FRM10 :1;
};
} UFRMHbits_t;
extern volatile UFRMHbits_t UFRMHbits __at(0xF67);

# 374
extern volatile unsigned char UIR __at(0xF68);

asm("UIR equ 0F68h");


typedef union {
struct {
unsigned URSTIF :1;
unsigned UERRIF :1;
unsigned ACTVIF :1;
unsigned TRNIF :1;
unsigned IDLEIF :1;
unsigned STALLIF :1;
unsigned SOFIF :1;
};
} UIRbits_t;
extern volatile UIRbits_t UIRbits __at(0xF68);

# 430
extern volatile unsigned char UIE __at(0xF69);

asm("UIE equ 0F69h");


typedef union {
struct {
unsigned URSTIE :1;
unsigned UERRIE :1;
unsigned ACTVIE :1;
unsigned TRNIE :1;
unsigned IDLEIE :1;
unsigned STALLIE :1;
unsigned SOFIE :1;
};
} UIEbits_t;
extern volatile UIEbits_t UIEbits __at(0xF69);

# 486
extern volatile unsigned char UEIR __at(0xF6A);

asm("UEIR equ 0F6Ah");


typedef union {
struct {
unsigned PIDEF :1;
unsigned CRC5EF :1;
unsigned CRC16EF :1;
unsigned DFN8EF :1;
unsigned BTOEF :1;
unsigned :2;
unsigned BTSEF :1;
};
} UEIRbits_t;
extern volatile UEIRbits_t UEIRbits __at(0xF6A);

# 537
extern volatile unsigned char UEIE __at(0xF6B);

asm("UEIE equ 0F6Bh");


typedef union {
struct {
unsigned PIDEE :1;
unsigned CRC5EE :1;
unsigned CRC16EE :1;
unsigned DFN8EE :1;
unsigned BTOEE :1;
unsigned :2;
unsigned BTSEE :1;
};
} UEIEbits_t;
extern volatile UEIEbits_t UEIEbits __at(0xF6B);

# 588
extern volatile unsigned char USTAT __at(0xF6C);

asm("USTAT equ 0F6Ch");


typedef union {
struct {
unsigned :1;
unsigned PPBI :1;
unsigned DIR :1;
unsigned ENDP :4;
};
struct {
unsigned :3;
unsigned ENDP0 :1;
unsigned ENDP1 :1;
unsigned ENDP2 :1;
unsigned ENDP3 :1;
};
} USTATbits_t;
extern volatile USTATbits_t USTATbits __at(0xF6C);

# 648
extern volatile unsigned char UCON __at(0xF6D);

asm("UCON equ 0F6Dh");


typedef union {
struct {
unsigned :1;
unsigned SUSPND :1;
unsigned RESUME :1;
unsigned USBEN :1;
unsigned PKTDIS :1;
unsigned SE0 :1;
unsigned PPBRST :1;
};
} UCONbits_t;
extern volatile UCONbits_t UCONbits __at(0xF6D);

# 699
extern volatile unsigned char UADDR __at(0xF6E);

asm("UADDR equ 0F6Eh");


typedef union {
struct {
unsigned ADDR :7;
};
struct {
unsigned ADDR0 :1;
unsigned ADDR1 :1;
unsigned ADDR2 :1;
unsigned ADDR3 :1;
unsigned ADDR4 :1;
unsigned ADDR5 :1;
unsigned ADDR6 :1;
};
} UADDRbits_t;
extern volatile UADDRbits_t UADDRbits __at(0xF6E);

# 763
extern volatile unsigned char UCFG __at(0xF6F);

asm("UCFG equ 0F6Fh");


typedef union {
struct {
unsigned PPB :2;
unsigned FSEN :1;
unsigned UTRDIS :1;
unsigned UPUEN :1;
unsigned :1;
unsigned UOEMON :1;
unsigned UTEYE :1;
};
struct {
unsigned PPB0 :1;
unsigned PPB1 :1;
};
struct {
unsigned UPP0 :1;
unsigned UPP1 :1;
};
} UCFGbits_t;
extern volatile UCFGbits_t UCFGbits __at(0xF6F);

# 842
extern volatile unsigned char UEP0 __at(0xF70);

asm("UEP0 equ 0F70h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP0STALL :1;
unsigned EP0INEN :1;
unsigned EP0OUTEN :1;
unsigned EP0CONDIS :1;
unsigned EP0HSHK :1;
};
struct {
unsigned EPSTALL0 :1;
unsigned EPINEN0 :1;
unsigned EPOUTEN0 :1;
unsigned EPCONDIS0 :1;
unsigned EPHSHK0 :1;
};
} UEP0bits_t;
extern volatile UEP0bits_t UEP0bits __at(0xF70);

# 950
extern volatile unsigned char UEP1 __at(0xF71);

asm("UEP1 equ 0F71h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP1STALL :1;
unsigned EP1INEN :1;
unsigned EP1OUTEN :1;
unsigned EP1CONDIS :1;
unsigned EP1HSHK :1;
};
struct {
unsigned EPSTALL1 :1;
unsigned EPINEN1 :1;
unsigned EPOUTEN1 :1;
unsigned EPCONDIS1 :1;
unsigned EPHSHK1 :1;
};
} UEP1bits_t;
extern volatile UEP1bits_t UEP1bits __at(0xF71);

# 1058
extern volatile unsigned char UEP2 __at(0xF72);

asm("UEP2 equ 0F72h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP2STALL :1;
unsigned EP2INEN :1;
unsigned EP2OUTEN :1;
unsigned EP2CONDIS :1;
unsigned EP2HSHK :1;
};
struct {
unsigned EPSTALL2 :1;
unsigned EPINEN2 :1;
unsigned EPOUTEN2 :1;
unsigned EPCONDIS2 :1;
unsigned EPHSHK2 :1;
};
} UEP2bits_t;
extern volatile UEP2bits_t UEP2bits __at(0xF72);

# 1166
extern volatile unsigned char UEP3 __at(0xF73);

asm("UEP3 equ 0F73h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP3STALL :1;
unsigned EP3INEN :1;
unsigned EP3OUTEN :1;
unsigned EP3CONDIS :1;
unsigned EP3HSHK :1;
};
struct {
unsigned EPSTALL3 :1;
unsigned EPINEN3 :1;
unsigned EPOUTEN3 :1;
unsigned EPCONDIS3 :1;
unsigned EPHSHK3 :1;
};
} UEP3bits_t;
extern volatile UEP3bits_t UEP3bits __at(0xF73);

# 1274
extern volatile unsigned char UEP4 __at(0xF74);

asm("UEP4 equ 0F74h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP4STALL :1;
unsigned EP4INEN :1;
unsigned EP4OUTEN :1;
unsigned EP4CONDIS :1;
unsigned EP4HSHK :1;
};
struct {
unsigned EPSTALL4 :1;
unsigned EPINEN4 :1;
unsigned EPOUTEN4 :1;
unsigned EPCONDIS4 :1;
unsigned EPHSHK4 :1;
};
} UEP4bits_t;
extern volatile UEP4bits_t UEP4bits __at(0xF74);

# 1382
extern volatile unsigned char UEP5 __at(0xF75);

asm("UEP5 equ 0F75h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP5STALL :1;
unsigned EP5INEN :1;
unsigned EP5OUTEN :1;
unsigned EP5CONDIS :1;
unsigned EP5HSHK :1;
};
struct {
unsigned EPSTALL5 :1;
unsigned EPINEN5 :1;
unsigned EPOUTEN5 :1;
unsigned EPCONDIS5 :1;
unsigned EPHSHK5 :1;
};
} UEP5bits_t;
extern volatile UEP5bits_t UEP5bits __at(0xF75);

# 1490
extern volatile unsigned char UEP6 __at(0xF76);

asm("UEP6 equ 0F76h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP6STALL :1;
unsigned EP6INEN :1;
unsigned EP6OUTEN :1;
unsigned EP6CONDIS :1;
unsigned EP6HSHK :1;
};
struct {
unsigned EPSTALL6 :1;
unsigned EPINEN6 :1;
unsigned EPOUTEN6 :1;
unsigned EPCONDIS6 :1;
unsigned EPHSHK6 :1;
};
} UEP6bits_t;
extern volatile UEP6bits_t UEP6bits __at(0xF76);

# 1598
extern volatile unsigned char UEP7 __at(0xF77);

asm("UEP7 equ 0F77h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EP7STALL :1;
unsigned EP7INEN :1;
unsigned EP7OUTEN :1;
unsigned EP7CONDIS :1;
unsigned EP7HSHK :1;
};
struct {
unsigned EPSTALL7 :1;
unsigned EPINEN7 :1;
unsigned EPOUTEN7 :1;
unsigned EPCONDIS7 :1;
unsigned EPHSHK7 :1;
};
} UEP7bits_t;
extern volatile UEP7bits_t UEP7bits __at(0xF77);

# 1706
extern volatile unsigned char UEP8 __at(0xF78);

asm("UEP8 equ 0F78h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL8 :1;
unsigned EPINEN8 :1;
unsigned EPOUTEN8 :1;
unsigned EPCONDIS8 :1;
unsigned EPHSHK8 :1;
};
} UEP8bits_t;
extern volatile UEP8bits_t UEP8bits __at(0xF78);

# 1782
extern volatile unsigned char UEP9 __at(0xF79);

asm("UEP9 equ 0F79h");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL9 :1;
unsigned EPINEN9 :1;
unsigned EPOUTEN9 :1;
unsigned EPCONDIS9 :1;
unsigned EPHSHK9 :1;
};
} UEP9bits_t;
extern volatile UEP9bits_t UEP9bits __at(0xF79);

# 1858
extern volatile unsigned char UEP10 __at(0xF7A);

asm("UEP10 equ 0F7Ah");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL10 :1;
unsigned EPINEN10 :1;
unsigned EPOUTEN10 :1;
unsigned EPCONDIS10 :1;
unsigned EPHSHK10 :1;
};
} UEP10bits_t;
extern volatile UEP10bits_t UEP10bits __at(0xF7A);

# 1934
extern volatile unsigned char UEP11 __at(0xF7B);

asm("UEP11 equ 0F7Bh");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL11 :1;
unsigned EPINEN11 :1;
unsigned EPOUTEN11 :1;
unsigned EPCONDIS11 :1;
unsigned EPHSHK11 :1;
};
} UEP11bits_t;
extern volatile UEP11bits_t UEP11bits __at(0xF7B);

# 2010
extern volatile unsigned char UEP12 __at(0xF7C);

asm("UEP12 equ 0F7Ch");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL12 :1;
unsigned EPINEN12 :1;
unsigned EPOUTEN12 :1;
unsigned EPCONDIS12 :1;
unsigned EPHSHK12 :1;
};
} UEP12bits_t;
extern volatile UEP12bits_t UEP12bits __at(0xF7C);

# 2086
extern volatile unsigned char UEP13 __at(0xF7D);

asm("UEP13 equ 0F7Dh");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL13 :1;
unsigned EPINEN13 :1;
unsigned EPOUTEN13 :1;
unsigned EPCONDIS13 :1;
unsigned EPHSHK13 :1;
};
} UEP13bits_t;
extern volatile UEP13bits_t UEP13bits __at(0xF7D);

# 2162
extern volatile unsigned char UEP14 __at(0xF7E);

asm("UEP14 equ 0F7Eh");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL14 :1;
unsigned EPINEN14 :1;
unsigned EPOUTEN14 :1;
unsigned EPCONDIS14 :1;
unsigned EPHSHK14 :1;
};
} UEP14bits_t;
extern volatile UEP14bits_t UEP14bits __at(0xF7E);

# 2238
extern volatile unsigned char UEP15 __at(0xF7F);

asm("UEP15 equ 0F7Fh");


typedef union {
struct {
unsigned EPSTALL :1;
unsigned EPINEN :1;
unsigned EPOUTEN :1;
unsigned EPCONDIS :1;
unsigned EPHSHK :1;
};
struct {
unsigned EPSTALL15 :1;
unsigned EPINEN15 :1;
unsigned EPOUTEN15 :1;
unsigned EPCONDIS15 :1;
unsigned EPHSHK15 :1;
};
} UEP15bits_t;
extern volatile UEP15bits_t UEP15bits __at(0xF7F);

# 2314
extern volatile unsigned char PORTA __at(0xF80);

asm("PORTA equ 0F80h");


typedef union {
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
};
struct {
unsigned AN0 :1;
unsigned AN1 :1;
unsigned AN2 :1;
unsigned AN3 :1;
unsigned T0CKI :1;
unsigned AN4 :1;
unsigned OSC2 :1;
};
struct {
unsigned :2;
unsigned VREFM :1;
unsigned VREFP :1;
unsigned :1;
unsigned LVDIN :1;
};
struct {
unsigned :5;
unsigned HLVDIN :1;
};
struct {
unsigned ULPWUIN :1;
};
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __at(0xF80);

# 2453
extern volatile unsigned char PORTB __at(0xF81);

asm("PORTB equ 0F81h");


typedef union {
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
struct {
unsigned INT0 :1;
unsigned INT1 :1;
unsigned INT2 :1;
unsigned :2;
unsigned PGM :1;
unsigned PGC :1;
unsigned PGD :1;
};
struct {
unsigned :3;
unsigned CCP2_PA2 :1;
};
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __at(0xF81);

# 2563
extern volatile unsigned char PORTC __at(0xF82);

asm("PORTC equ 0F82h");


typedef union {
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned :1;
unsigned RC4 :1;
unsigned RC5 :1;
unsigned RC6 :1;
unsigned RC7 :1;
};
struct {
unsigned T1OSO :1;
unsigned T1OSI :1;
unsigned CCP1 :1;
unsigned :3;
unsigned TX :1;
unsigned RX :1;
};
struct {
unsigned T13CKI :1;
unsigned :1;
unsigned P1A :1;
unsigned :3;
unsigned CK :1;
unsigned DT :1;
};
struct {
unsigned :1;
unsigned CCP2 :1;
unsigned PA1 :1;
};
struct {
unsigned :1;
unsigned PA2 :1;
};
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __at(0xF82);

# 2705
extern volatile unsigned char PORTD __at(0xF83);

asm("PORTD equ 0F83h");


typedef union {
struct {
unsigned RD0 :1;
unsigned RD1 :1;
unsigned RD2 :1;
unsigned RD3 :1;
unsigned RD4 :1;
unsigned RD5 :1;
unsigned RD6 :1;
unsigned RD7 :1;
};
struct {
unsigned SPP0 :1;
unsigned SPP1 :1;
unsigned SPP2 :1;
unsigned SPP3 :1;
unsigned SPP4 :1;
unsigned SPP5 :1;
unsigned SPP6 :1;
unsigned SPP7 :1;
};
struct {
unsigned :7;
unsigned SS2 :1;
};
} PORTDbits_t;
extern volatile PORTDbits_t PORTDbits __at(0xF83);

# 2826
extern volatile unsigned char PORTE __at(0xF84);

asm("PORTE equ 0F84h");


typedef union {
struct {
unsigned RE0 :1;
unsigned RE1 :1;
unsigned RE2 :1;
unsigned RE3 :1;
unsigned :3;
unsigned RDPU :1;
};
struct {
unsigned CK1SPP :1;
unsigned CK2SPP :1;
unsigned OESPP :1;
};
struct {
unsigned PD2 :1;
unsigned PC2 :1;
unsigned CCP10 :1;
unsigned CCP9E :1;
unsigned :3;
unsigned CCP2E :1;
};
struct {
unsigned RDE :1;
unsigned WRE :1;
unsigned CS :1;
unsigned PC3E :1;
unsigned :3;
unsigned PA2E :1;
};
struct {
unsigned :2;
unsigned PB2 :1;
unsigned :4;
unsigned RE7 :1;
};
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __at(0xF84);

# 2973
extern volatile unsigned char LATA __at(0xF89);

asm("LATA equ 0F89h");


typedef union {
struct {
unsigned LATA0 :1;
unsigned LATA1 :1;
unsigned LATA2 :1;
unsigned LATA3 :1;
unsigned LATA4 :1;
unsigned LATA5 :1;
unsigned LATA6 :1;
};
struct {
unsigned LA0 :1;
unsigned LA1 :1;
unsigned LA2 :1;
unsigned LA3 :1;
unsigned LA4 :1;
unsigned LA5 :1;
unsigned LA6 :1;
};
} LATAbits_t;
extern volatile LATAbits_t LATAbits __at(0xF89);

# 3073
extern volatile unsigned char LATB __at(0xF8A);

asm("LATB equ 0F8Ah");


typedef union {
struct {
unsigned LATB0 :1;
unsigned LATB1 :1;
unsigned LATB2 :1;
unsigned LATB3 :1;
unsigned LATB4 :1;
unsigned LATB5 :1;
unsigned LATB6 :1;
unsigned LATB7 :1;
};
struct {
unsigned LB0 :1;
unsigned LB1 :1;
unsigned LB2 :1;
unsigned LB3 :1;
unsigned LB4 :1;
unsigned LB5 :1;
unsigned LB6 :1;
unsigned LB7 :1;
};
} LATBbits_t;
extern volatile LATBbits_t LATBbits __at(0xF8A);

# 3185
extern volatile unsigned char LATC __at(0xF8B);

asm("LATC equ 0F8Bh");


typedef union {
struct {
unsigned LATC0 :1;
unsigned LATC1 :1;
unsigned LATC2 :1;
unsigned :3;
unsigned LATC6 :1;
unsigned LATC7 :1;
};
struct {
unsigned LC0 :1;
unsigned LC1 :1;
unsigned LC2 :1;
unsigned :3;
unsigned LC6 :1;
unsigned LC7 :1;
};
} LATCbits_t;
extern volatile LATCbits_t LATCbits __at(0xF8B);

# 3263
extern volatile unsigned char LATD __at(0xF8C);

asm("LATD equ 0F8Ch");


typedef union {
struct {
unsigned LATD0 :1;
unsigned LATD1 :1;
unsigned LATD2 :1;
unsigned LATD3 :1;
unsigned LATD4 :1;
unsigned LATD5 :1;
unsigned LATD6 :1;
unsigned LATD7 :1;
};
struct {
unsigned LD0 :1;
unsigned LD1 :1;
unsigned LD2 :1;
unsigned LD3 :1;
unsigned LD4 :1;
unsigned LD5 :1;
unsigned LD6 :1;
unsigned LD7 :1;
};
} LATDbits_t;
extern volatile LATDbits_t LATDbits __at(0xF8C);

# 3375
extern volatile unsigned char LATE __at(0xF8D);

asm("LATE equ 0F8Dh");


typedef union {
struct {
unsigned LATE0 :1;
unsigned LATE1 :1;
unsigned LATE2 :1;
};
struct {
unsigned LE0 :1;
unsigned LE1 :1;
unsigned LE2 :1;
};
} LATEbits_t;
extern volatile LATEbits_t LATEbits __at(0xF8D);

# 3427
extern volatile unsigned char TRISA __at(0xF92);

asm("TRISA equ 0F92h");


extern volatile unsigned char DDRA __at(0xF92);

asm("DDRA equ 0F92h");


typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned TRISA3 :1;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
unsigned TRISA6 :1;
};
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
};
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __at(0xF92);

# 3530
typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned TRISA3 :1;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
unsigned TRISA6 :1;
};
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
};
} DDRAbits_t;
extern volatile DDRAbits_t DDRAbits __at(0xF92);

# 3625
extern volatile unsigned char TRISB __at(0xF93);

asm("TRISB equ 0F93h");


extern volatile unsigned char DDRB __at(0xF93);

asm("DDRB equ 0F93h");


typedef union {
struct {
unsigned TRISB0 :1;
unsigned TRISB1 :1;
unsigned TRISB2 :1;
unsigned TRISB3 :1;
unsigned TRISB4 :1;
unsigned TRISB5 :1;
unsigned TRISB6 :1;
unsigned TRISB7 :1;
};
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __at(0xF93);

# 3740
typedef union {
struct {
unsigned TRISB0 :1;
unsigned TRISB1 :1;
unsigned TRISB2 :1;
unsigned TRISB3 :1;
unsigned TRISB4 :1;
unsigned TRISB5 :1;
unsigned TRISB6 :1;
unsigned TRISB7 :1;
};
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
} DDRBbits_t;
extern volatile DDRBbits_t DDRBbits __at(0xF93);

# 3847
extern volatile unsigned char TRISC __at(0xF94);

asm("TRISC equ 0F94h");


extern volatile unsigned char DDRC __at(0xF94);

asm("DDRC equ 0F94h");


typedef union {
struct {
unsigned TRISC0 :1;
unsigned TRISC1 :1;
unsigned TRISC2 :1;
unsigned :3;
unsigned TRISC6 :1;
unsigned TRISC7 :1;
};
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned :3;
unsigned RC6 :1;
unsigned RC7 :1;
};
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __at(0xF94);

# 3928
typedef union {
struct {
unsigned TRISC0 :1;
unsigned TRISC1 :1;
unsigned TRISC2 :1;
unsigned :3;
unsigned TRISC6 :1;
unsigned TRISC7 :1;
};
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned :3;
unsigned RC6 :1;
unsigned RC7 :1;
};
} DDRCbits_t;
extern volatile DDRCbits_t DDRCbits __at(0xF94);

# 4001
extern volatile unsigned char TRISD __at(0xF95);

asm("TRISD equ 0F95h");


extern volatile unsigned char DDRD __at(0xF95);

asm("DDRD equ 0F95h");


typedef union {
struct {
unsigned TRISD0 :1;
unsigned TRISD1 :1;
unsigned TRISD2 :1;
unsigned TRISD3 :1;
unsigned TRISD4 :1;
unsigned TRISD5 :1;
unsigned TRISD6 :1;
unsigned TRISD7 :1;
};
struct {
unsigned RD0 :1;
unsigned RD1 :1;
unsigned RD2 :1;
unsigned RD3 :1;
unsigned RD4 :1;
unsigned RD5 :1;
unsigned RD6 :1;
unsigned RD7 :1;
};
} TRISDbits_t;
extern volatile TRISDbits_t TRISDbits __at(0xF95);

# 4116
typedef union {
struct {
unsigned TRISD0 :1;
unsigned TRISD1 :1;
unsigned TRISD2 :1;
unsigned TRISD3 :1;
unsigned TRISD4 :1;
unsigned TRISD5 :1;
unsigned TRISD6 :1;
unsigned TRISD7 :1;
};
struct {
unsigned RD0 :1;
unsigned RD1 :1;
unsigned RD2 :1;
unsigned RD3 :1;
unsigned RD4 :1;
unsigned RD5 :1;
unsigned RD6 :1;
unsigned RD7 :1;
};
} DDRDbits_t;
extern volatile DDRDbits_t DDRDbits __at(0xF95);

# 4223
extern volatile unsigned char TRISE __at(0xF96);

asm("TRISE equ 0F96h");


extern volatile unsigned char DDRE __at(0xF96);

asm("DDRE equ 0F96h");


typedef union {
struct {
unsigned TRISE0 :1;
unsigned TRISE1 :1;
unsigned TRISE2 :1;
};
struct {
unsigned RE0 :1;
unsigned RE1 :1;
unsigned RE2 :1;
};
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __at(0xF96);

# 4278
typedef union {
struct {
unsigned TRISE0 :1;
unsigned TRISE1 :1;
unsigned TRISE2 :1;
};
struct {
unsigned RE0 :1;
unsigned RE1 :1;
unsigned RE2 :1;
};
} DDREbits_t;
extern volatile DDREbits_t DDREbits __at(0xF96);

# 4325
extern volatile unsigned char OSCTUNE __at(0xF9B);

asm("OSCTUNE equ 0F9Bh");


typedef union {
struct {
unsigned TUN :5;
unsigned :2;
unsigned INTSRC :1;
};
struct {
unsigned TUN0 :1;
unsigned TUN1 :1;
unsigned TUN2 :1;
unsigned TUN3 :1;
unsigned TUN4 :1;
};
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __at(0xF9B);

# 4384
extern volatile unsigned char PIE1 __at(0xF9D);

asm("PIE1 equ 0F9Dh");


typedef union {
struct {
unsigned TMR1IE :1;
unsigned TMR2IE :1;
unsigned CCP1IE :1;
unsigned SSPIE :1;
unsigned TXIE :1;
unsigned RCIE :1;
unsigned ADIE :1;
unsigned SPPIE :1;
};
struct {
unsigned :4;
unsigned TX1IE :1;
unsigned RC1IE :1;
unsigned :1;
unsigned PSPIE :1;
};
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __at(0xF9D);

# 4468
extern volatile unsigned char PIR1 __at(0xF9E);

asm("PIR1 equ 0F9Eh");


typedef union {
struct {
unsigned TMR1IF :1;
unsigned TMR2IF :1;
unsigned CCP1IF :1;
unsigned SSPIF :1;
unsigned TXIF :1;
unsigned RCIF :1;
unsigned ADIF :1;
unsigned SPPIF :1;
};
struct {
unsigned :4;
unsigned TX1IF :1;
unsigned RC1IF :1;
unsigned :1;
unsigned PSPIF :1;
};
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __at(0xF9E);

# 4552
extern volatile unsigned char IPR1 __at(0xF9F);

asm("IPR1 equ 0F9Fh");


typedef union {
struct {
unsigned TMR1IP :1;
unsigned TMR2IP :1;
unsigned CCP1IP :1;
unsigned SSPIP :1;
unsigned TXIP :1;
unsigned RCIP :1;
unsigned ADIP :1;
unsigned SPPIP :1;
};
struct {
unsigned :4;
unsigned TX1IP :1;
unsigned RC1IP :1;
unsigned :1;
unsigned PSPIP :1;
};
} IPR1bits_t;
extern volatile IPR1bits_t IPR1bits __at(0xF9F);

# 4636
extern volatile unsigned char PIE2 __at(0xFA0);

asm("PIE2 equ 0FA0h");


typedef union {
struct {
unsigned CCP2IE :1;
unsigned TMR3IE :1;
unsigned HLVDIE :1;
unsigned BCLIE :1;
unsigned EEIE :1;
unsigned USBIE :1;
unsigned CMIE :1;
unsigned OSCFIE :1;
};
struct {
unsigned :2;
unsigned LVDIE :1;
};
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __at(0xFA0);

# 4707
extern volatile unsigned char PIR2 __at(0xFA1);

asm("PIR2 equ 0FA1h");


typedef union {
struct {
unsigned CCP2IF :1;
unsigned TMR3IF :1;
unsigned HLVDIF :1;
unsigned BCLIF :1;
unsigned EEIF :1;
unsigned USBIF :1;
unsigned CMIF :1;
unsigned OSCFIF :1;
};
struct {
unsigned :2;
unsigned LVDIF :1;
};
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __at(0xFA1);

# 4778
extern volatile unsigned char IPR2 __at(0xFA2);

asm("IPR2 equ 0FA2h");


typedef union {
struct {
unsigned CCP2IP :1;
unsigned TMR3IP :1;
unsigned HLVDIP :1;
unsigned BCLIP :1;
unsigned EEIP :1;
unsigned USBIP :1;
unsigned CMIP :1;
unsigned OSCFIP :1;
};
struct {
unsigned :2;
unsigned LVDIP :1;
};
} IPR2bits_t;
extern volatile IPR2bits_t IPR2bits __at(0xFA2);

# 4849
extern volatile unsigned char EECON1 __at(0xFA6);

asm("EECON1 equ 0FA6h");


typedef union {
struct {
unsigned RD :1;
unsigned WR :1;
unsigned WREN :1;
unsigned WRERR :1;
unsigned FREE :1;
unsigned :1;
unsigned CFGS :1;
unsigned EEPGD :1;
};
struct {
unsigned :6;
unsigned EEFS :1;
};
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __at(0xFA6);

# 4915
extern volatile unsigned char EECON2 __at(0xFA7);

asm("EECON2 equ 0FA7h");




extern volatile unsigned char EEDATA __at(0xFA8);

asm("EEDATA equ 0FA8h");




extern volatile unsigned char EEADR __at(0xFA9);

asm("EEADR equ 0FA9h");




extern volatile unsigned char RCSTA __at(0xFAB);

asm("RCSTA equ 0FABh");


extern volatile unsigned char RCSTA1 __at(0xFAB);

asm("RCSTA1 equ 0FABh");


typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned :3;
unsigned ADEN :1;
};
struct {
unsigned :5;
unsigned SRENA :1;
};
struct {
unsigned :6;
unsigned RC8_9 :1;
};
struct {
unsigned :6;
unsigned RC9 :1;
};
struct {
unsigned RCD8 :1;
};
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __at(0xFAB);

# 5045
typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned :3;
unsigned ADEN :1;
};
struct {
unsigned :5;
unsigned SRENA :1;
};
struct {
unsigned :6;
unsigned RC8_9 :1;
};
struct {
unsigned :6;
unsigned RC9 :1;
};
struct {
unsigned RCD8 :1;
};
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __at(0xFAB);

# 5146
extern volatile unsigned char TXSTA __at(0xFAC);

asm("TXSTA equ 0FACh");


extern volatile unsigned char TXSTA1 __at(0xFAC);

asm("TXSTA1 equ 0FACh");


typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TX9D1 :1;
unsigned TRMT1 :1;
unsigned BRGH1 :1;
unsigned SENDB1 :1;
unsigned SYNC1 :1;
unsigned TXEN1 :1;
unsigned TX91 :1;
unsigned CSRC1 :1;
};
struct {
unsigned :6;
unsigned TX8_9 :1;
};
struct {
unsigned TXD8 :1;
};
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __at(0xFAC);

# 5278
typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TX9D1 :1;
unsigned TRMT1 :1;
unsigned BRGH1 :1;
unsigned SENDB1 :1;
unsigned SYNC1 :1;
unsigned TXEN1 :1;
unsigned TX91 :1;
unsigned CSRC1 :1;
};
struct {
unsigned :6;
unsigned TX8_9 :1;
};
struct {
unsigned TXD8 :1;
};
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __at(0xFAC);

# 5402
extern volatile unsigned char TXREG __at(0xFAD);

asm("TXREG equ 0FADh");


extern volatile unsigned char TXREG1 __at(0xFAD);

asm("TXREG1 equ 0FADh");




extern volatile unsigned char RCREG __at(0xFAE);

asm("RCREG equ 0FAEh");


extern volatile unsigned char RCREG1 __at(0xFAE);

asm("RCREG1 equ 0FAEh");




extern volatile unsigned char SPBRG __at(0xFAF);

asm("SPBRG equ 0FAFh");


extern volatile unsigned char SPBRG1 __at(0xFAF);

asm("SPBRG1 equ 0FAFh");




extern volatile unsigned char SPBRGH __at(0xFB0);

asm("SPBRGH equ 0FB0h");




extern volatile unsigned char T3CON __at(0xFB1);

asm("T3CON equ 0FB1h");


typedef union {
struct {
unsigned :2;
unsigned NOT_T3SYNC :1;
};
struct {
unsigned TMR3ON :1;
unsigned TMR3CS :1;
unsigned nT3SYNC :1;
unsigned T3CCP1 :1;
unsigned T3CKPS :2;
unsigned T3CCP2 :1;
unsigned RD16 :1;
};
struct {
unsigned :2;
unsigned T3SYNC :1;
unsigned :1;
unsigned T3CKPS0 :1;
unsigned T3CKPS1 :1;
};
struct {
unsigned :2;
unsigned T3NSYNC :1;
};
struct {
unsigned :3;
unsigned SOSCEN3 :1;
unsigned :3;
unsigned RD163 :1;
};
struct {
unsigned :7;
unsigned T3RD16 :1;
};
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __at(0xFB1);

# 5566
extern volatile unsigned short TMR3 __at(0xFB2);

asm("TMR3 equ 0FB2h");




extern volatile unsigned char TMR3L __at(0xFB2);

asm("TMR3L equ 0FB2h");




extern volatile unsigned char TMR3H __at(0xFB3);

asm("TMR3H equ 0FB3h");




extern volatile unsigned char CMCON __at(0xFB4);

asm("CMCON equ 0FB4h");


typedef union {
struct {
unsigned CM :3;
unsigned CIS :1;
unsigned C1INV :1;
unsigned C2INV :1;
unsigned C1OUT :1;
unsigned C2OUT :1;
};
struct {
unsigned CM0 :1;
unsigned CM1 :1;
unsigned CM2 :1;
};
struct {
unsigned CMEN0 :1;
unsigned CMEN1 :1;
unsigned CMEN2 :1;
};
} CMCONbits_t;
extern volatile CMCONbits_t CMCONbits __at(0xFB4);

# 5677
extern volatile unsigned char CVRCON __at(0xFB5);

asm("CVRCON equ 0FB5h");


typedef union {
struct {
unsigned CVR :4;
unsigned CVRSS :1;
unsigned CVRR :1;
unsigned CVROE :1;
unsigned CVREN :1;
};
struct {
unsigned CVR0 :1;
unsigned CVR1 :1;
unsigned CVR2 :1;
unsigned CVR3 :1;
unsigned CVREF :1;
};
struct {
unsigned :6;
unsigned CVROEN :1;
};
} CVRCONbits_t;
extern volatile CVRCONbits_t CVRCONbits __at(0xFB5);

# 5762
extern volatile unsigned char ECCP1AS __at(0xFB6);

asm("ECCP1AS equ 0FB6h");


extern volatile unsigned char CCP1AS __at(0xFB6);

asm("CCP1AS equ 0FB6h");


typedef union {
struct {
unsigned PSSBD :2;
unsigned PSSAC :2;
unsigned ECCPAS :3;
unsigned ECCPASE :1;
};
struct {
unsigned PSSBD0 :1;
unsigned PSSBD1 :1;
unsigned PSSAC0 :1;
unsigned PSSAC1 :1;
unsigned ECCPAS0 :1;
unsigned ECCPAS1 :1;
unsigned ECCPAS2 :1;
};
} ECCP1ASbits_t;
extern volatile ECCP1ASbits_t ECCP1ASbits __at(0xFB6);

# 5847
typedef union {
struct {
unsigned PSSBD :2;
unsigned PSSAC :2;
unsigned ECCPAS :3;
unsigned ECCPASE :1;
};
struct {
unsigned PSSBD0 :1;
unsigned PSSBD1 :1;
unsigned PSSAC0 :1;
unsigned PSSAC1 :1;
unsigned ECCPAS0 :1;
unsigned ECCPAS1 :1;
unsigned ECCPAS2 :1;
};
} CCP1ASbits_t;
extern volatile CCP1ASbits_t CCP1ASbits __at(0xFB6);

# 5924
extern volatile unsigned char ECCP1DEL __at(0xFB7);

asm("ECCP1DEL equ 0FB7h");


extern volatile unsigned char CCP1DEL __at(0xFB7);

asm("CCP1DEL equ 0FB7h");


typedef union {
struct {
unsigned PDC :7;
unsigned PRSEN :1;
};
struct {
unsigned PDC0 :1;
unsigned PDC1 :1;
unsigned PDC2 :1;
unsigned PDC3 :1;
unsigned PDC4 :1;
unsigned PDC5 :1;
unsigned PDC6 :1;
};
} ECCP1DELbits_t;
extern volatile ECCP1DELbits_t ECCP1DELbits __at(0xFB7);

# 5997
typedef union {
struct {
unsigned PDC :7;
unsigned PRSEN :1;
};
struct {
unsigned PDC0 :1;
unsigned PDC1 :1;
unsigned PDC2 :1;
unsigned PDC3 :1;
unsigned PDC4 :1;
unsigned PDC5 :1;
unsigned PDC6 :1;
};
} CCP1DELbits_t;
extern volatile CCP1DELbits_t CCP1DELbits __at(0xFB7);

# 6062
extern volatile unsigned char BAUDCON __at(0xFB8);

asm("BAUDCON equ 0FB8h");


extern volatile unsigned char BAUDCTL __at(0xFB8);

asm("BAUDCTL equ 0FB8h");


typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned TXCKP :1;
unsigned RXDTP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
unsigned :1;
unsigned RCMT :1;
};
struct {
unsigned :5;
unsigned RXCKP :1;
};
struct {
unsigned :1;
unsigned W4E :1;
};
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __at(0xFB8);

# 6156
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned TXCKP :1;
unsigned RXDTP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
unsigned :1;
unsigned RCMT :1;
};
struct {
unsigned :5;
unsigned RXCKP :1;
};
struct {
unsigned :1;
unsigned W4E :1;
};
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __at(0xFB8);

# 6242
extern volatile unsigned char CCP2CON __at(0xFBA);

asm("CCP2CON equ 0FBAh");


typedef union {
struct {
unsigned CCP2M :4;
unsigned DC2B :2;
};
struct {
unsigned CCP2M0 :1;
unsigned CCP2M1 :1;
unsigned CCP2M2 :1;
unsigned CCP2M3 :1;
unsigned DC2B0 :1;
unsigned DC2B1 :1;
};
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __at(0xFBA);

# 6306
extern volatile unsigned short CCPR2 __at(0xFBB);

asm("CCPR2 equ 0FBBh");




extern volatile unsigned char CCPR2L __at(0xFBB);

asm("CCPR2L equ 0FBBh");




extern volatile unsigned char CCPR2H __at(0xFBC);

asm("CCPR2H equ 0FBCh");




extern volatile unsigned char CCP1CON __at(0xFBD);

asm("CCP1CON equ 0FBDh");


extern volatile unsigned char ECCP1CON __at(0xFBD);

asm("ECCP1CON equ 0FBDh");


typedef union {
struct {
unsigned CCP1M :4;
unsigned DC1B :2;
unsigned P1M :2;
};
struct {
unsigned CCP1M0 :1;
unsigned CCP1M1 :1;
unsigned CCP1M2 :1;
unsigned CCP1M3 :1;
unsigned DC1B0 :1;
unsigned DC1B1 :1;
unsigned P1M0 :1;
unsigned P1M1 :1;
};
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __at(0xFBD);

# 6412
typedef union {
struct {
unsigned CCP1M :4;
unsigned DC1B :2;
unsigned P1M :2;
};
struct {
unsigned CCP1M0 :1;
unsigned CCP1M1 :1;
unsigned CCP1M2 :1;
unsigned CCP1M3 :1;
unsigned DC1B0 :1;
unsigned DC1B1 :1;
unsigned P1M0 :1;
unsigned P1M1 :1;
};
} ECCP1CONbits_t;
extern volatile ECCP1CONbits_t ECCP1CONbits __at(0xFBD);

# 6489
extern volatile unsigned short CCPR1 __at(0xFBE);

asm("CCPR1 equ 0FBEh");




extern volatile unsigned char CCPR1L __at(0xFBE);

asm("CCPR1L equ 0FBEh");




extern volatile unsigned char CCPR1H __at(0xFBF);

asm("CCPR1H equ 0FBFh");




extern volatile unsigned char ADCON2 __at(0xFC0);

asm("ADCON2 equ 0FC0h");


typedef union {
struct {
unsigned ADCS :3;
unsigned ACQT :3;
unsigned :1;
unsigned ADFM :1;
};
struct {
unsigned ADCS0 :1;
unsigned ADCS1 :1;
unsigned ADCS2 :1;
unsigned ACQT0 :1;
unsigned ACQT1 :1;
unsigned ACQT2 :1;
};
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __at(0xFC0);

# 6581
extern volatile unsigned char ADCON1 __at(0xFC1);

asm("ADCON1 equ 0FC1h");


typedef union {
struct {
unsigned PCFG :4;
unsigned VCFG :2;
};
struct {
unsigned PCFG0 :1;
unsigned PCFG1 :1;
unsigned PCFG2 :1;
unsigned PCFG3 :1;
unsigned VCFG0 :1;
unsigned VCFG1 :1;
};
struct {
unsigned :3;
unsigned CHSN3 :1;
unsigned VCFG01 :1;
unsigned VCFG11 :1;
};
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __at(0xFC1);

# 6666
extern volatile unsigned char ADCON0 __at(0xFC2);

asm("ADCON0 equ 0FC2h");


typedef union {
struct {
unsigned :1;
unsigned GO_NOT_DONE :1;
};
struct {
unsigned ADON :1;
unsigned GO_nDONE :1;
unsigned CHS :4;
};
struct {
unsigned :1;
unsigned GO_DONE :1;
unsigned CHS0 :1;
unsigned CHS1 :1;
unsigned CHS2 :1;
unsigned CHS3 :1;
};
struct {
unsigned :1;
unsigned DONE :1;
};
struct {
unsigned :1;
unsigned GO :1;
};
struct {
unsigned :1;
unsigned NOT_DONE :1;
};
struct {
unsigned :1;
unsigned nDONE :1;
};
struct {
unsigned :1;
unsigned GODONE :1;
};
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __at(0xFC2);

# 6785
extern volatile unsigned short ADRES __at(0xFC3);

asm("ADRES equ 0FC3h");




extern volatile unsigned char ADRESL __at(0xFC3);

asm("ADRESL equ 0FC3h");




extern volatile unsigned char ADRESH __at(0xFC4);

asm("ADRESH equ 0FC4h");




extern volatile unsigned char SSPCON2 __at(0xFC5);

asm("SSPCON2 equ 0FC5h");


typedef union {
struct {
unsigned SEN :1;
unsigned RSEN :1;
unsigned PEN :1;
unsigned RCEN :1;
unsigned ACKEN :1;
unsigned ACKDT :1;
unsigned ACKSTAT :1;
unsigned GCEN :1;
};
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __at(0xFC5);

# 6868
extern volatile unsigned char SSPCON1 __at(0xFC6);

asm("SSPCON1 equ 0FC6h");


typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __at(0xFC6);

# 6938
extern volatile unsigned char SSPSTAT __at(0xFC7);

asm("SSPSTAT equ 0FC7h");


typedef union {
struct {
unsigned :2;
unsigned R_NOT_W :1;
};
struct {
unsigned :5;
unsigned D_NOT_A :1;
};
struct {
unsigned BF :1;
unsigned UA :1;
unsigned R_nW :1;
unsigned S :1;
unsigned P :1;
unsigned D_nA :1;
unsigned CKE :1;
unsigned SMP :1;
};
struct {
unsigned :2;
unsigned R_W :1;
unsigned :2;
unsigned D_A :1;
};
struct {
unsigned :2;
unsigned I2C_READ :1;
unsigned I2C_START :1;
unsigned I2C_STOP :1;
unsigned I2C_DAT :1;
};
struct {
unsigned :2;
unsigned nW :1;
unsigned :2;
unsigned nA :1;
};
struct {
unsigned :2;
unsigned NOT_WRITE :1;
};
struct {
unsigned :5;
unsigned NOT_ADDRESS :1;
};
struct {
unsigned :2;
unsigned nWRITE :1;
unsigned :2;
unsigned nADDRESS :1;
};
struct {
unsigned :2;
unsigned READ_WRITE :1;
unsigned :2;
unsigned DATA_ADDRESS :1;
};
struct {
unsigned :2;
unsigned R :1;
unsigned :2;
unsigned D :1;
};
struct {
unsigned :2;
unsigned RW :1;
unsigned START :1;
unsigned STOP :1;
unsigned DA :1;
};
struct {
unsigned :2;
unsigned NOT_W :1;
unsigned :2;
unsigned NOT_A :1;
};
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __at(0xFC7);

# 7186
extern volatile unsigned char SSPADD __at(0xFC8);

asm("SSPADD equ 0FC8h");




extern volatile unsigned char SSPBUF __at(0xFC9);

asm("SSPBUF equ 0FC9h");




extern volatile unsigned char T2CON __at(0xFCA);

asm("T2CON equ 0FCAh");


typedef union {
struct {
unsigned T2CKPS :2;
unsigned TMR2ON :1;
unsigned TOUTPS :4;
};
struct {
unsigned T2CKPS0 :1;
unsigned T2CKPS1 :1;
unsigned :1;
unsigned T2OUTPS0 :1;
unsigned T2OUTPS1 :1;
unsigned T2OUTPS2 :1;
unsigned T2OUTPS3 :1;
};
struct {
unsigned :3;
unsigned TOUTPS0 :1;
unsigned TOUTPS1 :1;
unsigned TOUTPS2 :1;
unsigned TOUTPS3 :1;
};
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __at(0xFCA);

# 7298
extern volatile unsigned char PR2 __at(0xFCB);

asm("PR2 equ 0FCBh");


extern volatile unsigned char MEMCON __at(0xFCB);

asm("MEMCON equ 0FCBh");


typedef union {
struct {
unsigned :7;
unsigned EBDIS :1;
};
struct {
unsigned :4;
unsigned WAIT0 :1;
};
struct {
unsigned :5;
unsigned WAIT1 :1;
};
struct {
unsigned WM0 :1;
};
struct {
unsigned :1;
unsigned WM1 :1;
};
} PR2bits_t;
extern volatile PR2bits_t PR2bits __at(0xFCB);

# 7357
typedef union {
struct {
unsigned :7;
unsigned EBDIS :1;
};
struct {
unsigned :4;
unsigned WAIT0 :1;
};
struct {
unsigned :5;
unsigned WAIT1 :1;
};
struct {
unsigned WM0 :1;
};
struct {
unsigned :1;
unsigned WM1 :1;
};
} MEMCONbits_t;
extern volatile MEMCONbits_t MEMCONbits __at(0xFCB);

# 7408
extern volatile unsigned char TMR2 __at(0xFCC);

asm("TMR2 equ 0FCCh");




extern volatile unsigned char T1CON __at(0xFCD);

asm("T1CON equ 0FCDh");


typedef union {
struct {
unsigned :2;
unsigned NOT_T1SYNC :1;
};
struct {
unsigned TMR1ON :1;
unsigned TMR1CS :1;
unsigned nT1SYNC :1;
unsigned T1OSCEN :1;
unsigned T1CKPS :2;
unsigned T1RUN :1;
unsigned RD16 :1;
};
struct {
unsigned :2;
unsigned T1SYNC :1;
unsigned :1;
unsigned T1CKPS0 :1;
unsigned T1CKPS1 :1;
};
struct {
unsigned :3;
unsigned SOSCEN :1;
unsigned :3;
unsigned T1RD16 :1;
};
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __at(0xFCD);

# 7518
extern volatile unsigned short TMR1 __at(0xFCE);

asm("TMR1 equ 0FCEh");




extern volatile unsigned char TMR1L __at(0xFCE);

asm("TMR1L equ 0FCEh");




extern volatile unsigned char TMR1H __at(0xFCF);

asm("TMR1H equ 0FCFh");




extern volatile unsigned char RCON __at(0xFD0);

asm("RCON equ 0FD0h");


typedef union {
struct {
unsigned NOT_BOR :1;
};
struct {
unsigned :1;
unsigned NOT_POR :1;
};
struct {
unsigned :2;
unsigned NOT_PD :1;
};
struct {
unsigned :3;
unsigned NOT_TO :1;
};
struct {
unsigned :4;
unsigned NOT_RI :1;
};
struct {
unsigned nBOR :1;
unsigned nPOR :1;
unsigned nPD :1;
unsigned nTO :1;
unsigned nRI :1;
unsigned :1;
unsigned SBOREN :1;
unsigned IPEN :1;
};
struct {
unsigned :7;
unsigned NOT_IPEN :1;
};
struct {
unsigned BOR :1;
unsigned POR :1;
unsigned PD :1;
unsigned TO :1;
unsigned RI :1;
unsigned :2;
unsigned nIPEN :1;
};
} RCONbits_t;
extern volatile RCONbits_t RCONbits __at(0xFD0);

# 7688
extern volatile unsigned char WDTCON __at(0xFD1);

asm("WDTCON equ 0FD1h");


typedef union {
struct {
unsigned SWDTEN :1;
};
struct {
unsigned SWDTE :1;
};
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __at(0xFD1);

# 7716
extern volatile unsigned char HLVDCON __at(0xFD2);

asm("HLVDCON equ 0FD2h");


extern volatile unsigned char LVDCON __at(0xFD2);

asm("LVDCON equ 0FD2h");


typedef union {
struct {
unsigned HLVDL :4;
unsigned HLVDEN :1;
unsigned IRVST :1;
unsigned :1;
unsigned VDIRMAG :1;
};
struct {
unsigned HLVDL0 :1;
unsigned HLVDL1 :1;
unsigned HLVDL2 :1;
unsigned HLVDL3 :1;
};
struct {
unsigned LVDL0 :1;
unsigned LVDL1 :1;
unsigned LVDL2 :1;
unsigned LVDL3 :1;
unsigned LVDEN :1;
unsigned IVRST :1;
};
struct {
unsigned LVV0 :1;
unsigned LVV1 :1;
unsigned LVV2 :1;
unsigned LVV3 :1;
unsigned :1;
unsigned BGST :1;
};
} HLVDCONbits_t;
extern volatile HLVDCONbits_t HLVDCONbits __at(0xFD2);

# 7855
typedef union {
struct {
unsigned HLVDL :4;
unsigned HLVDEN :1;
unsigned IRVST :1;
unsigned :1;
unsigned VDIRMAG :1;
};
struct {
unsigned HLVDL0 :1;
unsigned HLVDL1 :1;
unsigned HLVDL2 :1;
unsigned HLVDL3 :1;
};
struct {
unsigned LVDL0 :1;
unsigned LVDL1 :1;
unsigned LVDL2 :1;
unsigned LVDL3 :1;
unsigned LVDEN :1;
unsigned IVRST :1;
};
struct {
unsigned LVV0 :1;
unsigned LVV1 :1;
unsigned LVV2 :1;
unsigned LVV3 :1;
unsigned :1;
unsigned BGST :1;
};
} LVDCONbits_t;
extern volatile LVDCONbits_t LVDCONbits __at(0xFD2);

# 7986
extern volatile unsigned char OSCCON __at(0xFD3);

asm("OSCCON equ 0FD3h");


typedef union {
struct {
unsigned SCS :2;
unsigned IOFS :1;
unsigned OSTS :1;
unsigned IRCF :3;
unsigned IDLEN :1;
};
struct {
unsigned SCS0 :1;
unsigned SCS1 :1;
unsigned FLTS :1;
unsigned :1;
unsigned IRCF0 :1;
unsigned IRCF1 :1;
unsigned IRCF2 :1;
};
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __at(0xFD3);

# 8069
extern volatile unsigned char T0CON __at(0xFD5);

asm("T0CON equ 0FD5h");


typedef union {
struct {
unsigned T0PS :3;
unsigned PSA :1;
unsigned T0SE :1;
unsigned T0CS :1;
unsigned T08BIT :1;
unsigned TMR0ON :1;
};
struct {
unsigned T0PS0 :1;
unsigned T0PS1 :1;
unsigned T0PS2 :1;
};
} T0CONbits_t;
extern volatile T0CONbits_t T0CONbits __at(0xFD5);

# 8139
extern volatile unsigned short TMR0 __at(0xFD6);

asm("TMR0 equ 0FD6h");




extern volatile unsigned char TMR0L __at(0xFD6);

asm("TMR0L equ 0FD6h");




extern volatile unsigned char TMR0H __at(0xFD7);

asm("TMR0H equ 0FD7h");




extern volatile unsigned char STATUS __at(0xFD8);

asm("STATUS equ 0FD8h");


typedef union {
struct {
unsigned C :1;
unsigned DC :1;
unsigned Z :1;
unsigned OV :1;
unsigned N :1;
};
struct {
unsigned CARRY :1;
unsigned :1;
unsigned ZERO :1;
unsigned OVERFLOW :1;
unsigned NEGATIVE :1;
};
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __at(0xFD8);

# 8231
extern volatile unsigned short FSR2 __at(0xFD9);

asm("FSR2 equ 0FD9h");




extern volatile unsigned char FSR2L __at(0xFD9);

asm("FSR2L equ 0FD9h");




extern volatile unsigned char FSR2H __at(0xFDA);

asm("FSR2H equ 0FDAh");




extern volatile unsigned char PLUSW2 __at(0xFDB);

asm("PLUSW2 equ 0FDBh");




extern volatile unsigned char PREINC2 __at(0xFDC);

asm("PREINC2 equ 0FDCh");




extern volatile unsigned char POSTDEC2 __at(0xFDD);

asm("POSTDEC2 equ 0FDDh");




extern volatile unsigned char POSTINC2 __at(0xFDE);

asm("POSTINC2 equ 0FDEh");




extern volatile unsigned char INDF2 __at(0xFDF);

asm("INDF2 equ 0FDFh");




extern volatile unsigned char BSR __at(0xFE0);

asm("BSR equ 0FE0h");




extern volatile unsigned short FSR1 __at(0xFE1);

asm("FSR1 equ 0FE1h");




extern volatile unsigned char FSR1L __at(0xFE1);

asm("FSR1L equ 0FE1h");




extern volatile unsigned char FSR1H __at(0xFE2);

asm("FSR1H equ 0FE2h");




extern volatile unsigned char PLUSW1 __at(0xFE3);

asm("PLUSW1 equ 0FE3h");




extern volatile unsigned char PREINC1 __at(0xFE4);

asm("PREINC1 equ 0FE4h");




extern volatile unsigned char POSTDEC1 __at(0xFE5);

asm("POSTDEC1 equ 0FE5h");




extern volatile unsigned char POSTINC1 __at(0xFE6);

asm("POSTINC1 equ 0FE6h");




extern volatile unsigned char INDF1 __at(0xFE7);

asm("INDF1 equ 0FE7h");




extern volatile unsigned char WREG __at(0xFE8);

asm("WREG equ 0FE8h");




extern volatile unsigned short FSR0 __at(0xFE9);

asm("FSR0 equ 0FE9h");




extern volatile unsigned char FSR0L __at(0xFE9);

asm("FSR0L equ 0FE9h");




extern volatile unsigned char FSR0H __at(0xFEA);

asm("FSR0H equ 0FEAh");




extern volatile unsigned char PLUSW0 __at(0xFEB);

asm("PLUSW0 equ 0FEBh");




extern volatile unsigned char PREINC0 __at(0xFEC);

asm("PREINC0 equ 0FECh");




extern volatile unsigned char POSTDEC0 __at(0xFED);

asm("POSTDEC0 equ 0FEDh");




extern volatile unsigned char POSTINC0 __at(0xFEE);

asm("POSTINC0 equ 0FEEh");




extern volatile unsigned char INDF0 __at(0xFEF);

asm("INDF0 equ 0FEFh");




extern volatile unsigned char INTCON3 __at(0xFF0);

asm("INTCON3 equ 0FF0h");


typedef union {
struct {
unsigned INT1IF :1;
unsigned INT2IF :1;
unsigned :1;
unsigned INT1IE :1;
unsigned INT2IE :1;
unsigned :1;
unsigned INT1IP :1;
unsigned INT2IP :1;
};
struct {
unsigned INT1F :1;
unsigned INT2F :1;
unsigned :1;
unsigned INT1E :1;
unsigned INT2E :1;
unsigned :1;
unsigned INT1P :1;
unsigned INT2P :1;
};
} INTCON3bits_t;
extern volatile INTCON3bits_t INTCON3bits __at(0xFF0);

# 8505
extern volatile unsigned char INTCON2 __at(0xFF1);

asm("INTCON2 equ 0FF1h");


typedef union {
struct {
unsigned :7;
unsigned NOT_RBPU :1;
};
struct {
unsigned RBIP :1;
unsigned :1;
unsigned TMR0IP :1;
unsigned :1;
unsigned INTEDG2 :1;
unsigned INTEDG1 :1;
unsigned INTEDG0 :1;
unsigned nRBPU :1;
};
struct {
unsigned :2;
unsigned T0IP :1;
unsigned :4;
unsigned RBPU :1;
};
} INTCON2bits_t;
extern volatile INTCON2bits_t INTCON2bits __at(0xFF1);

# 8582
extern volatile unsigned char INTCON __at(0xFF2);

asm("INTCON equ 0FF2h");


typedef union {
struct {
unsigned RBIF :1;
unsigned INT0IF :1;
unsigned TMR0IF :1;
unsigned RBIE :1;
unsigned INT0IE :1;
unsigned TMR0IE :1;
unsigned PEIE_GIEL :1;
unsigned GIE_GIEH :1;
};
struct {
unsigned :1;
unsigned INT0F :1;
unsigned T0IF :1;
unsigned :1;
unsigned INT0E :1;
unsigned T0IE :1;
unsigned PEIE :1;
unsigned GIE :1;
};
struct {
unsigned :6;
unsigned GIEL :1;
unsigned GIEH :1;
};
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __at(0xFF2);

# 8699
extern volatile unsigned short PROD __at(0xFF3);

asm("PROD equ 0FF3h");




extern volatile unsigned char PRODL __at(0xFF3);

asm("PRODL equ 0FF3h");




extern volatile unsigned char PRODH __at(0xFF4);

asm("PRODH equ 0FF4h");




extern volatile unsigned char TABLAT __at(0xFF5);

asm("TABLAT equ 0FF5h");

# 8728
extern volatile __uint24 TBLPTR __at(0xFF6);


asm("TBLPTR equ 0FF6h");




extern volatile unsigned char TBLPTRL __at(0xFF6);

asm("TBLPTRL equ 0FF6h");




extern volatile unsigned char TBLPTRH __at(0xFF7);

asm("TBLPTRH equ 0FF7h");




extern volatile unsigned char TBLPTRU __at(0xFF8);

asm("TBLPTRU equ 0FF8h");

# 8758
extern volatile __uint24 PCLAT __at(0xFF9);


asm("PCLAT equ 0FF9h");



extern volatile __uint24 PC __at(0xFF9);


asm("PC equ 0FF9h");




extern volatile unsigned char PCL __at(0xFF9);

asm("PCL equ 0FF9h");




extern volatile unsigned char PCLATH __at(0xFFA);

asm("PCLATH equ 0FFAh");




extern volatile unsigned char PCLATU __at(0xFFB);

asm("PCLATU equ 0FFBh");




extern volatile unsigned char STKPTR __at(0xFFC);

asm("STKPTR equ 0FFCh");


typedef union {
struct {
unsigned STKPTR :5;
unsigned :1;
unsigned STKUNF :1;
unsigned STKFUL :1;
};
struct {
unsigned STKPTR0 :1;
unsigned STKPTR1 :1;
unsigned STKPTR2 :1;
unsigned STKPTR3 :1;
unsigned STKPTR4 :1;
};
struct {
unsigned :7;
unsigned STKOVF :1;
};
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __at(0xFFC);

# 8869
extern volatile __uint24 TOS __at(0xFFD);


asm("TOS equ 0FFDh");




extern volatile unsigned char TOSL __at(0xFFD);

asm("TOSL equ 0FFDh");




extern volatile unsigned char TOSH __at(0xFFE);

asm("TOSH equ 0FFEh");




extern volatile unsigned char TOSU __at(0xFFF);

asm("TOSU equ 0FFFh");

# 8904
extern volatile __bit ABDEN __at(0x7DC0);


extern volatile __bit ABDOVF __at(0x7DC7);


extern volatile __bit ACKDT __at(0x7E2D);


extern volatile __bit ACKEN __at(0x7E2C);


extern volatile __bit ACKSTAT __at(0x7E2E);


extern volatile __bit ACQT0 __at(0x7E03);


extern volatile __bit ACQT1 __at(0x7E04);


extern volatile __bit ACQT2 __at(0x7E05);


extern volatile __bit ACTVIE __at(0x7B4A);


extern volatile __bit ACTVIF __at(0x7B42);


extern volatile __bit ADCS0 __at(0x7E00);


extern volatile __bit ADCS1 __at(0x7E01);


extern volatile __bit ADCS2 __at(0x7E02);


extern volatile __bit ADDEN __at(0x7D5B);


extern volatile __bit __attribute__((__deprecated__)) ADDR0 __at(0x7B20);


extern volatile __bit __attribute__((__deprecated__)) ADDR1 __at(0x7B21);


extern volatile __bit __attribute__((__deprecated__)) ADDR2 __at(0x7B22);


extern volatile __bit __attribute__((__deprecated__)) ADDR3 __at(0x7B23);


extern volatile __bit ADDR4 __at(0x7B74);


extern volatile __bit ADDR5 __at(0x7B75);


extern volatile __bit ADDR6 __at(0x7B76);


extern volatile __bit ADEN __at(0x7D5B);


extern volatile __bit ADFM __at(0x7E07);


extern volatile __bit ADIE __at(0x7CEE);


extern volatile __bit ADIF __at(0x7CF6);


extern volatile __bit ADIP __at(0x7CFE);


extern volatile __bit ADON __at(0x7E10);


extern volatile __bit AN0 __at(0x7C00);


extern volatile __bit AN1 __at(0x7C01);


extern volatile __bit AN2 __at(0x7C02);


extern volatile __bit AN3 __at(0x7C03);


extern volatile __bit AN4 __at(0x7C05);


extern volatile __bit BCLIE __at(0x7D03);


extern volatile __bit BCLIF __at(0x7D0B);


extern volatile __bit BCLIP __at(0x7D13);


extern volatile __bit BF __at(0x7E38);


extern volatile __bit BGST __at(0x7E95);


extern volatile __bit BOR __at(0x7E80);


extern volatile __bit BRG16 __at(0x7DC3);


extern volatile __bit BRGH __at(0x7D62);


extern volatile __bit BRGH1 __at(0x7D62);


extern volatile __bit BTOEE __at(0x7B5C);


extern volatile __bit BTOEF __at(0x7B54);


extern volatile __bit BTSEE __at(0x7B5F);


extern volatile __bit BTSEF __at(0x7B57);


extern volatile __bit BUSY __at(0x7B24);


extern volatile __bit C1INV __at(0x7DA4);


extern volatile __bit C1OUT __at(0x7DA6);


extern volatile __bit C2INV __at(0x7DA5);


extern volatile __bit C2OUT __at(0x7DA7);


extern volatile __bit CARRY __at(0x7EC0);


extern volatile __bit CCP1 __at(0x7C12);


extern volatile __bit CCP10 __at(0x7C22);


extern volatile __bit CCP1IE __at(0x7CEA);


extern volatile __bit CCP1IF __at(0x7CF2);


extern volatile __bit CCP1IP __at(0x7CFA);


extern volatile __bit CCP1M0 __at(0x7DE8);


extern volatile __bit CCP1M1 __at(0x7DE9);


extern volatile __bit CCP1M2 __at(0x7DEA);


extern volatile __bit CCP1M3 __at(0x7DEB);


extern volatile __bit CCP2 __at(0x7C11);


extern volatile __bit CCP2E __at(0x7C27);


extern volatile __bit CCP2IE __at(0x7D00);


extern volatile __bit CCP2IF __at(0x7D08);


extern volatile __bit CCP2IP __at(0x7D10);


extern volatile __bit CCP2M0 __at(0x7DD0);


extern volatile __bit CCP2M1 __at(0x7DD1);


extern volatile __bit CCP2M2 __at(0x7DD2);


extern volatile __bit CCP2M3 __at(0x7DD3);


extern volatile __bit CCP2_PA2 __at(0x7C0B);


extern volatile __bit CCP9E __at(0x7C23);


extern volatile __bit CFGS __at(0x7D36);


extern volatile __bit CHS0 __at(0x7E12);


extern volatile __bit CHS1 __at(0x7E13);


extern volatile __bit CHS2 __at(0x7E14);


extern volatile __bit CHS3 __at(0x7E15);


extern volatile __bit CHSN3 __at(0x7E0B);


extern volatile __bit CIS __at(0x7DA3);


extern volatile __bit CK __at(0x7C16);


extern volatile __bit CK1SPP __at(0x7C20);


extern volatile __bit CK2SPP __at(0x7C21);


extern volatile __bit CKE __at(0x7E3E);


extern volatile __bit CKP __at(0x7E34);


extern volatile __bit CLK1EN __at(0x7B1C);


extern volatile __bit CLKCFG0 __at(0x7B1E);


extern volatile __bit CLKCFG1 __at(0x7B1F);


extern volatile __bit CM0 __at(0x7DA0);


extern volatile __bit CM1 __at(0x7DA1);


extern volatile __bit CM2 __at(0x7DA2);


extern volatile __bit CMEN0 __at(0x7DA0);


extern volatile __bit CMEN1 __at(0x7DA1);


extern volatile __bit CMEN2 __at(0x7DA2);


extern volatile __bit CMIE __at(0x7D06);


extern volatile __bit CMIF __at(0x7D0E);


extern volatile __bit CMIP __at(0x7D16);


extern volatile __bit CRC16EE __at(0x7B5A);


extern volatile __bit CRC16EF __at(0x7B52);


extern volatile __bit CRC5EE __at(0x7B59);


extern volatile __bit CRC5EF __at(0x7B51);


extern volatile __bit CREN __at(0x7D5C);


extern volatile __bit CS __at(0x7C22);


extern volatile __bit CSEN __at(0x7B1D);


extern volatile __bit CSRC __at(0x7D67);


extern volatile __bit CSRC1 __at(0x7D67);


extern volatile __bit CVR0 __at(0x7DA8);


extern volatile __bit CVR1 __at(0x7DA9);


extern volatile __bit CVR2 __at(0x7DAA);


extern volatile __bit CVR3 __at(0x7DAB);


extern volatile __bit CVREF __at(0x7DAC);


extern volatile __bit CVREN __at(0x7DAF);


extern volatile __bit CVROE __at(0x7DAE);


extern volatile __bit CVROEN __at(0x7DAE);


extern volatile __bit CVRR __at(0x7DAD);


extern volatile __bit CVRSS __at(0x7DAC);


extern volatile __bit DA __at(0x7E3D);


extern volatile __bit DATA_ADDRESS __at(0x7E3D);


extern volatile __bit DC __at(0x7EC1);


extern volatile __bit DC1B0 __at(0x7DEC);


extern volatile __bit DC1B1 __at(0x7DED);


extern volatile __bit DC2B0 __at(0x7DD4);


extern volatile __bit DC2B1 __at(0x7DD5);


extern volatile __bit DFN8EE __at(0x7B5B);


extern volatile __bit DFN8EF __at(0x7B53);


extern volatile __bit DIR __at(0x7B62);


extern volatile __bit DONE __at(0x7E11);


extern volatile __bit DT __at(0x7C17);


extern volatile __bit D_A __at(0x7E3D);


extern volatile __bit D_NOT_A __at(0x7E3D);


extern volatile __bit D_nA __at(0x7E3D);


extern volatile __bit EBDIS __at(0x7E5F);


extern volatile __bit ECCPAS0 __at(0x7DB4);


extern volatile __bit ECCPAS1 __at(0x7DB5);


extern volatile __bit ECCPAS2 __at(0x7DB6);


extern volatile __bit ECCPASE __at(0x7DB7);


extern volatile __bit EEFS __at(0x7D36);


extern volatile __bit EEIE __at(0x7D04);


extern volatile __bit EEIF __at(0x7D0C);


extern volatile __bit EEIP __at(0x7D14);


extern volatile __bit EEPGD __at(0x7D37);


extern volatile __bit ENDP0 __at(0x7B63);


extern volatile __bit ENDP1 __at(0x7B64);


extern volatile __bit ENDP2 __at(0x7B65);


extern volatile __bit ENDP3 __at(0x7B66);


extern volatile __bit EP0CONDIS __at(0x7B83);


extern volatile __bit EP0HSHK __at(0x7B84);


extern volatile __bit EP0INEN __at(0x7B81);


extern volatile __bit EP0OUTEN __at(0x7B82);


extern volatile __bit EP0STALL __at(0x7B80);


extern volatile __bit EP1CONDIS __at(0x7B8B);


extern volatile __bit EP1HSHK __at(0x7B8C);


extern volatile __bit EP1INEN __at(0x7B89);


extern volatile __bit EP1OUTEN __at(0x7B8A);


extern volatile __bit EP1STALL __at(0x7B88);


extern volatile __bit EP2CONDIS __at(0x7B93);


extern volatile __bit EP2HSHK __at(0x7B94);


extern volatile __bit EP2INEN __at(0x7B91);


extern volatile __bit EP2OUTEN __at(0x7B92);


extern volatile __bit EP2STALL __at(0x7B90);


extern volatile __bit EP3CONDIS __at(0x7B9B);


extern volatile __bit EP3HSHK __at(0x7B9C);


extern volatile __bit EP3INEN __at(0x7B99);


extern volatile __bit EP3OUTEN __at(0x7B9A);


extern volatile __bit EP3STALL __at(0x7B98);


extern volatile __bit EP4CONDIS __at(0x7BA3);


extern volatile __bit EP4HSHK __at(0x7BA4);


extern volatile __bit EP4INEN __at(0x7BA1);


extern volatile __bit EP4OUTEN __at(0x7BA2);


extern volatile __bit EP4STALL __at(0x7BA0);


extern volatile __bit EP5CONDIS __at(0x7BAB);


extern volatile __bit EP5HSHK __at(0x7BAC);


extern volatile __bit EP5INEN __at(0x7BA9);


extern volatile __bit EP5OUTEN __at(0x7BAA);


extern volatile __bit EP5STALL __at(0x7BA8);


extern volatile __bit EP6CONDIS __at(0x7BB3);


extern volatile __bit EP6HSHK __at(0x7BB4);


extern volatile __bit EP6INEN __at(0x7BB1);


extern volatile __bit EP6OUTEN __at(0x7BB2);


extern volatile __bit EP6STALL __at(0x7BB0);


extern volatile __bit EP7CONDIS __at(0x7BBB);


extern volatile __bit EP7HSHK __at(0x7BBC);


extern volatile __bit EP7INEN __at(0x7BB9);


extern volatile __bit EP7OUTEN __at(0x7BBA);


extern volatile __bit EP7STALL __at(0x7BB8);


extern volatile __bit EPCONDIS0 __at(0x7B83);


extern volatile __bit EPCONDIS1 __at(0x7B8B);


extern volatile __bit EPCONDIS10 __at(0x7BD3);


extern volatile __bit EPCONDIS11 __at(0x7BDB);


extern volatile __bit EPCONDIS12 __at(0x7BE3);


extern volatile __bit EPCONDIS13 __at(0x7BEB);


extern volatile __bit EPCONDIS14 __at(0x7BF3);


extern volatile __bit EPCONDIS15 __at(0x7BFB);


extern volatile __bit EPCONDIS2 __at(0x7B93);


extern volatile __bit EPCONDIS3 __at(0x7B9B);


extern volatile __bit EPCONDIS4 __at(0x7BA3);


extern volatile __bit EPCONDIS5 __at(0x7BAB);


extern volatile __bit EPCONDIS6 __at(0x7BB3);


extern volatile __bit EPCONDIS7 __at(0x7BBB);


extern volatile __bit EPCONDIS8 __at(0x7BC3);


extern volatile __bit EPCONDIS9 __at(0x7BCB);


extern volatile __bit EPHSHK0 __at(0x7B84);


extern volatile __bit EPHSHK1 __at(0x7B8C);


extern volatile __bit EPHSHK10 __at(0x7BD4);


extern volatile __bit EPHSHK11 __at(0x7BDC);


extern volatile __bit EPHSHK12 __at(0x7BE4);


extern volatile __bit EPHSHK13 __at(0x7BEC);


extern volatile __bit EPHSHK14 __at(0x7BF4);


extern volatile __bit EPHSHK15 __at(0x7BFC);


extern volatile __bit EPHSHK2 __at(0x7B94);


extern volatile __bit EPHSHK3 __at(0x7B9C);


extern volatile __bit EPHSHK4 __at(0x7BA4);


extern volatile __bit EPHSHK5 __at(0x7BAC);


extern volatile __bit EPHSHK6 __at(0x7BB4);


extern volatile __bit EPHSHK7 __at(0x7BBC);


extern volatile __bit EPHSHK8 __at(0x7BC4);


extern volatile __bit EPHSHK9 __at(0x7BCC);


extern volatile __bit EPINEN0 __at(0x7B81);


extern volatile __bit EPINEN1 __at(0x7B89);


extern volatile __bit EPINEN10 __at(0x7BD1);


extern volatile __bit EPINEN11 __at(0x7BD9);


extern volatile __bit EPINEN12 __at(0x7BE1);


extern volatile __bit EPINEN13 __at(0x7BE9);


extern volatile __bit EPINEN14 __at(0x7BF1);


extern volatile __bit EPINEN15 __at(0x7BF9);


extern volatile __bit EPINEN2 __at(0x7B91);


extern volatile __bit EPINEN3 __at(0x7B99);


extern volatile __bit EPINEN4 __at(0x7BA1);


extern volatile __bit EPINEN5 __at(0x7BA9);


extern volatile __bit EPINEN6 __at(0x7BB1);


extern volatile __bit EPINEN7 __at(0x7BB9);


extern volatile __bit EPINEN8 __at(0x7BC1);


extern volatile __bit EPINEN9 __at(0x7BC9);


extern volatile __bit EPOUTEN0 __at(0x7B82);


extern volatile __bit EPOUTEN1 __at(0x7B8A);


extern volatile __bit EPOUTEN10 __at(0x7BD2);


extern volatile __bit EPOUTEN11 __at(0x7BDA);


extern volatile __bit EPOUTEN12 __at(0x7BE2);


extern volatile __bit EPOUTEN13 __at(0x7BEA);


extern volatile __bit EPOUTEN14 __at(0x7BF2);


extern volatile __bit EPOUTEN15 __at(0x7BFA);


extern volatile __bit EPOUTEN2 __at(0x7B92);


extern volatile __bit EPOUTEN3 __at(0x7B9A);


extern volatile __bit EPOUTEN4 __at(0x7BA2);


extern volatile __bit EPOUTEN5 __at(0x7BAA);


extern volatile __bit EPOUTEN6 __at(0x7BB2);


extern volatile __bit EPOUTEN7 __at(0x7BBA);


extern volatile __bit EPOUTEN8 __at(0x7BC2);


extern volatile __bit EPOUTEN9 __at(0x7BCA);


extern volatile __bit EPSTALL0 __at(0x7B80);


extern volatile __bit EPSTALL1 __at(0x7B88);


extern volatile __bit EPSTALL10 __at(0x7BD0);


extern volatile __bit EPSTALL11 __at(0x7BD8);


extern volatile __bit EPSTALL12 __at(0x7BE0);


extern volatile __bit EPSTALL13 __at(0x7BE8);


extern volatile __bit EPSTALL14 __at(0x7BF0);


extern volatile __bit EPSTALL15 __at(0x7BF8);


extern volatile __bit EPSTALL2 __at(0x7B90);


extern volatile __bit EPSTALL3 __at(0x7B98);


extern volatile __bit EPSTALL4 __at(0x7BA0);


extern volatile __bit EPSTALL5 __at(0x7BA8);


extern volatile __bit EPSTALL6 __at(0x7BB0);


extern volatile __bit EPSTALL7 __at(0x7BB8);


extern volatile __bit EPSTALL8 __at(0x7BC0);


extern volatile __bit EPSTALL9 __at(0x7BC8);


extern volatile __bit FERR __at(0x7D5A);


extern volatile __bit FLTS __at(0x7E9A);


extern volatile __bit FREE __at(0x7D34);


extern volatile __bit FRM0 __at(0x7B30);


extern volatile __bit FRM1 __at(0x7B31);


extern volatile __bit FRM10 __at(0x7B3A);


extern volatile __bit FRM2 __at(0x7B32);


extern volatile __bit FRM3 __at(0x7B33);


extern volatile __bit FRM4 __at(0x7B34);


extern volatile __bit FRM5 __at(0x7B35);


extern volatile __bit FRM6 __at(0x7B36);


extern volatile __bit FRM7 __at(0x7B37);


extern volatile __bit FRM8 __at(0x7B38);


extern volatile __bit FRM9 __at(0x7B39);


extern volatile __bit FSEN __at(0x7B7A);


extern volatile __bit GCEN __at(0x7E2F);


extern volatile __bit GIE __at(0x7F97);


extern volatile __bit GIEH __at(0x7F97);


extern volatile __bit GIEL __at(0x7F96);


extern volatile __bit GIE_GIEH __at(0x7F97);


extern volatile __bit GO __at(0x7E11);


extern volatile __bit GODONE __at(0x7E11);


extern volatile __bit GO_DONE __at(0x7E11);


extern volatile __bit GO_NOT_DONE __at(0x7E11);


extern volatile __bit GO_nDONE __at(0x7E11);


extern volatile __bit HLVDEN __at(0x7E94);


extern volatile __bit HLVDIE __at(0x7D02);


extern volatile __bit HLVDIF __at(0x7D0A);


extern volatile __bit HLVDIN __at(0x7C05);


extern volatile __bit HLVDIP __at(0x7D12);


extern volatile __bit HLVDL0 __at(0x7E90);


extern volatile __bit HLVDL1 __at(0x7E91);


extern volatile __bit HLVDL2 __at(0x7E92);


extern volatile __bit HLVDL3 __at(0x7E93);


extern volatile __bit I2C_DAT __at(0x7E3D);


extern volatile __bit I2C_READ __at(0x7E3A);


extern volatile __bit I2C_START __at(0x7E3B);


extern volatile __bit I2C_STOP __at(0x7E3C);


extern volatile __bit IDLEIE __at(0x7B4C);


extern volatile __bit IDLEIF __at(0x7B44);


extern volatile __bit IDLEN __at(0x7E9F);


extern volatile __bit INT0 __at(0x7C08);


extern volatile __bit INT0E __at(0x7F94);


extern volatile __bit INT0F __at(0x7F91);


extern volatile __bit INT0IE __at(0x7F94);


extern volatile __bit INT0IF __at(0x7F91);


extern volatile __bit INT1 __at(0x7C09);


extern volatile __bit INT1E __at(0x7F83);


extern volatile __bit INT1F __at(0x7F80);


extern volatile __bit INT1IE __at(0x7F83);


extern volatile __bit INT1IF __at(0x7F80);


extern volatile __bit INT1IP __at(0x7F86);


extern volatile __bit INT1P __at(0x7F86);


extern volatile __bit INT2 __at(0x7C0A);


extern volatile __bit INT2E __at(0x7F84);


extern volatile __bit INT2F __at(0x7F81);


extern volatile __bit INT2IE __at(0x7F84);


extern volatile __bit INT2IF __at(0x7F81);


extern volatile __bit INT2IP __at(0x7F87);


extern volatile __bit INT2P __at(0x7F87);


extern volatile __bit INTEDG0 __at(0x7F8E);


extern volatile __bit INTEDG1 __at(0x7F8D);


extern volatile __bit INTEDG2 __at(0x7F8C);


extern volatile __bit INTSRC __at(0x7CDF);


extern volatile __bit IOFS __at(0x7E9A);


extern volatile __bit IPEN __at(0x7E87);


extern volatile __bit IRCF0 __at(0x7E9C);


extern volatile __bit IRCF1 __at(0x7E9D);


extern volatile __bit IRCF2 __at(0x7E9E);


extern volatile __bit IRVST __at(0x7E95);


extern volatile __bit IVRST __at(0x7E95);


extern volatile __bit LA0 __at(0x7C48);


extern volatile __bit LA1 __at(0x7C49);


extern volatile __bit LA2 __at(0x7C4A);


extern volatile __bit LA3 __at(0x7C4B);


extern volatile __bit LA4 __at(0x7C4C);


extern volatile __bit LA5 __at(0x7C4D);


extern volatile __bit LA6 __at(0x7C4E);


extern volatile __bit LATA0 __at(0x7C48);


extern volatile __bit LATA1 __at(0x7C49);


extern volatile __bit LATA2 __at(0x7C4A);


extern volatile __bit LATA3 __at(0x7C4B);


extern volatile __bit LATA4 __at(0x7C4C);


extern volatile __bit LATA5 __at(0x7C4D);


extern volatile __bit LATA6 __at(0x7C4E);


extern volatile __bit LATB0 __at(0x7C50);


extern volatile __bit LATB1 __at(0x7C51);


extern volatile __bit LATB2 __at(0x7C52);


extern volatile __bit LATB3 __at(0x7C53);


extern volatile __bit LATB4 __at(0x7C54);


extern volatile __bit LATB5 __at(0x7C55);


extern volatile __bit LATB6 __at(0x7C56);


extern volatile __bit LATB7 __at(0x7C57);


extern volatile __bit LATC0 __at(0x7C58);


extern volatile __bit LATC1 __at(0x7C59);


extern volatile __bit LATC2 __at(0x7C5A);


extern volatile __bit LATC6 __at(0x7C5E);


extern volatile __bit LATC7 __at(0x7C5F);


extern volatile __bit LATD0 __at(0x7C60);


extern volatile __bit LATD1 __at(0x7C61);


extern volatile __bit LATD2 __at(0x7C62);


extern volatile __bit LATD3 __at(0x7C63);


extern volatile __bit LATD4 __at(0x7C64);


extern volatile __bit LATD5 __at(0x7C65);


extern volatile __bit LATD6 __at(0x7C66);


extern volatile __bit LATD7 __at(0x7C67);


extern volatile __bit LATE0 __at(0x7C68);


extern volatile __bit LATE1 __at(0x7C69);


extern volatile __bit LATE2 __at(0x7C6A);


extern volatile __bit LB0 __at(0x7C50);


extern volatile __bit LB1 __at(0x7C51);


extern volatile __bit LB2 __at(0x7C52);


extern volatile __bit LB3 __at(0x7C53);


extern volatile __bit LB4 __at(0x7C54);


extern volatile __bit LB5 __at(0x7C55);


extern volatile __bit LB6 __at(0x7C56);


extern volatile __bit LB7 __at(0x7C57);


extern volatile __bit LC0 __at(0x7C58);


extern volatile __bit LC1 __at(0x7C59);


extern volatile __bit LC2 __at(0x7C5A);


extern volatile __bit LC6 __at(0x7C5E);


extern volatile __bit LC7 __at(0x7C5F);


extern volatile __bit LD0 __at(0x7C60);


extern volatile __bit LD1 __at(0x7C61);


extern volatile __bit LD2 __at(0x7C62);


extern volatile __bit LD3 __at(0x7C63);


extern volatile __bit LD4 __at(0x7C64);


extern volatile __bit LD5 __at(0x7C65);


extern volatile __bit LD6 __at(0x7C66);


extern volatile __bit LD7 __at(0x7C67);


extern volatile __bit LE0 __at(0x7C68);


extern volatile __bit LE1 __at(0x7C69);


extern volatile __bit LE2 __at(0x7C6A);


extern volatile __bit LVDEN __at(0x7E94);


extern volatile __bit LVDIE __at(0x7D02);


extern volatile __bit LVDIF __at(0x7D0A);


extern volatile __bit LVDIN __at(0x7C05);


extern volatile __bit LVDIP __at(0x7D12);


extern volatile __bit LVDL0 __at(0x7E90);


extern volatile __bit LVDL1 __at(0x7E91);


extern volatile __bit LVDL2 __at(0x7E92);


extern volatile __bit LVDL3 __at(0x7E93);


extern volatile __bit LVV0 __at(0x7E90);


extern volatile __bit LVV1 __at(0x7E91);


extern volatile __bit LVV2 __at(0x7E92);


extern volatile __bit LVV3 __at(0x7E93);


extern volatile __bit NEGATIVE __at(0x7EC4);


extern volatile __bit NOT_A __at(0x7E3D);


extern volatile __bit NOT_ADDRESS __at(0x7E3D);


extern volatile __bit NOT_BOR __at(0x7E80);


extern volatile __bit NOT_DONE __at(0x7E11);


extern volatile __bit NOT_IPEN __at(0x7E87);


extern volatile __bit NOT_PD __at(0x7E82);


extern volatile __bit NOT_POR __at(0x7E81);


extern volatile __bit NOT_RBPU __at(0x7F8F);


extern volatile __bit NOT_RI __at(0x7E84);


extern volatile __bit NOT_T1SYNC __at(0x7E6A);


extern volatile __bit NOT_T3SYNC __at(0x7D8A);


extern volatile __bit NOT_TO __at(0x7E83);


extern volatile __bit NOT_W __at(0x7E3A);


extern volatile __bit NOT_WRITE __at(0x7E3A);


extern volatile __bit OERR __at(0x7D59);


extern volatile __bit OESPP __at(0x7C22);


extern volatile __bit OSC2 __at(0x7C06);


extern volatile __bit OSCFIE __at(0x7D07);


extern volatile __bit OSCFIF __at(0x7D0F);


extern volatile __bit OSCFIP __at(0x7D17);


extern volatile __bit OSTS __at(0x7E9B);


extern volatile __bit OV __at(0x7EC3);


extern volatile __bit OVERFLOW __at(0x7EC3);


extern volatile __bit P1A __at(0x7C12);


extern volatile __bit P1M0 __at(0x7DEE);


extern volatile __bit P1M1 __at(0x7DEF);


extern volatile __bit PA1 __at(0x7C12);


extern volatile __bit PA2 __at(0x7C11);


extern volatile __bit PA2E __at(0x7C27);


extern volatile __bit PB2 __at(0x7C22);


extern volatile __bit PC2 __at(0x7C21);


extern volatile __bit PC3E __at(0x7C23);


extern volatile __bit PCFG0 __at(0x7E08);


extern volatile __bit PCFG1 __at(0x7E09);


extern volatile __bit PCFG2 __at(0x7E0A);


extern volatile __bit PCFG3 __at(0x7E0B);


extern volatile __bit PD __at(0x7E82);


extern volatile __bit PD2 __at(0x7C20);


extern volatile __bit PDC0 __at(0x7DB8);


extern volatile __bit PDC1 __at(0x7DB9);


extern volatile __bit PDC2 __at(0x7DBA);


extern volatile __bit PDC3 __at(0x7DBB);


extern volatile __bit PDC4 __at(0x7DBC);


extern volatile __bit PDC5 __at(0x7DBD);


extern volatile __bit PDC6 __at(0x7DBE);


extern volatile __bit PEIE __at(0x7F96);


extern volatile __bit PEIE_GIEL __at(0x7F96);


extern volatile __bit PEN __at(0x7E2A);


extern volatile __bit PGC __at(0x7C0E);


extern volatile __bit PGD __at(0x7C0F);


extern volatile __bit PGM __at(0x7C0D);


extern volatile __bit PIDEE __at(0x7B58);


extern volatile __bit PIDEF __at(0x7B50);


extern volatile __bit PKTDIS __at(0x7B6C);


extern volatile __bit POR __at(0x7E81);


extern volatile __bit PPB0 __at(0x7B78);


extern volatile __bit PPB1 __at(0x7B79);


extern volatile __bit PPBI __at(0x7B61);


extern volatile __bit PPBRST __at(0x7B6E);


extern volatile __bit PRSEN __at(0x7DBF);


extern volatile __bit PSA __at(0x7EAB);


extern volatile __bit PSPIE __at(0x7CEF);


extern volatile __bit PSPIF __at(0x7CF7);


extern volatile __bit PSPIP __at(0x7CFF);


extern volatile __bit PSSAC0 __at(0x7DB2);


extern volatile __bit PSSAC1 __at(0x7DB3);


extern volatile __bit PSSBD0 __at(0x7DB0);


extern volatile __bit PSSBD1 __at(0x7DB1);


extern volatile __bit __attribute__((__deprecated__)) RA0 __at(0x7C00);


extern volatile __bit __attribute__((__deprecated__)) RA1 __at(0x7C01);


extern volatile __bit __attribute__((__deprecated__)) RA2 __at(0x7C02);


extern volatile __bit __attribute__((__deprecated__)) RA3 __at(0x7C03);


extern volatile __bit __attribute__((__deprecated__)) RA4 __at(0x7C04);


extern volatile __bit __attribute__((__deprecated__)) RA5 __at(0x7C05);


extern volatile __bit __attribute__((__deprecated__)) RA6 __at(0x7C06);


extern volatile __bit __attribute__((__deprecated__)) RB0 __at(0x7C08);


extern volatile __bit __attribute__((__deprecated__)) RB1 __at(0x7C09);


extern volatile __bit __attribute__((__deprecated__)) RB2 __at(0x7C0A);


extern volatile __bit __attribute__((__deprecated__)) RB3 __at(0x7C0B);


extern volatile __bit __attribute__((__deprecated__)) RB4 __at(0x7C0C);


extern volatile __bit __attribute__((__deprecated__)) RB5 __at(0x7C0D);


extern volatile __bit __attribute__((__deprecated__)) RB6 __at(0x7C0E);


extern volatile __bit __attribute__((__deprecated__)) RB7 __at(0x7C0F);


extern volatile __bit RBIE __at(0x7F93);


extern volatile __bit RBIF __at(0x7F90);


extern volatile __bit RBIP __at(0x7F88);


extern volatile __bit RBPU __at(0x7F8F);


extern volatile __bit __attribute__((__deprecated__)) RC0 __at(0x7C10);


extern volatile __bit __attribute__((__deprecated__)) RC1 __at(0x7C11);


extern volatile __bit RC1IE __at(0x7CED);


extern volatile __bit RC1IF __at(0x7CF5);


extern volatile __bit RC1IP __at(0x7CFD);


extern volatile __bit __attribute__((__deprecated__)) RC2 __at(0x7C12);


extern volatile __bit RC4 __at(0x7C14);


extern volatile __bit RC5 __at(0x7C15);


extern volatile __bit __attribute__((__deprecated__)) RC6 __at(0x7C16);


extern volatile __bit __attribute__((__deprecated__)) RC7 __at(0x7C17);


extern volatile __bit RC8_9 __at(0x7D5E);


extern volatile __bit RC9 __at(0x7D5E);


extern volatile __bit RCD8 __at(0x7D58);


extern volatile __bit RCEN __at(0x7E2B);


extern volatile __bit RCIDL __at(0x7DC6);


extern volatile __bit RCIE __at(0x7CED);


extern volatile __bit RCIF __at(0x7CF5);


extern volatile __bit RCIP __at(0x7CFD);


extern volatile __bit RCMT __at(0x7DC6);


extern volatile __bit RD __at(0x7D30);


extern volatile __bit __attribute__((__deprecated__)) RD0 __at(0x7C18);


extern volatile __bit __attribute__((__deprecated__)) RD1 __at(0x7C19);


extern volatile __bit RD163 __at(0x7D8F);


extern volatile __bit __attribute__((__deprecated__)) RD2 __at(0x7C1A);


extern volatile __bit __attribute__((__deprecated__)) RD3 __at(0x7C1B);


extern volatile __bit __attribute__((__deprecated__)) RD4 __at(0x7C1C);


extern volatile __bit __attribute__((__deprecated__)) RD5 __at(0x7C1D);


extern volatile __bit __attribute__((__deprecated__)) RD6 __at(0x7C1E);


extern volatile __bit __attribute__((__deprecated__)) RD7 __at(0x7C1F);


extern volatile __bit RDE __at(0x7C20);


extern volatile __bit RDPU __at(0x7C27);


extern volatile __bit RDSPP __at(0x7B27);


extern volatile __bit __attribute__((__deprecated__)) RE0 __at(0x7C20);


extern volatile __bit __attribute__((__deprecated__)) RE1 __at(0x7C21);


extern volatile __bit __attribute__((__deprecated__)) RE2 __at(0x7C22);


extern volatile __bit RE3 __at(0x7C23);


extern volatile __bit RE7 __at(0x7C27);


extern volatile __bit READ_WRITE __at(0x7E3A);


extern volatile __bit RESUME __at(0x7B6A);


extern volatile __bit RI __at(0x7E84);


extern volatile __bit RSEN __at(0x7E29);


extern volatile __bit RW __at(0x7E3A);


extern volatile __bit RX __at(0x7C17);


extern volatile __bit RX9 __at(0x7D5E);


extern volatile __bit RX9D __at(0x7D58);


extern volatile __bit RXCKP __at(0x7DC5);


extern volatile __bit RXDTP __at(0x7DC5);


extern volatile __bit R_NOT_W __at(0x7E3A);


extern volatile __bit R_W __at(0x7E3A);


extern volatile __bit R_nW __at(0x7E3A);


extern volatile __bit SBOREN __at(0x7E86);


extern volatile __bit SCKP __at(0x7DC4);


extern volatile __bit SCS0 __at(0x7E98);


extern volatile __bit SCS1 __at(0x7E99);


extern volatile __bit SE0 __at(0x7B6D);


extern volatile __bit SEN __at(0x7E28);


extern volatile __bit SENDB __at(0x7D63);


extern volatile __bit SENDB1 __at(0x7D63);


extern volatile __bit SMP __at(0x7E3F);


extern volatile __bit SOFIE __at(0x7B4E);


extern volatile __bit SOFIF __at(0x7B46);


extern volatile __bit SOSCEN __at(0x7E6B);


extern volatile __bit SOSCEN3 __at(0x7D8B);


extern volatile __bit SPEN __at(0x7D5F);


extern volatile __bit SPP0 __at(0x7C18);


extern volatile __bit SPP1 __at(0x7C19);


extern volatile __bit SPP2 __at(0x7C1A);


extern volatile __bit SPP3 __at(0x7C1B);


extern volatile __bit SPP4 __at(0x7C1C);


extern volatile __bit SPP5 __at(0x7C1D);


extern volatile __bit SPP6 __at(0x7C1E);


extern volatile __bit SPP7 __at(0x7C1F);


extern volatile __bit SPPBUSY __at(0x7B24);


extern volatile __bit SPPEN __at(0x7B28);


extern volatile __bit SPPIE __at(0x7CEF);


extern volatile __bit SPPIF __at(0x7CF7);


extern volatile __bit SPPIP __at(0x7CFF);


extern volatile __bit SPPOWN __at(0x7B29);


extern volatile __bit SREN __at(0x7D5D);


extern volatile __bit SRENA __at(0x7D5D);


extern volatile __bit SS2 __at(0x7C1F);


extern volatile __bit SSPEN __at(0x7E35);


extern volatile __bit SSPIE __at(0x7CEB);


extern volatile __bit SSPIF __at(0x7CF3);


extern volatile __bit SSPIP __at(0x7CFB);


extern volatile __bit SSPM0 __at(0x7E30);


extern volatile __bit SSPM1 __at(0x7E31);


extern volatile __bit SSPM2 __at(0x7E32);


extern volatile __bit SSPM3 __at(0x7E33);


extern volatile __bit SSPOV __at(0x7E36);


extern volatile __bit STALLIE __at(0x7B4D);


extern volatile __bit STALLIF __at(0x7B45);


extern volatile __bit START __at(0x7E3B);


extern volatile __bit STKFUL __at(0x7FE7);


extern volatile __bit STKOVF __at(0x7FE7);


extern volatile __bit STKPTR0 __at(0x7FE0);


extern volatile __bit STKPTR1 __at(0x7FE1);


extern volatile __bit STKPTR2 __at(0x7FE2);


extern volatile __bit STKPTR3 __at(0x7FE3);


extern volatile __bit STKPTR4 __at(0x7FE4);


extern volatile __bit STKUNF __at(0x7FE6);


extern volatile __bit STOP __at(0x7E3C);


extern volatile __bit SUSPND __at(0x7B69);


extern volatile __bit SWDTE __at(0x7E88);


extern volatile __bit SWDTEN __at(0x7E88);


extern volatile __bit SYNC __at(0x7D64);


extern volatile __bit SYNC1 __at(0x7D64);


extern volatile __bit T08BIT __at(0x7EAE);


extern volatile __bit T0CKI __at(0x7C04);


extern volatile __bit T0CS __at(0x7EAD);


extern volatile __bit T0IE __at(0x7F95);


extern volatile __bit T0IF __at(0x7F92);


extern volatile __bit T0IP __at(0x7F8A);


extern volatile __bit T0PS0 __at(0x7EA8);


extern volatile __bit T0PS1 __at(0x7EA9);


extern volatile __bit T0PS2 __at(0x7EAA);


extern volatile __bit T0SE __at(0x7EAC);


extern volatile __bit T13CKI __at(0x7C10);


extern volatile __bit T1CKPS0 __at(0x7E6C);


extern volatile __bit T1CKPS1 __at(0x7E6D);


extern volatile __bit T1OSCEN __at(0x7E6B);


extern volatile __bit T1OSI __at(0x7C11);


extern volatile __bit T1OSO __at(0x7C10);


extern volatile __bit T1RD16 __at(0x7E6F);


extern volatile __bit T1RUN __at(0x7E6E);


extern volatile __bit T1SYNC __at(0x7E6A);


extern volatile __bit T2CKPS0 __at(0x7E50);


extern volatile __bit T2CKPS1 __at(0x7E51);


extern volatile __bit T2OUTPS0 __at(0x7E53);


extern volatile __bit T2OUTPS1 __at(0x7E54);


extern volatile __bit T2OUTPS2 __at(0x7E55);


extern volatile __bit T2OUTPS3 __at(0x7E56);


extern volatile __bit T3CCP1 __at(0x7D8B);


extern volatile __bit T3CCP2 __at(0x7D8E);


extern volatile __bit T3CKPS0 __at(0x7D8C);


extern volatile __bit T3CKPS1 __at(0x7D8D);


extern volatile __bit T3NSYNC __at(0x7D8A);


extern volatile __bit T3RD16 __at(0x7D8F);


extern volatile __bit T3SYNC __at(0x7D8A);


extern volatile __bit TMR0IE __at(0x7F95);


extern volatile __bit TMR0IF __at(0x7F92);


extern volatile __bit TMR0IP __at(0x7F8A);


extern volatile __bit TMR0ON __at(0x7EAF);


extern volatile __bit TMR1CS __at(0x7E69);


extern volatile __bit TMR1IE __at(0x7CE8);


extern volatile __bit TMR1IF __at(0x7CF0);


extern volatile __bit TMR1IP __at(0x7CF8);


extern volatile __bit TMR1ON __at(0x7E68);


extern volatile __bit TMR2IE __at(0x7CE9);


extern volatile __bit TMR2IF __at(0x7CF1);


extern volatile __bit TMR2IP __at(0x7CF9);


extern volatile __bit TMR2ON __at(0x7E52);


extern volatile __bit TMR3CS __at(0x7D89);


extern volatile __bit TMR3IE __at(0x7D01);


extern volatile __bit TMR3IF __at(0x7D09);


extern volatile __bit TMR3IP __at(0x7D11);


extern volatile __bit TMR3ON __at(0x7D88);


extern volatile __bit TO __at(0x7E83);


extern volatile __bit TOUTPS0 __at(0x7E53);


extern volatile __bit TOUTPS1 __at(0x7E54);


extern volatile __bit TOUTPS2 __at(0x7E55);


extern volatile __bit TOUTPS3 __at(0x7E56);


extern volatile __bit TRISA0 __at(0x7C90);


extern volatile __bit TRISA1 __at(0x7C91);


extern volatile __bit TRISA2 __at(0x7C92);


extern volatile __bit TRISA3 __at(0x7C93);


extern volatile __bit TRISA4 __at(0x7C94);


extern volatile __bit TRISA5 __at(0x7C95);


extern volatile __bit TRISA6 __at(0x7C96);


extern volatile __bit TRISB0 __at(0x7C98);


extern volatile __bit TRISB1 __at(0x7C99);


extern volatile __bit TRISB2 __at(0x7C9A);


extern volatile __bit TRISB3 __at(0x7C9B);


extern volatile __bit TRISB4 __at(0x7C9C);


extern volatile __bit TRISB5 __at(0x7C9D);


extern volatile __bit TRISB6 __at(0x7C9E);


extern volatile __bit TRISB7 __at(0x7C9F);


extern volatile __bit TRISC0 __at(0x7CA0);


extern volatile __bit TRISC1 __at(0x7CA1);


extern volatile __bit TRISC2 __at(0x7CA2);


extern volatile __bit TRISC6 __at(0x7CA6);


extern volatile __bit TRISC7 __at(0x7CA7);


extern volatile __bit TRISD0 __at(0x7CA8);


extern volatile __bit TRISD1 __at(0x7CA9);


extern volatile __bit TRISD2 __at(0x7CAA);


extern volatile __bit TRISD3 __at(0x7CAB);


extern volatile __bit TRISD4 __at(0x7CAC);


extern volatile __bit TRISD5 __at(0x7CAD);


extern volatile __bit TRISD6 __at(0x7CAE);


extern volatile __bit TRISD7 __at(0x7CAF);


extern volatile __bit TRISE0 __at(0x7CB0);


extern volatile __bit TRISE1 __at(0x7CB1);


extern volatile __bit TRISE2 __at(0x7CB2);


extern volatile __bit TRMT __at(0x7D61);


extern volatile __bit TRMT1 __at(0x7D61);


extern volatile __bit TRNIE __at(0x7B4B);


extern volatile __bit TRNIF __at(0x7B43);


extern volatile __bit TUN0 __at(0x7CD8);


extern volatile __bit TUN1 __at(0x7CD9);


extern volatile __bit TUN2 __at(0x7CDA);


extern volatile __bit TUN3 __at(0x7CDB);


extern volatile __bit TUN4 __at(0x7CDC);


extern volatile __bit TX __at(0x7C16);


extern volatile __bit TX1IE __at(0x7CEC);


extern volatile __bit TX1IF __at(0x7CF4);


extern volatile __bit TX1IP __at(0x7CFC);


extern volatile __bit TX8_9 __at(0x7D66);


extern volatile __bit TX9 __at(0x7D66);


extern volatile __bit TX91 __at(0x7D66);


extern volatile __bit TX9D __at(0x7D60);


extern volatile __bit TX9D1 __at(0x7D60);


extern volatile __bit TXCKP __at(0x7DC4);


extern volatile __bit TXD8 __at(0x7D60);


extern volatile __bit TXEN __at(0x7D65);


extern volatile __bit TXEN1 __at(0x7D65);


extern volatile __bit TXIE __at(0x7CEC);


extern volatile __bit TXIF __at(0x7CF4);


extern volatile __bit TXIP __at(0x7CFC);


extern volatile __bit UA __at(0x7E39);


extern volatile __bit UERRIE __at(0x7B49);


extern volatile __bit UERRIF __at(0x7B41);


extern volatile __bit ULPWUIN __at(0x7C00);


extern volatile __bit UOEMON __at(0x7B7E);


extern volatile __bit UPP0 __at(0x7B78);


extern volatile __bit UPP1 __at(0x7B79);


extern volatile __bit UPUEN __at(0x7B7C);


extern volatile __bit URSTIE __at(0x7B48);


extern volatile __bit URSTIF __at(0x7B40);


extern volatile __bit USBEN __at(0x7B6B);


extern volatile __bit USBIE __at(0x7D05);


extern volatile __bit USBIF __at(0x7D0D);


extern volatile __bit USBIP __at(0x7D15);


extern volatile __bit UTEYE __at(0x7B7F);


extern volatile __bit UTRDIS __at(0x7B7B);


extern volatile __bit VCFG0 __at(0x7E0C);


extern volatile __bit VCFG01 __at(0x7E0C);


extern volatile __bit VCFG1 __at(0x7E0D);


extern volatile __bit VCFG11 __at(0x7E0D);


extern volatile __bit VDIRMAG __at(0x7E97);


extern volatile __bit VREFM __at(0x7C02);


extern volatile __bit VREFP __at(0x7C03);


extern volatile __bit W4E __at(0x7DC1);


extern volatile __bit WAIT0 __at(0x7E5C);


extern volatile __bit WAIT1 __at(0x7E5D);


extern volatile __bit WCOL __at(0x7E37);


extern volatile __bit WM0 __at(0x7E58);


extern volatile __bit WM1 __at(0x7E59);


extern volatile __bit WR __at(0x7D31);


extern volatile __bit WRE __at(0x7C21);


extern volatile __bit WREN __at(0x7D32);


extern volatile __bit WRERR __at(0x7D33);


extern volatile __bit WRSPP __at(0x7B26);


extern volatile __bit WS0 __at(0x7B18);


extern volatile __bit WS1 __at(0x7B19);


extern volatile __bit WS2 __at(0x7B1A);


extern volatile __bit WS3 __at(0x7B1B);


extern volatile __bit WUE __at(0x7DC1);


extern volatile __bit ZERO __at(0x7EC2);


extern volatile __bit nA __at(0x7E3D);


extern volatile __bit nADDRESS __at(0x7E3D);


extern volatile __bit nBOR __at(0x7E80);


extern volatile __bit nDONE __at(0x7E11);


extern volatile __bit nIPEN __at(0x7E87);


extern volatile __bit nPD __at(0x7E82);


extern volatile __bit nPOR __at(0x7E81);


extern volatile __bit nRBPU __at(0x7F8F);


extern volatile __bit nRI __at(0x7E84);


extern volatile __bit nT1SYNC __at(0x7E6A);


extern volatile __bit nT3SYNC __at(0x7D8A);


extern volatile __bit nTO __at(0x7E83);


extern volatile __bit nW __at(0x7E3A);


extern volatile __bit nWRITE __at(0x7E3A);

# 18 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\pic18.h"
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);


# 49
#pragma intrinsic(__nop)
extern void __nop(void);

# 154
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);

# 174
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);


# 182
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);
#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(unsigned char);

# 13 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\c90\stdbool.h"
typedef unsigned char bool;

# 13 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\c90\stdint.h"
typedef signed char int8_t;

# 20
typedef signed int int16_t;

# 28
typedef __int24 int24_t;

# 36
typedef signed long int int32_t;

# 52
typedef unsigned char uint8_t;

# 58
typedef unsigned int uint16_t;

# 65
typedef __uint24 uint24_t;

# 72
typedef unsigned long int uint32_t;

# 88
typedef signed char int_least8_t;

# 96
typedef signed int int_least16_t;

# 109
typedef __int24 int_least24_t;

# 118
typedef signed long int int_least32_t;

# 136
typedef unsigned char uint_least8_t;

# 143
typedef unsigned int uint_least16_t;

# 154
typedef __uint24 uint_least24_t;

# 162
typedef unsigned long int uint_least32_t;

# 181
typedef signed char int_fast8_t;

# 188
typedef signed int int_fast16_t;

# 200
typedef __int24 int_fast24_t;

# 208
typedef signed long int int_fast32_t;

# 224
typedef unsigned char uint_fast8_t;

# 230
typedef unsigned int uint_fast16_t;

# 240
typedef __uint24 uint_fast24_t;

# 247
typedef unsigned long int uint_fast32_t;

# 268
typedef int32_t intmax_t;

# 282
typedef uint32_t uintmax_t;

# 289
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;

# 13 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\c90\stdbool.h"
typedef unsigned char bool;

# 29 "../../../../../../bsp/picdem_fs_usb\buttons.h"
typedef enum
{
BUTTON_NONE,
BUTTON_S2,
BUTTON_S3

} BUTTON;

# 54
bool BUTTON_IsPressed(BUTTON button);

# 72
void BUTTON_Enable(BUTTON button);

# 13 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\c90\stdbool.h"
typedef unsigned char bool;

# 29 "../../../../../../bsp/picdem_fs_usb\leds.h"
typedef enum
{
LED_NONE,
LED_D1,
LED_D2,
LED_D3,
LED_D4


} LED;

# 58
void LED_On(LED led);

# 76
void LED_Off(LED led);

# 94
void LED_Toggle(LED led);

# 112
bool LED_Get(LED led);

# 129
void LED_Enable(LED led);

# 13 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\c90\stdbool.h"
typedef unsigned char bool;

# 32 "../../../../../../bsp/picdem_fs_usb\adc.h"
typedef enum
{
ADC_CHANNEL_0 = 0,
} ADC_CHANNEL;

typedef enum
{
ADC_CONFIGURATION_DEFAULT
} ADC_CONFIGURATION;

# 60
uint8_t ADC_ReadPercentage(ADC_CHANNEL channel);

# 81
uint16_t ADC_Read10bit(ADC_CHANNEL channel);

# 95
bool ADC_Enable(ADC_CHANNEL channel);

# 109
bool ADC_SetConfiguration(ADC_CONFIGURATION configuration);

# 40 ".\system.h"
typedef enum
{
USB_ESTADO_START,
USB_ESTADO_SUSPEND,
USB_ESTADO_RESUME
} USB_ESTADO;

void USB_Init(USB_ESTADO estado );

# 69 "../../../../../../framework/usb/inc\usb_ch9.h"
typedef struct  _USB_DEVICE_DESCRIPTOR
{
uint8_t bLength;
uint8_t bDescriptorType;
uint16_t bcdUSB;
uint8_t bDeviceClass;
uint8_t bDeviceSubClass;
uint8_t bDeviceProtocol;
uint8_t bMaxPacketSize0;
uint16_t idVendor;
uint16_t idProduct;
uint16_t bcdDevice;
uint8_t iManufacturer;
uint8_t iProduct;
uint8_t iSerialNumber;
uint8_t bNumConfigurations;
} USB_DEVICE_DESCRIPTOR;

# 93
typedef struct  _USB_CONFIGURATION_DESCRIPTOR
{
uint8_t bLength;
uint8_t bDescriptorType;
uint16_t wTotalLength;
uint8_t bNumInterfaces;
uint8_t bConfigurationValue;
uint8_t iConfiguration;
uint8_t bmAttributes;
uint8_t bMaxPower;
} USB_CONFIGURATION_DESCRIPTOR;

# 116
typedef struct  _USB_INTERFACE_DESCRIPTOR
{
uint8_t bLength;
uint8_t bDescriptorType;
uint8_t bInterfaceNumber;
uint8_t bAlternateSetting;
uint8_t bNumEndpoints;
uint8_t bInterfaceClass;
uint8_t bInterfaceSubClass;
uint8_t bInterfaceProtocol;
uint8_t iInterface;
} USB_INTERFACE_DESCRIPTOR;

# 135
typedef struct  _USB_ENDPOINT_DESCRIPTOR
{
uint8_t bLength;
uint8_t bDescriptorType;
uint8_t bEndpointAddress;
uint8_t bmAttributes;
uint16_t wMaxPacketSize;
uint8_t bInterval;
} USB_ENDPOINT_DESCRIPTOR;

# 185
typedef struct
{
uint8_t index;
uint8_t type;
uint16_t language_id;

} DESCRIPTOR_ID;

# 200
typedef struct  _USB_OTG_DESCRIPTOR
{
uint8_t bLength;
uint8_t bDescriptorType;
uint8_t bmAttributes;
} USB_OTG_DESCRIPTOR;

# 224
typedef struct  _USB_STRING_DSC
{
uint8_t bLength;
uint8_t bDescriptorType;

} USB_STRING_DESCRIPTOR;

# 243
typedef struct  _USB_DEVICE_QUALIFIER_DESCRIPTOR
{
uint8_t bLength;
uint8_t bType;
uint16_t bcdUSB;
uint8_t bDeviceClass;
uint8_t bDeviceSubClass;
uint8_t bDeviceProtocol;
uint8_t bMaxPacketSize0;
uint8_t bNumConfigurations;
uint8_t bReserved;

} USB_DEVICE_QUALIFIER_DESCRIPTOR;

# 266
typedef union 
{

struct 
{
uint8_t bmRequestType;
uint8_t bRequest;
uint16_t wValue;
uint16_t wIndex;
uint16_t wLength;
};
struct 
{
unsigned :8;
unsigned :8;
union
{
uint16_t Val;
uint8_t v[2];
struct
{
uint8_t LB;
uint8_t HB;
} byte;
} W_Value;

union
{
uint16_t Val;
uint8_t v[2];
struct
{
uint8_t LB;
uint8_t HB;
} byte;
} W_Index;

union
{
uint16_t Val;
uint8_t v[2];
struct
{
uint8_t LB;
uint8_t HB;
} byte;
} W_Length;
};
struct 
{
unsigned Recipient:5;
unsigned RequestType:2;
unsigned DataDir:1;
unsigned :8;
uint8_t bFeature;
unsigned :8;
unsigned :8;
unsigned :8;
unsigned :8;
unsigned :8;
};
struct 
{
union
{
uint8_t bmRequestType;
struct
{
uint8_t recipient: 5;
uint8_t type: 2;
uint8_t direction: 1;
};
}requestInfo;
};
struct 
{
unsigned :8;
unsigned :8;
uint8_t bDscIndex;
uint8_t bDescriptorType;
uint16_t wLangID;
unsigned :8;
unsigned :8;
};
struct 
{
unsigned :8;
unsigned :8;
uint8_t bDevADR;
uint8_t bDevADRH;
unsigned :8;
unsigned :8;
unsigned :8;
unsigned :8;
};
struct 
{
unsigned :8;
unsigned :8;
uint8_t bConfigurationValue;
uint8_t bCfgRSD;
unsigned :8;
unsigned :8;
unsigned :8;
unsigned :8;
};
struct 
{
unsigned :8;
unsigned :8;
uint8_t bAltID;
uint8_t bAltID_H;
uint8_t bIntfID;
uint8_t bIntfID_H;
unsigned :8;
unsigned :8;
};
struct 
{
unsigned :8;
unsigned :8;
unsigned :8;
unsigned :8;
uint8_t bEPID;
uint8_t bEPID_H;
unsigned :8;
unsigned :8;
};
struct 
{
unsigned :8;
unsigned :8;
unsigned :8;
unsigned :8;
unsigned EPNum:4;
unsigned :3;
unsigned EPDir:1;
unsigned :8;
unsigned :8;
unsigned :8;
};



} CTRL_TRF_SETUP, SETUP_PKT, *PSETUP_PKT;

# 13 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\c90\stdbool.h"
typedef unsigned char bool;

# 132 "../../../../../../framework/usb/inc\usb_common.h"
typedef union
{
uint8_t bitmap;
struct
{
uint8_t ep_num: 4;
uint8_t zero_pkt: 1;
uint8_t dts: 1;
uint8_t force_dts: 1;
uint8_t direction: 1;
}field;

} TRANSFER_FLAGS;

# 206
typedef enum
{

EVENT_NONE = 0,

EVENT_DEVICE_STACK_BASE = 1,

EVENT_HOST_STACK_BASE = 100,


EVENT_HUB_ATTACH,


EVENT_STALL,


EVENT_VBUS_SES_REQUEST,




EVENT_VBUS_OVERCURRENT,

# 233
EVENT_VBUS_REQUEST_POWER,




EVENT_VBUS_RELEASE_POWER,

# 247
EVENT_VBUS_POWER_AVAILABLE,



EVENT_UNSUPPORTED_DEVICE,



EVENT_CANNOT_ENUMERATE,



EVENT_CLIENT_INIT_ERROR,

# 265
EVENT_OUT_OF_MEMORY,


EVENT_UNSPECIFIED_ERROR,



EVENT_DETACH,




EVENT_TRANSFER,



EVENT_SOF,


EVENT_RESUME,



EVENT_SUSPEND,



EVENT_RESET,

# 298
EVENT_DATA_ISOC_READ,

# 304
EVENT_DATA_ISOC_WRITE,

# 314
EVENT_OVERRIDE_CLIENT_DRIVER_SELECTION,

# 322
EVENT_1MS,

# 328
EVENT_ALT_INTERFACE,

# 335
EVENT_HOLD_BEFORE_CONFIGURATION,


EVENT_GENERIC_BASE = 400,

EVENT_MSD_BASE = 500,

EVENT_HID_BASE = 600,

EVENT_PRINTER_BASE = 700,

EVENT_CDC_BASE = 800,

EVENT_CHARGER_BASE = 900,

EVENT_AUDIO_BASE = 1000,

EVENT_USER_BASE = 10000,




EVENT_BUS_ERROR = 32767

} USB_EVENT;

# 371
typedef struct _transfer_event_data
{
TRANSFER_FLAGS flags;
uint32_t size;
uint8_t pid;

} USB_TRANSFER_EVENT_DATA;

# 388
typedef struct _vbus_power_data
{
uint8_t port;
uint8_t current;
} USB_VBUS_POWER_EVENT_DATA;

# 401
typedef struct _override_client_driver_data
{
uint16_t idVendor;
uint16_t idProduct;
uint8_t bDeviceClass;
uint8_t bDeviceSubClass;
uint8_t bDeviceProtocol;
} USB_OVERRIDE_CLIENT_DRIVER_EVENT_DATA;

# 463
typedef bool (*USB_EVENT_HANDLER) ( USB_EVENT event, void *data, unsigned int size );

# 73 "../../../../../../framework/usb/inc\usb_device.h"
typedef enum
{

# 78
DETACHED_STATE
= 0x00 ,

# 82
ATTACHED_STATE
= 0x01 ,

# 86
POWERED_STATE
= 0x02 ,

# 90
DEFAULT_STATE
= 0x04 ,

# 97
ADR_PENDING_STATE
= 0x08 ,

# 101
ADDRESS_STATE
= 0x10 ,

# 108
CONFIGURED_STATE
= 0x20
} USB_DEVICE_STATE;



typedef enum
{

EVENT_CONFIGURED
= EVENT_DEVICE_STACK_BASE ,


EVENT_SET_DESCRIPTOR,

# 127
EVENT_EP0_REQUEST,

# 156
EVENT_ATTACH,




EVENT_TRANSFER_TERMINATED

} USB_DEVICE_STACK_EVENTS;

# 195
void USBDeviceInit(void);

# 299
void USBDeviceTasks(void);

# 351
void USBEnableEndpoint(uint8_t ep, uint8_t options);

# 444
void* USBTransferOnePacket(uint8_t ep,uint8_t dir,uint8_t* data,uint8_t len);

# 469
void USBStallEndpoint(uint8_t ep, uint8_t dir);

# 493
void USBCancelIO(uint8_t endpoint);

# 590
void USBDeviceDetach(void);

# 635
void USBDeviceAttach(void);

# 674
void USBCtrlEPAllowStatusStage(void);

# 704
void USBCtrlEPAllowDataStage(void);

# 780
void USBDeferOUTDataStage(void);
extern volatile bool USBDeferOUTDataStagePackets;

# 850
void USBDeferStatusStage(void);
extern volatile bool USBDeferStatusStagePacket;

# 902
bool USBOUTDataStageDeferred(void);

# 985
void USBDeferINDataStage(void);
extern volatile bool USBDeferINDataStagePackets;

# 1039
bool USBINDataStageDeferred(void);

# 1109
bool USBGetRemoteWakeupStatus(void);

# 1166
USB_DEVICE_STATE USBGetDeviceState(void);

# 1222
bool USBGetSuspendState(void);

# 1257
bool USBIsDeviceSuspended(void);

# 1300
bool USBIsBusSuspended(void);

# 1326
void USBSoftDetach(void);

# 1364
bool USBHandleBusy(void* handle);

# 1402
uint16_t USBHandleGetLength(void* handle);

# 1434
uint16_t USBHandleGetAddr(void*);

# 1534
void* USBGetNextHandle(uint8_t ep_num, uint8_t ep_dir);

# 1567
void USBEP0Transmit(uint8_t options);

# 1595
void USBEP0SendRAMPtr(uint8_t* src, uint16_t size, uint8_t Options);

# 1627
void USBEP0SendROMPtr(uint8_t* src, uint16_t size, uint8_t Options);

# 1655
void USBEP0Receive(uint8_t* dest, uint16_t size, void (*function));

# 1690
void* USBTxOnePacket(uint8_t ep, uint8_t* data, uint16_t len);

# 1727
void* USBRxOnePacket(uint8_t ep, uint8_t* data, uint16_t len);

# 1759
bool USB_APPLICATION_EVENT_HANDLER(uint8_t address, USB_EVENT event, void *pdata, uint16_t size);

# 1804
void USBIncrement1msInternalTimers(void);

# 1863
uint32_t USBGet1msTickCount(void);

# 1904
uint8_t USBGetTicksSinceSuspendEnd(void);

# 1976
typedef union
{
uint16_t Val;
uint8_t v[2];
struct
{
uint8_t LB;
uint8_t HB;
} byte;
} uint16_t_VAL;




typedef struct 
{
union 
{


uint8_t *bRam;
const uint8_t *bRom;
uint16_t *wRam;
const uint16_t *wRom;
}pSrc;
union 
{
struct 
{

uint8_t ctrl_trf_mem :1;
uint8_t reserved :5;


uint8_t includeZero :1;

uint8_t busy :1;
}bits;
uint8_t Val;
}info;
uint16_t_VAL  wCount;
}IN_PIPE;

extern volatile IN_PIPE inPipes[];

typedef struct 
{
union 
{


uint8_t *bRam;
uint16_t *wRam;
}pDst;
union 
{
struct 
{
uint8_t reserved :7;

uint8_t busy :1;
}bits;
uint8_t Val;
}info;
uint16_t_VAL wCount;
void (*pFunc)(void);
}OUT_PIPE;

extern volatile bool RemoteWakeup;
extern volatile bool USBBusIsSuspended;
extern volatile USB_DEVICE_STATE USBDeviceState;
extern volatile uint8_t USBActiveConfiguration;
extern volatile uint8_t USBTicksSinceSuspendEnd;

# 4 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\__size_t.h"
typedef unsigned size_t;

# 14 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\c90\string.h"
extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);

# 36
extern char * strcat(char *, const char *);
extern char * strcpy(char *, const char *);
extern char * strncat(char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strdup(const char *);
extern char * strtok(char *, const char *);


extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int stricmp(const char *, const char *);
extern int strncmp(const char *, const char *, size_t);
extern int strnicmp(const char *, const char *, size_t);
extern void * memchr(const void *, int, size_t);
extern size_t strcspn(const char *, const char *);
extern char * strpbrk(const char *, const char *);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * stristr(const char *, const char *);
extern char * strerror(int);
extern size_t strlen(const char *);
extern char * strchr(const char *, int);
extern char * strichr(const char *, int);
extern char * strrchr(const char *, int);
extern char * strrichr(const char *, int);

# 257 "../../../../../../framework/usb/inc\usb_hal_pic18.h"
typedef union _BD_STAT
{
uint8_t Val;
struct{

unsigned BC8:1;
unsigned BC9:1;
unsigned BSTALL:1;
unsigned DTSEN:1;
unsigned INCDIS:1;
unsigned KEN:1;
unsigned DTS:1;
unsigned UOWN:1;
};
struct{


unsigned :2;
unsigned PID0:1;
unsigned PID1:1;
unsigned PID2:1;
unsigned PID3:1;
unsigned :1;
};
struct{
unsigned :2;
unsigned PID:4;
unsigned :2;
};
} BD_STAT;


typedef union __BDT
{
struct
{
BD_STAT STAT;
uint8_t CNT;
uint8_t ADRL;
uint8_t ADRH;
};
struct
{
unsigned :8;
unsigned :8;
uint16_t ADR;
};
uint32_t Val;
uint8_t v[4];
} BDT_ENTRY;


typedef union __USTAT
{
struct
{
unsigned char filler1:1;
unsigned char ping_pong:1;
unsigned char direction:1;
unsigned char endpoint_number:4;
};
uint8_t Val;
} USTAT_FIELDS;

# 327
typedef union _POINTER
{
struct
{
uint8_t bLow;
uint8_t bHigh;

};
uint16_t _word;



uint8_t* bRam;

uint16_t* wRam;


const uint8_t* bRom;
const uint16_t* wRom;




} POINTER;

# 597
extern volatile uint8_t USBActiveConfiguration;
extern volatile IN_PIPE inPipes[1];
extern volatile OUT_PIPE outPipes[1];


extern volatile BDT_ENTRY* pBDTEntryOut[1+1];
extern volatile BDT_ENTRY* pBDTEntryIn[1+1];

# 167 "../../../../../../framework/usb/inc\usb_hal.h"
void OTGCORE_SetDeviceAddr( uint8_t addr );

# 203
void USBHALControlUsbResistors( uint8_t flags );

# 237
bool USBHALSessionIsValid( void );

# 263
bool USBHALControlBusPower( uint8_t cmd );

# 293
unsigned long USBHALGetLastError( void );

# 326
void USBHALHandleBusEvent ( void );

# 367
bool OTGCORE_StallPipe( TRANSFER_FLAGS pipe );

# 404
bool OTGCORE_UnstallPipe( TRANSFER_FLAGS pipe );

# 438
uint16_t OTGCORE_GetStalledEndpoints ( void );

# 475
bool USBHALFlushPipe( TRANSFER_FLAGS pipe );

# 535
bool USBHALTransferData ( TRANSFER_FLAGS flags,
void *buffer,
unsigned int size );

# 575
bool USBHALSetEpConfiguration ( uint8_t ep_num, uint16_t max_pkt_size, uint16_t flags );

# 603
bool USBHALInitialize ( unsigned long flags );

# 98 "../../../../../../framework/usb/inc\usb_device_hid.h"
void USBCheckHIDRequest(void);

# 280
typedef struct _USB_HID_DSC_HEADER
{
uint8_t bDescriptorType;
uint16_t wDscLength;
} USB_HID_DSC_HEADER;



typedef struct _USB_HID_DSC
{
uint8_t bLength;
uint8_t bDescriptorType;
uint16_t bcdHID;
uint8_t bCountryCode;
uint8_t bNumDsc;

# 300
} USB_HID_DSC;


extern volatile CTRL_TRF_SETUP SetupPkt;
extern const uint8_t configDescriptor1[];
extern volatile uint8_t CtrlTrfData[8];

# 32 "../demo_src/app_device_custom_hid.h"
void APP_DeviceCustomHIDInitialize();

# 48
void APP_DeviceCustomHIDStart();

# 64
void APP_DeviceCustomHIDTasks();

# 37 "../demo_src/app_led_usb_status.h"
void APP_LEDUpdateUSBStatus(void);

# 51 "../demo_src/usb_events.c"
bool USER_USB_CALLBACK_EVENT_HANDLER(USB_EVENT event, void *pdata, uint16_t size)
{
switch((int)event)
{
case EVENT_TRANSFER:
break;

case EVENT_SOF:

# 61
APP_LEDUpdateUSBStatus();
break;

case EVENT_SUSPEND:

APP_LEDUpdateUSBStatus();

# 74
USB_Init(USB_ESTADO_SUSPEND);
break;

case EVENT_RESUME:

APP_LEDUpdateUSBStatus();

# 85
USB_Init(USB_ESTADO_RESUME);
break;

case EVENT_CONFIGURED:

# 91
APP_DeviceCustomHIDInitialize();
break;

case EVENT_SET_DESCRIPTOR:
break;

case EVENT_EP0_REQUEST:

# 100
USBCheckHIDRequest();
break;

case EVENT_BUS_ERROR:
break;

case EVENT_TRANSFER_TERMINATED:
break;

default:
break;
}
return 1;
}

