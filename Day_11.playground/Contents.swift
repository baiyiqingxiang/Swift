import UIKit



// 协议
protocol Indertifiable
{
    var id:String {get set}
}

// 遵循协议
struct User: Indertifiable
{
    var id: String
}

// 参数为遵循了该协议的任何类型
func displayID(thing:Indertifiable)
{
    print("My Id is \(thing.id)")
}

var user = User.init(id: "01")
displayID(thing: user)




// 协议继承
protocol Payble
{
    func caclualateWages() -> Int
}

protocol NeedsTraining
{
    func study()
}

protocol HasVacation
{
    func takeVacation(days: Int)
}

protocol Employee: Payble, NeedsTraining , HasVacation
{
    
}

struct Employeer: Employee
{
    var wages: Int
    func caclualateWages() -> Int {
        return self.wages
    }
    
    func study() {
        
    }
    
    func takeVacation(days: Int) {
        print("days is:\(days)")
    }
    
}

var emp = Employeer(wages: 20)
var wages = emp.caclualateWages()
emp .study()
emp.takeVacation(days: 30)



// 扩展
extension Int
{
    func squared() -> Int
    {
        return self * self
    }
}

//扩展中不能添加存储属性 必须改为计算属性
extension Int
{
    var isEven:Bool
    {
        return self % 2 == 0
    }
}

let number = 8;
let squ = number.squared() + 1
squ.isEven


// 协议扩展
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])
extension Collection
{
    
    func summarize ()
    {
        print("There are \(count) of us:")
        for name in self
        {
            print(name)
        }
    }
}
pythons.summarize()
beatles.summarize()



//面向协议编程
// 协议扩展可以为我们自己的协议方法提供默认实现
protocol Indentifiable1
{
    var id: String {get set}
    func idertify()
}

extension Indentifiable1
{
    func idertify ()
    {
        print("My id is \(id)")
    }
}


struct Person : Indentifiable1
{
    var id: String
}

let twostraws = Person(id: "twostraws")
twostraws.idertify()
