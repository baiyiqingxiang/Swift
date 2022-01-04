import UIKit

// 数组
let john = "John lennon"
let paul = "Paul"
let geogre = "Geogre"
let ringo = "Ringo"

let beatles = [john, paul, geogre, ringo]
// 以下标访问数组元素
beatles[1]
// 使用类型注释
var beatless:[String] = [john, paul, geogre, ringo]


// Set是无序的
let colors = Set(["red", "green", "blue"])

// Set中无重复元素
let colors2 = Set(["red", "green", "blue", "red"])


// 元组
var name = (first: "Taylor", second: "hi", last: "swift")
// 元组可通过名称访问
name.first
name.last
// 元组可通过下标访问
name.1
name.2
// 创建元组之后可以更改其值，但不能更改值的类型
name = (first: "Taylor", second: "test"/*second: "25"------error*/, last: "c++")

/**
 * 数组 元组 集合使用原则
 * 如果需要一个特定的，固定的相关值集合，其中每个项目都有一个精确的位置或者名称 则使用元组
 * 如果需要一个必须是唯一值的集合，或者需要能快速的检查出其中是否有特定的香满园 则使用Set
 * 如果需要一个可以包含重复项的值的结合，或者项目顺序很重要，则应使用数组
 *
 */



// 字典
// 和数组一样  以方括号开头和结尾，以"," 分割 即:key:value的形式
let  heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]

//字典的默认值
let favouriteIceCream = [
    "Paul" : "Chocolate",
    "Sophite" : "Vanilla"
]
// 访问不存在的key-value
favouriteIceCream["Charlotte"]
// 为不存在的key设置默认的value
favouriteIceCream["Charlotte", default: "Unkonw"]


// 空的集合
// 空字典
var teams = [String:String]()
teams["Paul"] = "red"
teams["Paul"]
// 空的Int数组
var ary = [Int]()

// 空集
var words = Set<String>()
var numbers = Set<Int>()

// Swift 仅仅是对字典和数组有特殊的语法，其他类型必须使用<>语法

// 也可以用如下的方式创建字典
var scores = Dictionary<String,Int>() // 注意key 和 value之间”，“
var results = Array<String>()


// 枚举
enum Result {
    case success
    case failure
}

let res = Result.failure

// 枚举关联值
/*
enum Activity {
    case bored
    case running
    case talking
    case singing
}
*/
enum Activity {
    case bored
    case running(destination:String)
    case talking(topic:String)
    case singing(volume:Int)
}

let talking = Activity.talking(topic: "football")

// 枚举原始值
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
let earth = Planet(rawValue: 3)

