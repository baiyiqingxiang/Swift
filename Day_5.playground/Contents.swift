import UIKit




// 编写函数 func 关键字  函数名称  开和闭括号（参数）
// 编写函数 func 关键字  函数名称  开和闭括号（参数） 返回值


func printHelp()
{
    let msg = """
    welcome to myApp
    Run this app inside a directory of images and
    MyApp will resize them all into thubnails
    """
    print(msg)
}

printHelp()

let msg = """
welcome to myApp
Run this app inside a directory of images and
MyApp will resize them all into thubnails
"""
func printHelpWithArguments(msg:String)
{
    print(msg)
}

printHelpWithArguments(msg: msg)

// 省略参数标签：以”_“作为外部使用的参数名称
func printHelpWithArgu(_ msg: String)
{
    print(msg);
}

printHelpWithArgu(msg)

// swiift 允许在函数中提供两个参数名称  一个在函数内部在内部使用 一个在函数调用时外部使用
func printHelpWithArg(to msg: String)
{
    print(msg)
}

printHelpWithArg(to: msg)

// 默认参数值
func printHelpWithDefaultMsg(msg:String = "welcome")
{
    print(msg)
}
// 默认参数
printHelpWithDefaultMsg()
// 传入参数
printHelpWithDefaultMsg(msg: msg)

// 变参函数 参照print
func printWithAnyAngu(_ Argu: Any...)
{
    print(Argu)
}

printWithAnyAngu(1,1,1,1)


// 抛出函数 运行可跑出异常函数
// swift 允许从函数中跑出错误 方法是在返回值类型之前标记为throws 然后在出现问题时使用throw关键字

enum PasswordError:Error {
    case abvious
}

func checkPassword(_ password:String)throws -> Bool
{
    if password == "password" {
        throw PasswordError.abvious
    }
    return true
}


do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("you can not use that password")
}

// inout 参数
// 参数名称：inout 参数类型
func doubleInt(number: inout Int)
{
    number *= 2
}

var num = 10
doubleInt(number: &num)

print(num)
