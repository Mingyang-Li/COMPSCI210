https://stackoverflow.com/questions/30386227/lc3-assembly-palindrome-error
.orig x3000

        lea     r2, data
        and     r1, r1, #0
        add     r1, r1, #4

next    add     r1, r1, #-1
        brz     end 
        in      
        str     r0, r2, #0
        add     r2, r2, #1
        brnzp   next

.END
