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

LEA R1,string ; load string into R1
ADD R2,R1,R4 ; store the sum of r1 and r4 into r2 
ADD R2,R2,#-1 ; r2 minus by 1 store the result in r2 then point to the last character of the string 
Palindrome
LDR R3,R1,#0 ; Load character from start of string, hence from r3
LDR R4,R2,#0 ; Load character from end of string, hence from r4
False R4,R4 ; indicate 2's complement of R4
ADD R4,R4,#1 ; add 1 to r4 
ADD R5,R3,R4 ; Compare ascii code for fisrt and last characters see if they match 
BRnp FalseT_P ; If both characters are not equal, jump to NOT_P
ADD R1,R1,#1 ; add 1 to r1 so we increment string pointer
ADD R2,R2,#-1 ; minus 1 to r2 so we decrement string pointer
NOT R5,R2 ; indicate 2's complement of R4
ADD R5,R5,#1 ; add 1 to r5
ADD R5,R1,R5 ; add sum of r1 and r5 to r5 to compare both pointers
BRp Palindrome ; keep going with comparisions if first is smaller
LEA R0, True ; Load input string of address   
TRAP x22 ; echo string in console 
BR DONE ; Branch code to DONE status 
NOT_P
LEA R0, False ; Load input string address to r0
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