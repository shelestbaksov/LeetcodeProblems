//
//  AddToArrayForm.swift
//  Problems
//
//  Created by Leysan Latypova on 07.10.2022.
//

import Foundation

func addToArrayForm(_ num: [Int], _ k: Int) -> [Int] {
    let number = String(num.reduce(0, { $0 * 10 + $1 }) + k)
    
    return number.digits
}

extension StringProtocol  {
    var digits: [Int] { compactMap(\.wholeNumberValue) }
}
