//
//  InsertDelete.swift
//  Problems
//
//  Created by Leysan Latypova on 10.11.2022.
//

import Foundation

class RandomizedSet {
    var array = [Int]()
    
    init() {
        
    }
    
    func insert(_ val: Int) -> Bool {
        if !array.contains(val) {
            array.append(val)
            return true
        }
        return false
    }
    
    func remove(_ val: Int) -> Bool {
        if !array.contains(val) {
            return false
        } else {
            for (i, num) in array.enumerated() {
                if num == val {
                    array.remove(at: i)
                    return true
                }
            }
        }
        return false
    }
    
    func getRandom() -> Int {
        guard array.count > 0 else { return 0 }

        return array.randomElement()!
    }
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * let obj = RandomizedSet()
 * let ret_1: Bool = obj.insert(val)
 * let ret_2: Bool = obj.remove(val)
 * let ret_3: Int = obj.getRandom()
 */
