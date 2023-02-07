//
//  NumberOfCuts.swift
//  Problems
//
//  Created by Leysan Latypova on 07.02.2023.
//

import Foundation

func numberOfCuts(_ n: Int) -> Int {
    guard n > 1 else {
        return 0
    }
    if n % 2 == 0 {
        return n / 2
    } else {
        return n
    }
}
