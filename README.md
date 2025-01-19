<div align="center">
    <img src="https://emoji2svg.deno.dev/api/🕊️" alt="eyecatch" height="100">
    <h1>The Ibu programming language</h1>
</div>

[![CI](https://github.com/v420v/ibu/actions/workflows/ci.yml/badge.svg)](https://github.com/v420v/ibu/actions/workflows/ci.yml)

## Key Features of Ibu
- No strict type checker
- No C-like pointer arithmetic
- No function-like macros
- No variable shadowing
- No `break`, `continue` stmt. Use `goto`
- No libc dependency
- No hidden control flow
- No hidden memory allocations
- Allows `13 <= age < 20` instead of `13 <= age && age < 20`
- Variable length args `func(...)` can be accessed with built-in variables `argc i64` and `argv *i64`
- All values are extended to 64-bit when accessed
- The compiler is written in itself
- Default args don't have to be on the end (WIP)

```
#include "std/header.ibu"

func main() i32 {
    printf("Hello, world!\n");
    return 0;
}
```

> [!IMPORTANT]
> Supports x86-64 Linux only

## Build the language
```zsh
$ git clone git@github.com:v420v/ibu.git
$ cd ibu
$ make init
```

## Build the language with docker
```zsh
$ git clone git@github.com:v420v/ibu.git
$ cd ibu
$ make up
$ make ibu
$ make init
```

| Command | Execution |
|-----------|------------------------|
| `make up` | `docker compose up -d` |
| `make ibu` | `docker compose exec ibulang bash` |
| `make down` | `docker compose down` |

## Usage

```
$ ./ibuc <filename>.ibu
```

Currently, the compiler outputs assembly to stdout.

### Example: Compile Hello world!
```zsh
$ ./ibuc main.ibu | as - -o main.o
$ as -o lib/runtime.o lib/runtime.s
$ ./ibuc lib/linux-syscall/linux-syscall.ibu | as - -o lib/linux-syscall.o
$ ./ibuc lib/std/std.ibu                     | as - -o lib/std.o
$ ld -o main main.o lib/runtime.o lib/linux-syscall.o lib/std.o
$ ./main
```

[📜 The Ibu Programming Language Documentation](docs/docs.md)

## Compiler implementation
| File | Content |
|-----------|------------------------|
| `src/ibu.ibu` | Entry point |
| `src/tokenizer/tokenizer.ibu` | Lexical analyzer |
| `src/preprocessor/preprocessor.ibu` | Preprocessor |
| `src/parser/parser.ibu` | Parser |
| `src/codegen/codegen.ibu` | Code generator |
| `lib/linux-syscall/linux-syscall.ibu` | Linux system call library |
| `lib/std/std.ibu` | Standard library |
| `lib/runtime/runtime.ibu` | Runtime library |

### Contribution
contribution is welcome!

### License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
