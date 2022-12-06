//
//  MaxNumOfBallsInaBox.swift
//  Problems
//
//  Created by Leysan Latypova on 06.12.2022.
//

import Foundation

func countBalls(_ lowLimit: Int, _ highLimit: Int) -> Int {
    var n = highLimit - lowLimit + 1
    var boxes = Array(repeating: 0, count: highLimit + 1)
    for ball in lowLimit...highLimit {
        let reducedBall = String(ball).compactMap{$0.wholeNumberValue}.reduce(0, +)
        boxes[reducedBall] += 1
        n -= 1
        
        if n == 0 {
            break
        }
    }
    return boxes.max()!
}
