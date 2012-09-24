program problem7
    integer::i,ul,counter,d,divisible
    i = 1
    counter = 1
    ul = 10001

    do while (counter /= ul)
        i = i + 1
        if(mod(i,2) == 0) then
            cycle
        end if

        divisible = 0
        d = 3
        do while(d <= ceiling(sqrt(real(i))))
            if(mod(i,d) == 0) then
                divisible = 1
                exit
            end if
            d = d+2
        end do

        if(divisible == 0) then
            counter = counter + 1
        end if
    end do
    write(*,*) i
end program
