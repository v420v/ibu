
# The Ibu programming language

<img src="https://github.com/v420v/ibu/assets/106643445/476c1310-4546-4fac-ac59-38f36e3d0716"  width=600 align="right">

- No strict type checker
- No global variables
- No macros
- No hidden control flow
- No C-like pointer arithmetic
- No `break`, `continue` stmt. Use `goto`
- No block scopes.
- No bugs, everything is a feature

```

func main() i32 {
    printf("Hello, world!\n");
    return 0;
}

```

Since the language is selfhosted you need to bootstrap the compiler first.

Ibu uses <a href="https://github.com/v420v/vas">vas</a> assembler.

To build the compiler, run the following command below or just run `make`

```sh
$ vas -o bootstrap/ibu.o bootstrap/ibu.s
$ vas -o src/builtin.o src/builtin.s
$ ld -o ibu bootstrap/ibu.o src/builtin.o
```

## How to build, compile programs written in Ibu
*** Don't forget to pass `src/builtin.o` to the linker ***
```sh
$ ./ibu <filename>.ibu | vas - -o <filename>.o
$ ld -o <filename> <filename>.o src/builtin.o
```

## Contributing
Welcome!

```go

func print_user_defined_types(p *Parser) i32;

func print_all_tokens(tok *Token) i32;

```

### Update bootstrap folder
```sh

$ make update_bootstrap

```

### Selfhosting
`make dev` will compile `src/ibu.ibu` using the ./ibu executable
```sh

$ make dev

```

## Reference
https://github.com/rui314/chibicc

https://tinkeros.github.io/WbGit/Doc/HolyC.html
