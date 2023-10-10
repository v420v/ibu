
SHELL = /bin/bash
.SHELLFLAGS = -o pipefail -c

make:
	as -o bootstrap/ibu-linux-x86_x64.o bootstrap/ibu-linux-x86_x64.s
	as -o src/builtin.o src/builtin.s
	ld -o ibuc bootstrap/ibu-linux-x86_x64.o src/builtin.o

self:
	./ibuc src/compiler.ibu | as - -o src/ibu.o
	as -o src/builtin.o src/builtin.s
	ld -o ibuc src/ibu.o src/builtin.o

update_bootstrap:
	./ibuc src/compiler.ibu | as -
	./ibuc src/compiler.ibu > bootstrap/ibu-linux-x86_x64.s

clean:
	rm *.o *.out ibuc bootstrap/*.o src/*.o

