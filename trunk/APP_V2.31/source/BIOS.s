;********************* (C) COPYRIGHT 2009 e-Design Co.,Ltd. *********************
; File Name : ASM.c       
; Version   : DS203_APP Ver 2.3x                                Author : bure
;******************************************************************************;
  RSEG CODE:CODE(2)

;===============================================================================
;                        System function entrance
;===============================================================================
; void CTR_HP(void)     USB_HP_Interrupt
;-------------------------------------------------------------------------------
  IMPORT CTR_HP
  EXPORT __CTR_HP
__CTR_HP
    B.W    0x08004201
;===============================================================================
; void USB_Istr(void)   USB_LP_Interrupt
;-------------------------------------------------------------------------------
  IMPORT USB_Istr
  EXPORT __USB_Istr
__USB_Istr
    B.W    0x08004205
;===============================================================================
; void __LCD_Initial(void)  
;-------------------------------------------------------------------------------
  EXPORT __LCD_Initial 
__LCD_Initial 
    B.W    0x08004209
;===============================================================================
; void __Point_SCR(u16 x0, u16 y0)  
;-------------------------------------------------------------------------------
  EXPORT __Point_SCR 
__Point_SCR 
    B.W    0x0800420D
;===============================================================================
; void __LCD_SetPixl(u16 Color)  
;-------------------------------------------------------------------------------
  EXPORT __LCD_SetPixl 
__LCD_SetPixl 
    B.W    0x08004211
;===============================================================================
; void __Clear_Screen(u16 Color)  
;-------------------------------------------------------------------------------
  EXPORT __Clear_Screen 
__Clear_Screen 
    B.W    0x08004215
;===============================================================================
; u16 __Get_TAB_8x14(u8 Code, u16 Row)  
;-------------------------------------------------------------------------------
  EXPORT __Get_TAB_8x14 
__Get_TAB_8x14 
    B.W    0x08004219
;===============================================================================
; void __LCD_Set_Block(u16 x1, u16 x2, u16 y1, u16 y2)  
;-------------------------------------------------------------------------------
  EXPORT __LCD_Set_Block 
__LCD_Set_Block 
    B.W    0x0800421D
;===============================================================================
; void __LCD_DMA_Ready(void)  Wait LCD data DMA ready
;-------------------------------------------------------------------------------
  EXPORT __LCD_DMA_Ready 
__LCD_DMA_Ready 
    B.W    0x08004221
;===============================================================================
; void __LCD_Copy(uc16 *pBuffer, u16 NumPixel)  Send a row data to LCD
;-------------------------------------------------------------------------------
  EXPORT __LCD_Copy
__LCD_Copy
    B.W    0x08004225
;===============================================================================
; void __LCD_Fill(u16  *pBuffer, u16 NumPixel)  Fill number of pixel by DMA 
;-------------------------------------------------------------------------------
  EXPORT __LCD_Fill
__LCD_Fill
    B.W    0x08004229
;===============================================================================
; void __Row_DMA_Ready(void)  Wait row base data DMA ready
;-------------------------------------------------------------------------------
  EXPORT __Row_DMA_Ready 
__Row_DMA_Ready 
    B.W    0x0800422D
;===============================================================================
; void __Row_Copy(uc16 *S_Buffer,u16 *T_Buffer) Copy one row base data to buffer
;-------------------------------------------------------------------------------
  EXPORT __Row_Copy
__Row_Copy
    B.W    0x08004231
;===============================================================================
; u32 __Read_FIFO(void) 
;-------------------------------------------------------------------------------
  EXPORT __Read_FIFO
__Read_FIFO
    B.W    0x08004235  
;===============================================================================
; u32 __Input_Lic(u16 x0, u8 y0, u16 Color);  Return: 32Bits Licence 
;-------------------------------------------------------------------------------
  EXPORT __Input_Lic
__Input_Lic
    B.W    0x08004239
;===============================================================================
; u32 GetDev_SN(void);  Get 32bits Device Serial Number
;-------------------------------------------------------------------------------
  EXPORT __GetDev_SN
__GetDev_SN
    B.W    0x0800423D
;===============================================================================
; u8 __Chk_SYS(u32 Licence)   Check SYS licence            RET: 1 = licence ok
;-------------------------------------------------------------------------------
  EXPORT __Chk_SYS
__Chk_SYS
    B.W    0x08004241
;===============================================================================
; u8 __Ident(u32 Dev_ID, u32 Proj_ID, u32 Lic_No)          RET: 1 = licence ok
;-------------------------------------------------------------------------------
  EXPORT __Ident
__Ident
    B.W    0x08004245
;===============================================================================
; void __Display_Str(u16 x0, u16 y0, u16 Color, u8 Mode, u8 *s)                      
;-------------------------------------------------------------------------------
  EXPORT __Display_Str
__Display_Str
    B.W    0x08004249
;===============================================================================
; void __Set(u8 Device, u32 Value)            Hardware control device Settings
;-------------------------------------------------------------------------------
  EXPORT __Set
__Set
    B.W    0x0800424D 
;===============================================================================
; void Set_Param(u8 RegAddr, u8 Parameter)       Trigger control parameter set
;-------------------------------------------------------------------------------
  EXPORT __Set_Param
__Set_Param
    B.W    0x08004251 
;===============================================================================
; u32 __Get(u8 Kind)                           Get hardware attribute & status
;-------------------------------------------------------------------------------
  EXPORT __Get
__Get
    B.W    0x08004255
;===============================================================================
; void __Disk_Buff_WR(u8* pBuffer, u32 WriteAddr);
;-------------------------------------------------------------------------------
  EXPORT __Disk_Buff_WR
__Disk_Buff_WR
    B.W    0x08004259
;===============================================================================
; void __Disk_Buff_RD(u8* pBuffer, u32 ReadAddr, u16 NumByteToRead);
;-------------------------------------------------------------------------------
  EXPORT __Disk_Buff_RD
__Disk_Buff_RD
    B.W    0x0800425D
;===============================================================================
; void __Param_Area_WR(u8* pBuffer, u8 PageNum)
;-------------------------------------------------------------------------------
  EXPORT __Param_Area_WR
__Param_Area_WR
    B.W    0x08004261
;===============================================================================
; void __Param_Area_RD(u8* pBuffer, u8 PageNum)
;-------------------------------------------------------------------------------
  EXPORT __Param_Area_RD
__Param_Area_RD
    B.W    0x08004265
;===============================================================================
; u16 __LCD_GetPixl(void)  
;-------------------------------------------------------------------------------
  EXPORT __LCD_GetPixl 
__LCD_GetPixl 
    B.W    0x08004269
;===============================================================================
; void __USB_Init(void)                      
;-------------------------------------------------------------------------------
  EXPORT __USB_Init
__USB_Init
    B.W    0x0800426D
;===============================================================================
; u8 __FLASH_Erase(u32 Address)                                    RET: 1 = ok
;-------------------------------------------------------------------------------
  EXPORT __FLASH_Erase
__FLASH_Erase
    B.W    0x08004271
;===============================================================================
; u8 __FLASH_Prog(u32 Address, u16 Data)                           RET: 1 = ok    
;-------------------------------------------------------------------------------
  EXPORT __FLASH_Prog
__FLASH_Prog
    B.W    0x08004275
;===============================================================================
; void __FLASH_Unlock(void)
;-------------------------------------------------------------------------------
  EXPORT __FLASH_Unlock
__FLASH_Unlock
    B.W    0x08004279
;===============================================================================
; void __FLASH_Lock(void)
;-------------------------------------------------------------------------------
  EXPORT __FLASH_Lock
__FLASH_Lock
    B.W    0x0800427D
    
  END

;******************************* END OF FILE ***********************************
  

