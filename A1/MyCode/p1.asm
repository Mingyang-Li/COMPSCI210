.ORIG X3000

lea r0,myMessage
puts

ld r3, enterKeyAscii
next add r4,r0,r3
brz end
getc
out
brnzp next

end halt

myMessage .stringz "Please enter a string: "
enterKeyAscii .fill #-10
.end
