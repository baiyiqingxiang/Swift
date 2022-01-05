import UIKit

/**
 * 运算符
 * 算数运算符 + - * / % += -= *=  /=  %=
 * 比较运算符 > < == != >= <=
 */

// 运算符重载
let a = 48
let douA = 48 + a

let fakers = "Fakers"
let faAction = fakers + "fake"

// 多行字符串的换行和空格
let action = """
\(fakers)
gonna \
fake
"""


// 条件控制
let firstCard = 1
let secondCard = 1
if firstCard + secondCard == 2 {
   print("Aces - Lucky")
}
else if firstCard + secondCard == 21 {
    print("BlackJack")
}
else{
    print("Regular Card")
    
}

// 组合条件

let age1 = 12
let age2 = 21

// 逻辑 &&
if age1 > 18 && age2 > 18 {
    print("both are over 18")
}
    
if age1 > 18 || age2 > 18 {
    print("at least one is over 18")
}

// 三元运算符
print(firstCard == secondCard ? "cards are the same" : "card are different")


// switch 语句

let weather = "sunny"
switch weather {
case"rain":
    print("Bring an umbrella")
case "snow":
    print("warp up warm")
case"sunny":
    print("wear sunscreen")
default:// 必须的  Swift可以确保您涵盖所有可能的情况，从而不会错过任何可能的情况
    print("enjoy your day!")
}

switch weather {
case"rain":
    print("Bring an umbrella")
case "snow":
    print("warp up warm")
case"sunny":
    print("wear sunscreen")
    fallthrough // swift 只会在每种情况下运行代码 如果要继续执行下一种情况  使用 fallthrough 关键字
default:// 必须的  Swift可以确保您涵盖所有可能的情况，从而不会错过任何可能的情况
    print("enjoy your day!")
}


/* 范围运算符
 * 可以使用.. <和...来确定范围，具体取决于应排除还是包括最后一个数字
 * ..< （左闭右开）和...（闭区间）
 * eg:  1..<5  包括 1、2、3、4
        1...5  包括 1、2、3、4、5
 */


let score = 86

switch score{
case 0..<50 :
    print("you failed badly.")
case 50...85:
    print("you did ok")
default:
    print("you did great")
}
