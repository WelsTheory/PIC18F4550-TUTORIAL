//Funciones:
void EEPROM_Guardar(int dir, char data);

unsigned char EEPROM_Lectura(int dir);

void EEPROM_Guardar_int16(int dir, int data);
int EEPROM_Lectura_int16(int dir);

long EEPROM_Lectura_int32(int dir);
void EEPROM_Guardar_int32(int dir, long data);

float EEPROM_Lectura_float(int dir);
void EEPROM_Guardar_float(int dir, float data);