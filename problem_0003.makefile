executive = problem_0003

objects = $(executive).o pelib.o

$(executive) : $(objects)
	cc -std=c11 -o $(executive) $(objects)

$(executive).o : pelib.h

.PHONY : clean
clean :
	-rm $(objects)

.PHONY : cleanall
cleanall :
	-rm $(executive) $(objects)