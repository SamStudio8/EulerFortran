pure function is_prime(i)
    integer, intent(in)::i
    integer::d

    is_prime = 0
    if(mod(i,2) == 0 .and. i /= 2) then
        return
    end if
    d = 3
    do while(d <= ceiling(sqrt(real(i))))
        if(mod(i,d) == 0) then
            return
        end if
        d = d+2
    end do
    
    is_prime = 1
    return
end function

program problem7
    integer::i,ul,counter
    integer::is_prime
    i = 1
    counter = 0
    ul = 10001

    do while (counter /= ul)
        i = i + 1
        if(is_prime(i) == 1) then
            counter = counter + 1
        end if
    end do
    write(*,*) i
end program
