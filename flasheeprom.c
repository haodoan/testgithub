#include "flasheeprom.h"
#include "stm8s.h"
/**
  * @brief  Configure the FLASH for block programming
  * @param  None
  * @retval None
  */
void FLASH_Config(void)
{
 /* Define flash programming Time*/
  FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);

  FLASH_Unlock(FLASH_MEMTYPE_PROG);
  /* Wait until Flash Program area unlocked flag is set*/
  while (FLASH_GetFlagStatus(FLASH_FLAG_PUL) == RESET)
  {}

  /* Unlock flash data eeprom memory */
  FLASH_Unlock(FLASH_MEMTYPE_DATA);
  /* Wait until Data EEPROM area unlocked flag is set*/
  while (FLASH_GetFlagStatus(FLASH_FLAG_DUL) == RESET)
  {}
}

void FlashWriteEEprom(void *Data,uint16_t write_number)
{
        uint8_t *Tempdata = (uint8_t*)Data;
      /* Erase block 0 and verify it */
      /* This function is executed from RAM */
      FLASH_EraseBlock(BLOCK_OPERATION, FLASH_MEMTYPE_DATA);
      /* Wait until End of high voltage flag is set*/
      while (FLASH_GetFlagStatus(FLASH_FLAG_HVOFF) == RESET)
      {}
     /* This function is executed from RAM */
      FLASH_ProgramBlock(BLOCK_OPERATION, FLASH_MEMTYPE_DATA, FLASH_PROGRAMMODE_STANDARD, Tempdata);

      /* Wait until End of high voltage flag is set*/
      while (FLASH_GetFlagStatus(FLASH_FLAG_HVOFF) == RESET)
      {}
}
void FlashReadEEprom(void *Data,uint16_t write_number)
{
    uint32_t add = 0, startadd = 0, stopadd = 0;
    uint8_t *Tempdata = (uint8_t*)Data;
    /* Check the programmed block */
    startadd = FLASH_DATA_START_PHYSICAL_ADDRESS + ((uint16_t)BLOCK_OPERATION * (uint16_t)write_number);
    stopadd = startadd + (uint16_t)write_number;
    for (add = startadd; add < stopadd; add++)
    {
       *(Tempdata + add - startadd) = FLASH_ReadByte(add);
    }
}

//Ham luu thay doi admin,nguoi dung,mat khau
void SaveThayDoi(STRUCT_EEPROM_SAVE *flashv,char function)
{
		if(function == SAVEMEM)
		{
			function = UNSAVE;
			FlashWriteEEprom(flashv,sizeof(STRUCT_EEPROM_SAVE));
		}

}
//Ham doc admin,user,password trong bo nho
void ReadMemmory(STRUCT_EEPROM_SAVE *flashv)
{
   FlashReadEEprom(flashv,sizeof(STRUCT_EEPROM_SAVE));
}

