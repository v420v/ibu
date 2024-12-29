# Documentation

Ibu is not intended to be the next big thing to compete with C, C++, Rust, or other modern languages. Instead, it aims to be a programming language that brings joy to programming.

## Key features of Ibu
- No strict type checker
- No C-like pointer arithmetic
- No function-like macros
- No variable shadowing
- No `break`, `continue` stmt. Use `goto`
- Allows `13 <= age < 20` instead of `13 <= age && age < 20`
- Variable length args `func(...)` can be accessed with built-in variables `argc i64` and `argv *i64`
- All values are extended to 64-bit when accessed
- The compiler is written in itself
- Default args don't have to be on the end (WIP)

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

## Hello World
```
#include "std/header.ibu"

func main() i32 {
    printf("hello world");
    return 0;
}
```

## Comment
```c
// Only single line comments exist
```

## File inclusion
The `include` keyword first looks for the specified file in the current directory. If it is not found, it looks for the file in the [lib](../lib) folder.
```
#include "std/header.ibu"
```

## Function
The function description method is somewhat similar to Go.

Type comes after the argument name.

The return type must be specified. If there is no return value, `u0` type can be used as shown in the section [Type](#型).
```
#include "std/header.ibu"

func foo(x i32, y i32) i32 {
    return x + y;
}

func main() i32 {
    return foo(34, 35);
}
```

## Variables
```
#include "std/header.ibu"

func main() i32 {
    let a i32 = 10;
    printf("%d\n", a);
    return 0;
}
```

## Types
```go
u0  // C's void but zero size
u8  // Unsigned 8-bit integer
u16 // Unsigned 16-bit integer
u32 // Unsigned 32-bit integer
u64 // Unsigned 64-bit integer

i8  // Signed 8-bit integer
i16 // Signed 16-bit integer
i32 // Signed 32-bit integer
i64 // Signed 64-bit integer

f64 // 64-bit floating point number (WIP)
```

## Array
```
#include "std/header.ibu"

func main() i32 {
    let array [10]i32 = {
        1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    };

    return array[3] + array[4];
}
```

## Condition

### Condition Example 1
```
#include "std/header.ibu"

func main() i32 {
    if 34 < 35 {
        printf("hi!");
    }
}
```

### Condition Example 2
`13 <= age && age < 20` can be used instead of `13 <= age < 20`.
```
#include "std/header.ibu"

func main() i32 {
    let age i32 = 19;
    if 10 <= age < 20 {
        printf("10代\n");
    }
}
```

### Condition Example 3
```
#include "std/header.ibu"

func main() i32 {
    let c u8 = 'b';
    if 'a' <= c <= 'z' {
        printf("Lowercase letter\n");
    }
}
```

## Loop

### Loop Example 1
```
#include "std/header.ibu"

func main() i32 {
    let i i32 = 0;
    while i < 10 {
        printf("%d\n", i);
        i++;
    }
}
```

### Loop Example 2
```
#include "std/header.ibu"

func main() i32 {
    let i i32 = 0;
label:
    if i < 10 {
        printf("%d\n", i);
        i++;
        goto label;
    }
}
```

### Loop Example 3
```
#include "std/header.ibu"

func main() i32 {
    for let i i32 = 0; i < 10; i++ {
        printf("%d\n", i);
    }
}
```

## Switch
Switch statements always create a jump table to jump to the case.
```
#include "std/header.ibu"

func main() i32 {
    let n i32 = 10;
    switch n {
        case 5:
            printf("5\n");
        case 10:
            printf("10\n");
        case 20:
            printf("20\n");
        case 30:
            printf("30\n");
    }
}
```

## Variable length args
Variable length args can be accessed with built-in variables `argv` and `argc`.

```
#include "std/header.ibu"

func add_nums(...) i32 {
    let n i32 = 0;
    let i i32 = 0;

    while i < argc {
        n = n + argv[i];
        i++;
    }

    return n;
}

func main() i32 {
    let d i32 = add_nums(1, 2, 3);
    printf("%d\n", d);

    return 0;
}
```

## Struct
```
#include "std/header.ibu"

struct Person {
    name *u8,
    age i32,
}

func main() i32 {
    let p Person = {
        "John",
        10
    };

    printf("Name is %s.\n", p.name);
    printf("Age is %d.\n", p.age);
}
```

## Heap memory
`alloc()` can be used to allocate heap memory.

`typesize()` is replaced with the size of the type passed during compilation.
```
#include "std/header.ibu"

struct Person {
    name *u8,
    age i32,
}

func main() i32 {
    let p Person = alloc(typesize(Person));
    p.name = "John";
    p.age = 10;

    printf("Name is %s.\n", p.name);
    printf("Age is %d.\n", p.age);
}
```

## Default args (WIP)
Default args don't have to be on the end.
```
#include "std/header.ibu"

func foo(x i32 = 10, y i32) i32 {
    return x + y;
}

func main() i32 {
    foo(34, 35);
    foo(, 35);
}
```

## Inline assembly (WIP)
```
#include "std/header.ibu"

foo:
    push rbp
    mov rsp, rbp
    // ...
    ret

func main() i32 {
    foo();
}
```
