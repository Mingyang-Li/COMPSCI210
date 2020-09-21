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
;the above is all of part 1

noc lea r0,number  ;load number into r0
puts  ;print the output in console
add r1,r1,#-1  ; minus 1 from r1 then store the result into r1
ld r0,total  ;load the total from r0
add r0,r0,r1  ;add the sum of r0 and r1 into r0
out  ; break out of the program
halt ;stop the program 

;every 'variable' is defiend here below
message .stringz "Please enter a string: "
number .stringz "The number of characters in the input is: "
lf .fill #-10
total .fill x30
.end
