//
//  AverageSalary.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func average(_ salary: [Int]) -> Double {
    guard !salary.isEmpty else { return 0 }
    
    var minSalary = salary[0]
    var maxSalary = 0
    var totalSalary = 0
    
    for sal in salary {
        if sal < minSalary {
            minSalary = sal
        } else if sal > maxSalary{
            maxSalary = sal
        }
        totalSalary += sal
    }
    
    return Double(totalSalary - minSalary - maxSalary) / Double(salary.count - 2)
}
