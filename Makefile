
make:
	vas -o bootstrap/ibu.o bootstrap/ibu.s
	ld -o ibu bootstrap/ibu.o

dev:
	./ibu src/ibu.ibu | vas - -o src/ibu.o
	ld -o ibu src/ibu.o

update_bootstrap:
	./ibu src/ibu.ibu | vas -
	./ibu src/ibu.ibu > bootstrap/ibu.s

clean:
	rm *.o *.out ibu bootstrap/*.o src/*.o

