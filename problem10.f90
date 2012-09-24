program problem10
    integer::i,divisible,d,limit
    integer(kind=8)::sum_primes

    i = 2
    limit = 2000000
    sum_primes = 2

    do while(i < limit)
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
            sum_primes = sum_primes + i
        end if
    end do
    write(*,*) sum_primes
end program
