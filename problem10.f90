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

program problem10
    integer::i,limit
    integer::is_prime
    integer(kind=8)::sum_primes

    i = 1
    limit = 2000000
    sum_primes = 0

    do while(i < limit)
        i = i + 1
        if(is_prime(i) == 1) then
            sum_primes = sum_primes + i
        end if
    end do
    write(*,*) sum_primes
end program
