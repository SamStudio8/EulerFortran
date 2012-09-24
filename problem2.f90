program problem2
    integer::last1,last2,current,total
    last1 = 0
    last2 = 1
    do while (current <= 4000000)
        current = last1+last2
        write(*,*) current
        if(mod(current, 2) == 0) then
            total = total + current
        end if
        last1 = last2
        last2 = current
    end do
    write (*,*) "Sum is ", total
end program
