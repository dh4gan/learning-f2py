This is a simple repository that I used to practice how to wrap Fortran subroutines for Python

The repo contains Fortran code (with Makefile) to generate a simple Fortran binary file

Subroutines to be wrapped are in read_binary.f90, which reads the binary file

Command to wrap using `f2py` is

`> f2py -c -m read_binary read_binary.f90`

Which creates a module `read_binary` with two functions: 

`find_number_entries`: Finds the number of entries in the file

`read_binary`: Reads the binary file (requires output from previous method)

