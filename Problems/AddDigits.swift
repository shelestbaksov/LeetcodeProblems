//
//  AddDigits.swift
//  Problems
//
//  Created by Leysan Latypova on 06.10.2022.
//

import Foundation

func addDigits(_ num: Int) -> Int {
    return num < 10 ? num : num % 9 == 0 ? 9 : num % 9
}
