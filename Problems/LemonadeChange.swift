//
//  LemonadeChange.swift
//  Problems
//
//  Created by Leysan Latypova on 20.09.2022.
//

import Foundation

func lemonadeChange(_ bills: [Int]) -> Bool {
    var myFives = 0
    var myTens = 0
    var myTwenties = 0
    
    for bill in bills {
        if bill == 5 {
            myFives += 1
        } else if bill == 10 {
            if myFives >= 1 {
                myFives -= 1
                myTens += 1
            } else {
                return false
            }
        } else if bill == 20 {
            if myFives >= 1 && myTens >= 1 {
                myFives -= 1
                myTens -= 1
            } else if myFives >= 3 {
                myFives -= 3
                myTwenties += 1
            } else {
                return false
            }
        }
    }
    return true
}

