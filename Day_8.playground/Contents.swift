import UIKit

// 创建自己的结构体
struct Sport {
    // 存储属性
    var name: String
}

// 创建和使用实例
// 将name和basketball 变量都设置为变量  因此可以像常规变量那样改变他们
var basketball = Sport(name: "Basketball")
print(basketball.name)

basketball.name = "basketball name"


// 计算属性
struct Sport1 {
    var name: String
    var isOlympicSport: Bool
    
    // olympicStatus 看起来是一个普通的string 但是他会根据其他属性返回不同的值
    var olympicStatus: String
    {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        }
        else {
            return "\(name) is not an Olympic sport"
        }
    }
}


let chessBoxing = Sport1(name: "chessBoxing", isOlympicSport: true)
print(chessBoxing.olympicStatus)



// 属性观察器
// 使用属性观察器可以在任何属性更改之前或之后运行代码

struct Progress {
    var task: String
    var amount: Int {
        // 属性更改之前的操作
        willSet
        {
            print("change \(amount)")
        }
        // 属性更改之后的操作
        didSet{
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 20
progress.amount = 70
progress.amount = 100


// 方法
struct City {
    var population: Int
    
    func collectTaxes() -> Int
    {
        return population * 1000
    }
}

let landon = City(population: 9_000_000)
print(landon.collectTaxes())

// Mutating 方法
// 如果结构体具有可变属性 但该结构体的实例创建为常量  则该属性不能更改----改属性是常量 因此无论其创建方式如何，其所有属性也都是常量
// swift 一般不允许您编写更改属性的方法
// 想改变内部属性是我使用 mutating 关键字对其进行标记
struct Person {
    var name: String
    mutating func makeAnonymous () {
        name = "Anonymous"
    }
}
var person = Person(name: "huguopeng")
person.makeAnonymous()
print(person.name)


// 字符串的属性和方法
// 字符串是结构体 具有自己的方法和属性 可用于查询和操作字符串
let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

// 数组的属性和方法
// 数组是结构体 具有自己的方法和属性 可用于查询和操作数组
var toys = ["woody"]
print(toys.count)
toys.append("Buzz")
print(toys.firstIndex(of: "Buzz")!)
print(toys.sorted())
print(toys.remove(at: 0))
