import UIKit

// 初始化器
struct User
{
    var name: String
}
var user = User(name: "swift")

// 提供自己的初始化器
struct NewUser {
    var userName:String
    
    init () {
        userName = "Anonymous"
        print("Creating a new user!")
    }
}

var newUser = NewUser.init()
print(newUser.userName)
newUser.userName = "Swift"
print(newUser.userName)


// 引用当前实例
// 在方法内部有一个self常量  该常量指向正在使用该结构体的任何实例
// 在创建于属性名称想用的参数名称的初始化器时，self非常有用
// 如下 创建一个具有name书型盒的皮尔斯年的结构体  单然后该结构体有一个接受name参数的初始化器
struct Man {
    var name: String
    init(name:String) {
        print("\(name) was born")
        // self 关键字的用法
        self.name = name
    }
}

var man = Man.init(name: "SWIFT")
print(man.name)


// 懒加载属性

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person
{
    var name: String
    // 将lazy关键字添加到属性之前 仅在首次访问时才会创建该属性实例
    // lazy 关键字的用法
    lazy var familyTree = FamilyTree()
    
    init(name:String) {
        self.name = name
    }
}

var ed = Person.init(name: "ED")
// 如果想看到  则必须访问一次该实例
ed.familyTree


// 静态属性和方法
// 要求swift在结构体的所有实例志坚共享特定的属性和方法 方法是将他们申明未静态的
struct Student
{
    // 属于该结构体本身  而不属于任何结构体的实例 所以访问时应该用结构体名来访问
    // static关键字的用法
    static var classSize = 0
    var name: String
    init(name: String){
        self.name = name
        Student.classSize += 1
    }
}
let kobe = Student.init(name: "kobe")
let taylor = Student.init(name: "taylor")

print(Student.classSize)


// 访问控制
// 访问控制可以显示使用属性和方法的代码  例如阻止他人直接读取属性
struct Per {
    // private 关键字
    private var id: String
    init(id: String) {
        self.id = id
    }
}

// 声明为private之后  不能外部访问其属性
let feifei = Per.init(id: "12345")

