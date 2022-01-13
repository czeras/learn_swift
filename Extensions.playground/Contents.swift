import UIKit

//var greeting = "Hello, playground"

typealias Velocity = Double

// 扩展
extension Velocity {
    var kph: Velocity { return self * 1.60934 }
    var mph: Velocity { return self }
}

// 协议
protocol Vehicle {
    var topSpeed: Velocity { get }
    var numberOfDoors: Int { get }
    var hasFlatbed:Bool { get }
}

// 实体类
struct Car {
    let make: String
    let model: String
    let year: Int
    let color: String
    let nickname: String
    
    var gasLevel: Double {
        willSet {
            precondition(newValue <= 1.0 && newValue >= 0.0,"New value must be between 0 and 1.")
        }
    }
}

