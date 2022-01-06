import UIKit

// for 循环
// 会遍历数组和范围，每次循环都将取出一项并分配给一个常量

// 下面是一系列数字
let count = 1..<10
for number in count
{
    print("Number is \(number)")
}

let albums = ["Red","1989", "Reputation"]
for album in albums
{
    print("\(album) is an apple music")
}

// 如果不使用for 循环提供的常量 则改为 _ 这样swift 不会创建不必要的值
for _ in 1...5
{
    print("paly")
}

// while 循环
var a = 10
while a + 5 < 25
{
    a += 1
    print("current: \(a)")
}

// repeat 循环
var number = 1
repeat {
    print(number)
    number += 1
}while number <= 20

// 条件位于repeat循环的末尾 循环内的代码将始终至少执行一次
repeat {
    print("this is false")
} while false


// 退出循环
var countDowm = 10
while countDowm >= 0 {
    print(countDowm)
    countDowm -= 1
}
print("blase off!")

countDowm = 10
while countDowm >= 0
{
    print(countDowm)
    if countDowm == 4
    {
        break
    }
    countDowm -= 1
}


print("*************************")
for i in  1...10
{
    for j in 1...10
    {
        print("i * j = \(i * j) i = \(i)")
        if i * j == 5
        {
            break
        }
        
    }
}
print("*********************************")
// 退出外部循环需要做两件事
// 1、加外部标签
outerLoop: for i in  1...10
{
    for j in  1...10
    {
        print("i * j = \(i * j)")
    }
}
print("---------------------------")
// 2、使用break  同时跳出2个循环
outerLoop: for i in  1...10
{
    for j in  1...10
    {
        print("i * j = \(i * j)")
        if i * j == 50
        {
            break outerLoop
 
        }
    }
}

// continue
for i in  1...10
{
    if i % 2 == 1
    {
        continue
    }
    print(i)
}

