
.orig x3000
AND R4, R4, #0 ; Character Count Register
LD R2, negativeCounter; R2 = -10
Lea R0, message ; Load the address of the register to be printed
puts ; Trap x22

lea R1,string ; Load the address of the input string

NEXT TRAP x20 ; Read a character
TRAP x21 ; Output the read character
ADD R4, R4, #1 ; Increment Character Count
STR R0,R1,#0 ; Store read character in address pointed by R1
ADD R1,R1,#1 ; Increments string pointer so that it
; points at available memory location
ADD R5, R0, R2 ; Check whether the input is a enter character to stop
; reading input
BRz print_count ; If the input is enter character, jump to print_count
BR NEXT ; Else Read next character

print_count LEA R0, lf
TRAP x22 ; Print the string
LD R3, zeroNum ; R3 = 0
ADD R0, R3, R4 ; R0 = string count
ADD R4,R4,#-1 ; String Count
ADD R0, R0, #-1 ; Decrement R0
TRAP x21 ; Output the count to console

LEA R1,string ; R1 points to starting of the string
ADD R2,R1,R4 ; R2 points to end of string
ADD R2,R2,#-1 ; R2 point to last character of string
Palindrome
LDR R3,R1,#0 ; Load a character from start of string
LDR R4,R2,#0 ; Load a character from end of string
False R4,R4 ; 2's complement of R4
ADD R4,R4,#1
ADD R5,R3,R4 ; Compare fisrt and last characters
BRnp FalseT_P ; If both characters are Falset equal, jump to FalseT_P
ADD R1,R1,#1 ; Increment string pointer
ADD R2,R2,#-1 ; Decrement string pointer
NOT R5,R2 ; 2's complement of R4
ADD R5,R5,#1
ADD R5,R1,R5 ; Compare both pointers
BRp Palindrome ; Repeat the process,if first is smaller
LEA R0, True ; Load the address of the input string
TRAP x22 ; Print the string
BR DONE ; Branch to DONE
NOT_P
LEA R0, False ; Load the address of the input string
TRAP x22 ; Print the string
DONE HALT


message .stringz "Please enter a string: "
lf .stringz "The number of characters in the input is: "
True .stringz "\nThe input string is Palindrome"
False .stringz "\nThe input string is not Palindrome"
negativeCounter.FILL #-10
zeroNum .FILL x30
string .blkw x100
.END