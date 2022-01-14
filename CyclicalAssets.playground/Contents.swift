// === 第二十四章 ====
//
//     内存管理和ARC
//
// === 第二十四章 ====

import UIKit

//var greeting = "Hello, playground"


class Person : CustomStringConvertible {
    let name: String
    
    var description: String {
        return "Person(\(name))"
    }
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(self) is being deallocated")
    }
}

class Asset: CustomStringConvertible {
    let name: String
    let value: Double
//    let owner: Person?
    
    var description: String {
//        if let actualOwner = owner {
//            return "Asset(\(name), worth \(value), owned by \(actualOwner))"
//        }
//        else {
            return "Asset(\(name), worth \(value), not owned by anyone)"
//        }
    }
    
    init(name: String, value: Double) {
        self.name = name
        self.value = value
//        self.owner = owner
    }
    
    deinit {
        print("\(self) is being deallocated")
    }
}


// 第一种
//var bob: Person? = Person(name: "Bob")
//print("created \(bob)")
//bob = nil
//print("the bob variable is now \(bob)")

// 第二种
var bob: Person? = Person(name: "Bob")
print("created \(bob)")

var laptop: Asset? = Asset(name: "Shiny Laptop", value: 1500)
var hat: Asset? = Asset(name: "Cowboy Hat", value: 175)
var backpack: Asset? = Asset(name: "Blue Backpack", value: 45)


bob = nil
print("the bob variable is now \(bob)")

laptop = nil
hat = nil
backpack = nil
