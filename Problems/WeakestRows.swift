//
//  WeakestRows.swift
//  Problems
//
//  Created by Leisan Latypova on 20.02.2023.
//

import Foundation


func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
    var dict = [Int: Int]()
    
    for i in 0..<mat.count {
        var count = 0
        for j in 0..<mat[i].count {
            if mat[i][j] == 1 {
                count += 1
            }
        }
        dict[i] = count
    }
    
    let sorted = dict.sorted(by: { $0.value == $1.value ? $0.key < $1.key : $0.value < $1.value  })
    var array = [Int]()
    for (key, _) in sorted {
        if array.count < k {
            array.append(key)
        } else {
            break
        }
        
    }
    return array
}
