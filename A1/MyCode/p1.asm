.ORIG X3000

lea r0,message
puts

ld r3, lf
next add r4,r0,r3
brz end
getc
out
brnzp next

end halt

message .stringz "Please enter a string: "
lf .fill #-10
.end
