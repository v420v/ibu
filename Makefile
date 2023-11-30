
SHELL = /bin/bash
.SHELLFLAGS = -o pipefail -c

make:
	as -o bootstrap/ibu-linux-x86_x64.o bootstrap/ibu-linux-x86_x64.s
	ld -o ibuc bootstrap/ibu-linux-x86_x64.o 

self:
	./ibuc src/main.ibu | as - -o src/ibu.o
	ld -o ibuc src/ibu.o 

update_bootstrap:
	./ibuc src/main.ibu | as -
	./ibuc src/main.ibu > bootstrap/ibu-linux-x86_x64.s

clean:
	rm *.o *.out ibuc bootstrap/*.o src/*.o

