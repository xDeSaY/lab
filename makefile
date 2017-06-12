.PHONY: clean all test
CFLAGS = -Wall -Werror -MP -MMD 

all: bin/hello 

bin/hello: build/main.o build/function.o 
	gcc $(CFLAGS) build/main.o build/function.o -o bin/hello

build/main.o: src/main.c src/function.h
	gcc $(CFLAGS) -c src/main.c -lm -o build/main.o 

build/function.o: src/function.c src/function.h 
	gcc $(CFLAGS) -c src/function.c -o build/function.o 

clean:
	@echo "Cleaning files in build directory" 	
	@rm -rf build/*.d build/*.o 
	@rm -rf build/test/*.d build/test/*.o
	@echo "Cleaning binaries"
