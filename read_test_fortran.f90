PROGRAM read_test_fortran
! This program reads a simple binary file
character(100) :: filename
integer, dimension(1000) :: data

filename = 'testfile'

call read_binary(filename,data,n)

print*, 'There are ',n, ' lines in the file'

do i=1,n
    print*, data(i)
enddo

END PROGRAM read_test_fortran
