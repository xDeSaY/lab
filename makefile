.PHONY: clean all test
CFLAGS = -Wall -Werror -MP -MMD 

all: bin/Quard 

bin/Quard: build/main.o build/function.o
	@echo "Make is 100%" 
	@gcc $(CFLAGS) build/main.o build/function.o -o bin/Quard -lm

build/main.o: src/main.c src/function.h
	@gcc $(CFLAGS) -c src/main.c -o build/main.o -lm 

build/function.o: src/function.c src/function.h 
	@gcc $(CFLAGS) -c src/function.c -o build/function.o

test: 
	make bin/Quard_test 
	bin/Quard_test 

bin/Quard_test: build/test/main.o build/test/function_test.o
	@gcc $(CFLAGS) build/test/main.o build/test/function_test.o build/function.o -o bin/Quard_test
	
build/test/main.o: test/main.c src/function.h
	@gcc $(CFLAGS) -I thirdparty -c test/main.c -o build/test/main.o 

build/test/function_test.o: src/function.h test/function_test.c
	@gcc $(CFlAGS) -I thirdparty -c test/function_test.c -o build/test/function_test.o  

clean:
	@echo "Cleaning files in build directory" 	
	@rm -rf build/*.d build/*.o 
	@rm -rf build/test/*.d build/test/*.o
	@echo "Cleaning binaries"
	@rm -rf bin/equation.exe 
	@rm -rf bin/equation_test.exe 
	@echo "All files have been cleaned."	
 
 -include build/*.d
