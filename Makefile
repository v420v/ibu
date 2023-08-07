
make:
	as -o bootstrap/ibu.o bootstrap/ibu.s
	as -o src/builtin.o src/builtin.s
	ld -o ibu bootstrap/ibu.o src/builtin.o

self:
	./ibu src/ibu.ibu | as - -o src/ibu.o
	as -o src/builtin.o src/builtin.s
	ld -o ibu src/ibu.o src/builtin.o

update_bootstrap:
	./ibu src/ibu.ibu | as -
	./ibu src/ibu.ibu > bootstrap/ibu.s

clean:
	rm *.o *.out ibu bootstrap/*.o src/*.o

