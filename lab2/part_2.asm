; Generic assembly source file for testing code segments

        org     $800    ; location 800h is the beginning of SRAM
        ;--=PART A=--
        ;LDAB    #$01   
        ;ADCB    #$01
        ;--=PART B=--
        ;LDD     #$01   
        ;ADDD    $900
        ;--=PART C=--   
        ;LDAA    #$01   
        ;ADDA    #$09
        ;DAA        
        ;--=PART D=--
        ;LDAA    #$0B   
        ;SUBA    #$01
        ;DAA
        ;--=PART E=--
        ;LDD     #$03E8  ;0x03E8 = 1000
        ;LDY     #$64    ;0x64 = 100
        ;EMUL
        ;--=PART F=--
        LDD     #$2000
        LDX     #$4000
        FDIV             ;Should result in $8000 (1/2)        
        stop		; (use location of STOP instruction for setting breakpoint)
        
        org     $900    ; place operand data at location 900h
opand1  fcb     $09     ; test data
opand2  fcb     $03     ; test data
        fcb     $5
result  fcb     0       ; place to store result (initially cleared)
        
        org     $D00
        fcb     $02
        end
        
        
