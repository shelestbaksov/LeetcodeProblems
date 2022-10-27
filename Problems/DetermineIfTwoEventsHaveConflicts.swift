//
//  DetermineIfTwoEventsHaveConflicts.swift
//  Problems
//
//  Created by Leysan Latypova on 27.10.2022.
//

import Foundation

func haveConflict(_ event1: [String], _ event2: [String]) -> Bool {
    
    let startOfFirstEvent = event1[0].split(separator: ":")
    let endOfFirstEvent = event1[1].split(separator: ":")
    let startOfSecondEvent = event2[0].split(separator: ":")
    let endOfSecondEvent = event2[1].split(separator: ":")
    
    let startOfFirstInMins = Int(startOfFirstEvent[0])! * 60 + Int(startOfFirstEvent[1])!
    let endOfFirstInMins = Int(endOfFirstEvent[0])! * 60 + Int(endOfFirstEvent[1])!
    let startOfSecondInMins = Int(startOfSecondEvent[0])! * 60 + Int(startOfSecondEvent[1])!
    let endOfSecondInMins = Int(endOfSecondEvent[0])! * 60 + Int(endOfSecondEvent[1])!
    
    if (startOfFirstInMins...endOfFirstInMins).contains(startOfSecondInMins) || (startOfFirstInMins...endOfFirstInMins).contains(endOfSecondInMins) {
        return true
    } else if (startOfSecondInMins...endOfSecondInMins).contains(startOfFirstInMins) || (startOfSecondInMins...endOfSecondInMins).contains(endOfFirstInMins) {
        return true
    }
    
    return false
}
