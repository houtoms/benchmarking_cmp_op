all:
	icpc main.cpp -o main.out -O2 -qopt-report2 # -qopt-report-phase=vec -vec-report2 #-S -fsource-asm 

clean:
	rm main.out
