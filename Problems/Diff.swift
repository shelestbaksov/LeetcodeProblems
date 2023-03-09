//
//  Diff.swift
//  Problems
//
//  Created by Leisan Latypova on 09.03.2023.
//

import Foundation

func minMaxDifference(_ num: Int) -> Int {
    let str = "\(num)"
    
    let max = {
        guard let ind = str.firstIndex(where: { $0 != "9" }) else { return num }
        return Int(str.replacingOccurrences(of: "\(str[ind])", with: "9"))!
    }()
    
    let min = {
        guard let ind = str.firstIndex(where: { $0 != "0" }) else { return num }
        return Int(str.replacingOccurrences(of: "\(str[ind])", with: "0"))!
    }()
    
    return max - min
}
