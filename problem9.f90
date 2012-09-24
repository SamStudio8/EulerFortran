program problem9
    integer::m,n,a,b,c,flag
    flag = 0

    do m=2,100
        do n=1,m
            a = (m*m) - (n*n)
            b = 2 * (m*n)
            c = (m*m) + (n*n)

            if (a+b+c == 1000) then
                flag = 1
                exit
            end if
        end do

        if (flag == 1) then
            exit
        end if
    end do
    write(*,*) a*b*c
end program
