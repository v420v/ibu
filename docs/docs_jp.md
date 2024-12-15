
# ドキュメンテーション

Ibuの主な特徴:
- 型チェッカーがない
- C言語のようなポインタ演算がない
- 関数型マクロがない
- `break`、`continue`文がない（代わりに`goto`を使用）
- `13 <= age && age < 20`の代わりに`13 <= age < 20`と書ける
- 可変長引数`func(...)`は組み込み変数`argc i64`と`argv *i64`でアクセス可能
- このコンパイラはこのコンパイラで書かれている
- デフォルト引数は末尾になくてもよい（WIP）

> [!IMPORTANT]
> 現在のところ、x86-64 Linux のみをサポートしています
>
> 他の環境には Docker の使用を推奨します

## コンパイラをビルドする
```
$ git clone git@github.com:v420v/ibu.git
$ cd ibu
$ make init
```

## Docker を使ってコンパイラをビルドする (x86-64 Linux 以外の環境の方推奨)
```zsh
$ git clone git@github.com:v420v/ibu.git
$ cd ibu
$ make up
$ make ibu
$ make init
```

| コマンド | 実行内容 |
|-----------|------------------------|
| `make up` | `docker compose up -d` |
| `make ibu` | `docker compose exec ibulang bash` |
| `make down` | `docker compose down` |

## コンパイラの使い方

```
$ ./ibuc <filename>.ibu
```

現在のところ、コンパイラは標準出力にアセンブリを出力します。（これはこの言語に独自のアセンブラが作られたら変更されます）

出力されたアセンブリをアセンブラに通してオブジェクトファイルを生成し、リンカーに通して実行ファイルを生成します。

リンカーに渡す際に `lib/runtime.o`、`lib/linux-syscall.o`、`lib/std.o` を渡すのを忘れないでください。

### 例: Hello world! をコンパイルする
```zsh
$ ./ibuc main.ibu | as - -o main.o
$ as -o lib/runtime.o lib/runtime.s
$ ./ibuc lib/linux-syscall/linux-syscall.ibu | as - -o lib/linux-syscall.o
$ ./ibuc lib/std/std.ibu                     | as - -o lib/std.o
$ ld -o main main.o lib/runtime.o lib/linux-syscall.o lib/std.o
$ ./main
```

## コンパイラの実装紹介
| ファイル | 内容 |
|-----------|------------------------|
| `src/ibu.ibu` | コンパイラのエントリーポイント |
| `src/tokenizer/tokenizer.ibu` | 字句解析器 |
| `src/preprocessor/preprocessor.ibu` | プリプロセッサ |
| `src/parser/parser.ibu` | 構文解析器 |
| `src/codegen/codegen.ibu` | コード生成器 |
| `lib/linux-syscall/linux-syscall.ibu` | Linux システムコールのライブラリ |
| `lib/std/std.ibu` | 標準ライブラリ |
| `lib/runtime/runtime.ibu` | ランタイムライブラリ |

## Hello World
```
#include "std/header.ibu"

func main() i32 {
    printf("hello world");
    return 0;
}
```

## コメント
```c
// シングルラインコメントのみ存在します
```

## ファイルのインクルード
includeキーワードは、まずカレントディレクトリから指定されたファイルを探します。ファイルが見つからない場合は、ファイルを[lib](../lib)フォルダ内から探します。
```
#include "std/header.ibu"
```

## 関数
関数の記述方法は少しGo言語に似ています。

型は引数名の後に来ます。

戻り値の型は必ず記述しなければいけません。戻り値が無い場合、この後のセクション[型](#型)でも出てきますが`u0`型が使えます。
```
#include "std/header.ibu"

func foo(x i32, y i32) i32 {
    return x + y;
}

func main() i32 {
    return foo(34, 35);
}
```

## 変数
```
#include "std/header.ibu"

func main() i32 {
    let a i32 = 10;
    printf("%d\n", a);
    return 0;
}
```

## 型
```go
u0  // サイズの無いCのvoid
u8  // 符号なし8ビット整数
u16 // 符号なし16ビット整数
u32 // 符号なし32ビット整数
u64 // 符号なし64ビット整数

i8  // 8ビット整数
i16 // 16ビット整数
i32 // 32ビット整数
i64 // 64ビット整数

f64 // WIP
```

## 配列
```
#include "std/header.ibu"

func main() i32 {
    let array [10]i32 = {
        1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    };

    return array[3] + array[4];
}
```

## 条件分岐

### 例１
```
#include "std/header.ibu"

func main() i32 {
    if 34 < 35 {
        printf("hi!");
    }
}
```

### 例２
`13 <= age && age < 20`の代わりに`13 <= age < 20`が使えます。
```
#include "std/header.ibu"

func main() i32 {
    let age i32 = 19;
    if 10 <= age < 20 {
        printf("10代\n");
    }
}
```

### 例３
```
#include "std/header.ibu"

func main() i32 {
    let c u8 = 'b';
    if 'a' <= c <= 'z' {
        printf("小文字のアルファベットです\n");
    }
}
```

## ループ処理

### 例１
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

### 例２
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

### 例３
```
#include "std/header.ibu"

func main() i32 {
    for let i i32 = 0; i < 10; i++ {
        printf("%d\n", i);
    }
}
```

## 可変長引数
可変長引数には、組み込み変数 `argv` `argc`でアクセスできます。

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

## 構造体
```
#include "std/header.ibu"

struct Person {
    name *u8,
    age i32,
}

func main() i32 {
    let p Person = {
        "太郎",
        10
    };

    printf("名前は%sです。\n", p.name);
    printf("年齢は%d歳です。\n", p.age);
}
```

## ヒープメモリ
`alloc()` を使用し、ヒープメモリをアロケートできます。

`typesize()` はbuiltinディレクティブで構文解析時に渡された型のサイズに置き換わります。
```
#include "std/header.ibu"

struct Person {
    name *u8,
    age i32,
}

func main() i32 {
    let p Person = alloc(typesize(Person));
    p.name = "太郎";
    p.age = 10;

    printf("名前は%sです。\n", p.name);
    printf("年齢は%d歳です。\n", p.age);
}
```

## デフォルト引数 (WIP)
デフォルトの引数は末尾になくてもよい
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

## インライン アセンブリ (WIP)
```
#include "std/header.ibu"

foo:
    push rbp
    mov rsp, rbp
    // 省略...
    ret

func main() i32 {
    foo();
}
```
