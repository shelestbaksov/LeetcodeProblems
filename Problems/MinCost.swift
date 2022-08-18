//
//  MinCost.swift
//  Problems
//
//  Created by Leysan Latypova on 18.08.2022.
//

import Foundation

func minCostV1(_ colors: String, _ neededTime: [Int]) -> Int {
    
    class Segment {
        let color: Character
        var time: Int
        var maxTime: Int
        
        init(color: Character, time: Int, maxTime: Int) {
            self.color = color
            self.time = time
            self.maxTime = maxTime
        }
    }
    
    guard colors.count > 1 else { return 0 }
    
    let result: [Segment] = colors.enumerated().reduce([]) { (partialResult, indexAndElement) in
        let (index, color) = indexAndElement
        
        if let lastSegment = partialResult.last, lastSegment.color == color {
            lastSegment.time += neededTime[index]
            lastSegment.maxTime = max(lastSegment.maxTime, neededTime[index])
            return partialResult
        } else {
            return partialResult + [Segment(color: color, time: neededTime[index], maxTime: neededTime[index])]
        }
    }
    return result.reduce(0) { existingResult, segment in
        if segment.maxTime != segment.time {
            return existingResult + (segment.time - segment.maxTime)
        }
        return existingResult
    }
}

func minCost(_ colors: String, _ neededTime: [Int]) -> Int {
    guard colors.count > 1 else { return 0 }
    
    var result = 0
    
    var segmentColor = colors.first!
    var segmentTotalTime = neededTime[0]
    var segmentMaxTime = neededTime[0]
    
    let processEndOfSegment = {
        if segmentTotalTime != segmentMaxTime {
            result += segmentTotalTime - segmentMaxTime
        }
    }
    
    for (color, neededTime) in zip(colors, neededTime).dropFirst() {
        if color == segmentColor {
            segmentTotalTime += neededTime
            segmentMaxTime = max(segmentMaxTime, neededTime)
        } else {
            processEndOfSegment()
            segmentColor = color
            segmentTotalTime = neededTime
            segmentMaxTime = neededTime
        }
    }
    processEndOfSegment()
    return result
}

