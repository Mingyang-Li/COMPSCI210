
  .ORIG   x3100
ENTER   LD      R0, ONE         ; Init. 0x3400 to 1
        STI     R0, C

CHECK   LDI     R0, A           ; to check if Mem[A] equals Mem[B] 
        LDI     R1, B
        NOT     R2, R1
        ADD     R2, R2, #1
        ADD     R3, R2, R0
        BRz     YES

NO      AND     R4, R4, #0      ; Set 0x3400 to 0 and exit
        STI     R4, C
        BRnzp   DONE

YES     LD      R0, A           ; Check if we're done
        LD      R1, B
        NOT     R2, R0
        ADD     R2, R2, R1
        BRz     DONE

        ADD     R0, R0, #1      ; not done, move 'pointers'
        ST      R0, A
        ADD     R1, R1, #-1
        ST      R1, B
        BRnzp   CHECK

DONE    HALT
CNT     .FILL   x0000
A       .FILL   x3200
B       .FILL   x3209
C       .FILL   x3400
ONE     .FILL   x0001
        .END
