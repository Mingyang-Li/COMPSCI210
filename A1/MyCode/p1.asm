
.orig x3000
AND R4, R4, #0 ; load number of characters into r4
LD R2, negative_counter ; load negative num (currently -10) into r2
Lea R0, userInput ; Load message into r0
puts ; print the message into the console

lea R1,stringOfChar ; Looping the input to read each char string

NEXT TRAP x20 ; echo the string char being read
TRAP x21 ; Increment the character count by 1
ADD R4, R4, #1 ; Increment Character Count
STR R0,R1,#0 ; Store read character in r0 in address pointed by R1
ADD R1,R1,#1 ; Increase the string pointer by 1 so that it points at next available location
ADD R5, R0, R2 ; Check whether the input is a empty character 
BRz print_count ; If the input is enter character, jump to print_count
BR NEXT ; if the above doesn't hold then read the next character

print_count LEA R0, numCt

userInput .stringz "Please enter a string: "
numCt .stringz "The number of characters in the input is: "
True .stringz "\nThe input string is Palindrome"
False .stringz "\nThe input string is not Palindrome"
negative_counter .FILL #-10
startNum .FILL x30
stringOfChar .blkw x100
.END

