.ORIG X3000

lea r0,message
puts
and r1,r1,#0

ld r3, lf
next add r4,r0,r3
brz noc
add r1,r1,#1
getc
out
brnzp next

noc lea r0,number
puts
add r1,r1,#-1
ld r0,total
add r0,r0,r1
out
halt

message .stringz "Please enter a string: "
number .stringz "The number of characters in the input is: "
lf .fill #-10
total .fill x30
.end
