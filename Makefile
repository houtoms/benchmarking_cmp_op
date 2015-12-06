CFLAGS = -O2 -qopt-report2 -xCORE-AVX2 -std=c++11
AFLAGS = -S -fsource-asm
all:
	icpc -c main.cpp -o main.s ${CFLAGS} ${AFLAGS}  
	icpc main.cpp -o main.out ${CFLAGS}  

clean:
	rm main.out
