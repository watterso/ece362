; Generic assembly source file for testing code segments

        org     $800    ; location 800h is the beginning of SRAM
        ldaa    #$02  ; load first operand
        ldx    #$900
        ldd    #$01
        adda    [D,X]  ; instruction(s) being tested (with second operand)
        staa    result  ; store result
        stop		; (use location of STOP instruction for setting breakpoint)
        
        org     $901    ; place operand data at location 900h
opand1  fcb     $09     ; test data
opand2  fcb     $03     ; test data
        fcb     $5
result  fcb     0       ; place to store result (initially cleared)
        
        org     $D00
        fcb     $02
        end
        
        
