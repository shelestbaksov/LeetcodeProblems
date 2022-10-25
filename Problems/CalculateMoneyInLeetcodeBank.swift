//
//  CalculateMoneyInLeetcodeBank.swift
//  Problems
//
//  Created by Leysan Latypova on 25.10.2022.
//

import Foundation

func totalMoney(_ n: Int) -> Int {
    var prevMonday = 1
    var today = 1
    var amount = 0
    var days = 0
    
    while days != n {
        amount += today
        days += 1
        today += 1
        
        if days % 7 == 0 {
            prevMonday += 1
            today = prevMonday
        }
    }
    return amount
}
