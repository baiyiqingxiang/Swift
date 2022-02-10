import UIKit

// 创建基础闭包
// 创建了一个没有名称的函数  并将其分配给driving变量
let driving  = {
    print("I am driving in my car")
}
// 调用driving
driving()


// 在闭包中接受参数
// 要使闭包接收参数  需在大括号中列出  然后输入in关键字   让swift知道闭包的主题正在开始
let driving_place = { (place: String) in
    print("I am going to \(place) in my car")
}
// 和函数不同的是  闭包不适用参数标签
driving_place("hangzhou")


// 闭包的返回值
// 在in关键字之前  在参数之后  用->表示
let  driving_with_return = { (place: String)->String in
    return "I am going to \(place) in my car"
}

let msg = driving_with_return("zhangye")
print(msg)



// 将闭包作为参数
func travel(action: () -> Void)
{
    print("I am getting ready to go")
    action()
    print("I am arrived")
}
// 传递driving参数
travel(action: driving);



// 尾随闭包 只有函数最后一个参数为闭包时才适用
// 以上travel也可以这样调用 直接传递闭包
travel() {
   print("I will go to shanghai")
}

// 由于没有其他参数 我们可以消除括号
travel {
    print("I will go to Beijing")
}
