//
//  CanPlaceFlower.swift
//  Problems
//
//  Created by Leysan Latypova on 22.09.2022.
//

import Foundation

func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    var count = 0
    var flowerbed = flowerbed
    
    for i in 0..<flowerbed.count {
        if flowerbed[i] == 0 {
            let emptyLeft = i==0 || flowerbed[i - 1] == 0
            let emptyRight = i == flowerbed.count - 1 || flowerbed[i + 1] == 0
            
            if emptyLeft && emptyRight {
                flowerbed[i] = 1
                count += 1
            }
        }
    }
    return count >= n
}
