<h1>The Ibu programming language</h1>

[![CI](https://github.com/v420v/ibu/actions/workflows/ci.yml/badge.svg)](https://github.com/v420v/ibu/actions/workflows/ci.yml)

- No strict type checker
- No C-like pointer arithmetic
- No function-like macros
- No `break`, `continue` stmt. Use `goto`
- Allows `13 <= age < 20` instead of `13 <= age && age < 20`
- Variable length args `func(...)` can be accessed with built-in variables `argc i64` and `argv *i64`
- Default function args. Default args don't have to be on the end. (WIP)

```go
#include "std.ibu"

func main() i32 {
    let age i32 = 19;

    if 13 <= age < 20 {
        printf("Teen-ager\n");
    }

    printf("Hello, world!\n");
    return 0;
}
```

## Build compiler

> **Note**
> Supports Linux x86-64 only.

```sh
$ git clone git@github.com:v420v/ibu.git
$ cd ibu

$ docker build ./ -t ibulang
```

```sh
# Linux or MacOS:
$ docker run --rm -it -v "$(pwd)":/root/env ibulang

# Windows (CMD):
$ docker run --rm -it -v "%cd%":/root/env ibulang

# Windows (PowerShell):
$ docker run --rm -it -v "${pwd}:/root/env" ibulang

# To leave the environment, enter `exit`.
```

Since the language is selfhosted you need to bootstrap the compiler first.

To build the compiler, run the following command below or just run `make`

```sh
$ make
$ make self
```

## How to build, compile programs written in Ibu
```sh
$ ./ibuc <filename>.ibu | as - -o <filename>.o
$ as -o lib/syscall-amd64.o lib/syscall-amd64.s
$ ld -o <filename> <filename>.o lib/syscall-amd64.o
```

## Ibu Documentation

#### Hello, world!
```go
#include "std.ibu"

func main() i32 {
    printf("Hello, world!\n");
    return 0;
}
```

#### Variables
```go
#include "std.ibu"

func main() i32 {
    let name *u8 = "Ibuki";
    let age i8 = 19;

    printf("name: %s, age: %d\n", name, age);

    return 0;
}
```

#### Types
```go
i8, i16, i32, i64, u0, u8, u16, u32, u64
```

#### If
```go
#include "std.ibu"

// Allows "13 <= age < 20" instead of "13 <= age && age < 20"

func main() i32 {
    let age i32 = 19;

    if 13 <= age < 20 {
        printf("Teen-ager\n");
    }

    return 0;
}
```

```v
1 < 2 < 3 < 4 < 5; //  1 < 2 && 2 < 3 && 3 < 4 && 4 < 5;

1 < 2 >= 3 < 4 > 5; //  1 < 2 && 2 >= 3 && 3 < 4 && 4 > 5;

1 && 8 || 7 || 6 < 2 < 3; //  1 && 8 || 7 || 6 < 2 && 2 < 3;

6 == 1 == 1 && 8 || 7 || 6 < 2 < 3; //  6 == 1 && 1 == 1 && 8 || 7 || 6 < 2 && 2 < 3;

1 == 1 == 1 == 2; //  1 == 1 && 1 == 1 && 1 == 2;

2 != 2 != 3 != 4 < 3 <= 5 <= 6; //  2 != 2 && 2 != 3 && 3 != 4 && 4 < 3 && 3 <= 5 && 5 <= 6;

4 || 2 || 8 || 9 && 4 < 2 < 3; //  4 || 2 || 8 || 9 && 4 < 2 && 2 < 3;

2 != 2 != 3 != 4 < !3 <= 5 <= 6; //  2 != 2 && 2 != 3 && 3 != 4 && 4 < !(3) && !(3) <= 5 && 5 <= 6;
```

#### Variable length args
```go
#include "std.ibu"

// Variable-length arguments can be accessed using the built-in variable argv, argc

func add_nums(...) i32 {
    let n i32 = 0;
    let idx i32 = 0;

    while idx < argc {
        n = n + argv[idx];
        idx++;
    }

    return n;
}

func main() i32 {
    let d i32 = add_nums(1, 2, 3);
    printf("%d\n", d);

    return 0;
}
```

#### While
```go
#include "std.ibu"

func main() i32 {
    // Like go's for loop, the condition is true if it is empty.
    while {
        printf("IBUKI\n");
    }

    let i i32 = 0;
    while i < 100 {
        printf("%d\n", i);
        i++;
    }

    return 0;
}
```

#### Arrays
```go
#include "std.ibu"

func main() i32 {
    let arr [4]i32 = {1, 2, 3, 4};

    let arr2 [2][3][2][4]i32 = {
        {
            {
                {1, 2, 3, 4}, {1, 2, 3, 4}
            },
            {
                {1, 2, 9, 4}, {1, 2, 3, 4}
            },
            {
                {1, 2, 3, 4}, {1, 2, 3, 4}
            }
        },
        {
            {
                {11, 22, 3, 4}, {14, 24, 3, 4}
            },
            {
                {11, 22, 3, 4}, {11, 27, 3, 4}
            },
            {
                {11, 22, 3, 4}, {11, 2, 3, 4}
            }
        }
    };

    let buffer [10]u8 = {};

    let test3 [2][2][2]i32 = {
        {
            {}, {}
        },
        {
            {}, {}
        }
    };

    printf("arr[3] -> %d\n", arr[3]);
    printf("arr2[1][1][1][1] -> %d\n", arr2[1][1][1][1]);

    return 0;
}
```

#### Struct
```go
#include "std.ibu"

struct Person {
    name *u8,
    age i8,
}

func main() i32 {
    let p Person = {
        "Ibuki",
        19
    };

    printf("name: %s age: %d\n", p.name, p.age);

    return 0;
}
```

```go
#include "std.ibu"

struct Person {
    name *u8,
    age i8,
}

func main() i32 {
    let p *Person = alloc(typesize(Person));

    p.name = "Ibuki";
    p.age = 19;

    printf("name: %s age: %d\n", p.name, p.age);

    return 0;
}
```

### Syntax highlighter
<a href="https://marketplace.visualstudio.com/items?itemName=ibuki.ibu">Visual Studio Code</a>

### Selfhosting
`make self` will compile `src/main.ibu` using the ./ibuc executable
```sh

$ make self

```

## Reference
https://github.com/rui314/chibicc

https://tinkeros.github.io/WbGit/Doc/HolyC.html
