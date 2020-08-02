CHAROUT = $FFD2

.byte $0b,$08,$01,$00,$9e,$32,$30,$36,$31,$00,$00,$00 

        LDX #0

loop:   LDA msg,X
        JSR CHAROUT
        INX
        CPX #$0c
        BNE loop
        RTS

    msg: .byte "HELLO WORLD!"