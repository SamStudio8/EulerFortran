program problem6
    integer::i,sum_squares,total_sum
    
    sum_squares = 0
    total_sum = 0

    do i=1,100
        sum_squares = sum_squares + i**2
        total_sum = total_sum + i
    end do
    write(*,*) total_sum**2 - sum_squares
end program
