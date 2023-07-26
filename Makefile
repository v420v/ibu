
make:
	vas -o bootstrap/ibu.o bootstrap/ibu.s
	vas -o src/builtin.o src/builtin.s
	ld -o ibu bootstrap/ibu.o src/builtin.o

dev:
	./ibu src/ibu.ibu | vas - -o src/ibu.o
	vas -o src/builtin.o src/builtin.s
	ld -o ibu src/ibu.o src/builtin.o

update_bootstrap:
	./ibu src/ibu.ibu | vas -
	./ibu src/ibu.ibu > bootstrap/ibu.s

clean:
	rm *.o *.out ibu bootstrap/*.o src/*.o

