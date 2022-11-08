//
//  WaterBottles.swift
//  Problems
//
//  Created by Leysan Latypova on 08.11.2022.
//

import Foundation

func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {
    var result = numBottles
    var emptyBottles = numBottles
    
    while emptyBottles >= numExchange {
        let emptyLeft = emptyBottles % numExchange
        let balance = emptyBottles / numExchange
        result += balance
        emptyBottles = balance + emptyLeft
    }
    
    return result
}


