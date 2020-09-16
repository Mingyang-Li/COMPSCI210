https://stackoverflow.com/questions/30386227/lc3-assembly-palindrome-error

c1: https://www.chegg.com/homework-help/questions-and-answers/don-t-need-worry-first-two-parts-m-done-want-know-tell-user-s-input-palindrome-stop-progra-q56113580
c2: https://www.chegg.com/homework-help/questions-and-answers/following-program-determines-whether-character-palindrome--palindrome-string-reads-backwar-q20369565

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
