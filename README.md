<h1>The Ibu programming language</h1>

[📄 Documentation](docs/docs.md) |
[📄 ドキュメント](docs/docs_jp.md) |
[🗺️ Roadmap](ROADMAP.md) |
[🔄 Changelog](CHANGELOG.md)

[![CI](https://github.com/v420v/ibu/actions/workflows/ci.yml/badge.svg)](https://github.com/v420v/ibu/actions/workflows/ci.yml)

## Key Features of Ibu

- No strict type checker
- No C-like pointer arithmetic
- No function-like macros
- No `break`, `continue` stmt. Use `goto`
- Allows `13 <= age < 20` instead of `13 <= age && age < 20`
- Variable length args `func(...)` can be accessed with built-in variables `argc i64` and `argv *i64`
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
> Only supports x86-64 linux for now
>
> Recomend using docker for other users

## Build the language
```
$ git clone git@github.com:v420v/ibu.git
$ cd ibu
$ make init
```

## Build the language with docker (non x86-64 linux users)
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

Currently, the compiler outputs assembly to stdout. (This will change if a language-specific assembler is created)

Output the assembly to an assembler to generate an object file, and then to a linker to generate an executable file.

Don't forget to pass `lib/runtime.o`, `lib/linux-syscall.o`, `lib/std.o` to the linker.

### Example: Compile Hello world!
```zsh
$ ./ibuc main.ibu | as - -o main.o
$ as -o lib/runtime.o lib/runtime.s
$ ./ibuc lib/linux-syscall/linux-syscall.ibu | as - -o lib/linux-syscall.o
$ ./ibuc lib/std/std.ibu                     | as - -o lib/std.o
$ ld -o main main.o lib/runtime.o lib/linux-syscall.o lib/std.o
$ ./main
```

## Compiler implementation
| File | Content |
|-----------|------------------------|
| `src/ibu.ibu` | entry point |
| `src/tokenizer/tokenizer.ibu` | Lexical analyzer |
| `src/preprocessor/preprocessor.ibu` | Preprocessor |
| `src/parser/parser.ibu` | Parser |
| `src/codegen/codegen.ibu` | Code generator |
| `lib/linux-syscall/linux-syscall.ibu` | Linux system call library |
| `lib/std/std.ibu` | Standard library |
| `lib/runtime/runtime.ibu` | Runtime library |

