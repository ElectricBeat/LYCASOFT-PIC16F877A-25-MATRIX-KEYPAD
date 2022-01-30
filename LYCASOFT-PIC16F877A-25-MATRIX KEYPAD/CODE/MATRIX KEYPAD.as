opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 4 "E:\02-CODING\05-LYCASOFT CODING\02-CODING\24-MATRIX KEYPAD\CODE\MATRIX KEYPAD.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "E:\02-CODING\05-LYCASOFT CODING\02-CODING\24-MATRIX KEYPAD\CODE\MATRIX KEYPAD.c"
	dw 0X3F3A ;#
	FNCALL	_main,_Lcd_Intialization
	FNCALL	_main,_Lcd_Command
	FNCALL	_main,_Lcd_String
	FNCALL	_main,_READ_SWITCHES
	FNCALL	_READ_SWITCHES,_Lcd_Command
	FNCALL	_READ_SWITCHES,_Lcd_Data
	FNCALL	_Lcd_Intialization,_Lcd_Command
	FNCALL	_Lcd_String,_Lcd_Data
	FNROOT	_main
	global	_PORTC
psect	text112,local,class=CODE,delta=2
global __ptext112
__ptext112:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
	global	_RC7
_RC7	set	63
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	76	;'L'
	retlw	89	;'Y'
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	84	;'T'
	retlw	0
psect	strings
	
STR_2:	
	retlw	75	;'K'
	retlw	69	;'E'
	retlw	80	;'P'
	retlw	68	;'D'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	58	;':'
	retlw	0
psect	strings
	file	"MATRIX KEYPAD.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Lcd_Command
?_Lcd_Command:	; 0 bytes @ 0x0
	global	??_Lcd_Command
??_Lcd_Command:	; 0 bytes @ 0x0
	global	?_Lcd_Data
?_Lcd_Data:	; 0 bytes @ 0x0
	global	??_Lcd_Data
??_Lcd_Data:	; 0 bytes @ 0x0
	global	?_Lcd_String
?_Lcd_String:	; 0 bytes @ 0x0
	global	?_Lcd_Intialization
?_Lcd_Intialization:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_READ_SWITCHES
?_READ_SWITCHES:	; 1 bytes @ 0x0
	ds	2
	global	Lcd_Command@cmd
Lcd_Command@cmd:	; 1 bytes @ 0x2
	global	Lcd_Data@Data
Lcd_Data@Data:	; 1 bytes @ 0x2
	ds	1
	global	??_Lcd_String
??_Lcd_String:	; 0 bytes @ 0x3
	global	??_Lcd_Intialization
??_Lcd_Intialization:	; 0 bytes @ 0x3
	global	??_READ_SWITCHES
??_READ_SWITCHES:	; 0 bytes @ 0x3
	ds	1
	global	Lcd_String@Str
Lcd_String@Str:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
;;Data sizes: Strings 18, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       5
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; Lcd_String@Str	PTR const unsigned char  size(1) Largest target is 10
;;		 -> STR_2(CODE[8]), STR_1(CODE[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Lcd_String
;;   _READ_SWITCHES->_Lcd_Command
;;   _READ_SWITCHES->_Lcd_Data
;;   _Lcd_Intialization->_Lcd_Command
;;   _Lcd_String->_Lcd_Data
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     180
;;                  _Lcd_Intialization
;;                        _Lcd_Command
;;                         _Lcd_String
;;                      _READ_SWITCHES
;; ---------------------------------------------------------------------------------
;; (1) _READ_SWITCHES                                        0     0      0      60
;;                        _Lcd_Command
;;                           _Lcd_Data
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Intialization                                    0     0      0      30
;;                        _Lcd_Command
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_String                                           2     2      0      60
;;                                              3 COMMON     2     2      0
;;                           _Lcd_Data
;; ---------------------------------------------------------------------------------
;; (2) _Lcd_Data                                             3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _Lcd_Command                                          3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Lcd_Intialization
;;     _Lcd_Command
;;   _Lcd_Command
;;   _Lcd_String
;;     _Lcd_Data
;;   _READ_SWITCHES
;;     _Lcd_Command
;;     _Lcd_Data
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       5       1       35.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 136 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\24-MATRIX KEYPAD\CODE\MATRIX KEYPAD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Intialization
;;		_Lcd_Command
;;		_Lcd_String
;;		_READ_SWITCHES
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\24-MATRIX KEYPAD\CODE\MATRIX KEYPAD.c"
	line	136
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	137
	
l2756:	
;MATRIX KEYPAD.c: 137: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	138
;MATRIX KEYPAD.c: 138: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	139
	
l2758:	
;MATRIX KEYPAD.c: 139: TRISC=0XF0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	140
	
l2760:	
;MATRIX KEYPAD.c: 140: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	142
	
l2762:	
;MATRIX KEYPAD.c: 142: Lcd_Intialization();
	fcall	_Lcd_Intialization
	line	144
	
l2764:	
;MATRIX KEYPAD.c: 144: Lcd_Command(0x80);
	movlw	(080h)
	fcall	_Lcd_Command
	line	145
	
l2766:	
;MATRIX KEYPAD.c: 145: Lcd_String("LYCA SOFT");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_Lcd_String
	line	147
	
l2768:	
;MATRIX KEYPAD.c: 147: Lcd_Command(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	148
	
l2770:	
;MATRIX KEYPAD.c: 148: Lcd_String("KEPDAD:");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_Lcd_String
	goto	l2772
	line	150
;MATRIX KEYPAD.c: 150: while(1)
	
l720:	
	line	152
	
l2772:	
;MATRIX KEYPAD.c: 151: {
;MATRIX KEYPAD.c: 152: READ_SWITCHES();
	fcall	_READ_SWITCHES
	goto	l2772
	line	153
	
l721:	
	line	150
	goto	l2772
	
l722:	
	line	154
	
l723:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_READ_SWITCHES
psect	text113,local,class=CODE,delta=2
global __ptext113
__ptext113:

;; *************** function _READ_SWITCHES *****************
;; Defined at:
;;		line 58 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\24-MATRIX KEYPAD\CODE\MATRIX KEYPAD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Command
;;		_Lcd_Data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text113
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\24-MATRIX KEYPAD\CODE\MATRIX KEYPAD.c"
	line	58
	global	__size_of_READ_SWITCHES
	__size_of_READ_SWITCHES	equ	__end_of_READ_SWITCHES-_READ_SWITCHES
	
_READ_SWITCHES:	
	opt	stack 6
; Regs used in _READ_SWITCHES: [wreg+status,2+status,0+pclath+cstack]
	line	59
;MATRIX KEYPAD.c: 59: while(1)
	
l702:	
	line	61
	
l2678:	
;MATRIX KEYPAD.c: 60: {
;MATRIX KEYPAD.c: 61: PORTC = 0x04;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	63
	
l2680:	
;MATRIX KEYPAD.c: 62: {
;MATRIX KEYPAD.c: 63: if ((RC2==1)&&(RC4==1))
	btfss	(58/8),(58)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l2686
u2250:
	
l2682:	
	btfss	(60/8),(60)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l2686
u2260:
	line	65
	
l2684:	
;MATRIX KEYPAD.c: 64: {
;MATRIX KEYPAD.c: 65: Lcd_Command(0XC7);
	movlw	(0C7h)
	fcall	_Lcd_Command
	line	66
;MATRIX KEYPAD.c: 66: Lcd_Data('1');
	movlw	(031h)
	fcall	_Lcd_Data
	goto	l2686
	line	67
	
l703:	
	line	68
	
l2686:	
;MATRIX KEYPAD.c: 67: }
;MATRIX KEYPAD.c: 68: if ((RC2==1)&&(RC5==1))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l2692
u2270:
	
l2688:	
	btfss	(61/8),(61)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l2692
u2280:
	line	70
	
l2690:	
;MATRIX KEYPAD.c: 69: {
;MATRIX KEYPAD.c: 70: Lcd_Command(0XC7);
	movlw	(0C7h)
	fcall	_Lcd_Command
	line	71
;MATRIX KEYPAD.c: 71: Lcd_Data('4');
	movlw	(034h)
	fcall	_Lcd_Data
	goto	l2692
	line	72
	
l704:	
	line	73
	
l2692:	
;MATRIX KEYPAD.c: 72: }
;MATRIX KEYPAD.c: 73: if ((RC2==1)&&(RC6==1))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l2698
u2290:
	
l2694:	
	btfss	(62/8),(62)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l2698
u2300:
	line	75
	
l2696:	
;MATRIX KEYPAD.c: 74: {
;MATRIX KEYPAD.c: 75: Lcd_Command(0XC7);
	movlw	(0C7h)
	fcall	_Lcd_Command
	line	76
;MATRIX KEYPAD.c: 76: Lcd_Data('7');
	movlw	(037h)
	fcall	_Lcd_Data
	goto	l2698
	line	77
	
l705:	
	line	78
	
l2698:	
;MATRIX KEYPAD.c: 77: }
;MATRIX KEYPAD.c: 78: if ((RC2==1)&&(RC7==1))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l2704
u2310:
	
l2700:	
	btfss	(63/8),(63)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l2704
u2320:
	line	80
	
l2702:	
;MATRIX KEYPAD.c: 79: {
;MATRIX KEYPAD.c: 80: Lcd_Command(0XC7);
	movlw	(0C7h)
	fcall	_Lcd_Command
	line	81
;MATRIX KEYPAD.c: 81: Lcd_Data('*');
	movlw	(02Ah)
	fcall	_Lcd_Data
	goto	l2704
	line	82
	
l706:	
	line	85
	
l2704:	
;MATRIX KEYPAD.c: 82: }
;MATRIX KEYPAD.c: 83: }
;MATRIX KEYPAD.c: 85: PORTC = 0x02;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	87
	
l2706:	
;MATRIX KEYPAD.c: 86: {
;MATRIX KEYPAD.c: 87: if ((RC1==1)&&(RC4==1))
	btfss	(57/8),(57)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l2712
u2330:
	
l2708:	
	btfss	(60/8),(60)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l2712
u2340:
	line	89
	
l2710:	
;MATRIX KEYPAD.c: 88: {
;MATRIX KEYPAD.c: 89: Lcd_Command(0XC7);
	movlw	(0C7h)
	fcall	_Lcd_Command
	line	90
;MATRIX KEYPAD.c: 90: Lcd_Data('2');
	movlw	(032h)
	fcall	_Lcd_Data
	goto	l2712
	line	91
	
l707:	
	line	92
	
l2712:	
;MATRIX KEYPAD.c: 91: }
;MATRIX KEYPAD.c: 92: if ((RC1==1)&&(RC5==1))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(57/8),(57)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l2718
u2350:
	
l2714:	
	btfss	(61/8),(61)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l2718
u2360:
	line	94
	
l2716:	
;MATRIX KEYPAD.c: 93: {
;MATRIX KEYPAD.c: 94: Lcd_Command(0XC7);
	movlw	(0C7h)
	fcall	_Lcd_Command
	line	95
;MATRIX KEYPAD.c: 95: Lcd_Data('5');
	movlw	(035h)
	fcall	_Lcd_Data
	goto	l2718
	line	96
	
l708:	
	line	97
	
l2718:	
;MATRIX KEYPAD.c: 96: }
;MATRIX KEYPAD.c: 97: if ((RC1==1)&&(RC6==1))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(57/8),(57)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l2724
u2370:
	
l2720:	
	btfss	(62/8),(62)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l2724
u2380:
	line	99
	
l2722:	
;MATRIX KEYPAD.c: 98: {
;MATRIX KEYPAD.c: 99: Lcd_Command(0XC7);
	movlw	(0C7h)
	fcall	_Lcd_Command
	line	100
;MATRIX KEYPAD.c: 100: Lcd_Data('8');
	movlw	(038h)
	fcall	_Lcd_Data
	goto	l2724
	line	101
	
l709:	
	line	102
	
l2724:	
;MATRIX KEYPAD.c: 101: }
;MATRIX KEYPAD.c: 102: if ((RC1==1)&&(RC7==1))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(57/8),(57)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l2730
u2390:
	
l2726:	
	btfss	(63/8),(63)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l2730
u2400:
	line	104
	
l2728:	
;MATRIX KEYPAD.c: 103: {
;MATRIX KEYPAD.c: 104: Lcd_Command(0XC7);
	movlw	(0C7h)
	fcall	_Lcd_Command
	line	105
;MATRIX KEYPAD.c: 105: Lcd_Data('0');
	movlw	(030h)
	fcall	_Lcd_Data
	goto	l2730
	line	106
	
l710:	
	line	109
	
l2730:	
;MATRIX KEYPAD.c: 106: }
;MATRIX KEYPAD.c: 107: }
;MATRIX KEYPAD.c: 109: PORTC = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	111
	
l2732:	
;MATRIX KEYPAD.c: 110: {
;MATRIX KEYPAD.c: 111: if ((RC0==1)&&(RC4==1))
	btfss	(56/8),(56)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l2738
u2410:
	
l2734:	
	btfss	(60/8),(60)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l2738
u2420:
	line	113
	
l2736:	
;MATRIX KEYPAD.c: 112: {
;MATRIX KEYPAD.c: 113: Lcd_Command(0XC7);
	movlw	(0C7h)
	fcall	_Lcd_Command
	line	114
;MATRIX KEYPAD.c: 114: Lcd_Data('3');
	movlw	(033h)
	fcall	_Lcd_Data
	goto	l2738
	line	115
	
l711:	
	line	116
	
l2738:	
;MATRIX KEYPAD.c: 115: }
;MATRIX KEYPAD.c: 116: if ((RC0==1)&&(RC5==1))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u2431
	goto	u2430
u2431:
	goto	l2744
u2430:
	
l2740:	
	btfss	(61/8),(61)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l2744
u2440:
	line	118
	
l2742:	
;MATRIX KEYPAD.c: 117: {
;MATRIX KEYPAD.c: 118: Lcd_Command(0XC7);
	movlw	(0C7h)
	fcall	_Lcd_Command
	line	119
;MATRIX KEYPAD.c: 119: Lcd_Data('6');
	movlw	(036h)
	fcall	_Lcd_Data
	goto	l2744
	line	120
	
l712:	
	line	121
	
l2744:	
;MATRIX KEYPAD.c: 120: }
;MATRIX KEYPAD.c: 121: if ((RC0==1)&&(RC6==1))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u2451
	goto	u2450
u2451:
	goto	l2750
u2450:
	
l2746:	
	btfss	(62/8),(62)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l2750
u2460:
	line	123
	
l2748:	
;MATRIX KEYPAD.c: 122: {
;MATRIX KEYPAD.c: 123: Lcd_Command(0XC7);
	movlw	(0C7h)
	fcall	_Lcd_Command
	line	124
;MATRIX KEYPAD.c: 124: Lcd_Data('9');
	movlw	(039h)
	fcall	_Lcd_Data
	goto	l2750
	line	125
	
l713:	
	line	126
	
l2750:	
;MATRIX KEYPAD.c: 125: }
;MATRIX KEYPAD.c: 126: if ((RC0==1)&&(RC7==1))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l702
u2470:
	
l2752:	
	btfss	(63/8),(63)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l702
u2480:
	line	128
	
l2754:	
;MATRIX KEYPAD.c: 127: {
;MATRIX KEYPAD.c: 128: Lcd_Command(0XC7);
	movlw	(0C7h)
	fcall	_Lcd_Command
	line	129
;MATRIX KEYPAD.c: 129: Lcd_Data('#');
	movlw	(023h)
	fcall	_Lcd_Data
	goto	l702
	line	130
	
l714:	
	goto	l702
	line	132
	
l715:	
	line	59
	goto	l702
	
l716:	
	line	133
	
l717:	
	return
	opt stack 0
GLOBAL	__end_of_READ_SWITCHES
	__end_of_READ_SWITCHES:
;; =============== function _READ_SWITCHES ends ============

	signat	_READ_SWITCHES,89
	global	_Lcd_Intialization
psect	text114,local,class=CODE,delta=2
global __ptext114
__ptext114:

;; *************** function _Lcd_Intialization *****************
;; Defined at:
;;		line 51 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\24-MATRIX KEYPAD\CODE\MATRIX KEYPAD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text114
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\24-MATRIX KEYPAD\CODE\MATRIX KEYPAD.c"
	line	51
	global	__size_of_Lcd_Intialization
	__size_of_Lcd_Intialization	equ	__end_of_Lcd_Intialization-_Lcd_Intialization
	
_Lcd_Intialization:	
	opt	stack 6
; Regs used in _Lcd_Intialization: [wreg+status,2+status,0+pclath+cstack]
	line	52
	
l2676:	
;MATRIX KEYPAD.c: 52: Lcd_Command(0x02);
	movlw	(02h)
	fcall	_Lcd_Command
	line	53
;MATRIX KEYPAD.c: 53: Lcd_Command(0x28);
	movlw	(028h)
	fcall	_Lcd_Command
	line	54
;MATRIX KEYPAD.c: 54: Lcd_Command(0x0c);
	movlw	(0Ch)
	fcall	_Lcd_Command
	line	55
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Intialization
	__end_of_Lcd_Intialization:
;; =============== function _Lcd_Intialization ends ============

	signat	_Lcd_Intialization,88
	global	_Lcd_String
psect	text115,local,class=CODE,delta=2
global __ptext115
__ptext115:

;; *************** function _Lcd_String *****************
;; Defined at:
;;		line 43 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\24-MATRIX KEYPAD\CODE\MATRIX KEYPAD.c"
;; Parameters:    Size  Location     Type
;;  Str             1    wreg     PTR const unsigned char 
;;		 -> STR_2(8), STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  Str             1    4[COMMON] PTR const unsigned char 
;;		 -> STR_2(8), STR_1(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text115
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\24-MATRIX KEYPAD\CODE\MATRIX KEYPAD.c"
	line	43
	global	__size_of_Lcd_String
	__size_of_Lcd_String	equ	__end_of_Lcd_String-_Lcd_String
	
_Lcd_String:	
	opt	stack 6
; Regs used in _Lcd_String: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd_String@Str stored from wreg
	movwf	(Lcd_String@Str)
	line	44
	
l2668:	
;MATRIX KEYPAD.c: 44: while(*Str != 0)
	goto	l2674
	
l694:	
	line	46
	
l2670:	
;MATRIX KEYPAD.c: 45: {
;MATRIX KEYPAD.c: 46: Lcd_Data(*Str++);
	movf	(Lcd_String@Str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_Lcd_Data
	
l2672:	
	movlw	(01h)
	movwf	(??_Lcd_String+0)+0
	movf	(??_Lcd_String+0)+0,w
	addwf	(Lcd_String@Str),f
	goto	l2674
	line	47
	
l693:	
	line	44
	
l2674:	
	movf	(Lcd_String@Str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l2670
u2240:
	goto	l696
	
l695:	
	line	48
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_String
	__end_of_Lcd_String:
;; =============== function _Lcd_String ends ============

	signat	_Lcd_String,4216
	global	_Lcd_Data
psect	text116,local,class=CODE,delta=2
global __ptext116
__ptext116:

;; *************** function _Lcd_Data *****************
;; Defined at:
;;		line 28 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\24-MATRIX KEYPAD\CODE\MATRIX KEYPAD.c"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     const unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1    2[COMMON] const unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_String
;;		_READ_SWITCHES
;; This function uses a non-reentrant model
;;
psect	text116
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\24-MATRIX KEYPAD\CODE\MATRIX KEYPAD.c"
	line	28
	global	__size_of_Lcd_Data
	__size_of_Lcd_Data	equ	__end_of_Lcd_Data-_Lcd_Data
	
_Lcd_Data:	
	opt	stack 6
; Regs used in _Lcd_Data: [wreg+status,2+status,0]
;Lcd_Data@Data stored from wreg
	movwf	(Lcd_Data@Data)
	line	29
	
l2648:	
;MATRIX KEYPAD.c: 29: PORTD = (Data & 0XF0);
	movf	(Lcd_Data@Data),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	30
	
l2650:	
;MATRIX KEYPAD.c: 30: RD2 = 1;
	bsf	(66/8),(66)&7
	line	31
	
l2652:	
;MATRIX KEYPAD.c: 31: RD3 = 1;
	bsf	(67/8),(67)&7
	line	32
	
l2654:	
;MATRIX KEYPAD.c: 32: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u2497:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u2497
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u2497
	clrwdt
opt asmopt_on

	line	33
	
l2656:	
;MATRIX KEYPAD.c: 33: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	35
	
l2658:	
;MATRIX KEYPAD.c: 35: PORTD = ((Data<<4) & 0xF0);
	movf	(Lcd_Data@Data),w
	movwf	(??_Lcd_Data+0)+0
	movlw	(04h)-1
u2235:
	clrc
	rlf	(??_Lcd_Data+0)+0,f
	addlw	-1
	skipz
	goto	u2235
	clrc
	rlf	(??_Lcd_Data+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	36
	
l2660:	
;MATRIX KEYPAD.c: 36: RD2 = 1;
	bsf	(66/8),(66)&7
	line	37
	
l2662:	
;MATRIX KEYPAD.c: 37: RD3 = 1;
	bsf	(67/8),(67)&7
	line	38
	
l2664:	
;MATRIX KEYPAD.c: 38: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u2507:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u2507
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u2507
	clrwdt
opt asmopt_on

	line	39
	
l2666:	
;MATRIX KEYPAD.c: 39: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	40
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Data
	__end_of_Lcd_Data:
;; =============== function _Lcd_Data ends ============

	signat	_Lcd_Data,4216
	global	_Lcd_Command
psect	text117,local,class=CODE,delta=2
global __ptext117
__ptext117:

;; *************** function _Lcd_Command *****************
;; Defined at:
;;		line 13 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\24-MATRIX KEYPAD\CODE\MATRIX KEYPAD.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     const unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] const unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_Intialization
;;		_READ_SWITCHES
;;		_main
;; This function uses a non-reentrant model
;;
psect	text117
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\24-MATRIX KEYPAD\CODE\MATRIX KEYPAD.c"
	line	13
	global	__size_of_Lcd_Command
	__size_of_Lcd_Command	equ	__end_of_Lcd_Command-_Lcd_Command
	
_Lcd_Command:	
	opt	stack 6
; Regs used in _Lcd_Command: [wreg+status,2+status,0]
;Lcd_Command@cmd stored from wreg
	movwf	(Lcd_Command@cmd)
	line	14
	
l2628:	
;MATRIX KEYPAD.c: 14: PORTD = (cmd & 0XF0);
	movf	(Lcd_Command@cmd),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	15
	
l2630:	
;MATRIX KEYPAD.c: 15: RD2 = 0;
	bcf	(66/8),(66)&7
	line	16
	
l2632:	
;MATRIX KEYPAD.c: 16: RD3 = 1;
	bsf	(67/8),(67)&7
	line	17
	
l2634:	
;MATRIX KEYPAD.c: 17: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u2517:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u2517
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u2517
	clrwdt
opt asmopt_on

	line	18
	
l2636:	
;MATRIX KEYPAD.c: 18: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	20
	
l2638:	
;MATRIX KEYPAD.c: 20: PORTD = ((cmd<<4) & 0xF0);
	movf	(Lcd_Command@cmd),w
	movwf	(??_Lcd_Command+0)+0
	movlw	(04h)-1
u2225:
	clrc
	rlf	(??_Lcd_Command+0)+0,f
	addlw	-1
	skipz
	goto	u2225
	clrc
	rlf	(??_Lcd_Command+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	21
	
l2640:	
;MATRIX KEYPAD.c: 21: RD2 = 0;
	bcf	(66/8),(66)&7
	line	22
	
l2642:	
;MATRIX KEYPAD.c: 22: RD3 = 1;
	bsf	(67/8),(67)&7
	line	23
	
l2644:	
;MATRIX KEYPAD.c: 23: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u2527:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u2527
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u2527
	clrwdt
opt asmopt_on

	line	24
	
l2646:	
;MATRIX KEYPAD.c: 24: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	25
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Command
	__end_of_Lcd_Command:
;; =============== function _Lcd_Command ends ============

	signat	_Lcd_Command,4216
psect	text118,local,class=CODE,delta=2
global __ptext118
__ptext118:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
