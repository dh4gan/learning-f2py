PROGRAM write_test_fortran
! This program writes a simple binary file in fortran

character(100) :: filename

integer,parameter :: n = 10

integer :: i
integer,dimension(n) :: data

filename = 'testfile'

data(1) = 2
do i=2,n
    data(i) = 2*data(i-1)
    print*, i, data(i), n
enddo

open(10, file=filename, form='unformatted')
write(10) n
print*, (data(i),i=1,n)
write(10) (data(i), i=1,n)
close(10)


END PROGRAM write_test_fortran
