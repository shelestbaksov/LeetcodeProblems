//
//  AccumulatingFunc.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

let accumulatingFunction: (Int, Int) -> Int = { accumulator, element in
    return accumulator + element
}
//_ = [1, 2, 3].reduce(0, accumulatingFunction)
//
//_ = [1, 2, 3].reduce(0, { accumulator, element in
//    return accumulator + element
//})
//
//_ = [1, 2, 3].reduce(0) { accumulator, element in
//    return accumulator + element
//}
//
//_ = [1, 2, 3].reduce(0) { accumulator, element in
//    accumulator + element
//}
//
//_ = [1, 2, 3].reduce(0) {
//    $0 + $1
//}

//_ = [1, 2, 3].reduce(0) { $0 + $1 }
//
//_ = [1, 2, 3].reduce(0, +)

// let array = [1, 2, 3]
// let result = ["1", "2", "3"]
//
//let array = [1, 2, 3, 4, 5, 6, 7]
//var result: [String] = []
//for element in array {
//    result.append(String(element))
//}
//
//_ = array.map({ originalValue in
//    return String(originalValue)
//})
//
//_ = array.map() { originalValue in
//    return String(originalValue)
//}
//
//_ = array.map() { originalValue in
//    String(originalValue)
//}
//
//_ = array.map() { originalValue in String(originalValue) }
//
//_ = array.map() { String($0) }
//
//_ = array.map() { String($0) }
//
//_ = array.map() { String.init($0) }
//
//_ = array.map(String.init)
//
//
//
//_ = array.reduce([String]()) { accumulator, element in
//    return accumulator + [String(element)]
//}
//
//_ = array.reduce([String]()) { $0 + [String($1)] }
//
//
//_ = array.filter({ $0 % 2 != 0 })
//
//
//array.forEach() { element in
////    break
//}
//
//for _ in array {
//
//}
