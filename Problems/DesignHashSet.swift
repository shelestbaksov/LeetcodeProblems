//
//  DesignHashSet.swift
//  Problems
//
//  Created by Leysan Latypova on 03.10.2022.
//

import Foundation

class MyHashSet {
    private var hs: [Int: Int]
    
    init() {
        self.hs = [:]
    }
    
    func add(_ key: Int) {
        hs[key, default: 0] += 1
    }
    
    func remove(_ key: Int) {
        hs[key] = nil
    }
    
    func contains(_ key: Int) -> Bool {
        if hs[key] != nil {
            return true
        }
        return false
    }
}
