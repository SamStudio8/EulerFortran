program problem1
    integer::x,i
    x = 0
    do i=1,999 
        if (mod(i, 3) == 0  .or. mod(i,5) == 0) then
            x = x+i
            write(*,*) i
        end if
    end do
    write(*,*) "Sum is ", x
end program
