.org $0801

CHAROUT = $FFD2 ; Address of CHAROUT Kernal Routine

;The following line creates the basic statement "1 SYS 2061"  
;so that when the RUN command is issued it will jump to the 
;program(which starts at location 2061 or $81D) and run it. 
.byte $0b,$08,$01,$00,$9e,$32,$30,$36,$31,$00,$00,$00 

        LDX #$00        
        LDA msg         ;Load first character in the Accumulator

 loop:  JSR CHAROUT     ;Print character in the Accumulator to the output device(default is the screen)
        INX
        LDA msg,X       ;Load next character in the Accumulator
        CMP #$00        ;Check Accumulator for $00, which indicates end of the message
        BNE loop        ;If the next character  is not $00 go to the top of the loop

        RTS             ;Exit routine and return to BASIC

    msg: .byte "hello world!",$00