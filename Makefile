#####################################################
###                                               
###  Makefile for the read binary code         


# Compiler variables for WKMR:
FC     = gfortran

# For big-endian files use these flags
#FFLAGS = -O3 -fPIC -frecord-marker=4 -fconvert=swap -fdefault-real-8

# To run this in parallel use these flags
#FFLAGS = -O3 -frecord-marker=4 -fdefault-real-8 -Wunused -fbounds-check -fopenmp

# To run this in serial
#FFLAGS = -O3 -frecord-marker=4 -fdefault-real-8 -Wunused -fbounds-check

FFLAGS = -O3 -frecord-marker=4 -Wunused -fbounds-check


# Create object files:
#%.o: %.f
#	$(FC) $(FFLAGS) -c $<

%.o: %.f90
	$(FC) $(FFLAGS) -c $<

SOURCESAF90 = read_test_fortran.f90 read_binary.f90

OBJECTSA    = $(SOURCESAF90:.f90=.o)

# Create executable files:
build: readtestfortran

readtestfortran:  $(OBJECTSA)
	$(FC) $(FFLAGS) -o $@ $(OBJECTSA)

# Clean statements:
clean: 
	\rm *.o *.mod readtestfortran

# End Makefile
