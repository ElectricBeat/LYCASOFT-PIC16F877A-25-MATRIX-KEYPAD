#include<pic.h>
#include<htc.h>
#define _XTAL_FREQ 20e6
__CONFIG(0X3F3A);

#define RS RD2
#define EN RD3

#define ON 1
#define OFF 0

void Lcd_Command(const unsigned char cmd)
{
	PORTD = (cmd & 0XF0);
	RS = OFF;
	EN = ON;
	__delay_ms(5);
	EN = OFF;

	PORTD = ((cmd<<4) & 0xF0);
	RS = OFF;
	EN = ON;
	__delay_ms(5);
	EN = OFF;
}

void Lcd_Data(const unsigned char Data)
{
	PORTD = (Data & 0XF0);
	RS = ON;
	EN = ON;
	__delay_ms(5);
	EN = OFF;

	PORTD = ((Data<<4) & 0xF0);
	RS = ON;
	EN = ON;
	__delay_ms(5);
	EN = OFF;
}

void Lcd_String(const unsigned char *Str)
{
	while(*Str != 0)
	{
		Lcd_Data(*Str++);
	}	
}

void Lcd_Intialization()
{
	Lcd_Command(0x02);
	Lcd_Command(0x28);
	Lcd_Command(0x0c);
}

char READ_SWITCHES()
{
	while(1)
	{
		PORTC = 0x04;  
		{
			if ((RC2==1)&&(RC4==1))
			{
				Lcd_Command(0XC7);
				Lcd_Data('1');
			}
			if ((RC2==1)&&(RC5==1))
			{
				Lcd_Command(0XC7);
				Lcd_Data('4');
			}
			if ((RC2==1)&&(RC6==1))
			{
				Lcd_Command(0XC7);
				Lcd_Data('7');
			}
			if ((RC2==1)&&(RC7==1))
			{
				Lcd_Command(0XC7);
				Lcd_Data('*');
			}
		}

		PORTC = 0x02;  
		{
			if ((RC1==1)&&(RC4==1))
			{
				Lcd_Command(0XC7);
				Lcd_Data('2');
			}
			if ((RC1==1)&&(RC5==1))
			{
				Lcd_Command(0XC7);
				Lcd_Data('5');
			}
			if ((RC1==1)&&(RC6==1))
			{
				Lcd_Command(0XC7);
				Lcd_Data('8');
			}
			if ((RC1==1)&&(RC7==1))
			{
				Lcd_Command(0XC7);
				Lcd_Data('0');
			}
		}

		PORTC = 0x01;  
		{
			if ((RC0==1)&&(RC4==1))
			{
				Lcd_Command(0XC7);
				Lcd_Data('3');
			}
			if ((RC0==1)&&(RC5==1))
			{
				Lcd_Command(0XC7);
				Lcd_Data('6');
			}
			if ((RC0==1)&&(RC6==1))
			{
				Lcd_Command(0XC7);
				Lcd_Data('9');
			}
			if ((RC0==1)&&(RC7==1))
			{
				Lcd_Command(0XC7);
				Lcd_Data('#');
			}
		}
	}
}

void main()
{
	TRISD=0X00;
	PORTD=0X00;
	TRISC=0XF0;
	PORTC=0X00;
	
	Lcd_Intialization();

	Lcd_Command(0x80);
	Lcd_String("LYCA SOFT");

	Lcd_Command(0xC0);
	Lcd_String("KEPDAD:");
	
	while(1)
	{
		READ_SWITCHES();
	}
}