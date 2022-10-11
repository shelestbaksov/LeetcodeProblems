//
//  ImplementStack.swift
//  Problems
//
//  Created by Leysan Latypova on 11.10.2022.
//

import Foundation

var stack = [Int]()

func push(_ x: Int) {
    stack.append(x)
}

func pop() -> Int {
    stack.removeLast()
}

func top() -> Int {
    stack.last!
}

func empty() -> Bool {
    if stack.isEmpty {
        return true
    }
    return false
}
