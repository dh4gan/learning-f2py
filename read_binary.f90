SUBROUTINE find_number_entries(filename,n)
!F2PY INTENT(IN) :: filename
!F2PY INTENT(OUT) :: n

character(100) :: filename
integer :: n

open(10, file=filename, form='unformatted')
read(10) n
print*, 'The file has ', n, 'entries'
close(10)


END SUBROUTINE find_number_entries


SUBROUTINE read_binary(filename,n,data)
! This subroutine reads a simple binary file
! (To be wrapped by f2py)

!F2PY INTENT(IN) :: filename
!F2PY INTENT(IN) :: n
!F2PY INTENT(OUT) :: data

integer,dimension(n) :: data
character(100) :: filename


open(10, file=filename, form='unformatted')
read(10) n
print*, 'There are ', n, 'entries'

read(10) (data(i), i=1,n)
close(10)

print*, 'Fortran SUBROUTINE has the following data:'
do i=1,n
print*, i, data(i)
enddo

END SUBROUTINE read_binary
