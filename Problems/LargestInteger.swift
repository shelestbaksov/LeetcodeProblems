//
//  LargestInteger.swift
//  Problems
//
//  Created by Leisan Latypova on 20.03.2023.
//

import Foundation

func largestInteger(_ num: Int) -> Int {

    let numArr = String(num).map { String($0) }
    var odd = [String]()
    var even = [String]()

    for str in numArr {
        if Int(str)! % 2 != 0 {
            odd.append(str)
        } else {
            even.append(str)
        }
    }

    var answer = ""
    odd = odd.sorted()
    even = even.sorted()

    for i in numArr.indices {
        if Int(numArr[i])! % 2 == 0 {
            answer += even.removeLast()
        } else {
            answer += odd.removeLast()
        }
    }

    return Int(answer)!
}
