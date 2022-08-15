//
//  LastStoneWeight.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func lastStoneWeight(_ stones: [Int]) -> Int {
    var stones = stones.sorted()
    
    guard !stones.isEmpty else { return 0 }
    guard stones.count > 1 else { return stones[0] }
    
   
    while stones.count != 0 {
        let heaviestStone = stones.removeLast()
        let secondHeaviestStone = stones.removeLast()
        
        if heaviestStone > secondHeaviestStone {
            stones.append(heaviestStone - secondHeaviestStone)
            stones.sort()
        } else {
            continue
        }
    }
    return stones.isEmpty ? 0 : stones[0]
}
