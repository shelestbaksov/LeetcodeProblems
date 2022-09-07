//
//  DesignStackWithIncrementOperation.swift
//  Problems
//
//  Created by Leysan Latypova on 07.09.2022.
//

import Foundation

class CustomStack {
    var size = Int()
    var array = [Int]()

    init(_ maxSize: Int) {
        size = maxSize
    }

    func push(_ x: Int) {
        guard array.count < size else { return }
        array.append(x)
    }

    func pop() -> Int {
        guard !array.isEmpty else { return -1 }
        return array.popLast() ?? -1
    }

    func increment(_ k: Int, _ val: Int) {
        
        if k <= array.count {
            for i in 0..<k {
                array[i] += val
            }
        } else {
            for i in 0..<array.count {
                array[i] += val
            }
        }
    
    }
}

