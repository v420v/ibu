
SHELL = /bin/bash
.SHELLFLAGS = -o pipefail -c

.DEFAULT_GOAL := init

.PHONY: up
up:
	docker compose up -d

.PHONY: down
down:
	docker compose down

.PHONY: ezra
ezra:
	docker compose exec ezra bash

.PHONY: init
init:
	@printf "\033[1m\033[34mStarting the build process...\033[0m\n\n"
	as -o bootstrap/ezra.o bootstrap/ezra.s
	as -o bootstrap/tokenizer.o         bootstrap/tokenizer.s
	as -o bootstrap/parser.o            bootstrap/parser.s
	as -o bootstrap/codegen.o           bootstrap/codegen.s
	as -o bootstrap/preprocessor.o      bootstrap/preprocessor.s
	as -o bootstrap/linux-syscall.o     bootstrap/linux-syscall.s
	as -o bootstrap/util.o            bootstrap/util.s
	as -o bootstrap/runtime.o           bootstrap/runtime.s
	ld -o ezrac bootstrap/ezra.o bootstrap/tokenizer.o bootstrap/parser.o bootstrap/codegen.o bootstrap/preprocessor.o bootstrap/linux-syscall.o bootstrap/util.o bootstrap/runtime.o
	@printf "\033[1m\033[32mBuild process completed successfully!\033[0m\n"

.PHONY: self
self:
	./ezrac src/ezra.ezra                         | as - -o src/ezra.o
	./ezrac src/tokenizer/tokenizer.ezra         | as - -o src/tokenizer.o
	./ezrac src/preprocessor/preprocessor.ezra   | as - -o src/preprocessor.o
	./ezrac src/linux-syscall/linux-syscall.ezra | as - -o src/linux-syscall.o
	./ezrac src/util/util.ezra                     | as - -o src/util.o
	./ezrac src/codegen/codegen.ezra             | as - -o src/codegen.o
	./ezrac src/parser/parser.ezra               | as - -o src/parser.o
	as -o src/runtime.o src/runtime.s
	ld -o ezrac src/tokenizer.o src/parser.o src/codegen.o src/preprocessor.o src/ezra.o src/util.o src/runtime.o src/linux-syscall.o

.PHONY: update_bootstrap
update_bootstrap:
	./ezrac src/ezra.ezra                         > bootstrap/ezra.s
	./ezrac src/tokenizer/tokenizer.ezra         > bootstrap/tokenizer.s
	./ezrac src/preprocessor/preprocessor.ezra   > bootstrap/preprocessor.s
	./ezrac src/linux-syscall/linux-syscall.ezra > bootstrap/linux-syscall.s
	./ezrac src/util/util.ezra                     > bootstrap/util.s
	./ezrac src/codegen/codegen.ezra             > bootstrap/codegen.s
	./ezrac src/parser/parser.ezra               > bootstrap/parser.s
	cp src/runtime.s bootstrap/runtime.s

.PHONY: clean
clean:
	rm *.o ezrac bootstrap/*.o src/*.o

