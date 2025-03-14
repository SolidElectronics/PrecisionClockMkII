//////////////
// #define DEBUG
//////////////
// Permanent DST / use jumper for manual DST control
// #define NO_DST
//////////////
// 
// #define BASE_TZ_OFFSET     0
// #define FRACTIONAL_OFFSET 45
//
// #define TZ_LONDON
//////////////

#define TZ_US_EASTERN

/*
Pin Configurations:

1   RESET
2   PD0 GPS_DATA
3   PD1 - [UTC Mode with Crystal]
4   PA1 [ XTAL ] UTC Mode
5   PA0 [ XTAL ] PermaDST
6   PD2 PPS
7   PD3 - [PermaDST with Crystal]
8   PD4 -
9   PD5 DisplayTest
10  GND

11  PD6 DST_ENABLE
12  PB0 SPI_DATA
13  PB1 SPI_CLK
14  PB2 LD_TIME
15  PB3 LD_DATE
16  PB4 -
17  PB5 -
18  PB6 -
19  PB7 -
20  VCC
*/



#define JANUARY   1
#define FEBRUARY  2
#define MARCH     3
#define APRIL     4
#define MAY       5
#define JUNE      6
#define JULY      7
#define AUGUST    8
#define SEPTEMBER 9
#define OCTOBER   10
#define NOVEMBER  11
#define DECEMBER  12

#define FIRST_SUNDAY                 100
#define LAST_FRIDAY                  101
#define LAST_SUNDAY                  102
#define SECOND_SUNDAY                103
#define FRIDAY_BEFORE_LAST_SUNDAY    104
#define SATURDAY_BEFORE_LAST_SUNDAY  105
#define FOURTH_SUNDAY                106
#define THIRD_SUNDAY                 107


#ifdef TZ_LONDON
  #define BASE_TZ_OFFSET     0
  #define DST_START_MONTH    MARCH
  #define DST_START_DAY      LAST_SUNDAY
  #define DST_END_MONTH      OCTOBER
  #define DST_END_DAY    LAST_SUNDAY
#endif

#ifdef TZ_CENTRAL_EUROPE
  #define BASE_TZ_OFFSET     1
  #define DST_START_MONTH    MARCH
  #define DST_START_DAY      LAST_SUNDAY
  #define DST_END_MONTH      OCTOBER
  #define DST_END_DAY    LAST_SUNDAY
#endif

#ifdef TZ_EASTERN_EUROPE
  #define BASE_TZ_OFFSET     2
  #define DST_START_MONTH    MARCH
  #define DST_START_DAY      LAST_SUNDAY
  #define DST_END_MONTH      OCTOBER
  #define DST_END_DAY    LAST_SUNDAY
#endif

; Most of Atlantic time does not observe DST, but a few regions do (e.g. Bermuda)
#ifdef TZ_US_ATLANTIC
  #define BASE_TZ_OFFSET     -4
  #define DST_START_MONTH    MARCH
  #define DST_START_DAY      SECOND_SUNDAY
  #define DST_END_MONTH      NOVEMBER
  #define DST_END_DAY    FIRST_SUNDAY
  #define DST_SWITCH_AT_2AM_LOCAL_TIME
#endif

#ifdef TZ_US_EASTERN
  #define BASE_TZ_OFFSET     -5
  #define DST_START_MONTH    MARCH
  #define DST_START_DAY      SECOND_SUNDAY
  #define DST_END_MONTH      NOVEMBER
  #define DST_END_DAY    FIRST_SUNDAY
  #define DST_SWITCH_AT_2AM_LOCAL_TIME
#endif

#ifdef TZ_US_CENTRAL
  #define BASE_TZ_OFFSET     -6
  #define DST_START_MONTH    MARCH
  #define DST_START_DAY      SECOND_SUNDAY
  #define DST_END_MONTH      NOVEMBER
  #define DST_END_DAY    FIRST_SUNDAY
  #define DST_SWITCH_AT_2AM_LOCAL_TIME
#endif

#ifdef TZ_US_MOUNTAIN
  #define BASE_TZ_OFFSET     -7
  #define DST_START_MONTH    MARCH
  #define DST_START_DAY      SECOND_SUNDAY
  #define DST_END_MONTH      NOVEMBER
  #define DST_END_DAY    FIRST_SUNDAY
  #define DST_SWITCH_AT_2AM_LOCAL_TIME
#endif

; Phoenix is Mountain Time but no DST
#ifdef TZ_US_ARIZONA
  #define BASE_TZ_OFFSET     -7
  #define NO_DST
  #define INDICATE_UTC
#endif

#ifdef TZ_US_PACIFIC
  #define BASE_TZ_OFFSET     -8
  #define DST_START_MONTH    MARCH
  #define DST_START_DAY      SECOND_SUNDAY
  #define DST_END_MONTH      NOVEMBER
  #define DST_END_DAY    FIRST_SUNDAY
  #define DST_SWITCH_AT_2AM_LOCAL_TIME
#endif

#ifdef TZ_US_ALASKA
  #define BASE_TZ_OFFSET     -9
  #define DST_START_MONTH    MARCH
  #define DST_START_DAY      SECOND_SUNDAY
  #define DST_END_MONTH      NOVEMBER
  #define DST_END_DAY    FIRST_SUNDAY
  #define DST_SWITCH_AT_2AM_LOCAL_TIME
#endif

; Some areas on Hawaii-Aleutian time observe DST (parts of Alaska), but Hawaii does not
#ifdef TZ_HAWAII
  #define BASE_TZ_OFFSET     -10
  #define NO_DST
  #define INDICATE_UTC
#endif

#ifdef TZ_HAWAII_WITH_DST
  #define BASE_TZ_OFFSET     -10
  #define DST_START_MONTH    MARCH
  #define DST_START_DAY      SECOND_SUNDAY
  #define DST_END_MONTH      NOVEMBER
  #define DST_END_DAY    FIRST_SUNDAY
#endif

#ifdef TZ_NEWZEALAND
  #define BASE_TZ_OFFSET     12
  #define DST_START_MONTH    SEPTEMBER
  #define DST_START_DAY      LAST_SUNDAY
  #define DST_END_MONTH      APRIL
  #define DST_END_DAY    FIRST_SUNDAY
  #define DST_SWITCH_AT_2AM_LOCAL_TIME ; switches back at 3AM
#endif

#ifdef TZ_AUSTRALIA_EASTERN
  #define BASE_TZ_OFFSET     10
  #define DST_START_MONTH    OCTOBER
  #define DST_START_DAY      FIRST_SUNDAY
  #define DST_END_MONTH      APRIL
  #define DST_END_DAY    FIRST_SUNDAY
  #define DST_SWITCH_AT_2AM_LOCAL_TIME ; switches back at 3AM
#endif

; Australia Eastern Time without DST
#ifdef TZ_AUSTRALIA_QUEENSLAND
  #define BASE_TZ_OFFSET     10
  #define NO_DST
  #define INDICATE_UTC
#endif

#ifdef TZ_AUSTRALIA_CENTRAL
  #define BASE_TZ_OFFSET     9
  #define FRACTIONAL_OFFSET  30
  #define DST_START_MONTH    OCTOBER
  #define DST_START_DAY      FIRST_SUNDAY
  #define DST_END_MONTH      APRIL
  #define DST_END_DAY    FIRST_SUNDAY
  #define DST_SWITCH_AT_2AM_LOCAL_TIME ; switches back at 3AM
#endif

#ifdef TZ_AUSTRALIA_WESTERN
  #define BASE_TZ_OFFSET     8
  #define NO_DST
  #define INDICATE_UTC
#endif

; Korea KST
#ifdef TZ_SEOUL
  #define BASE_TZ_OFFSET     9
  #define NO_DST
  #define INDICATE_UTC
#endif

#ifdef TZ_INDOCHINA
  #define BASE_TZ_OFFSET     7
  #define NO_DST
  #define INDICATE_UTC
#endif

#ifdef TZ_INDIA
  #define BASE_TZ_OFFSET     5
  #define FRACTIONAL_OFFSET 30
  #define NO_DST
#endif

#ifdef TZ_NEPAL
  #define BASE_TZ_OFFSET     5
  #define FRACTIONAL_OFFSET 45
  #define NO_DST
#endif

// Newfoundland is -3:30, but fractional offset can only be positive
#ifdef TZ_NEWFOUNDLAND
  #define BASE_TZ_OFFSET     -4
  #define FRACTIONAL_OFFSET  30
  #define DST_START_MONTH    MARCH
  #define DST_START_DAY      SECOND_SUNDAY
  #define DST_END_MONTH      NOVEMBER
  #define DST_END_DAY    FIRST_SUNDAY
#endif

#ifdef TZ_JAPAN
  #define BASE_TZ_OFFSET     9
  #define NO_DST
  #define INDICATE_UTC
#endif

// Brazil abolished DST in 2019
#ifdef TZ_BRAZIL
  #define BASE_TZ_OFFSET     -3
  #define NO_DST
#endif


#ifndef NO_DST
    #if (DST_START_MONTH < DST_END_MONTH)
        #define NORTHERN_HEMISPHERE
    #else
        #define SOUTHERN_HEMISPHERE
    #endif
#endif


// Register declarations

.undef XH
.undef XL
.undef YH
.undef YL

.def dCentiSeconds = r22
.def dDeciSeconds = r23
.def dSeconds = r24
.def dTenSeconds = r25
.def dMinutes = r26
.def dTenMinutes = r27
.def dHours = r28
.def dTenHours = r29

.def dDays = r0
.def dTenDays = r1
.def dMonths = r2
.def dTenMonths = r3
.def dYears = r4
.def dTenYears = r5


.def fullYears = r6
.def fullMonths = r7
.def daysInMonth = r8    ;BCD

.def dGMT = r9
.def dBST = r10

.def daysInLastMonth = r11    ;BCD

// Start data segment - declare memory allocations
.dseg

centiSeconds: .byte 1
deciSeconds: .byte 1
seconds: .byte 1
tenSeconds: .byte 1
minutes: .byte 1
tenMinutes: .byte 1
hours: .byte 1
tenHours: .byte 1
days: .byte 1
tenDays: .byte 1
months: .byte 1
tenMonths: .byte 1
years: .byte 1
tenYears: .byte 1

fix: .byte 1
fixDisplay: .byte 1
dataValid: .byte 1


// Start code segment
.cseg
.org 0x00

/*
; -----------------------------------------------------------------------------
; INTERRUPT VECTOR DEFINITIONS
; -----------------------------------------------------------------------------
rjmp    RESET       ; Reset handler
rjmp    EXT_INT0    ; IRQ0 handler
rjmp    PIN_CHANGE  ; Pin change handler
rjmp    TIM1_CMP1A  ; Timer1 compare match 1A
rjmp    TIM1_CMP1B  ; Timer1 compare match 1B
rjmp    TIM1_OVF    ; Timer1 overflow handler
rjmp    TIM0_OVF    ; Timer0 overflow handler
rjmp    USI_STRT    ; USI Start handler
rjmp    USI_OVF     ; USI Overflow handler
rjmp    EE_RDY      ; EEPROM Ready handler
rjmp    ANA_COMP    ; Analog Comparator handler
rjmp    ADC_CONV    ; ADC Conversion Handler

; -----------------------------------------------------------------------------
; RESET ISR
;  - Set stack pointer and jump to main
; -----------------------------------------------------------------------------
RESET:
    ldi temp, RAMEND ; Main program start
    out SPL, temp
    cli
    rjmp prog_start

EXT_INT0:
PIN_CHANGE:
TIM1_CMP1A:
TIM1_CMP1B:
TIM1_OVF:
TIM0_OVF:
USI_STRT:
USI_OVF:
EE_RDY:
ANA_COMP:
ADC_CONV:

; -----------------------------------------------------------------------------
; PROGRAM START
; -----------------------------------------------------------------------------
prog_start:
*/

// I think these are supposed to be some interrupt service routines?
// TODO: See if there are interrupts set up
// Yes, there are.
        // Enable interrupt on TC1A output compare match
        // Rising edge of INT0 generates an interrupt request (PPS signal)

; Reset handler
rjmp init

; IRQ0 handler (PPS signal in)
in r15,SREG

; Pin change handler (??)
rjmp timingAdjust
;ldi dDeciSeconds,9  ;nop
;ldi dCentiSeconds,9 ;nop

; Timer1 compare match 1A
nop

; Timer1 compare match 1B
in r15,SREG

; Timer1 overflow handler??
rollover:
    // Rollover gets called at 10Hz (whenever hundredths digit counts past nine)
    // - Cascades up from least to most significant digit, rolling nines to zeros
    // - Exit/return when it reaches a digit that doesn't need rolling over.
    inc dCentiSeconds
    cpi dCentiSeconds, 10
    breq overflow1
    
    ldi r18, $01
    lds r19, fixDisplay
    eor r19, dCentiSeconds
    ;sbrs dSeconds,0
    ;ori r19,0b10000000
    rcall shiftTime
    
    out SREG,r15
    reti

overflow1:
    lds r19, fix
    sts fixDisplay, r19

    clr dCentiSeconds
    ldi r18,$01
    eor r19,dCentiSeconds
    ;sbrs dSeconds,0
    ;ori r19,0b10000000
    rcall shiftTime

    inc dDeciSeconds
    cpi dDeciSeconds,10
    breq overflow2

    ldi r18,$02
    lds r19,fixDisplay
    eor r19,dDeciSeconds
    ;sbrs dSeconds,0
    ;ori r19,0b10000000
    rcall shiftTime

    out SREG,r15
    reti

overflow2:
    clr dDeciSeconds
    ldi r18,$02
    lds r19,fixDisplay
    eor r19,dDeciSeconds
    ; sbrs dSeconds,0
    ; ori r19,0b10000000
    rcall shiftTime

    inc dSeconds
    cpi dSeconds,(10 +0b10000000)
    breq overflow3

    ldi r18,$03
    mov r19,dSeconds
    ori r19,0b10000000
    rcall shiftTime

    out SREG,r15
    reti

overflow3:
    // Seconds digit 9 -> 0
    ldi dSeconds,0b10000000
    ldi r18,$03
    mov r19,dSeconds
    ori r19,0b10000000
    rcall shiftTime

    inc dTenSeconds
    cpi dTenSeconds,6
    breq overflow4

    ldi r18,$04
    mov r19,dTenSeconds
    rcall shiftTime

    out SREG,r15
    reti

overflow4:
    // 10 seconds digit 9 -> 0
    clr dTenSeconds
    ldi r18,$04
    mov r19,dTenSeconds
    rcall shiftTime

    inc dMinutes
    cpi dMinutes,10
    breq overflow5

    ldi r18,$05
    mov r19,dMinutes
    rcall shiftTime
    
    out SREG,r15
    reti

overflow5:
    // Minutes digit 9 -> 0
    clr dMinutes
    ldi r18,$05
    mov r19,dMinutes
    rcall shiftTime
    
    inc dTenMinutes
    cpi dTenMinutes,6
    breq overflow6
    
    ldi r18,$06
    mov r19,dTenMinutes
    rcall shiftTime

    out SREG,r15
    reti

overflow6:
    // Ten minutes digit 6 -> 0 (end of hour)
    clr dTenMinutes
    ldi r18,$06
    mov r19,dTenMinutes
    rcall shiftTime

    inc dHours
    ldi r18,2
    cpi dHours,4
    cpc dTenHours,r18
    breq overflow8
    
    cpi dHours,10
    breq overflow7

    ldi r18,$07
    mov r19,dHours
    rcall shiftTime

    out SREG,r15
    reti

overflow7:
    // Hours digit 9 -> 0 (9:59 -> 10:00 and 19:59 -> 20:00)
    clr dHours
    ldi r18,$07
    mov r19,dHours
    rcall shiftTime

    inc dTenHours
    ldi r18,$08
    mov r19,dTenHours
    rcall shiftTime

    out SREG,r15
    reti

overflow8:
    // Reset hours to "00" when the day rolls over
    // Called by ten minute digit rollover when the hour increments to 24
    // Handles days digit 9 -> 0 as well as month-end checks
    clr dTenHours
    clr dHours

    ldi r18,$07
    mov r19,dHours
    rcall shiftTime

    ldi r18,$08
    mov r19,dTenHours
    rcall shiftTime

    ;inc dDays
    mov r18,dTenDays
    swap r18
    ;andi r18,$F0
    or r18,dDays
    cp daysInMonth,r18
    breq overflow10

    inc dDays
    ldi r18,10
    cp dDays,r18
    breq overflow9
    
    ldi r18,$01
    mov r19,dDays
or r19,dBST
    rcall shiftDate

    out SREG,r15
    reti

overflow9:
    // Ten days digit 9 -> 0
    clr dDays
    ldi r18,$01
    mov r19,dDays
or r19,dBST
    rcall shiftDate

    inc dTenDays
    ldi r18,$02
    mov r19,dTenDays
or r19,dGMT
    rcall shiftDate

    out SREG,r15
    reti

overflow10:
    // Start of a new month
    // Reset day to 01 and handle year-end checks
    clr dTenDays
    ldi r18,$01
    mov dDays,r18  ; load dDays 1
    mov r19,dDays
or r19,dBST
    rcall shiftDate
    ldi r18,$02
    mov r19,dTenDays
or r19,dGMT
    rcall shiftDate

    ldi r18,1
    ldi r19,2 + 0b10000000
    cp dMonths,r19
    cpc dTenMonths,r18
    breq overflow12
    
    ldi r18,10 + 0b10000000
    inc dMonths
    cp dMonths,r18
    breq overflow11

    ldi r18,$03
    mov r19,dMonths
    rcall shiftDate

    out SREG,r15
    reti

overflow11:
    // Month 9 -> 10
    ldi r19,0b10000000
    mov dMonths,r19
    ldi r18,$03
    rcall shiftDate

    inc dTenMonths
    ldi r18,$04
    mov r19,dTenMonths
    rcall shiftDate
    
    out SREG,r15
    reti

overflow12:
    // Start of a new year
    // Reset month to 01
    ldi r18,0b10000001
    mov dMonths,r18
    clr dTenMonths
    
    ldi r18,$03
    mov r19,dMonths
    rcall shiftDate
    ldi r18,$04
    mov r19,dTenMonths
    rcall shiftDate

    inc dYears
    ldi r18,10+0b10000000
    cp dYears,r18
    breq overflow13

    ldi r18,$05
    mov r19,dYears
    rcall shiftDate

    out SREG,r15
    reti

overflow13:
    // Year 9 -> 0
    ldi r19,0b10000000
    mov dYears,r19
    ldi r18,$05
    rcall shiftDate

    inc dTenYears
    ldi r18,$06
    mov r19,dTenYears
    rcall shiftDate

    out SREG,r15
    reti

// What happens when the decade rolls over?  Does dTenYears have special handling like 2020's being stored as "202"?


; -----------------------------------------------------------------------------
;   INIT SECTION
;   - Called on reset
; -----------------------------------------------------------------------------

init:

    ; Load calibration byte from EEPROM, if present
    clr r16
    out EEAR, r16
    sbi EECR,EERE
    in r16,EEDR
    sbrs r16,7
        out OSCCAL, r16
    nop

    ldi r16, 0b10000000
    sts fix, r16

    ldi r16, 0b00000000
    sts dataValid, r16

    // Timer/Counter1 using CLK/8 (=1MHz), clear timer on compare match
    ldi r16, (1<<WGM12|1<<CS11) ;
    out TCCR1B,r16

    // TC1A output compare set to 10000
    // With TC1A running at 1MHz, this will generate interrupts at 100Hz
    ldi r16,high(10000)
    out OCR1AH,r16
    ldi r16, low(10000)
    out OCR1AL,r16

    // Enable interrupt on TC1A output compare match
    ldi r16,1<<OCIE1A
    out TIMSK,r16

    // Rising edge of INT0 generates an interrupt request (PPS signal)
    ldi r16,(1<<ISC01|1<<ISC00)
    out MCUCR,r16
    ldi r16,1<<INT0
    out GIMSK,r16

    // Setup I/O pins
    ldi r16,0b00001111
    out DDRB,r16
    ldi r16,0
    out PORTB,r16

    out DDRD,r16
    out DDRA,r16

    #ifdef USE_CRYSTAL
        ldi r16, 1<<6 | 1<<5 | 1<<1 | 1<<3
        out PORTD,r16
    #else
        ldi r16, 1<<6 | 1<<5
        out PORTD,r16
        ldi r16, 1<<0 | 1<<1
        out PORTA, r16
    #endif

    // Set UART to 9600 baud
    ldi r16,0
    out UBRRH,r16
    ldi r16,51
    out UBRRL,r16

    // Enable UART receiver
    ldi r16,(1<<RXEN)
    out UCSRB,r16

    // N-8-1
    ldi r16,(1<<UCSZ1|1<<UCSZ0)
    out UCSRC,r16

    // Initialize display
    ldi r18,$09 ;Decode mode
    ldi r19,$FF ;Code B all digits
    rcall shiftBoth

    ldi r18,$0A ;Intensity
    ldi r19,$0F
    rcall shiftBoth

    ldi r18,$0B ;Scan Limit
    ldi r19,$07 ;3 digits
    rcall shiftBoth

    ldi r18,$FF ;Display test
    ldi r19,$00
    sbis PIND,5
        inc r19
    rcall shiftBoth

    ldi r18,$0C ;Shutdown
    ldi r19,$01 ;Normal operation
    rcall shiftBoth

    // Zero out digit values in memory
    clr dTenHours
    clr dHours
    clr dTenMinutes
    clr dMinutes
    clr dTenSeconds
    ldi dSeconds, 0b10000000
    clr dDeciSeconds
    clr dCentiSeconds

    // Output date digits (?)
    ldi r18,$08
    ldi r19,10
    rcall shiftDate
    ldi r18,$07
    ldi r19,10
    rcall shiftDate
    ldi r18,$06
    ldi r19,10
    rcall shiftDate
    ldi r18,$05
    ldi r19,10 +0b10000000
    rcall shiftDate
    ldi r18,$04
    ldi r19,10
    rcall shiftDate
    ldi r18,$03
    ldi r19,10 +0b10000000
    rcall shiftDate
    ldi r18,$02
    ldi r19,10
;or r19,dGMT
    rcall shiftDate
    ldi r18,$01
    ldi r19,10
;or r19,dBST
    rcall shiftDate

    // Output time digits (?)
    ldi r18,$08
    ldi r19,10
    rcall shiftTime
    ldi r18,$07
    ldi r19,10
    rcall shiftTime
    ldi r18,$06
    ldi r19,10
    rcall shiftTime
    ldi r18,$05
    ldi r19,10
    rcall shiftTime
    ldi r18,$04
    ldi r19,10
    rcall shiftTime
    ldi r18,$03
    ldi r19,10
    rcall shiftTime


//////////////////////////
    #ifdef DEBUG

        ldi r16,1
        sts tenYears,r16
        ldi r16,8  +0b10000000
        sts years,r16
        ldi r16,0
        sts tenMonths,r16
        ldi r16,1  +0b10000000
        sts months,r16
        ldi r16,0
        sts tenDays,r16
        ldi r16,1
        sts days,r16
        ldi r16,0
        sts tenHours,r16
        ldi r16,0
        sts hours,r16
        ldi r16,4
        sts tenMinutes,r16
        ldi r16,9
        sts minutes,r16
        ldi r16,5
        sts tenSeconds,r16
        ldi r16,5 +0b10000000
        sts seconds,r16
        ldi r16,5
        sts deciSeconds,r16
        ldi r16,5
        sts centiSeconds,r16
            
        lds r20, tenMonths

        ldi r21,10
        clr fullMonths
        sbrc r20,0
        mov fullMonths,r21

        lds r20, months
        andi r20,$0F
        add fullMonths,r20

        lds r20,tenYears

        clr fullYears
    
        yearLoop2:
        add fullYears,r21
        dec r20
        brne yearLoop2

        lds r20,years
        andi r20,$0F
        add fullYears,r20
    #endif
////////////////////


; -----------------------------------------------------------------------------
; PROGRAM START
;  - Ends up here after init section completes
; -----------------------------------------------------------------------------
main:
    // Enable interrupts
    sei

    //////////////
    #ifndef DEBUG
    // - Normal operation
    //////////////

        // Receive GPS data from serial port.  Display continues to be updated through interrupts while this runs.
        // Looking for GPRMC message, everything else will jump back to main and restart matching.
        // Example message:
        // $GPRMC,203522.00,A,5109.0262308,N,11401.8407342,W,0.004,133.4,130522,0.0,E,D*2B
        // *TIME*, status, lat, lat dir, lon, lon dir, speed, track, *DATE*, mag var, var dir, mode/checksum

        rcall receiveByte
        cpi r20, '$'
        brne main

        rcall receiveByte
        cpi r20, 'G'
        brne main

        rcall receiveByte
        ;cpi r20, 'P'
        ;brne main

        rcall receiveByte
        cpi r20, 'R'
        brne main

        rcall receiveByte
        cpi r20, 'M'
        brne main

        rcall receiveByte
        cpi r20, 'C'
        brne main

        rcall receiveByte

        // Receive time from GPS
        rcall receiveByte
        cpi r20, ','
        breq main
        andi r20,$0F
        sts tenHours,r20
    
        rcall receiveByte
        andi r20,$0F
        sts hours,r20

        rcall receiveByte
        andi r20,$0F
        sts tenMinutes,r20

        rcall receiveByte
        andi r20,$0F
        sts minutes,r20

        rcall receiveByte
        andi r20,$0F
        sts tenSeconds,r20

        rcall receiveByte
        andi r20,$0F
        ori r20,0b10000000
        sts seconds,r20

        rcall receiveByte; dot

        rcall receiveByte
        andi r20,$0F
        sts deciSeconds,r20

        rcall receiveByte
        andi r20,$0F
        sts centiSeconds,r20

        rcall waitForComma    ; end of milliseconds

        // Check position status byte (A = data valid)
        rcall receiveByte
        cpi r20, 'A'
        brne dataNotValid
    
        // This blinks the colons on a valid GPS fix
        #ifndef DISABLE_BLINKING_ENTIRELY
            ldi r21,0b10000000
            sts dataValid,r21
        #endif

        dataNotValid:

        // Skip ahead to date
        rcall waitForComma    ; status
        rcall waitForComma    ; latitude
        rcall waitForComma    ; hemisphere
        rcall waitForComma    ; longitude
        rcall waitForComma    ; east west
        rcall waitForComma    ; speed
        rcall waitForComma    ; course
    
        // Receive date from GPS
        rcall receiveByte
        andi r20,$0F
        sts tenDays,r20

        rcall receiveByte
        andi r20,$0F
        sts days,r20

        rcall receiveByte
        andi r20,$0F
        sts tenMonths,r20

        ldi r21,10
        clr fullMonths
        sbrc r20,0
        mov fullMonths,r21

        rcall receiveByte
        andi r20,$0F
        add fullMonths,r20
        ori r20,0b10000000
        sts months,r20

        rcall receiveByte
        andi r20,$0F
        sts tenYears,r20

        clr fullYears
        yearLoop:
        add fullYears,r21
        dec r20
        brne yearLoop

        rcall receiveByte
        andi r20,$0F
        add fullYears,r20
        ori r20,0b10000000
        sts years,r20


    ///////////////////////////
    // Debug mode active - do nothing with GPS data
    #else
        nop
        nop
        nop
        nop
        nop
    #endif
    /////////////////////////////

    // Disable interrupts during processing
    cli

    // Process data received from GPS
    ldi ZH, high(monthLookup*2)
    ldi ZL,  low(monthLookup*2)
    add ZL, fullMonths
    lpm daysInMonth,Z

    #if (BASE_TZ_OFFSET < 0)
        dec ZL    ; in the case of January, December is repeated at the start
        lpm daysInLastMonth,Z

        mov r20,fullYears
        andi r20, 0b11111100
        cp r20,fullYears
        brne noLeap

        ldi r20,2
        cp fullMonths,r20
        brne notFebThisMonth
            inc daysInMonth
        notFebThisMonth:
        cpi ZL, low(monthLookup*2 +2)
        brne noLeap
            inc daysInLastMonth
        noLeap:
    #else
        // Positive BASE_TZ_OFFSET
        ldi r20,2
        cp fullMonths,r20
        brne noLeap
        mov r20,fullYears
        andi r20, 0b11111100
        cp r20,fullYears
        brne noLeap
            inc daysInMonth
        noLeap:
    #endif

    // Load memory into registers
    lds dTenYears,tenYears
    lds dYears,years
    lds dTenMonths,tenMonths
    lds dMonths, months
    lds dTenDays,tenDays
    lds dDays,days
    lds dTenHours,tenHours
    lds dHours,hours
    lds dTenMinutes,tenMinutes
    lds dMinutes,minutes
    lds dTenSeconds,tenSeconds
    lds dSeconds,seconds
;    lds dDeciSeconds,deciSeconds
;    lds dCentiSeconds,centiSeconds

    // Adjust time offset based on control pins

    #ifdef USE_CRYSTAL
        // Alternate control pins if crystal fitted
        // Override timezone, just show UTC
        sbis PIND,1
            rjmp makeUTC

        // Backup perma-DST marker
        sbis PIND,3
            rjmp addHour

    #else
        // Standard control pins
        // Override timezone, just show UTC
        sbis PINA,1
        rjmp makeUTC

        // Backup perma-DST marker
        sbis PINA,0
        rjmp addHour
    #endif

    // DST enabled ?
    sbic PIND,6
        rjmp sendAll

    #ifdef NO_DST
        // With NO_DST the whole section below gets skipped
        rjmp addHour

    #else
        // NOT NO_DST

        //////////////////////// Northern Hemisphere
        #ifdef NORTHERN_HEMISPHERE

            ldi ZH,high(DSTStartMonth*2)
            ldi ZL, low(DSTStartMonth*2-15)
            add ZL, fullYears

            ldi r20, DST_START_MONTH
            cp fullMonths,r20
            breq isDSTStartMonth
            brcs sendAll
    
            ldi r20, DST_END_MONTH
            cp fullMonths,r20
            breq isDSTEndMonth
            brcc sendAll

            rjmp addHour

            isDSTStartMonth:
            mov r21,dTenDays
            swap r21
            or r21,dDays
            lpm r20,Z

            cp r21,r20
            brcs sendAll
            breq isFirstDayDST

            ; is bst.
            rjmp addHour

            isDSTEndMonth:
            subi ZL, (DSTStartMonth-DSTEndMonth)*2
            lpm r20,Z
            mov r21,dTenDays
            swap r21
            or r21,dDays

            cp r21,r20
            breq isLastDayDST
            brcc sendAll

            ;is bst
            rjmp addHour

            #ifdef DST_SWITCH_AT_2AM_LOCAL_TIME

                #if (BASE_TZ_OFFSET < 0 && BASE_TZ_OFFSET > -10)
                    isFirstDayDST:
                    ldi r20,0
                    cpi dHours,2-BASE_TZ_OFFSET
                    cpc dTenHours,r20
                    brcs sendAll
                    rjmp addHour

                    isLastDayDST:
                    cpi dTenHours,0
                    brne sendAll
                    cpi dHours,1-BASE_TZ_OFFSET
                    brcc sendAll
                    rjmp addHour
                #else 
                  #error "Not implemented yet"
                #endif

            #else
                // NOT DST_SWITCH_AT_2AM_LOCAL_TIME
                isFirstDayDST:
                ldi r20,0
                cpi dHours,0
                cpc dTenHours,r20
                breq sendAll
                rjmp addHour

                isLastDayDST:
                cpi dTenHours,0
                brne sendAll
                cpi dHours,0
                brne sendAll
                rjmp addHour
            #endif
            // END DST_SWITCH_AT_2AM_LOCAL_TIME section

        //////////////////////// Southern Hemisphere
        #else
            // NOT NORTHERN_HEMISPHERE

            ldi ZH,high(DSTStartMonth*2)
            ldi ZL, low(DSTStartMonth*2-15)
            add ZL, fullYears

            #if (BASE_TZ_OFFSET > 0 && DST_SWITCH_AT_2AM_LOCAL_TIME)
                ; Australia, NZ
                ; Start at 2am local, end at 3am local

                /*
                  We need to check the time and date against the switchover dates minus the base offset.
                  Since first-sunday-of-the-month can sometimes be on the first of the month, we need to treat
                  those years as a special case.

                  in pseudocode:

                  if (dstStartDay ==1){
                    if (dstStartMonth-1 >  this month) goto addHour
                    if (dstStartMonth-1 == this month) {
                      load days in last month
                      if ( today == daysInLastMonth) goto isFirstDayDST
                      else sendAll
                    }
                  } else {
                    if (dstStartMonth >  this month) goto addHour
                    if (dstStartMonth == this month) {
                      if (today >  dstStartDay-1) goto addHour
                      if (today == dstStartDay-1) goto isFirstDayDST
                          else sendAll
                    }
                  }
  
                  if (dstEndDay ==1) {
                    if (dstEndMonth-1 <  this month) goto addHour
                    if (dstEndMonth-1 == this month){
                      load days in last month
                      if ( today == daysInLastMonth) goto isLastDayDST
                    }
                  } else {
                    if (dstEndMonth <  this month) goto addHour
                    if (dstEndMonth == this month) {
                      if (today <  dstEndDay-1) goto addHour
                      if (today == dstEndDay-1) goto isLastDayDST
                    }
                  }
                  goto sendAll
  
  
                  isFirstDayDST:
                    if (hours > 24-10) goto addHour
  
                  isLastDayDST:
                    if (hours < 24-10) goto addHour

                */

                .def dayOfMonthBCD = r21
                mov dayOfMonthBCD,dTenDays
                swap dayOfMonthBCD
                or dayOfMonthBCD,dDays

                lpm r20,Z
                cpi r20, 1
                brne dstNotStartOn1st

                ldi r20, DST_START_MONTH-1
                cp fullMonths,r20
                breq dstIsStartMonthMinus1
                brcs checkForDstEnd
                rjmp addHour

                dstIsStartMonthMinus1:
                cp dayOfMonthBCD, daysInMonth
                brne sendAll
                rjmp isFirstDayDST

                dstNotStartOn1st:
                ldi r20, DST_START_MONTH
                cp fullMonths,r20
                breq dstIsStartMonth
                brcs checkForDstEnd
                rjmp addHour

                dstIsStartMonth:
                ; BCD subtraction - aus is fine but NZ's last-sunday-of month could cause an overflow
                lpm r20,Z
                subi r20,1
                brhc dstNotStartOn30th
                subi r20, 6

                dstNotStartOn30th:
                cp dayOfMonthBCD, r20
                breq isFirstDayDST
                brcs sendAll
                rjmp addHour

                checkForDstEnd:
                subi ZL, (DSTStartMonth-DSTEndMonth)*2
                lpm r20,Z
                cpi r20, 1
                brne dstNotEndOn1st

                ldi r20, DST_END_MONTH-1
                cp fullMonths,r20
                breq dstIsEndMonthMinus1
                brcc sendAll
                rjmp addHour

                dstIsEndMonthMinus1:
                cp dayOfMonthBCD, daysInMonth
                breq isLastDayDST
                rjmp sendAll

                dstNotEndOn1st:
                ldi r20, DST_END_MONTH
                cp fullMonths,r20
                breq dstIsEndMonth
                brcc sendAll
                rjmp addHour

                dstIsEndMonth:
                lpm r20,Z
                subi r20,1 ; both aus and nz end on "first sunday of x", no need for bcd adjust
                cp dayOfMonthBCD, r20
                breq isLastDayDST
                brcc sendAll
                rjmp addHour


                #if (BASE_TZ_OFFSET>=9)

                    #ifdef FRACTIONAL_OFFSET

                        #if (FRACTIONAL_OFFSET==30) // australia central
                            isFirstDayDST:
                            ldi r20, 1
                            cpi dHours, (24-10+1-BASE_TZ_OFFSET)
                            cpc dTenHours,r20
                            breq isFirstHourDST
                            brcs sendAll
                            rjmp addHour

                            isFirstHourDST:
                            cpi dTenMinutes, 3
                            brcs sendAll
                            rjmp addHour

                            isLastDayDST:
                            ldi r20, 1
                            cpi dHours, (24-10+1-BASE_TZ_OFFSET)
                            cpc dTenHours,r20
                            breq isLastHourDST
                            brcc sendAll
                            rjmp addHour

                            isLastHourDST:
                            cpi dTenMinutes, 3
                            brcc sendAll
                            rjmp addHour
                        #else
                            #error "Not implemented yet"
                        #endif

                    #else
                        // NOT FRACTIONAL_OFFSET
                        isFirstDayDST:
                        ldi r20, 1
                        cpi dHours, (24-10+2-BASE_TZ_OFFSET)
                        cpc dTenHours,r20
                        brcs sendAll
                        rjmp addHour

                        isLastDayDST:
                        ldi r20, 1
                        cpi dHours, (24-10+2-BASE_TZ_OFFSET)
                        cpc dTenHours,r20
                        brcc sendAll
                        rjmp addHour
                    #endif
                    // END FRACTIONAL_OFFSET section

                #else
                    #error "Not implemented yet"
                #endif
                // END BASE_TZ_OFFSET>=9 section

                .undef dayOfMonthBCD

            #else
                // NOT (BASE_TZ_OFFSET > 0 && DST_SWITCH_AT_2AM_LOCAL_TIME)

                ldi r20, DST_START_MONTH
                cp fullMonths,r20
                breq isDSTStartMonth
                brcs PC+2 
                rjmp addHour
    
                ldi r20, DST_END_MONTH
                cp fullMonths,r20
                breq isDSTEndMonth
                brcc PC+2
                rjmp addHour

                rjmp sendAll

                isDSTStartMonth:
                mov r21,dTenDays
                swap r21
                or r21,dDays
                lpm r20,Z

                cp r21,r20
                brcs sendAll
                breq isFirstDayDST

                ; is bst.
                rjmp addHour

                isDSTEndMonth:
                subi ZL, (DSTStartMonth-DSTEndMonth)*2
                lpm r20,Z
                mov r21,dTenDays
                swap r21
                or r21,dDays

                cp r21,r20
                breq isLastDayDST
                brcc sendAll

                ;is bst
                rjmp addHour

                isFirstDayDST:
                ldi r20,0
                cpi dHours,0
                cpc dTenHours,r20
                breq sendAll
                rjmp addHour
    
                isLastDayDST:
                cpi dTenHours,0
                brne sendAll
                cpi dHours,0
                brne sendAll
                rjmp addHour

            #endif
            // END (BASE_TZ_OFFSET > 0 && DST_SWITCH_AT_2AM_LOCAL_TIME) section

        #endif
        // END NORTHERN_HEMISPHERE section

    #endif
    // END NO_DST section


    //////////////////////// GMT / original DST code
    #if (BASE_TZ_OFFSET==0)

        sendAll:
        ldi r20,0b10000000
        mov dGMT,r20
        clr dBST

        sendAll2:
        ldi r18,$08
        ldi r19,2
        rcall shiftDate
        ldi r18,$07
        ldi r19,0
        rcall shiftDate
        ldi r18,$06
        mov r19,dTenYears
        rcall shiftDate
        ldi r18,$05
        mov r19,dYears
        rcall shiftDate
        ldi r18,$04
        mov r19,dTenMonths
        rcall shiftDate
        ldi r18,$03
        mov r19,dMonths
        rcall shiftDate
        ldi r18,$02
        mov r19,dTenDays
    or r19,dGMT
        rcall shiftDate
        ldi r18,$01
        mov r19,dDays
    or r19,dBST
        rcall shiftDate

        ldi r18,$08
        mov r19,dTenHours
        rcall shiftTime
        ldi r18,$07
        mov r19,dHours
        rcall shiftTime
        ldi r18,$06
        mov r19,dTenMinutes
        rcall shiftTime
        ldi r18,$05
        mov r19,dMinutes
        rcall shiftTime
        ldi r18,$04
        mov r19,dTenSeconds
        rcall shiftTime
        ldi r18,$03
        mov r19,dSeconds
        rcall shiftTime

        rjmp main

        addHour:
        #ifdef INDICATE_UTC
            clr dGMT
            clr dBST
        #else
            ldi r20,0b10000000
            mov dBST,r20
            clr dGMT
        #endif

        inc dHours
        ldi r18,2
        cpi dHours,4
        cpc dTenHours,r18
        breq overflowB8
    
        cpi dHours,10
        breq overflowB7
        rjmp sendAll2

        overflowB7:
        clr dHours
        inc dTenHours
        rjmp sendAll2

        overflowB8:
        clr dTenHours
        clr dHours

        mov r18,dTenDays
        swap r18

        or r18,dDays
        cp daysInMonth,r18
        breq overflowB10

        inc dDays
        ldi r18,10
        cp dDays,r18
        breq overflowB9
        rjmp sendAll2

        overflowB9:
        clr dDays
        inc dTenDays
        rjmp sendAll2

        overflowB10:
        clr dTenDays
        ldi r18,$01
        mov dDays,r18

        ldi r18,10 + 0b10000000
        inc dMonths
        cp dMonths,r18
        breq overflowB11

        //; In the southern hemisphere, DST covers new year
        //#ifdef SOUTHERN_HEMISPHERE
        ldi r18,3 + 0b10000000
        ldi r19, 1
        cp dMonths, r18
        cpc dTenMonths, r19
        breq overflowB12
        //#endif

        rjmp sendAll2
    
        overflowB11:
        ldi r19,0b10000000
        mov dMonths,r19
        inc dTenMonths
        rjmp sendAll2

        overflowB12:
        ldi r19, 1 + 0b10000000
        mov dMonths,r19
        clr dTenMonths
        inc dYears
        ldi r18, 10 + 0b10000000
        cp dYears, r18
        breq overflowB13
        rjmp sendAll2

        overflowB13:
        ldi r19,0b10000000
        mov dYears,r19
        inc dTenYears
        rjmp sendAll2

    #endif
        // NOT (BASE_TZ_OFFSET==0)

    //////////////////////// Eastern Hemisphere
    #if (BASE_TZ_OFFSET > 0)

        sendAll:
        ldi r20,0b10000000
        mov dGMT,r20
        clr dBST
        ldi r20, BASE_TZ_OFFSET

        sendAll3:

        #ifdef FRACTIONAL_OFFSET

            #if (FRACTIONAL_OFFSET == 30)
                subi dTenMinutes, -3
                cpi dTenMinutes, 6
                brcs fracOffEnd
                subi dTenMinutes, 6
                inc r20

                fracOffEnd:
            #endif
    
            #if (FRACTIONAL_OFFSET == 45)
                subi dMinutes, -5
                cpi dMinutes, 10
                brcs fracOff1
                subi dMinutes, 10
                subi dTenMinutes, -1

                fracOff1:
                subi dTenMinutes, -4
                cpi dTenMinutes, 6
                brcs fracOffEnd
                subi dTenMinutes, 6
                inc r20

                fracOffEnd:
            #endif

        #endif
        // END FRACTIONAL_OFFSET section

        add r20, dHours
        cpi dTenHours, 2
        brne PC+2
        subi r20, -20
        cpi dTenHours, 1
        brne PC+2
        subi r20, -10

        clr dTenHours

        cpi r20, 24
        brcc saNextDay

        saFullHours0:
        subi r20, 10
        brcs saFullHours1
        inc dTenHours
        rjmp saFullHours0

        saFullHours1:
        subi r20,-10
        mov dHours, r20
        rjmp sendAll2

        saNextDay:
        subi r20,24

        saFullHours2:
        subi r20, 10
        brcs saFullHours3
        inc dTenHours
        rjmp saFullHours2

        saFullHours3:
        subi r20,-10
        mov dHours, r20

        mov r18,dTenDays
        swap r18

        or r18,dDays
        cp daysInMonth,r18
        breq overflowB10

        inc dDays
        ldi r18,10
        cp dDays,r18
        breq overflowB9
        rjmp sendAll2

        overflowB9:
        clr dDays
        inc dTenDays
        rjmp sendAll2

        overflowB10:
        clr dTenDays
        ldi r18,$01
        mov dDays,r18

        ldi r18,10 + 0b10000000
        inc dMonths
        cp dMonths,r18
        breq overflowB11

        ldi r18,3 + 0b10000000
        ldi r19, 1
        cp dMonths, r18
        cpc dTenMonths, r19
        breq overflowB12
        rjmp sendAll2
    
        overflowB11:
        ldi r19,0b10000000
        mov dMonths,r19
        inc dTenMonths
        rjmp sendAll2

        overflowB12:
        ldi r19, 1 + 0b10000000
        mov dMonths,r19
        clr dTenMonths
        inc dYears
        ldi r18, 10 + 0b10000000
        cp dYears, r18
        breq overflowB13
        rjmp sendAll2

        overflowB13:
        ldi r19,0b10000000
        mov dYears,r19
        inc dTenYears
        ;rjmp sendAll2

        sendAll2:

        ldi r18,$08
        ldi r19,2
        rcall shiftDate
        ldi r18,$07
        ldi r19,0
        rcall shiftDate
        ldi r18,$06
        mov r19,dTenYears
        rcall shiftDate
        ldi r18,$05
        mov r19,dYears
        rcall shiftDate
        ldi r18,$04
        mov r19,dTenMonths
        rcall shiftDate
        ldi r18,$03
        mov r19,dMonths
        rcall shiftDate
        ldi r18,$02
        mov r19,dTenDays
    or r19,dGMT
        rcall shiftDate
        ldi r18,$01
        mov r19,dDays
    or r19,dBST
        rcall shiftDate

        ldi r18,$08
        mov r19,dTenHours
        rcall shiftTime
        ldi r18,$07
        mov r19,dHours
        rcall shiftTime
        ldi r18,$06
        mov r19,dTenMinutes
        rcall shiftTime
        ldi r18,$05
        mov r19,dMinutes
        rcall shiftTime
        ldi r18,$04
        mov r19,dTenSeconds
        rcall shiftTime
        ldi r18,$03
        mov r19,dSeconds
        rcall shiftTime

        rjmp main

        addHour:
        #ifdef INDICATE_UTC
            clr dGMT
            clr dBST
        #else
            ldi r20,0b10000000
            mov dBST,r20
            clr dGMT
        #endif

        ldi r20, BASE_TZ_OFFSET+1

        rjmp sendAll3

    #endif
    // END (BASE_TZ_OFFSET > 0) section


    //////////////////////// Western Hemisphere
    #if (BASE_TZ_OFFSET < 0)

        sendAll:
        ldi r20,0b10000000
        mov dGMT,r20
        clr dBST
        ldi r20, BASE_TZ_OFFSET

        sendAll3:

        #ifdef FRACTIONAL_OFFSET

            #if (FRACTIONAL_OFFSET == 30)
                subi dTenMinutes, -3
                cpi dTenMinutes, 6
                brcs fracOffEnd
                subi dTenMinutes, 6
                inc r20
                fracOffEnd:
            #endif
        
            #if (FRACTIONAL_OFFSET == 45)
                subi dMinutes, -5
                cpi dMinutes, 10
                brcs fracOff1
                subi dMinutes, 10
                subi dTenMinutes, -1
                fracOff1:
                subi dTenMinutes, -4
                cpi dTenMinutes, 6
                brcs fracOffEnd
                subi dTenMinutes, 6
                inc r20

                fracOffEnd:
            #endif
        #endif
        // END FRACTIONAL_OFFSET section

        add r20, dHours
        cpi dTenHours, 2
        brne PC+2
        subi r20, -20
        cpi dTenHours, 1
        brne PC+2
        subi r20, -10

        clr dTenHours


        tst r20
        brmi saPrevDay


        saFullHours0:
        subi r20, 10
        brcs saFullHours1
        inc dTenHours
        rjmp saFullHours0

        saFullHours1:
        subi r20,-10
        mov dHours, r20
        rjmp sendAll2


        saPrevDay:
        subi r20,-24
        
        saFullHours2:
        subi r20, 10
        brcs saFullHours3
        inc dTenHours
        rjmp saFullHours2
        
        saFullHours3:
        subi r20,-10
        mov dHours, r20

        dec dDays
        breq underflowB0
        brmi underflowB2
        rjmp sendAll2

        underflowB0:
        tst dTenDays
        breq underflowB1
        rjmp sendAll2

        underflowB2:
        dec dTenDays
        ldi r18,9
        mov dDays, r18
        rjmp sendAll2

        underflowB1:
        ldi r18,$0F
        mov dDays, daysInLastMonth
        and dDays, r18
        mov dTenDays, daysInLastMonth
        swap dTenDays
        and dTenDays, r18

        ldi r20, 0b10000000

        eor dMonths, r20
        dec dMonths
        breq underflowB3
        brmi underflowB4
        eor dMonths, r20
        rjmp sendAll2

        underflowB3:
        tst dTenMonths
        breq underflowB5
        eor dMonths, r20
        rjmp sendAll2

        underflowB4:
        clr dTenMonths
        ldi r18, 9 + 0b10000000
        mov dMonths, r18
        rjmp sendAll2

        underflowB5:
        ldi r18,2 +0b10000000
        mov dMonths, r18
        ldi r18,1
        mov dTenMonths, r18

        eor dYears, r20
        breq underflowB6
        dec dYears
        eor dYears, r20
        rjmp sendAll2

        underflowB6:
        ldi r18, 9 + 0b10000000
        mov dYears, r18
        dec dTenYears
        ;rjmp sendAll2

        sendAll2:

        ldi r18,$08
        ldi r19,2
        rcall shiftDate
        ldi r18,$07
        ldi r19,0
        rcall shiftDate
        ldi r18,$06
        mov r19,dTenYears
        rcall shiftDate
        ldi r18,$05
        mov r19,dYears
        rcall shiftDate
        ldi r18,$04
        mov r19,dTenMonths
        rcall shiftDate
        ldi r18,$03
        mov r19,dMonths
        rcall shiftDate
        ldi r18,$02
        mov r19,dTenDays
    or r19,dGMT
        rcall shiftDate
        ldi r18,$01
        mov r19,dDays
    or r19,dBST
        rcall shiftDate

        ldi r18,$08
        mov r19,dTenHours
        rcall shiftTime
        ldi r18,$07
        mov r19,dHours
        rcall shiftTime
        ldi r18,$06
        mov r19,dTenMinutes
        rcall shiftTime
        ldi r18,$05
        mov r19,dMinutes
        rcall shiftTime
        ldi r18,$04
        mov r19,dTenSeconds
        rcall shiftTime
        ldi r18,$03
        mov r19,dSeconds
        rcall shiftTime

        rjmp main

        addHour:

        #ifdef INDICATE_UTC
            clr dGMT
            clr dBST
        #else
            ldi r20,0b10000000
            mov dBST,r20
            clr dGMT
        #endif

        ldi r20, BASE_TZ_OFFSET+1

        rjmp sendAll3

    #endif
    // END (BASE_TZ_OFFSET < 0) section


; -----------------------------------------------------------------------------
; FUNCTION DEFINITIONS
; -----------------------------------------------------------------------------

makeUTC:
    #ifdef INDICATE_UTC
        ldi r20,0b10000000
        mov dBST,r20
        clr dGMT
    #else
        ; Show UTC by turning off both indicators
        clr dGMT
        clr dBST
    #endif
    rjmp sendAll2


receiveByte:
    sbis UCSRA,RXC
    rjmp receiveByte
    
    in r20,UDR
    ret


waitForComma:
    rcall receiveByte
    cpi r20, ','
    brne waitForComma
    ret



; max7219 is MSB first
shiftTime:
    ; data is r18:r19
    ldi r17,16
    
    shiftTimeLoop:
    cbi PORTB,1 ; clock low
    ldi r16,0b00001000
    sbrc r18,7
    ori r16,1 ; data high 
    out PORTB,r16
    lsl r19
    rol r18
    nop
    nop
    sbi PORTB,1 ; clock high
    nop
    nop

    dec r17
    brne shiftTimeLoop

    sbi PORTB,2 ;Load high
    nop
    nop
    cbi PORTB,1 ; clock low
    nop
    nop
    ret
    
    
shiftDate:
    ; data is r18:r19
    ldi r17,16
    shiftDateLoop:
    cbi PORTB,1 ; clock low
    ldi r16,0b00000100
    sbrc r18,7
    ori r16,1 ; data high 
    out PORTB,r16
    lsl r19
    rol r18
    nop
    nop
    sbi PORTB,1 ; clock high
    nop
    nop

    dec r17
    brne shiftDateLoop

    sbi PORTB,3 ;Load high
    nop
    nop
    cbi PORTB,1 ; clock low
    nop
    nop
    ret


shiftBoth:
    ; data is r18:r19
    ldi r17,16
    shiftBothLoop:
    cbi PORTB,1 ; clock low
    clr r16
    sbrc r18,7
    ori r16,1 ; data high 
    out PORTB,r16
    lsl r19
    rol r18
    nop
    nop
    sbi PORTB,1 ; clock high
    nop
    nop

    dec r17
    brne shiftBothLoop

    sbi PORTB,2 ;Load high
    sbi PORTB,3 ;Load high
    nop
    nop
    cbi PORTB,1 ; clock low
    nop
    nop
    ret


; -----------------------------------------------------------------------------
; LOOKUP TABLES
; -----------------------------------------------------------------------------

.org (768)

monthLookup:
    ; 0 = december, 1 = january ... 12 = december
    .db $31,$31,$28,$31,$30,$31,$30,$31,$31,$30,$31,$30,$31

    ; DST dates starting from 2015, BCD

    ;;;;;;;;;;;;;;;;;;;;;;;;;; DST Starts ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; Mexico 
    #if (DST_START_MONTH==APRIL && DST_START_DAY==FIRST_SUNDAY)
        DSTStartMonth:
        .db $05,$03,$02,$01,$07,$05,$04,$03,$02,$07,$06,$05,$04,$02,$01,$07,$06,$04,$03,$02,$01,$06,$05,$04,$03,$01,$07,$06,$05,$03,$02,$01,$07,$05,$04,$03,$02,$07,$06,$05,$04,$02,$01,$07,$06,$04,$03,$02,$01,$06,$05,$04,$03,$01,$07,$06,$05,$03,$02,$01,$07,$05,$04,$03,$02,$07,$06,$05,$04,$02,$01,$07,$06,$04,$03,$02,$01,$06,$05,$04,$03,$01,$07,$06,$05
    #endif

    ; Brazil 
    #if (DST_START_MONTH==NOVEMBER && DST_START_DAY==FIRST_SUNDAY)
        DSTStartMonth:
        .db $01,$06,$05,$04,$03,$01,$07,$06,$05,$03,$02,$01,$07,$05,$04,$03,$02,$07,$06,$05,$04,$02,$01,$07,$06,$04,$03,$02,$01,$06,$05,$04,$03,$01,$07,$06,$05,$03,$02,$01,$07,$05,$04,$03,$02,$07,$06,$05,$04,$02,$01,$07,$06,$04,$03,$02,$01,$06,$05,$04,$03,$01,$07,$06,$05,$03,$02,$01,$07,$05,$04,$03,$02,$07,$06,$05,$04,$02,$01,$07,$06,$04,$03,$02,$01
    #endif

    ; Australia 
    #if (DST_START_MONTH==OCTOBER && DST_START_DAY==FIRST_SUNDAY)
        DSTStartMonth:
        .db $04,$02,$01,$07,$06,$04,$03,$02,$01,$06,$05,$04,$03,$01,$07,$06,$05,$03,$02,$01,$07,$05,$04,$03,$02,$07,$06,$05,$04,$02,$01,$07,$06,$04,$03,$02,$01,$06,$05,$04,$03,$01,$07,$06,$05,$03,$02,$01,$07,$05,$04,$03,$02,$07,$06,$05,$04,$02,$01,$07,$06,$04,$03,$02,$01,$06,$05,$04,$03,$01,$07,$06,$05,$03,$02,$01,$07,$05,$04,$03,$02,$07,$06,$05,$04
    #endif

    ; Jordan 
    #if (DST_START_MONTH==MARCH && DST_START_DAY==LAST_FRIDAY)
        DSTStartMonth:
        .db $27,$25,$31,$30,$29,$27,$26,$25,$31,$29,$28,$27,$26,$31,$30,$29,$28,$26,$25,$31,$30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$31,$30,$29,$27,$26,$25,$31,$29,$28,$27,$26,$31,$30,$29,$28,$26,$25,$31,$30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$31,$30,$29,$27,$26,$25,$31,$29,$28,$27,$26,$31,$30,$29,$28,$26,$25,$31,$30,$28,$27,$26,$25,$30,$29,$28,$27
    #endif

    ; United Kingdom 
    #if (DST_START_MONTH==MARCH && DST_START_DAY==LAST_SUNDAY)
        DSTStartMonth:
        .db $29,$27,$26,$25,$31,$29,$28,$27,$26,$31,$30,$29,$28,$26,$25,$31,$30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$31,$30,$29,$27,$26,$25,$31,$29,$28,$27,$26,$31,$30,$29,$28,$26,$25,$31,$30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$31,$30,$29,$27,$26,$25,$31,$29,$28,$27,$26,$31,$30,$29,$28,$26,$25,$31,$30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$31,$30,$29
    #endif

    ; New Zealand 
    #if (DST_START_MONTH==SEPTEMBER && DST_START_DAY==LAST_SUNDAY)
        DSTStartMonth:
        .db $27,$25,$24,$30,$29,$27,$26,$25,$24,$29,$28,$27,$26,$24,$30,$29,$28,$26,$25,$24,$30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$24,$30,$29,$27,$26,$25,$24,$29,$28,$27,$26,$24,$30,$29,$28,$26,$25,$24,$30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$24,$30,$29,$27,$26,$25,$24,$29,$28,$27,$26,$24,$30,$29,$28,$26,$25,$24,$30,$28,$27,$26,$25,$30,$29,$28,$27
    #endif

    ; Chile 
    #if (DST_START_MONTH==AUGUST && DST_START_DAY==SECOND_SUNDAY)
        DSTStartMonth:
        .db $09,$14,$13,$12,$11,$09,$08,$14,$13,$11,$10,$09,$08,$13,$12,$11,$10,$08,$14,$13,$12,$10,$09,$08,$14,$12,$11,$10,$09,$14,$13,$12,$11,$09,$08,$14,$13,$11,$10,$09,$08,$13,$12,$11,$10,$08,$14,$13,$12,$10,$09,$08,$14,$12,$11,$10,$09,$14,$13,$12,$11,$09,$08,$14,$13,$11,$10,$09,$08,$13,$12,$11,$10,$08,$14,$13,$12,$10,$09,$08,$14,$12,$11,$10,$09
    #endif

    ; United States 
    #if (DST_START_MONTH==MARCH && DST_START_DAY==SECOND_SUNDAY)
        DSTStartMonth:
        .db $08,$13,$12,$11,$10,$08,$14,$13,$12,$10,$09,$08,$14,$12,$11,$10,$09,$14,$13,$12,$11,$09,$08,$14,$13,$11,$10,$09,$08,$13,$12,$11,$10,$08,$14,$13,$12,$10,$09,$08,$14,$12,$11,$10,$09,$14,$13,$12,$11,$09,$08,$14,$13,$11,$10,$09,$08,$13,$12,$11,$10,$08,$14,$13,$12,$10,$09,$08,$14,$12,$11,$10,$09,$14,$13,$12,$11,$09,$08,$14,$13,$11,$10,$09,$08
    #endif

    ; Israel 
    #if (DST_START_MONTH==MARCH && DST_START_DAY==FRIDAY_BEFORE_LAST_SUNDAY)
        DSTStartMonth:
        .db $27,$25,$24,$23,$29,$27,$26,$25,$24,$29,$28,$27,$26,$24,$23,$29,$28,$26,$25,$24,$23,$28,$27,$26,$25,$23,$29,$28,$27,$25,$24,$23,$29,$27,$26,$25,$24,$29,$28,$27,$26,$24,$23,$29,$28,$26,$25,$24,$23,$28,$27,$26,$25,$23,$29,$28,$27,$25,$24,$23,$29,$27,$26,$25,$24,$29,$28,$27,$26,$24,$23,$29,$28,$26,$25,$24,$23,$28,$27,$26,$25,$23,$29,$28,$27
    #endif

    ; Greenland (DK) 
    #if (DST_START_MONTH==MARCH && DST_START_DAY==SATURDAY_BEFORE_LAST_SUNDAY)
        DSTStartMonth:
        .db $28,$26,$25,$24,$30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$24,$30,$29,$27,$26,$25,$24,$29,$28,$27,$26,$24,$30,$29,$28,$26,$25,$24,$30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$24,$30,$29,$27,$26,$25,$24,$29,$28,$27,$26,$24,$30,$29,$28,$26,$25,$24,$30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$24,$30,$29,$27,$26,$25,$24,$29,$28,$27,$26,$24,$30,$29,$28
    #endif


    ;;;;;;;;;;;;;;;;;;;;;;;;;;; DST Ends ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; New Zealand, Australia
    #if (DST_END_MONTH==APRIL && DST_END_DAY==FIRST_SUNDAY)
        DSTEndMonth:
        .db $05,$03,$02,$01,$07,$05,$04,$03,$02,$07,$06,$05,$04,$02,$01,$07,$06,$04,$03,$02,$01,$06,$05,$04,$03,$01,$07,$06,$05,$03,$02,$01,$07,$05,$04,$03,$02,$07,$06,$05,$04,$02,$01,$07,$06,$04,$03,$02,$01,$06,$05,$04,$03,$01,$07,$06,$05,$03,$02,$01,$07,$05,$04,$03,$02,$07,$06,$05,$04,$02,$01,$07,$06,$04,$03,$02,$01,$06,$05,$04,$03,$01,$07,$06,$05
    #endif

    ; United States 
    #if (DST_END_MONTH==NOVEMBER && DST_END_DAY==FIRST_SUNDAY)
        DSTEndMonth:
        .db $01,$06,$05,$04,$03,$01,$07,$06,$05,$03,$02,$01,$07,$05,$04,$03,$02,$07,$06,$05,$04,$02,$01,$07,$06,$04,$03,$02,$01,$06,$05,$04,$03,$01,$07,$06,$05,$03,$02,$01,$07,$05,$04,$03,$02,$07,$06,$05,$04,$02,$01,$07,$06,$04,$03,$02,$01,$06,$05,$04,$03,$01,$07,$06,$05,$03,$02,$01,$07,$05,$04,$03,$02,$07,$06,$05,$04,$02,$01,$07,$06,$04,$03,$02,$01
    #endif

    ; Paraguay 
    #if (DST_END_MONTH==MARCH && DST_END_DAY==FOURTH_SUNDAY)
        DSTEndMonth:
        .db $22,$27,$26,$25,$24,$22,$28,$27,$26,$24,$23,$22,$28,$26,$25,$24,$23,$28,$27,$26,$25,$23,$22,$28,$27,$25,$24,$23,$22,$27,$26,$25,$24,$22,$28,$27,$26,$24,$23,$22,$28,$26,$25,$24,$23,$28,$27,$26,$25,$23,$22,$28,$27,$25,$24,$23,$22,$27,$26,$25,$24,$22,$28,$27,$26,$24,$23,$22,$28,$26,$25,$24,$23,$28,$27,$26,$25,$23,$22,$28,$27,$25,$24,$23,$22
    #endif

    ; Jordan 
    #if (DST_END_MONTH==OCTOBER && DST_END_DAY==LAST_FRIDAY)
        DSTEndMonth:
        .db $30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$31,$30,$29,$27,$26,$25,$31,$29,$28,$27,$26,$31,$30,$29,$28,$26,$25,$31,$30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$31,$30,$29,$27,$26,$25,$31,$29,$28,$27,$26,$31,$30,$29,$28,$26,$25,$31,$30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$31,$30,$29,$27,$26,$25,$31,$29,$28,$27,$26,$31,$30,$29,$28,$26,$25,$31,$30
    #endif

    ; United Kingdom 
    #if (DST_END_MONTH==OCTOBER && DST_END_DAY==LAST_SUNDAY)
        DSTEndMonth:
        .db $25,$30,$29,$28,$27,$25,$31,$30,$29,$27,$26,$25,$31,$29,$28,$27,$26,$31,$30,$29,$28,$26,$25,$31,$30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$31,$30,$29,$27,$26,$25,$31,$29,$28,$27,$26,$31,$30,$29,$28,$26,$25,$31,$30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$31,$30,$29,$27,$26,$25,$31,$29,$28,$27,$26,$31,$30,$29,$28,$26,$25,$31,$30,$28,$27,$26,$25
    #endif

    ; Chile 
    #if (DST_END_MONTH==MAY && DST_END_DAY==SECOND_SUNDAY)
        DSTEndMonth:
        .db $10,$08,$14,$13,$12,$10,$09,$08,$14,$12,$11,$10,$09,$14,$13,$12,$11,$09,$08,$14,$13,$11,$10,$09,$08,$13,$12,$11,$10,$08,$14,$13,$12,$10,$09,$08,$14,$12,$11,$10,$09,$14,$13,$12,$11,$09,$08,$14,$13,$11,$10,$09,$08,$13,$12,$11,$10,$08,$14,$13,$12,$10,$09,$08,$14,$12,$11,$10,$09,$14,$13,$12,$11,$09,$08,$14,$13,$11,$10,$09,$08,$13,$12,$11,$10
    #endif

    ; Brazil 
    #if (DST_END_MONTH==FEBRUARY && DST_END_DAY==THIRD_SUNDAY)
        DSTEndMonth:
        .db $15,$21,$19,$18,$17,$16,$21,$20,$19,$18,$16,$15,$21,$20,$18,$17,$16,$15,$20,$19,$18,$17,$15,$21,$20,$19,$17,$16,$15,$21,$19,$18,$17,$16,$21,$20,$19,$18,$16,$15,$21,$20,$18,$17,$16,$15,$20,$19,$18,$17,$15,$21,$20,$19,$17,$16,$15,$21,$19,$18,$17,$16,$21,$20,$19,$18,$16,$15,$21,$20,$18,$17,$16,$15,$20,$19,$18,$17,$15,$21,$20,$19,$17,$16,$15
    #endif

    ; Fiji 
    #if (DST_END_MONTH==JANUARY && DST_END_DAY==THIRD_SUNDAY)
        DSTEndMonth:
        .db $18,$17,$15,$21,$20,$19,$17,$16,$15,$21,$19,$18,$17,$16,$21,$20,$19,$18,$16,$15,$21,$20,$18,$17,$16,$15,$20,$19,$18,$17,$15,$21,$20,$19,$17,$16,$15,$21,$19,$18,$17,$16,$21,$20,$19,$18,$16,$15,$21,$20,$18,$17,$16,$15,$20,$19,$18,$17,$15,$21,$20,$19,$17,$16,$15,$21,$19,$18,$17,$16,$21,$20,$19,$18,$16,$15,$21,$20,$18,$17,$16,$15,$20,$19,$18
    #endif

    ; Greenland (DK) 
    #if (DST_END_MONTH==OCTOBER && DST_END_DAY==SATURDAY_BEFORE_LAST_SUNDAY)
        DSTEndMonth:
        .db $24,$29,$28,$27,$26,$24,$30,$29,$28,$26,$25,$24,$30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$24,$30,$29,$27,$26,$25,$24,$29,$28,$27,$26,$24,$30,$29,$28,$26,$25,$24,$30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$24,$30,$29,$27,$26,$25,$24,$29,$28,$27,$26,$24,$30,$29,$28,$26,$25,$24,$30,$28,$27,$26,$25,$30,$29,$28,$27,$25,$24,$30,$29,$27,$26,$25,$24
    #endif


; Calibrate interpolated centiseconds to match the 1PPS output
timingAdjust:
    push ZH
    push ZL
    clr ZH
    out TCNT1H,ZH
    out TCNT1L,ZH

    lds ZL,fix
    lds ZH,dataValid
    eor ZL,ZH
    sts fix,ZL

    cpi dDeciSeconds, 5
    brcc timingSlow

timingFast:
    in ZL, OCR1AL
    in ZH, OCR1AH
    adiw ZH : ZL, 1
    out OCR1AH, ZH
    out OCR1AL, ZL
    ldi dDeciSeconds,0 
    ldi dCentiSeconds,0

    pop ZL
    pop ZH
    out SREG, r15
    reti

timingSlow:
    in ZL, OCR1AL
    in ZH, OCR1AH
    sbiw ZH : ZL, 1
    out OCR1AH, ZH
    out OCR1AL, ZL
    ldi dDeciSeconds,9 
    ldi dCentiSeconds,9

    ldi ZH, 1<<OCF0A
    out TIFR, ZH

    pop ZL
    pop ZH
    rjmp rollover