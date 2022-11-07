//
//  SlowestKey.swift
//  Problems
//
//  Created by Leysan Latypova on 07.11.2022.
//

import Foundation


func slowestKey(_ releaseTimes: [Int], _ keysPressed: String) -> Character {
    let keysPressed = Array(keysPressed)
    var slowKey = Character("?")
    var slowTime = Int.min
    var lastTime = 0
    for i in 0..<keysPressed.count {
        let time = releaseTimes[i] - lastTime
        lastTime = releaseTimes[i]
        if time > slowTime || time == slowTime && keysPressed[i] > slowKey {
            slowTime = time
            slowKey = keysPressed[i]
        }
    }
    return slowKey
}

