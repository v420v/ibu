
SHELL = /bin/bash
.SHELLFLAGS = -o pipefail -c

.DEFAULT_GOAL := init

.PHONY: up
up:
	docker compose up -d

.PHONY: down
down:
	docker compose down

.PHONY: ibu
ibu:
	docker compose exec ibulang bash

.PHONY: init
init:
	@printf "\033[1m\033[34mStarting the build process...\033[0m\n\n"
	as -o bootstrap/ibu.o bootstrap/ibu.s
	as -o bootstrap/tokenizer.o         bootstrap/tokenizer.s
	as -o bootstrap/parser.o            bootstrap/parser.s
	as -o bootstrap/codegen.o           bootstrap/codegen.s
	as -o bootstrap/preprocessor.o      bootstrap/preprocessor.s
	as -o bootstrap/linux-syscall.o     bootstrap/linux-syscall.s
	as -o bootstrap/std.o               bootstrap/std.s
	as -o lib/runtime.o                 lib/runtime.s
	ld -o ibuc bootstrap/ibu.o bootstrap/tokenizer.o bootstrap/parser.o bootstrap/codegen.o bootstrap/preprocessor.o bootstrap/linux-syscall.o bootstrap/std.o lib/runtime.o

	@printf "\n"
	@printf "___________________________________________________0/____________\n"
	@printf "                                                   0\\           \n"
	@printf "\033[1m\033[32mBuild process completed successfully!\033[0m\n"
	@printf "\n"
	@echo "    ______"
	@echo "   /  _/ /_  __  __"
	@echo "   / // __ \\/ / / /"
	@echo " _/ // /_/ / /_/ /"
	@echo "/___/_.___/\__,_/  v0.1.0"
	@printf "The Ibu programming language\n"

.PHONY: self
self:
	./ibuc src/ibu.ibu                         | as - -o src/ibu.o
	./ibuc src/tokenizer/tokenizer.ibu         | as - -o src/tokenizer.o
	./ibuc src/parser/parser.ibu               | as - -o src/parser.o
	./ibuc src/codegen/codegen.ibu             | as - -o src/codegen.o
	./ibuc src/preprocessor/preprocessor.ibu   | as - -o src/preprocessor.o
	./ibuc lib/linux-syscall/linux-syscall.ibu | as - -o lib/linux-syscall.o
	./ibuc lib/std/std.ibu                     | as - -o lib/std.o
	as -o lib/runtime.o lib/runtime.s
	ld -o ibuc src/tokenizer.o src/parser.o src/codegen.o src/preprocessor.o src/ibu.o lib/std.o lib/runtime.o lib/linux-syscall.o

.PHONY: update_bootstrap
update_bootstrap: init
	./ibuc src/ibu.ibu                         > bootstrap/ibu.s
	./ibuc src/tokenizer/tokenizer.ibu         > bootstrap/tokenizer.s
	./ibuc src/parser/parser.ibu               > bootstrap/parser.s
	./ibuc src/codegen/codegen.ibu             > bootstrap/codegen.s
	./ibuc src/preprocessor/preprocessor.ibu   > bootstrap/preprocessor.s
	./ibuc lib/linux-syscall/linux-syscall.ibu > bootstrap/linux-syscall.s
	./ibuc lib/std/std.ibu                     > bootstrap/std.s

.PHONY: clean
clean:
	rm *.o ibuc bootstrap/*.o src/*.o lib/*.o

