.orig x3000
AND R4, R4, #0 ; load number of characters into r4
LD R2, negativeCounter; load negative num (currently -10) into r2
Lea R0, message ; Load message into r0
puts ; print the message into the console

lea R1,string ; Load the address of the input string

NEXT TRAP x20 ; Looping the input to read each char string
TRAP x21 ; echo the string char being read
ADD R4, R4, #1 ; Increment the character count by 1
STR R0,R1,#0 ; Store read character in r0 in address pointed by R1
ADD R1,R1,#1 ; Increase the string pointer by 1 so that it points at next available location
ADD R5, R0, R2 ; Check whether the input is a empty character 
BRz print_count ; If the input is enter character, jump to print_count
BR NEXT ; if the above doesn't hold then read the next character

print_count LEA R0, lf
TRAP x22 ; Print the string
LD R3, zeroNum ; zeroNum is assigned to r3, which is currently 0
ADD R0, R3, R4 ; R0 stores the number of characters
ADD R4,R4,#-1 ; r4 minus 1 and store the result in r4
ADD R0, R0, #-1 ; decrease r0 by 1 and store the result in r0
TRAP x21 ; ehco count to console

message .stringz "Please enter a string: "
lf .stringz "The number of characters in the input is: "
True .stringz "\nThe input string is Palindrome"
False .stringz "\nThe input string is not Palindrome"
negativeCounter.FILL #-10
zeroNum .FILL x30
string .blkw x100
.END