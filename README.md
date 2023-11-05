
# The Ibu programming language

<img src="https://github.com/v420v/ibu/assets/106643445/476c1310-4546-4fac-ac59-38f36e3d0716"  width=600 align="right">

- No strict type checker
- No global variables
- No C-like pointer arithmetic
- No function-like macros
- No `break`, `continue` stmt. Use `goto`
- No block scopes

Ibu is similar to C and is also influenced by Go, HolyC, and Python.

```go

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
***Don't forget to pass `src/builtin.o` to the linker***
```sh
$ ./ibuc <filename>.ibu | as - -o <filename>.o
$ ld -o <filename> <filename>.o src/builtin.o
```

## Ibu Documentation

#### Hello, world!
```go
func main() i32 {
    printf("Hello, world!\n"); // printf is a builtin function
    return 0;
}
```

#### Variables
```go
func main() i32 {
    var name *u8 = "Ibuki";
    var age i8 = 19;

    printf("name: %s, age: %d\n", name, age);

    return 0;
}
```

#### Types
```rs
i8, i16, i32, i64, u8, u16, u32, u64
```

#### If
```go
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
// Variable-length arguments can be accessed using the built-in variable argv

func add_nums(...) i32 {
    return argv[0] + argv[1] + argv[2];
}

func main() i32 {
    var d i32 = add_nums(1, 2, 3);
    printf("%d\n", d);

    return 0;
}
```

#### While
```go
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

#### Struct
```go
struct Person {
    name *u8,
    age i8,
}

func main() i32 {
    var p Person;
    p.name = "Ibuki";
    p.age = 19;

    printf("name: %s age: %d\n", p.name, p.age);

    return 0;
}
```

#### Struct Pointer
```go
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

struct User;

struct User {
    name *u8,
    next *User,
}

func user_print_names(user *User) i32;

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
    var head User;
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

## Contributing
Welcome!

```go

func print_user_defined_types(p *Parser) i32;

func print_all_tokens(tok *Token) i32;

```

### Update bootstrap folder
```sh

$ make update_bootstrap

```

### Selfhosting
`make self` will compile `src/compiler.ibu` using the ./ibuc executable
```sh

$ make self

```

## Reference
https://github.com/rui314/chibicc

https://tinkeros.github.io/WbGit/Doc/HolyC.html
