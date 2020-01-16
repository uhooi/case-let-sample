import Foundation

enum Enum {
    case foo(String)
}

let foo = Enum.foo("foo")

// 1と2は同じ動作になるが、内部的な処理も同じなのか？

// 1
switch foo {
case .foo(let foo):
    print(foo) // "foo"
}

// 2
switch foo {
case let .foo(foo):
    print(foo) // "foo"
}
