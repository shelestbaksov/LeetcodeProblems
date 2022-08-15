//
//  firstBadVersion.swift
//  ffff
//
//  Created by Leysan Latypova on 12.07.2022.
//

import Foundation

func isBadVersion(_ version: Int) -> Bool{ return true }

func firstBadVersion(_ n: Int) -> Int {
    var firstVersion = 1
    var lastVersion = n
    
    while true {
        let middleVersion = (firstVersion + lastVersion)/2
        if isBadVersion(middleVersion) {
            lastVersion = middleVersion - 1
        } else {
            firstVersion = middleVersion + 1
        }
    }
    
 }
