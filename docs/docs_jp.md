
# ドキュメンテーション

## はじめに
ibuは静的型コンパイル型言語であり、ただプログラミングを楽しむためだけに開発されました。

## 言語をインストール
```zsh
$ git clone git@github.com:v420v/ibu.git
$ cd ibu
$ make up
$ make ibulang
$ make init
```

## コンパイラの使用方法
hello world プログラムを実際にコンパイルし、実行してみる。
```zsh
$ ./ibuc main.ibu | as - -o main.o
$ as -o lib/runtime.o lib/runtime.s
$ ./ibuc lib/linux-syscall/linux-syscall.ibu | as - -o lib/linux-syscall.o
$ ./ibuc lib/std/std.ibu                     | as - -o lib/std.o
$ ld -o main main.o lib/runtime.o lib/linux-syscall.o lib/std.o
$ ./main
```
簡単な解説
- 1行目 `./ibuc main.ibu | as - -o main.o`
    - ./ibucというコンパイラでmain.ibuをアセンブリコードに変換
    - パイプ(|)を使ってアセンブラ(as)に渡し
    - -o main.oでオブジェクトファイル(main.o)を生成

- 2行目 `as -o lib/runtime.o lib/runtime.s`
    - アセンブラ(as)を使って
    - runtime.sというアセンブリファイルをコンパイル
    - lib/runtime.oというオブジェクトファイルを生成

- 3行目 `./ibuc lib/linux-syscall/linux-syscall.ibu | as - -o lib/linux-syscall.o`
    - Linux用のシステムコール関連のソースファイル(linux-syscall.ibu)をコンパイル
    - アセンブラを通してlib/linux-syscall.oというオブジェクトファイルを生成

- 4行目 `./ibuc lib/std/std.ibu | as - -o lib/std.o`
    - 標準ライブラリ(std.ibu)をコンパイル
    - アセンブラを通してlib/std.oというオブジェクトファイルを生成

- 5行目 `ld -o main main.o lib/runtime.o lib/linux-syscall.o lib/std.o`
    - リンカ(ld)を使って
    - 上記で生成した全てのオブジェクトファイルをリンク
    - 実行可能ファイル(main)を生成

- 6行目 `./main`
    - hello world 実行

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
includeキーワードは、まずカレントディレクトリから指定されたファイルを探します。失敗した場合は、ファイルを[lib](../lib)フォルダ内から探します。
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
