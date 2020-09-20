.ORIG X3000

lea r0,message ; getting message variable and load it into R0
puts   ;display the message 
and r1,r1,#0  

ld r3, lf  ; load lf content into r3
next add r4,r0,r3  ; now starting to loop, we check if the sum of r0 and r3 is equal to 0
brz noc  ; if it is equal to 0 then we break out of the loop
add r1,r1,#1  ; if not equal to 0 we add 1 t0 r1 and store it in r1
getc 
out
brnzp next

message .stringz "Please enter a string: "   ; message variable that displays the prompt
lf .fill #-10   ;lf is the counter variable to be incremented by 1 during each iteration

.END
