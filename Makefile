#PracticeQuiz Makefile Alyssa Atkinson

all:
	make build
	make doczip

mywc: wc.o
	g++ -o mywc wc.o

wc.o: wc.c
	gcc -c wc.c

build: mywc

doc:	
	doxygen wc.c

doczip:
	tar czvf PracticeQuiz.tgz wc.c Makefile html latex

clean:
	-rm *.o
	-rm *.class
	-rm a.out
	-rm mywc
	-rm -r html
	-rm -r latex
	-rm *.tgz