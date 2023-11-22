<h1>The Ibu programming language</h1>

[![CI](https://github.com/v420v/ibu/actions/workflows/ci.yml/badge.svg)](https://github.com/v420v/ibu/actions/workflows/ci.yml)

- No strict type checker
- No global variables
- No C-like pointer arithmetic
- No function-like macros
- No `break`, `continue` stmt. Use `goto`
- No block scopes

```go
#include "std.ibu"

func main() i32 {
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
$ as -o bootstrap/ibu-linux-x86_x64.o bootstrap/ibu-linux-x86_x64.s
$ as -o src/builtin.o src/builtin.s
$ ld -o ibuc bootstrap/ibu-linux-x86_x64.o src/builtin.o

# just to check if the compiler can compile itself.
$ make self
```

## How to build, compile programs written in Ibu
```sh
$ ./ibuc <filename>.ibu | as - -o <filename>.o
$ ld -o <filename> <filename>.o src/builtin.o
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
    var name *u8 = "Ibuki";
    var age i8 = 19;

    printf("name: %s, age: %d\n", name, age);

    return 0;
}
```

#### Types
```hc
i8, i16, i32, i64, u0, u8, u16, u32, u64
```

#### If
```go
#include "std.ibu"

func main() i32 {
    var x i32 = 34;
    var y i32 = 35;
    if x < y {
        printf("%d < %d\n", x, y);
    } else if x > y {
        printf("%d > %d\n", x, y);
    } else {
        printf("else!\n");
    }
}
```

```go
#include "std.ibu"

// Allows "13 <= age < 20" instead of "13 <= age && age < 20"

func main() i32 {
    var age i8 = 19;

    if 13 <= age < 20 {
        printf("Teen-ager\n");
    }

    return 0;
}
```

#### Variable length args
```go
#include "std.ibu"

// Variable-length arguments can be accessed using the built-in variable argv, argc

func add_nums(...) i32 {
    var n i32 = 0;
    var idx i32 = 0;

    while idx < argc {
        n = n + argv[idx];
        idx++;
    }

    return n;
}

func main() i32 {
    var d i32 = add_nums(1, 2, 3);
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

    var i i32 = 0;
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
    var arr [4]i32 = {1, 2, 3, 4};

    var arr2 [2][3][2][4]i32 = {
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

    var buffer [10]u8 = {};

    var test3 [2][2][2]i32 = {
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
    var p Person = {
        "Ibuki",
        19
    };

    printf("name: %s age: %d\n", p.name, p.age);

    return 0;
}
```

#### Struct Pointer
```go
#include "std.ibu"

struct Person {
    name *u8,
    age i8,
}

func main() i32 {
    var p *Person = alloc(typesize(Person));

    p.name = "Ibuki";
    p.age = 19;

    printf("name: %s age: %d\n", p.name, p.age);

    return 0;
}
```

#### Linked list
```go
#include "std.ibu"

struct User {
    name *u8,
    next *User,
}

func user_print_names(user *User) i32 {
    printf("%s\n", user.name);

    if user.next != nil {
        user_print_names(user.next);
    }
    return 0;
}

func new_user(name *u8) *User {
    var user *User = alloc(typesize(User));
    user.name = name;
    return user;
}

func main(argc i32, argv **u8) i32 {
    var head User = {};
    var cur *User = &head;

    cur = cur.next = new_user("Ibu");
    cur = cur.next = new_user("Ibuki");
    cur = cur.next = new_user("Foo");
    cur = cur.next = new_user("Bar");

    user_print_names(head.next);

    printf("%s\n", head.next.next.next.next.name);

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
