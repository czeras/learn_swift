import UIKit

// TODO: 第一章 -------------
// TODO: 第一章 -------------
var greeting = "Hello, playground"
greeting += "!"
print("第一章：" + greeting)

// TODO: 第二章 -------------
// 类型、常量和变量
// TODO: 第二章 -------------

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
print("第二章：" + townDescription)


// TODO: 第三章 -------------
// 条件语句
// TODO: 第三章 -------------
/*
特别注意：swift中以下2点要注意
“===” 表示：“计算两个实例是否指向同一个引用 ”
”!==” 表示：““计算两个实例是否不指向同一个引用 ”
*/


// TODO: 第4章 -------------
// 数
// TODO: 第4章 -------------

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












