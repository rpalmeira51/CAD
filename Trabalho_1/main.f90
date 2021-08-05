program main
    implicit none
    CHARACTER(len=32) :: n_arg
    integer :: status_n
    integer :: len_n
    CHARACTER(len=32) :: m_arg
    integer :: status_m
    integer :: len_m
    integer :: n 
    integer :: m
    integer :: i
    integer :: j 
    double precision, allocatable :: a(:,:)
    double precision, allocatable :: x(:) 
    double precision, allocatable :: b(:)
    double precision, allocatable :: b2(:)
    double precision :: r
    double precision :: max_rand_val = 10d10 ! Multiply by r to get random number for the matrices, limits the max number 
    real :: time_first_function_start , time_first_function_end
    real :: time_second_function_start , time_second_function_end

    CALL get_command_argument(1, n_arg,len_n,status_n)
    CALL get_command_argument(2, m_arg,len_m,status_m)

    if( status_n /= 0) then
        print *, "Incorrect n argument\n"
        stop 
    end if

    if(status_m /= 0) then 
        print *, "Incorrect m argument\n"
        stop
    end if

    read(n_arg,*) n
    read(m_arg,*) m

    allocate(a(n,m))
    allocate(x(m))
    allocate(b(n))
    allocate(b2(n))

    !i =1
    !do while ( i <= n)
    !    print *, i ,b(i)
    !    i = i+1
    !end do
    print *, "=============================================="
    print *, "Matrix " , TRIM(n_arg) // "x" // TRIM(m_arg) 
    !a = RESHAPE( SOURCE = (/ 0d0,4d0, 8d0,12d0, 1d0, 5d0, 9d0, 13d0,2d0,6d0,10d0,14d0,3d0,7d0,11d0,15d0/), SHAPE = (/ 4,4/) )
    !x = (/ 1,2,3,4 /)
    i = 1 
    do while( i<= n) 
        j = 1 
        do while ( j<= m)
            call random_number(r)
            a(i,j) = (max_rand_val * r)
            j = j+1 
        end do
        i = i+1
    end do

    i = 1
    do while ( i<= m) 
        call random_number(r)
        x(i) = ( max_rand_val * r )
        i = i+1
    end do

    i = 1
    do while( i<= n) 
        b2(i) = 0
        i = i+1
    end do 

    call CPU_TIME(time_first_function_start)
    call multiplyMatrixRow(a,x,n,m,b)
    call CPU_TIME(time_first_function_end)
    call CPU_TIME(time_second_function_start)
    call multiplyMatrixColumn(a,x,n,m,b2)
    call CPU_TIME(time_second_function_end)

    print *, "Time elapsed row funcion", time_first_function_end- time_first_function_start, "seconds"
    print *, "Time elapsed column funcion", time_second_function_end- time_second_function_start, "seconds"
    !i = 1
    !do while ( i <= n)
    !    print *, i ,b(i)
    !    i = i+1
    !end do
    !print *, "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    !i = 1
    !do while ( i <= n)
    !    print *, i ,b2(i)
    !    i = i+1
    !end do
    print *, "=============================================="
    deallocate(a)
    deallocate(x)
    deallocate(b)
    deallocate(b2)
    !print *, n
    !print *, m
end program main

subroutine multiplyMatrixRow(a,x,n,m,b)
    implicit none
    double precision, intent(in) :: a(n,m)
    double precision, intent(in) :: x(m)
    double precision, intent(out) :: b(m)
    integer, intent(in) :: n
    integer, intent(in) :: m
    integer :: i
    integer :: j
    double precision temp
    i = 1
    do while ( i<= n)
        temp = 0d0
        j = 1
        do while ( j<=m)
            ! print *, "i", i, "j", j, "a", a(i,j), "x" , x(j)
            temp = temp+ a(i,j)* x(j)
            j = j+1
        end do 
        b(i) =temp
        i = i+1
    end do 

end subroutine multiplyMatrixRow

subroutine multiplyMatrixColumn(a,x,n,m,b)
    implicit none
    double precision, intent(in) :: a(n,m)
    double precision, intent(in) :: x(m)
    double precision, intent(out) :: b(m)
    integer, intent(in) :: n
    integer, intent(in) :: m
    integer :: i
    integer :: j
    j = 1
    do while ( j<= m)
        i  = 1
        do while ( i<=n)
            ! print *, "i", i, "j", j, "a", a(i,j), "x" , x(j)
            b(i) = b(i) + a(i,j)*x(j)
            i = i+1
        end do 
        j = j +1
    end do 
end subroutine multiplyMatrixColumn

