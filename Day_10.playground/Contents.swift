import UIKit
// 类和结构体的一个区别是  类永远不会带有成员初始化器 必须自己创建初始化器

class Dog {
    var name: String
    var breed: String
    
    init(name:String, breed:String)
    {
        self.name = name
        self.breed = breed
    }
    func makeNoise()
    {
        print("汪")
    }
}

// 和结构体的初始化非常相似
let taidi = Dog.init(name: "泰迪", breed: "taidi")


class Poddle: Dog {
    init(name:String)
    {
        // 调用父类的初始化方法
        super.init(name: name, breed: "Poddle");
    }
    // 重写父类方法 override 关键字
    override func makeNoise() {
        print("w w w")
    }
    
    // 反初始化器 在对象销毁时调用  如dealloc
    deinit{
        
    }
}

let poddle = Poddle.init(name: "潘多拉")
print(poddle.breed)
taidi.makeNoise()
poddle.makeNoise()

// 禁止继承 使用final关键字 意味着他们无法以重写方法的方式更改函数行为 需要以编写类的形式使用你的类

// copy对象
// copy结构体时 原结构体和复制后的结构体时不同的， 意味着更改复制的结构体， 原结构体不会发生更改
// copy 类时  原对象和复制后的对象是同一事物，更改复制后的对象  原对象也会更改

let newtaidi = taidi
newtaidi.name = "new tadi"
print(taidi.name)


// 类具有反初始化器 deinit方法

// 常量结构体的可变属性不可更改  更改需要使用 mutating 关键字
// 常量类成员的可变属性可以更改


struct Person {
    var name:String
    mutating func changeName()
    {
        name = "daxiaohuo"
    }
}

var person = Person(name: "xiaohuo")
//person.name = "daxiaohuo"
person.changeName()
print(person.name)
