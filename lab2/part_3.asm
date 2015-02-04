; Generic assembly source file for testing code segments

        org     $800    
        ;--=PART A=--
        LDAA    #$02
        LSLA           ; should make (A)=$04
        ;--=PART B=--
        LDAB    #$F0
        SEC             ; set carry flag
        RORB            ; should make (B)=$F8 
        ;--=PART C=--
        LDX     #$903
        CPX     $900
        ;--=PART D=--
        SEC
        ANDCC #0
        ;--=PART E=--
        ORCC  #1
        stop	
        
        org     $900   
opand1  fcb     $09     ; test data
opand2  fcb     $03     ; test data
        fcb     $5
result  fcb     0       ; place to store result (initially cleared)
        
        org     $D00
        fcb     $02
        end
        
        
