<h1>The Ibu programming language</h1>

[Changelog]() |
[Docs](docs/docs.md) |
[ドキュメント](docs/docs_jp.md)

[![CI](https://github.com/v420v/ibu/actions/workflows/ci.yml/badge.svg)](https://github.com/v420v/ibu/actions/workflows/ci.yml)

- No strict type checker
- No C-like pointer arithmetic
- No function-like macros
- No `break`, `continue` stmt. Use `goto`
- Allows `13 <= age < 20` instead of `13 <= age && age < 20`
- Variable length args `func(...)` can be accessed with built-in variables `argc i64` and `argv *i64`
- The compiler is written in itself
- Default args don't have to be on the end (WIP)

```go
#include "std/header.ibu"

func main() i32 {
    let age i32 = 19;

    if 13 <= age < 20 {
        printf("Teen-ager\n");
    }

    return 0;
}
```

## Installing the Language
```zsh
$ git clone git@github.com:v420v/ibu.git
$ cd ibu
$ make up
$ make ibulang
$ make init
```

## How to Use the Compiler
A simple example compile and run hello world
```zsh
$ ./ibuc main.ibu | as - -o main.o
$ as -o lib/runtime.o lib/runtime.s
$ ./ibuc lib/linux-syscall/linux-syscall.ibu | as - -o lib/linux-syscall.o
$ ./ibuc lib/std/std.ibu                     | as - -o lib/std.o
$ ld -o main main.o lib/runtime.o lib/linux-syscall.o lib/std.o
$ ./main
```

[documentation](docs/docs.md)

[documentation[日本語版]](docs/docs_jp.md)
