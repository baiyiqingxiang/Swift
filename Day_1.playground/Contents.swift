import UIKit




// 定义变量
// Int Sring Double Boolean

//String
var greeting = "Hello, playground"

greeting = "good bye"

greeting = "bye"

// 多行字符串
// Swift 中的字符串使用双引号 但不能在其中使用换行符
// 三个双引号开头和结尾
// 开头和结尾三元组"""必须单独一行
var multiStr1 = """
 this goes
 over multiple
 lines
"""
// 要将字符串整齐的格式化  加入”\“就可以
var multiStr2 = """
 this goes\
 over multiple\
 lines
"""


// Int
var age = 28

var population = 8_000_000


// Double
var pi = 3.14

// boolean
var anesome = true


// 字符串差值
var score = 55

var str = "your score was \(score)"
// 字符串差值不仅限于放置变量 还可以在其中运行代码
var result = "the test result are here: \(str)"

// 常量
// 使用var且没有更改变量 xcode 会警告 所以常量用let关键字
let taylor = "swift"




// 类型推断：Swift 会根据创建时给定的值为每个变量和常量分配类型
// 说明数据类型，而不依赖与类型推断
let album:String = "Requtation"
let year:Int = 1989
let height:Double = 1.80
let taylorRocks:Bool = true

