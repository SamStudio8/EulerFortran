program program5
    integer::i,j,max_factor,flag,flag2
    flag = 0
    flag2 = 0
    max_factor = 20
    j = 2520

    l1: do while (flag == 0)
        flag2 = 0
        l2: do i=3,max_factor
            if (mod(j, i) /= 0) then
                flag2 = 1
                exit l2
            end if
        end do l2
        if (flag2 == 0) then
            write(*,*) j
            flag = 1
        else
            j = j + 2
        end if
    end do l1
end program
