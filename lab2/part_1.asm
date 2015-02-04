; Generic assembly source file for testing code segments

        org     $800    ; location 800h is the beginning of SRAM
        ;MOVW    #$900, $901 ; part A
        ;ldx     #$900  ;part B
        ;LEAY    2,X        
        ldaa    #$10
        ldab    #$01
        PSHA
        PSHB
        PULD
        stop		; (use location of STOP instruction for setting breakpoint)
        
        org     $900    ; place operand data at location 900h
opand1  fcb     $09     ; test data
opand2  fcb     $03     ; test data
        fcb     $5
result  fcb     0       ; place to store result (initially cleared)
        
        org     $D00
        fcb     $02
        end
        
        
