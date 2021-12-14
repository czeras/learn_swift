import UIKit

// TODO: 第一章 -------------
// TODO: 第一章 -------------
print("--- 第一章 ---")
var greeting = "Hello, playground"
greeting += "!"
print(greeting + "\n\n")

// TODO: 第二章 -------------
// 类型、常量和变量
// TODO: 第二章 -------------
print("--- 第二章 ---")
// TODO: 类型
// 变量var申明 常量用let申明，常量申明之后不能修改
var numberOfStoplights = 4
numberOfStoplights += 2

// 常量不能修改
//let numberOfStoplights1: Int = 4
//numberOfStoplights1 += 2

// 变量可以修改
var population : Int
population = 5422

// TODO: 字符串插值
let townName: String = "水咕噜村"
let 失业率:Float = 1.45 // 注意：swift可以用中文命名变量
// “字符串字面量中的\() 语法表示占位符，可以访问一个实例的值并将其放入新字符串（或者说“插值”）”
let townDescription = "\(townName) has a population of \(population) and \(numberOfStoplights) stoplights 失业率是:\(失业率)"
print(townDescription + "\n\n")


// TODO: 第三章 -------------
// 条件语句
// TODO: 第三章 -------------
/*
特别注意：swift中以下2个运算符要注意,其它和oc通用
“===” 表示：“计算两个实例是否指向同一个引用 ”
”!==” 表示：““计算两个实例是否不指向同一个引用 ”
*/
print("--- 第三章 ---")
print("\n\n")

// TODO: 第4章 -------------
// 数
// TODO: 第4章 -------------
print("--- 第四章 ---")
// TODO: 整数
// 整数是没有小数点和小数部分的数，也就是整个的数。

// 在macOS中，Int 是64位整数，也就是说它能表示2 64 种可能的值
print("The maximum Int value is \(Int.max).") // 9223372036854775807
print("The minimum Int value is \(Int.min).") // -9223372036854775808
// Int32 是Swift的32位有符号整型。用Int32 来看看32位整数的最小和最大值
print("The maximum value for a 32-bit integer is \(Int32.max).") // 2147483647
print("The minimum value for a 32-bit integer is \(Int32.min).") // -2147483648

// 对于8位、16位和64位有符号整型，相应的还有Int8 、Int16 、Int64

// 创建整数实例
let numberOfPages: Int = 10 // 显式声明类型
let numberOfChapters = 3    // 还是Int类型，不过是编译器推断出来的”

/* 错误案例
let firstBadValue: UInt = -1    // 无符号不能表示负数
let secondBadValue: Int8 = 200  // 8位溢出错误
*/

// TODO: 整数除法
print((10 + 2) * 5) // 60，因为(10 + 2)先计算
print(30 - (5 - 5)) // 30，因为(5 - 5)先计算
print(11 / 3) // 打印3
// 注意：整数除法总是向0舍入

// TODO: 4.3.3　溢出操作符

let y: Int8 = 120
//let z = y + 10    // z
let z = y &+ 10
print("120 &+ 10 is \(z)")

/** let z = y + 10 会触发陷阱
 (1) y 是Int8 类型，所以编译器认为y + 10 也必须是Int8 ；
 (2) 编译器因而推断z 是Int8 ；
 (3) playground运行后，Swift给y 加10，得到130；
 (4) 在把结果存入z 之前，Swift检查发现130对于Int8 来说是非法值。
 */

// TODO: 4.4 转换整数类型
let a: Int16 = 200
let b: Int8 = 50
//let c = a + b // 这里报错
let c = a + Int16(b)
/**a和b不能相加，因为它们类型不同。有些语言会在做这类操作时自动进行类型转换，但是Swift不会，你得自己手动转换类型使之匹配。*/

// TODO: 浮点数
/** 概念
 首先，浮点数在计算机中是以尾数mantissa）和指数（exponent）的形式存储的，类似于科学记数法。*/
// swift 2种浮点数
// Swift有两种基本的浮点数类型：32位浮点数Float 和64位浮点数Double 。Float 和Double 的长度差异并不像整数那样影响其最小值和最大值，而是影响其精度。Double 的精度比Float 高，这意味着它能存储更精确的近似值。

// 浮点数特点：
// 1、不能使用取余运算符
// 2、天生是不精确的
let d1 = 1.1 // 隐式Double声明
let d2: Double = 1.1
let f1: Float = 100.3

print(10.0 + 11.4)
print(11.0 / 3.0)   // 3.6666666666666665

// 说明浮点数是不精确的
if d1 == d2 {  // 这里是相等的
    print("d1 and d2 are the same!")
}

print("d1 + 0.1 is \(d1 + 0.1)")

if d1 + 0.1 == 1.2 {  // 这里不相等
    print("d1 + 0.1 is equal to 1.2")
}

print("\n\n")




// TODO: 第五章 -------------
// switch 语句
// TODO: 第五章 -------------
print("--- 第五章 ---")


print("\n\n")


//print("--- 第一章 ---")
//print(greeting + "\n\n")
