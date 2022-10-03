//
//  DesignHashMap.swift
//  Problems
//
//  Created by Leysan Latypova on 30.09.2022.
//

import Foundation

class MyHashMap {
    private var obj: [Int: Int]
    
    init() {
        self.obj = [:]
    }
    
    func put(_ key: Int, _ value: Int) {
        obj[key] = value
    }
    
    func get(_ key: Int) -> Int {
        if obj[key] != nil {
            return obj[key]!
        } else {
            return -1
        }
    }
    
    func remove(_ key: Int) {
        obj[key] = nil
    }
}
