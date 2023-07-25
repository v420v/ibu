
# The Ibu programming language documentation

## Build the compiler
To build the compiler, <a href="https://github.com/v420v/vas">vas</a> assembler needs to be available in `$PATH`.
If you have problems installing vas assembler, replace the `vas` keyword in Makefile to `as` GNU assembler. Works same.

```sh
$ make
$ ./ibu filename.ibu
```

## Hello world!
```

func main() i32 {
    printf("Hello, world!\n");
}

```

## Variables
```

func main() i32 {
    var foo i32;
    var bar i64;
    var p *i32;

    foo = 10;
    bar = 20;

    p = &foo;

    return *p;
}

```

## Types
```

i8 i16 i32 i64

```

## Struct
```

struct User {
    name *i8
    age i8
}

func main() i32 {
    var user User;
    user.name = "Ibuki";
    user.age = 19;

    printf("%s\n", user.name);

    return 0;
}

```

## Struct pointer
```

struct User {
    name *i8
    age i8
}

func main() i32 {
    var user *User;
    user = alloc(typesize(User));
    user.name = "Ibuki";
    user.age = 19;

    printf("%s\n", user.name);

    return 0;
}

```

## If
```

func main() i32 {
    if 1 {
        printf("IBUKI\n");
    }

    return 0;
}

```

## While
```

func main() i32 {
    while {
        printf("IBUKI\n");
    }

    while 1 {
        printf("IBUKI\n");
    }

    while 1 == 1 {
        printf("IBUKI\n");
    }
}

```

