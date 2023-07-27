
# The Ibu programming language

<img src="https://github.com/v420v/ibu/assets/106643445/476c1310-4546-4fac-ac59-38f36e3d0716"  width=600 align="right">

- No strict type checker
- No global variables
- No macros
- No hidden control flow
- No C-like pointer arithmetic
- No `break`, `continue` stmt. Use `goto`
- No block scopes.
- No bugs, everything is a feature

```

func main() i32 {
    printf("Hello, world!\n");
    return 0;
}

```

Since the language is selfhosted you need to bootstrap the compiler first.

Ibu uses <a href="https://github.com/v420v/vas">vas</a> assembler.

To build the compiler, run the following command below or just run `make`

```sh
$ vas -o bootstrap/ibu.o bootstrap/ibu.s
$ vas -o src/builtin.o src/builtin.s
$ ld -o ibu bootstrap/ibu.o src/builtin.o
```

## How to build, compile programs written in Ibu
***Don't forget to pass `src/builtin.o` to the linker***
```sh
$ ./ibu <filename>.ibu | vas - -o <filename>.o
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
    var name *i8;
    var age i8;
    name = "Ibuki";
    age = 19;

    printf("name: %s, age: %d\n", name, age);

    return 0;
}
```

#### Types
```rust
i8, i16, i32, i64
```

#### If
```go
func main() i32 {
    var x i32;
    var y i32;
    x = 34;
    y = 35;
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
func main() i32 {
    var age i8;
    age = 19;

    if 13 <= age < 20 { // Allows "13 <= age < 20" instead of "13 <= age && age < 20"
        printf("Teen-ager\n");
    }

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

    var i i32;
    i = 0;
    while i < 100 {
        printf("%d\n", i);
        i++;
    }
}
```

#### Struct
```go
struct Person {
    name *i8
    age i8
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
    name *i8
    age i8
}

func main() i32 {
    var p *Person;
    p = alloc(typesize(Person));

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
    name *i8
    next *User
}

func user_print_names(user *User) i32;

func user_print_names(user *User) i32 {
    printf("%s\n", user.name);

    if user.next != nil {
        user_print_names(user.next);
    }
    return 0;
}

func new_user(name *i8) *User {
    var user *User;
    user = alloc(typesize(User));
    user.name = name;
    return user;
}

func main(argc i32, argv **i8) i32 {
    var head User;
    var cur *User;
    cur = &head;

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
`make dev` will compile `src/ibu.ibu` using the ./ibu executable
```sh

$ make dev

```

## Reference
https://github.com/rui314/chibicc

https://tinkeros.github.io/WbGit/Doc/HolyC.html
