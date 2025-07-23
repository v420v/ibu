<div align="center">
    <h1>The ibu programming language</h1>
</div>

[![CI](https://github.com/v420v/ibu/actions/workflows/ci.yml/badge.svg)](https://github.com/v420v/ibu/actions/workflows/ci.yml)

## Key Features of ibu
- No strict type checker
- No C-like pointer arithmetic
- No function-like macros
- No variable shadowing
- No `break`, `continue` stmt. Use `goto`
- No libc dependency
- No hidden control flow
- No hidden memory allocations
- All values are extended to 64-bit when accessed
- The compiler is written in itself

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
| `make ibu` | `docker compose exec ibu bash` |
| `make down` | `docker compose down` |

## Usage

```
$ ./ibuc <filename>.ibu
```

## Compiler implementation
| File | Content |
|-----------|------------------------|
| `src/ibu.ibu` | Entry point |
| `src/tokenizer/tokenizer.ibu` | Lexical analyzer |
| `src/preprocessor/preprocessor.ibu` | Preprocessor |
| `src/parser/parser.ibu` | Parser |
| `src/codegen/codegen.ibu` | x86-64 Assembly code generator |
| `src/linux-syscall/linux-syscall.ibu` | Linux system call |
| `src/runtime.s` | Syscall function in assembly |
| `src/util/util.ibu` | Other |

### Contribution
contribution is welcome!

### License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
