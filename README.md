
# The Ibu programming language

<img src="https://github.com/v420v/ibuki/assets/106643445/d872f002-c601-4cdd-9f28-c6744b466d8a" width=600 align="right">

- No strict type checker
- No global variables
- No macros
- No hidden control flow
- No C-like pointer arithmetic
- No `break`, `continue` stmt. Use `goto`
- No bugs, everything is a feature

```

func main() i32 {
    println("Hello, world!");
    return 0;
}

```

Since the language is selfhosted you need to bootstrap the compiler first.

Ibu uses <a href="https://github.com/v420v/vas">vas</a> assembler.

To build the compiler, run the following command below or just run `make`

```sh
$ vas -o bootstrap/ibu.o bootstrap/ibu.s
$ ld -o ibu bootstrap/ibu.o
$ ./ibu src/ibu.ibu | vas - -o src/ibu.o
$ ld -o ibu src/ibu.o
```

## Reference
https://github.com/rui314/chibicc

https://tinkeros.github.io/WbGit/Doc/HolyC.html
