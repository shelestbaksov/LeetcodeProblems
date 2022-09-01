//
//  ReduceMapFilter.swift
//  Problems
//
//  Created by Leysan Latypova on 01.09.2022.
//

import Foundation

extension Collection {
    
    func reduceV2<T>(_ initialValue: T, closure: (_ currentValue: T, Element) -> (T)) -> T {
        
        var accumulator = initialValue
        for element in self {
            accumulator = closure(accumulator, element)
        }
        return accumulator
    }
    
    func mapV2<T>(_ closure: (Element) -> (T)) -> [T] {
        
        var arr = [T]()
        for element in self {
            arr.append(closure(element))
        }
        return arr
    }
    
    func filterV2(_ closure: (Element) -> Bool) -> [Element] {
        
        var arr = [Element]()
        for element in self {
            if closure(element) {
                arr.append(element)
            }
        }
        return arr
    }
}
//
//
//let array = [1, 2, 3, 4, 5]
//let evenNumbers = array.filterV2 { element in
//    return element % 2 == 0
//}
//
//// -> ["1", "2" ...]
//let strings = array.mapV2 { element in
//    return "\(element)"
//}


//let string: String = array.reduceV2("") { currentValue, element in
//    return "\(currentValue)\(element)"
//}
//
//let sum: Int = array.reduceV2(0) { accumulator, element in
//    return accumulator + element
//}
