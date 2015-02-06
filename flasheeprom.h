#ifndef __FLASHEEPROM_H
#define __FLASHEEPROM_H

#include "sim900_register.h"




#define BLOCK_OPERATION    0    /* block 0 in data eeprom memory: address is 0x4000 */
//void FlashReadEEprom(void *Data,uint16_t write_number);
//FLASH_Status FlashWriteEEprom(void *Data,uint16_t write_number);

enum
{
	UNSAVE = 0,
	SAVEMEM
};


typedef struct
{
	STRUCT_USER user[6];
	char cnt_user;
}STRUCT_EEPROM_SAVE;

void FLASH_Config(void);
void ReadMemmory(STRUCT_EEPROM_SAVE *flashv);
void SaveThayDoi(STRUCT_EEPROM_SAVE *flashv,char function);

#endif
