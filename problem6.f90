program problem6
        integer::i,total1,total2
        
        total1 = 0
        total2 = 0

        do i=1,100
                total1 = total1 + i**2
                total2 = total2 + i
        end do
        write(*,*) total2**2 - total1
end program
