//
//  ComplementOfBase10Int.swift
//  Problems
//
//  Created by Leysan Latypova on 26.10.2022.
//

import Foundation

func bitwiseComplement(_ n: Int) -> Int {
    var binary = ""
    String(n, radix: 2).forEach {
        let num = $0 == "0" ? "1" : "0"
        binary.append(num)
    }
    return Int(binary, radix: 2)!
}
