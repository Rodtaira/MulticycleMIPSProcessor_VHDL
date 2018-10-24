                                                                                                                                // --------------------------------------------------------------------
// Copyright (c) 2007 by Terasic Technologies Inc. 
// --------------------------------------------------------------------
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//                      
   //                      
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
 //   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// --------------------------------------------------------------------
//           
//                     Terasic Technologies Inc
//                     356 Fu-Shin E. Rd Sec. 1. JhuBei City,
//                     HsinChu County, Taiwan
//                     302
//
//                     web: http://www.terasic.com/
//                     email: support@terasic.com
//
// --------------------------------------------------------------------
//
// Major Functions:	DE2_70 TOP LEVEL 
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| Johnny FAN        :| 07/07/09  :| Initial Revision
//   V1.1 :| Johnny FAN        :| 07/07/09  :| 1.change fpga device from 
//                                               ep2c70896c8 to ep2c70896c6
//											   2.change module name from DE2P_TOP
//                                               to DE2_70_TOP		
//   V1.2 :| Johnny FAN        :| 07/07/09  :| 1. change for pcb v1.1
//											   2. modify PS2 interface i/o
//											   3. modify GPIO,VGA, and UART interface
//										  		  pin assignment
//											   4. change GPIO_CLKOUT from output to inout
//   V1.21 :| Johnny FAN       :| 07/07/09  :| 1.remove ssram address bus oSRAM_A[19]and oSRAM_A[20]
//											   2.remove flash address bus oFLASH_A[25:22]		
//   V2.0 :| Perly HU          :| 08/12/2010:| Revision to Quartus II 10.0
// --------------------------------------------------------------------

module DE2_70_TOP
	(
		////////////////////	Clock Input	 	////////////////////	 
		CLK_28,							//  28.63636 MHz
		CLOCK_50,							//	50 MHz
		CLK_50_2,						//	50 MHz
		CLK_50_3,						//	50 MHz
		CLK_50_4,						//	50 MHz
		EXT_CLOCK,						//	External Clock
		////////////////////	Push Button		////////////////////
		KEY,								//	Pushbutton[3:0]
		////////////////////	DPDT Switch		////////////////////
		SW,								//	Toggle Switch[17:0]
		////////////////////	7-SEG Dispaly	////////////////////
		HEX0,							//	Seven Segment Digit 0
		//HEX0,						//  Seven Segment Digit 0 decimal point
		HEX1,							//	Seven Segment Digit 1
		//HEX1,						//  Seven Segment Digit 1 decimal point
		HEX2,							//	Seven Segment Digit 2
		//HEX2,						//  Seven Segment Digit 2 decimal point
		HEX3,							//	Seven Segment Digit 3
		//HEX3,						//  Seven Segment Digit 3 decimal point
		HEX4,							//	Seven Segment Digit 4
		//HEX4,						//  Seven Segment Digit 4 decimal point
		HEX5,							//	Seven Segment Digit 5
		//HEX5,						//  Seven Segment Digit 5 decimal point
		HEX6,							//	Seven Segment Digit 6
		//HEX6,						//  Seven Segment Digit 6 decimal point
		HEX7,							//	Seven Segment Digit 7
	//HEX7,						//  Seven Segment Digit 7 decimal point
		////////////////////////	LED		////////////////////////
		LEDG,							//	LED Green[8:0]
		LEDR,							//	LED Red[17:0]
		////////////////////////	UART	////////////////////////
		UART_TXD,						//	UART Transmitter
		UART_RXD,						//	UART Receiver
		UART_CTS,          			//	UART Clear To Send
		UART_RTS,          			//	UART Requst To Send
		////////////////////////	IRDA	////////////////////////
		IRDA_TXD,						//	IRDA Transmitter
		IRDA_RXD,						//	IRDA Receiver
		/////////////////////	SDRAM Interface		////////////////
		DRAM_DQ,							//	SDRAM Data bus 32 Bits
		DRAM0_A,						//	SDRAM0 Address bus 13 Bits
		DRAM1_A,						//	SDRAM1 Address bus 13 Bits
		DRAM0_LDQM0,					//	SDRAM0 Low-byte Data Mask 
		DRAM1_LDQM0,					//	SDRAM1 Low-byte Data Mask 
		DRAM0_UDQM1,					//	SDRAM0 High-byte Data Mask
		DRAM1_UDQM1,					//	SDRAM1 High-byte Data Mask
		DRAM0_WE_N,					//	SDRAM0 Write Enable
		DRAM1_WE_N,					//	SDRAM1 Write Enable
		DRAM0_CAS_N,					//	SDRAM0 Column Address Strobe
		DRAM1_CAS_N,					//	SDRAM1 Column Address Strobe
		DRAM0_RAS_N,					//	SDRAM0 Row Address Strobe
		DRAM1_RAS_N,					//	SDRAM1 Row Address Strobe
		DRAM0_CS_N,					//	SDRAM0 Chip Select
		DRAM1_CS_N,					//	SDRAM1 Chip Select
		DRAM0_BA,						//	SDRAM0 Bank Address
		DRAM1_BA,	 					//	SDRAM1 Bank Address
		DRAM0_CLK,						//	SDRAM0 Clock
		DRAM1_CLK,						//	SDRAM1 Clock
		DRAM0_CKE,						//	SDRAM0 Clock Enable
		DRAM1_CKE,						//	SDRAM1 Clock Enable
		////////////////////	Flash Interface		////////////////
		FLASH_DQ,						//	FLASH Data bus 15 Bits (0 to 14)
		FLASH_DQ15_AM1,				//  FLASH Data bus Bit 15 or Address A-1
		FLASH_A,						//	FLASH Address bus 26 Bits
		FLASH_WE_N,					//	FLASH Write Enable
		FLASH_RST_N,					//	FLASH Reset
		FLASH_WP_N,					//	FLASH Write Protect /Programming Acceleration 
		FLASH_RY_N,					//	FLASH Ready/Busy output 
		FLASH_BYTE_N,					//	FLASH Byte/Word Mode Configuration
		FLASH_OE_N,					//	FLASH Output Enable
		FLASH_CE_N,					//	FLASH Chip Enable
		////////////////////	SRAM Interface		////////////////
		SRAM_DQ,							//	SRAM Data Bus 32 Bits
		SRAM_DPA, 						//  SRAM Parity Data Bus
		SRAM_A,							//	SRAM Address bus 22 Bits
		SRAM_ADSC_N,       			//	SRAM Controller Address Status 	
		SRAM_ADSP_N,              //	SRAM Processor Address Status
		SRAM_ADV_N,               //	SRAM Burst Address Advance
		SRAM_BE_N,                //	SRAM Byte Write Enable
		SRAM_CE1_N,        			//	SRAM Chip Enable
		SRAM_CE2,          			//	SRAM Chip Enable
		SRAM_CE3_N,        			//	SRAM Chip Enable
		SRAM_CLK,                 //	SRAM Clock
		SRAM_GW_N,         			//  SRAM Global Write Enable
		SRAM_OE_N,         			//	SRAM Output Enable
		SRAM_WE_N,         			//	SRAM Write Enable
		////////////////////	ISP1362 Interface	////////////////
		OTG_D,							//	ISP1362 Data bus 16 Bits
		OTG_A,							//	ISP1362 Address 2 Bits
		OTG_CS_N,						//	ISP1362 Chip Select
		OTG_OE_N,						//	ISP1362 Read
		OTG_WE_N,						//	ISP1362 Write
		OTG_RESET_N,					//	ISP1362 Reset
		OTG_FSPEED,						//	USB Full Speed,	0 = Enable, Z = Disable
		OTG_LSPEED,						//	USB Low Speed, 	0 = Enable, Z = Disable
		OTG_INT0,						//	ISP1362 Interrupt 0
		OTG_INT1,						//	ISP1362 Interrupt 1
		OTG_DREQ0,						//	ISP1362 DMA Request 0
		OTG_DREQ1,						//	ISP1362 DMA Request 1
		OTG_DACK0_N,					//	ISP1362 DMA Acknowledge 0
		OTG_DACK1_N,					//	ISP1362 DMA Acknowledge 1
		////////////////////	LCD Module 16X2		////////////////
		LCD_ON,							//	LCD Power ON/OFF
		LCD_BLON,						//	LCD Back Light ON/OFF
		LCD_RW,							//	LCD Read/Write Select, 0 = Write, 1 = Read
		LCD_EN,							//	LCD Enable
		LCD_RS,							//	LCD Command/Data Select, 0 = Command, 1 = Data
		LCD_D,							//	LCD Data bus 8 bits
		////////////////////	SD_Card Interface	////////////////
		SD_DAT,							//	SD Card Data
		SD_DAT3,							//	SD Card Data 3
		SD_CMD,							//	SD Card Command Signal
		SD_CLK,							//	SD Card Clock
		////////////////////	I2C		////////////////////////////
		I2C_SDAT,						//	I2C Data
		I2C_SCLK,						//	I2C Clock
		////////////////////	PS2		////////////////////////////
		PS2_KBDAT,						//	PS2 Keyboard Data
		PS2_KBCLK,						//	PS2 Keyboard Clock		
		PS2_MSDAT,						//	PS2 Mouse Data
		PS2_MSCLK,						//	PS2 Mouse Clock
		////////////////////	VGA		////////////////////////////
		VGA_CLOCK,   					//	VGA Clock
		VGA_HS,							//	VGA H_SYNC
		VGA_VS,							//	VGA V_SYNC
		VGA_BLANK_N,					//	VGA BLANK
		VGA_SYNC_N,					//	VGA SYNC
		VGA_R,   						//	VGA Red[9:0]
		VGA_G,	 						//	VGA Green[9:0]
		VGA_B,  						//	VGA Blue[9:0]
		////////////	Ethernet Interface	////////////////////////
		ENET_D,							//	DM9000A DATA bus 16Bits
		ENET_CMD,						//	DM9000A Command/Data Select, 0 = Command, 1 = Data
		ENET_CS_N,						//	DM9000A Chip Select
		ENET_IOW_N,					//	DM9000A Write
		ENET_IOR_N,					//	DM9000A Read
		ENET_RESET_N,					//	DM9000A Reset
		ENET_INT,						//	DM9000A Interrupt
		ENET_CLK,						//	DM9000A Clock 25 MHz
		////////////////	Audio CODEC		////////////////////////
		AUD_ADCLRCK,					//	Audio CODEC ADC LR Clock
		AUD_ADCDAT,					//	Audio CODEC ADC Data
		AUD_DACLRCK,					//	Audio CODEC DAC LR Clock
		AUD_DACDAT,					//	Audio CODEC DAC Data
		AUD_BCLK,						//	Audio CODEC Bit-Stream Clock
		AUD_XCK,						//	Audio CODEC Chip Clock
		////////////////	TV Decoder		////////////////////////
		TD1_CLK27,						//	TV Decoder1 Line_Lock Output Clock 
		TD1_D,    					   //	TV Decoder1 Data bus 8 bits
		TD1_HS,							//	TV Decoder1 H_SYNC
		TD1_VS,							//	TV Decoder1 V_SYNC
		TD1_RESET_N,					//	TV Decoder1 Reset
		TD2_CLK27,						//	TV Decoder2 Line_Lock Output Clock 		
		TD2_D,    					   //	TV Decoder2 Data bus 8 bits
		TD2_HS,							//	TV Decoder2 H_SYNC
		TD2_VS,							//	TV Decoder2 V_SYNC
		TD2_RESET_N,					//	TV Decoder2 Reset
		////////////////////	GPIO	////////////////////////////
		GPIO_0,							//	GPIO Connection 0 I/O
		GPIO_CLKIN_N0,     			//	GPIO Connection 0 Clock Input 0
		GPIO_CLKIN_P0,          	//	GPIO Connection 0 Clock Input 1
		GPIO_CLKOUT_N0,     			//	GPIO Connection 0 Clock Output 0
		GPIO_CLKOUT_P0,            //	GPIO Connection 0 Clock Output 1
		GPIO_1,							//	GPIO Connection 1 I/O
		GPIO_CLKIN_N1,             //	GPIO Connection 1 Clock Input 0
		GPIO_CLKIN_P1,             //	GPIO Connection 1 Clock Input 1
		GPIO_CLKOUT_N1,            //	GPIO Connection 1 Clock Output 0
		GPIO_CLKOUT_P1             //	GPIO Connection 1 Clock Output 1
	   
	);

//===========================================================================
// PARAMETER declarations
//===========================================================================


//===========================================================================
// PORT declarations
//===========================================================================
////////////////////////	Clock Input	 	////////////////////////
input				CLK_28;					//  28.63636 MHz
input				CLOCK_50;					//	50 MHz
input				CLK_50_2;				//	50 MHz
input          CLK_50_3;				//	50 MHz
input          CLK_50_4;				//	50 MHz
input          EXT_CLOCK;				//	External Clock
////////////////////////	Push Button		////////////////////////
input		[3:0]	KEY;						//	Pushbutton[3:0]
////////////////////////	DPDT Switch		////////////////////////
input		[17:0]SW;						//	Toggle Switch[17:0]
////////////////////////	7-SEG Dispaly	////////////////////////
output	[6:0]	HEX0;					//	Seven Segment Digit 0
//output			//oHEX0_DP;				//  Seven Segment Digit 0 decimal point
output	[6:0]	HEX1;					//	Seven Segment Digit 1
///output			//oHEX1_DP;				//  Seven Segment Digit 1 decimal point
output	[6:0]	HEX2;					//	Seven Segment Digit 2
//output			//oHEX2_DP;				//  Seven Segment Digit 2 decimal point
output	[6:0]	HEX3;					//	Seven Segment Digit 3
//output			//oHEX3_DP;				//  Seven Segment Digit 3 decimal point
output	[6:0]	HEX4;					//	Seven Segment Digit 4
//output			//oHEX4_DP;				//  Seven Segment Digit 4 decimal point
output	[6:0]	HEX5;					//	Seven Segment Digit 5
//output			//oHEX5_DP;				//  Seven Segment Digit 5 decimal point
output	[6:0]	HEX6;					//	Seven Segment Digit 6
//output			//oHEX6_DP;				//  Seven Segment Digit 6 decimal point
output	[6:0]	HEX7;					//	Seven Segment Digit 7
//output			//oHEX7_DP;				//  Seven Segment Digit 7 decimal point
////////////////////////////	LED		////////////////////////////
output	[8:0]	LEDG;					//	LED Green[8:0]
output	[17:0] LEDR;					//	LED Red[17:0]
////////////////////////////	UART	////////////////////////////
output			UART_TXD;				//	UART Transmitter
input				UART_RXD;				//	UART Receiver
output			UART_CTS;          	//	UART Clear To Send
input				UART_RTS;          	//	UART Requst To Send
////////////////////////////	IRDA	////////////////////////////
output			IRDA_TXD;				//	IRDA Transmitter
input				IRDA_RXD;				//	IRDA Receiver
///////////////////////		SDRAM Interface	////////////////////////
inout		[31:0]DRAM_DQ;					//	SDRAM Data bus 32 Bits
output	[12:0] DRAM0_A;				//	SDRAM0 Address bus 13 Bits
output	[12:0] DRAM1_A;				//	SDRAM1 Address bus 13 Bits
output			DRAM0_LDQM0;			//	SDRAM0 Low-byte Data Mask 
output			DRAM1_LDQM0;			//	SDRAM1 Low-byte Data Mask 
output			DRAM0_UDQM1;			//	SDRAM0 High-byte Data Mask
output			DRAM1_UDQM1;			//	SDRAM1 High-byte Data Mask
output			DRAM0_WE_N;			//	SDRAM0 Write Enable
output			DRAM1_WE_N;			//	SDRAM1 Write Enable
output			DRAM0_CAS_N;			//	SDRAM0 Column Address Strobe
output			DRAM1_CAS_N;			//	SDRAM1 Column Address Strobe
output			DRAM0_RAS_N;			//	SDRAM0 Row Address Strobe
output			DRAM1_RAS_N;			//	SDRAM1 Row Address Strobe
output			DRAM0_CS_N;			//	SDRAM0 Chip Select
output			DRAM1_CS_N;			//	SDRAM1 Chip Select
output	[1:0]	DRAM0_BA;				//	SDRAM0 Bank Address
output	[1:0]	DRAM1_BA;		 		//	SDRAM1 Bank Address
output			DRAM0_CLK;				//	SDRAM0 Clock
output			DRAM1_CLK;				//	SDRAM1 Clock
output			DRAM0_CKE;				//	SDRAM0 Clock Enable
output			DRAM1_CKE;				//	SDRAM1 Clock Enable
////////////////////////	Flash Interface	////////////////////////
inout		[14:0]FLASH_DQ;				//	FLASH Data bus 15 Bits (0 to 14)
inout				FLASH_DQ15_AM1;		//  FLASH Data bus Bit 15 or Address A-1
output	[21:0] FLASH_A;				//	FLASH Address bus 22 Bits
output			FLASH_WE_N;			//	FLASH Write Enable
output			FLASH_RST_N;			//	FLASH Reset
output			FLASH_WP_N;			//	FLASH Write Protect /Programming Acceleration 
input				FLASH_RY_N;			//	FLASH Ready/Busy output 
output			FLASH_BYTE_N;			//	FLASH Byte/Word Mode Configuration
output			FLASH_OE_N;			//	FLASH Output Enable
output			FLASH_CE_N;			//	FLASH Chip Enable
////////////////////////	SRAM Interface	////////////////////////
inout		[31:0]SRAM_DQ;					//	SRAM Data Bus 32 Bits
inout		[3:0]	SRAM_DPA; 				//  SRAM Parity Data Bus
output	[18:0] SRAM_A;					//	SRAM Address bus 21 Bits
output			SRAM_ADSC_N;       	//	SRAM Controller Address Status 	
output			SRAM_ADSP_N;        //	SRAM Processor Address Status
output			SRAM_ADV_N;         //	SRAM Burst Address Advance
output	[3:0]	SRAM_BE_N;          //	SRAM Byte Write Enable
output			SRAM_CE1_N;        	//	SRAM Chip Enable
output			SRAM_CE2;          	//	SRAM Chip Enable
output			SRAM_CE3_N;        	//	SRAM Chip Enable
output			SRAM_CLK;           //	SRAM Clock
output			SRAM_GW_N;         	//  SRAM Global Write Enable
output			SRAM_OE_N;         	//	SRAM Output Enable
output			SRAM_WE_N;         	//	SRAM Write Enable
////////////////////	ISP1362 Interface	////////////////////////
inout		[15:0]OTG_D;					//	ISP1362 Data bus 16 Bits
output	[1:0]	OTG_A;					//	ISP1362 Address 2 Bits
output			OTG_CS_N;				//	ISP1362 Chip Select
output			OTG_OE_N;				//	ISP1362 Read
output			OTG_WE_N;				//	ISP1362 Write
output			OTG_RESET_N;			//	ISP1362 Reset
inout				OTG_FSPEED;				//	USB Full Speed,	0 = Enable, Z = Disable
inout				OTG_LSPEED;				//	USB Low Speed, 	0 = Enable, Z = Disable
input				OTG_INT0;				//	ISP1362 Interrupt 0
input				OTG_INT1;				//	ISP1362 Interrupt 1
input				OTG_DREQ0;				//	ISP1362 DMA Request 0
input				OTG_DREQ1;				//	ISP1362 DMA Request 1
output			OTG_DACK0_N;			//	ISP1362 DMA Acknowledge 0
output			OTG_DACK1_N;			//	ISP1362 DMA Acknowledge 1
////////////////////	LCD Module 16X2	////////////////////////////
inout		[7:0]	LCD_D;					//	LCD Data bus 8 bits
output			LCD_ON;					//	LCD Power ON/OFF
output			LCD_BLON;				//	LCD Back Light ON/OFF
output			LCD_RW;					//	LCD Read/Write Select, 0 = Write, 1 = Read
output			LCD_EN;					//	LCD Enable
output			LCD_RS;					//	LCD Command/Data Select, 0 = Command, 1 = Data
////////////////////	SD Card Interface	////////////////////////
inout				SD_DAT;					//	SD Card Data
inout				SD_DAT3;					//	SD Card Data 3
inout				SD_CMD;					//	SD Card Command Signal
output			SD_CLK;					//	SD Card Clock
////////////////////////	I2C		////////////////////////////////
inout				I2C_SDAT;				//	I2C Data
output			I2C_SCLK;				//	I2C Clock
////////////////////////	PS2		////////////////////////////////
inout		 		PS2_KBDAT;				//	PS2 Keyboard Data
inout				PS2_KBCLK;				//	PS2 Keyboard Clock
inout		 		PS2_MSDAT;				//	PS2 Mouse Data
inout				PS2_MSCLK;				//	PS2 Mouse Clock
////////////////////////	VGA			////////////////////////////
output			VGA_CLOCK;   			//	VGA Clock
output			VGA_HS;					//	VGA H_SYNC
output			VGA_VS;					//	VGA V_SYNC
output			VGA_BLANK_N;			//	VGA BLANK
output			VGA_SYNC_N;			//	VGA SYNC
output	[9:0]	VGA_R;   				//	VGA Red[9:0]
output	[9:0]	VGA_G;	 				//	VGA Green[9:0]
output	[9:0]	VGA_B;   				//	VGA Blue[9:0]
////////////////	Ethernet Interface	////////////////////////////
inout	[15:0]	ENET_D;					//	DM9000A DATA bus 16Bits
output			ENET_CMD;				//	DM9000A Command/Data Select, 0 = Command, 1 = Data
output			ENET_CS_N;				//	DM9000A Chip Select
output			ENET_IOW_N;			//	DM9000A Write
output			ENET_IOR_N;			//	DM9000A Read
output			ENET_RESET_N;			//	DM9000A Reset
input				ENET_INT;				//	DM9000A Interrupt
output			ENET_CLK;				//	DM9000A Clock 25 MHz
////////////////////	Audio CODEC		////////////////////////////
inout				AUD_ADCLRCK;			//	Audio CODEC ADC LR Clock
input				AUD_ADCDAT;			//	Audio CODEC ADC Data
inout				AUD_DACLRCK;			//	Audio CODEC DAC LR Clock
output			AUD_DACDAT;			//	Audio CODEC DAC Data
inout				AUD_BCLK;				//	Audio CODEC Bit-Stream Clock
output			AUD_XCK;				//	Audio CODEC Chip Clock
////////////////////	TV Devoder		////////////////////////////
input				TD1_CLK27;				//	TV Decoder1 Line_Lock Output Clock 
input		[7:0]	TD1_D;    				//	TV Decoder1 Data bus 8 bits
input				TD1_HS;					//	TV Decoder1 H_SYNC
input				TD1_VS;					//	TV Decoder1 V_SYNC
output			TD1_RESET_N;			//	TV Decoder1 Reset
input				TD2_CLK27;				//	TV Decoder2 Line_Lock Output Clock 		
input		[7:0]	TD2_D;    				//	TV Decoder2 Data bus 8 bits
input				TD2_HS;					//	TV Decoder2 H_SYNC
input				TD2_VS;					//	TV Decoder2 V_SYNC
output			TD2_RESET_N;			//	TV Decoder2 Reset

////////////////////////	GPIO	////////////////////////////////
inout		[31:0]GPIO_0;					//	GPIO Connection 0 I/O
input				GPIO_CLKIN_N0;     	//	GPIO Connection 0 Clock Input 0
input				GPIO_CLKIN_P0;       //	GPIO Connection 0 Clock Input 1
inout				GPIO_CLKOUT_N0;     	//	GPIO Connection 0 Clock Output 0
inout				GPIO_CLKOUT_P0;      //	GPIO Connection 0 Clock Output 1
inout		[31:0]GPIO_1;					//	GPIO Connection 1 I/O
input				GPIO_CLKIN_N1;       //	GPIO Connection 1 Clock Input 0
input				GPIO_CLKIN_P1;       //	GPIO Connection 1 Clock Input 1
inout				GPIO_CLKOUT_N1;      //	GPIO Connection 1 Clock Output 0
inout				GPIO_CLKOUT_P1;      //	GPIO Connection 1 Clock Output 1
///////////////////////////////////////////////////////////////////
//=============================================================================
// REG/WIRE declarations
//=============================================================================



//=============================================================================
// Structural coding
//=============================================================================

MIPS_Multiciclo Laga
( 
   .clk(CLOCK_50),
	//.entrada(SW[11:0]),
   .reset(SW[12]),
//.reset(SW[13]),
	//.preset(SW[14]),
	//updown(SW[15]),
	.HEX0(HEX0) ,
	.HEX1(HEX1),
	.HEX2(HEX2)	,
	.HEX3(HEX3)	,
	.HEX4(HEX4) ,
	.HEX5(HEX5),
	.HEX6(HEX6)	,
	.HEX7(HEX7)	,
);


//contador_up_down u1 (
//.clk(CLOCK_50),
//.saida(LEDR[11:0]),
//.reset(SW[0]),
//.updown(SW[1])

//);

//ENTITY contador_up_down IS
//	PORT (clk, preset, updown, pause: IN  STD_LOGIC;
//			reset: in std_logic;
//			entrada            : IN STD_logic_VECTOR (11 downto 0);
//		   saida				       : OUT std_logic_VECTOR (11 downto 0));
//END contador_up_down;












endmodule

