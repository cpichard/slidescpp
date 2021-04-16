enigma: enigma.o main.o
	g++ enigma.o main.o -o enigma

enigma.o: enigma.cpp enigma.h Makefile
	g++ -c enigma.cpp -o enigma.o

main.o: main.cpp enigma.h Makefile
	g++ -c main.cpp -o main.o

clean:
	rm *.o enigma
