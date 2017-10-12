make all:
	make build
	make doc
	make doczip
clean:
	rm *.o *.class *.gch college *.tar -r html -r latex
build:
	make college
doc:
	doxygen *.cc
%.o: %.cc
	g++ -c $^
college: *.o
	g++ -o $@ $^
doczip:
	tar -czf archive.tar html
