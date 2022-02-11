import UIKit

// 创建一个函数  唯一参数是（String）-> Void 类型的闭包（该笔宝接收字符串参数 返回值为Void）
func travel(action: (String) -> Void)
{
    
    print("I am reaady to go")
    // 调用闭包
    // 该闭包需要传递一个字符串参数
    action("Beijing")
    print("I arrived")
}

travel(action: {(place: String) in
    print("I am going to \(place) in my car")
})


func travel1(action:(String)->String)
{
    print("I am ready to go")
    let desc = action("London")
    print(desc)
    print("I arrived")
}

travel1(action: {(place: String) -> String in
    return "I am going  to \(place) in my car"
})


travel1 {(place:String) -> String in
    return "I am going  to \(place) in my car"
}

// 参数名称缩写  因为swift知道闭包的参数类型一定是字符串
travel1 {place -> String in
    return "I am going  to \(place) in my car"
    
}

// swift也知道闭包一定会返回一个字符串 所以闭包的返回值类型也可以省略
travel1 { place in
    return "I am going  to \(place) in my car"
}


// swift 具有更简单的名称 可以让swift闭包的参数提供自动名称 而不必写 place in 这些名称以$ 命名  以0 开始计数

travel1 {
  return "I am goning to \($0) in my car"
}


func travel2(action:(String, Int) -> String)
{
    print("I am ready to go")
    let desc = action("NewYourk", 60)
    print(desc)
    print("I am arrived")
}

// 多参数的闭包
travel2 {
    return "I am going to \($0) at \($1) miles per hour"
}


// 从函数返回闭包
func eat() -> (String) -> Void
{
    // 返回一个闭包
    return {
        print("I am eatting \($0)")
    }
}

// 调用函数 从函数得到一个闭包
let eatRes = eat();
// 闭包调用 传递一个字符串参数
eatRes("noddle")
let _ = eat()("race")


// 捕获值
func eat1() -> (String) -> Void
{
    var counter = 1
    
    return {
        print("\(counter),I am eatting \($0)")
        counter += 1
    }
}

let res = eat1();

res("race")
res("race")
res("race")

