<div align="center">
    <img src="https://emoji2svg.deno.dev/api/🕊️" alt="eyecatch" height="100">
    <h1>The Ezra programming language</h1>
</div>

[![CI](https://github.com/v420v/ezra/actions/workflows/ci.yml/badge.svg)](https://github.com/v420v/ezra/actions/workflows/ci.yml)

A language designed for the enjoyment of programming.

## Key Features of Ezra
- No strict type checker
- No C-like pointer arithmetic
- No function-like macros
- No variable shadowing
- No `break`, `continue` stmt. Use `goto`
- No libc dependency
- No hidden control flow
- No hidden memory allocations
- Allows syntax like `13 <= age < 20`
- Variable length args `func(...)` can be accessed with built-in variables `argc i64` and `argv *i64`
- All values are extended to 64-bit when accessed
- The compiler is written in itself
- Default args don't have to be on the end (WIP)

> [!IMPORTANT]
> Supports x86-64 Linux only

## Build the language
```zsh
$ git clone git@github.com:v420v/ezra.git
$ cd ezra
$ make init
```

## Build the language with docker
```zsh
$ git clone git@github.com:v420v/ezra.git
$ cd ezra
$ make up
$ make ezra
$ make init
```

| Command | Execution |
|-----------|------------------------|
| `make up` | `docker compose up -d` |
| `make ezra` | `docker compose exec ezra bash` |
| `make down` | `docker compose down` |

## Usage

```
$ ./ezrac <filename>.ezra
```

## Compiler implementation
| File | Content |
|-----------|------------------------|
| `src/ezra.ezra` | Entry point |
| `src/tokenizer/tokenizer.ezra` | Lexical analyzer |
| `src/preprocessor/preprocessor.ezra` | Preprocessor |
| `src/parser/parser.ezra` | Parser |
| `src/codegen/codegen.ezra` | Assembly code generator |
| `src/linux-syscall/linux-syscall.ezra` | Linux system call |
| `src/runtime.s` | Syscall function in assembly |
| `src/util/util.ezra` | Other |

### Contribution
contribution is welcome!

### License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
