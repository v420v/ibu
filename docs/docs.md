# Documentation

## Introduction
ibu is a statically typed compiled language developed solely for the enjoyment of programming.

## Installing the Language
```zsh
$ git clone git@github.com:v420v/ibu.git
$ cd ibu
$ make up
$ make ibulang
$ make init
```

## How to Use the Compiler
Let's actually compile and run a hello world program.
```zsh
$ ./ibuc main.ibu | as - -o main.o
$ as -o lib/runtime.o lib/runtime.s
$ ./ibuc lib/linux-syscall/linux-syscall.ibu | as - -o lib/linux-syscall.o
$ ./ibuc lib/std/std.ibu                     | as - -o lib/std.o
$ ld -o main main.o lib/runtime.o lib/linux-syscall.o lib/std.o
$ ./main
```
Brief explanation:
- Line 1 `./ibuc main.ibu | as - -o main.o`
    - Converts main.ibu to assembly code using the ./ibuc compiler
    - Passes it to the assembler (as) using pipe (|)
    - Generates an object file (main.o) with -o main.o

- Line 2 `as -o lib/runtime.o lib/runtime.s`
    - Uses the assembler (as)
    - Compiles the assembly file runtime.s
    - Generates an object file lib/runtime.o

- Line 3 `./ibuc lib/linux-syscall/linux-syscall.ibu | as - -o lib/linux-syscall.o`
    - Compiles the Linux system call related source file (linux-syscall.ibu)
    - Generates an object file lib/linux-syscall.o through the assembler

- Line 4 `./ibuc lib/std/std.ibu | as - -o lib/std.o`
    - Compiles the standard library (std.ibu)
    - Generates an object file lib/std.o through the assembler

- Line 5 `ld -o main main.o lib/runtime.o lib/linux-syscall.o lib/std.o`
    - Uses the linker (ld)
    - Links all object files generated above
    - Creates an executable file (main)

- Line 6 `./main`
    - Executes hello world

## Hello World
```
#include "std/header.ibu"

func main() i32 {
    printf("hello world");
    return 0;
}
```

## Comments
```c
// Only single-line comments exist
```

## Include files
The include keyword first looks for the specified file from the current directory. If it fails it searches the file from the [lib](../lib) folder.
```
#include "std/header.ibu"
```

## Functions
Function declarations are somewhat similar to Go.

The type comes after the parameter name.

Return type must always be specified. If there is no return value, you can use the `u0` type which will be covered in the [Types](#types) section.
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
u0  // void in C with no size
u8  // unsigned 8-bit integer
u16 // unsigned 16-bit integer
u32 // unsigned 32-bit integer
u64 // unsigned 64-bit integer

i8  // 8-bit integer
i16 // 16-bit integer
i32 // 32-bit integer
i64 // 64-bit integer

f64 // WIP
```

## Arrays
```
#include "std/header.ibu"

func main() i32 {
    let array [10]i32 = {
        1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    };

    return array[3] + array[4];
}
```

## Conditional Statements

### Example 1
```
#include "std/header.ibu"

func main() i32 {
    if 34 < 35 {
        printf("hi!");
    }
}
```

### Example 2
You can use `13 <= age < 20` instead of `13 <= age && age < 20`
```
#include "std/header.ibu"

func main() i32 {
    let age i32 = 19;
    if 10 <= age < 20 {
        printf("Teenager\n");
    }
}
```

### Example 3
```
#include "std/header.ibu"

func main() i32 {
    let c u8 = 'b';
    if 'a' <= c <= 'z' {
        printf("This is a lowercase alphabet\n");
    }
}
```

## Loops

### Example 1
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

### Example 2
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

## Variable Arguments
Variable arguments can be accessed using the built-in variables `argv` and `argc`.

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

## Structures
```
#include "std/header.ibu"

struct Person {
    name *u8,
    age i32,
}

func main() i32 {
    let p Person = {
        "Taro",
        10
    };

    printf("Name is %s.\n", p.name);
    printf("Age is %d years old.\n", p.age);
}
```

## Heap Memory
`alloc()` allocates memory on the heap.

`typesize()` is a builtin directive that is replaced with the size of the type passed during parsing.
```
#include "std/header.ibu"

struct Person {
    name *u8,
    age i32,
}

func main() i32 {
    let p Person = alloc(typesize(Person));
    p.name = "Taro";
    p.age = 10;

    printf("Name is %s.\n", p.name);
    printf("Age is %d years old.\n", p.age);
}
```

## Default Arguments (WIP)
Default arguments don't need to be at the end
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

## Inline Assembly (WIP)
```
#include "std/header.ibu"

foo:
    push rbp
    mov rsp, rbp
    // omitted...
    ret

func main() i32 {
    foo();
}
```

