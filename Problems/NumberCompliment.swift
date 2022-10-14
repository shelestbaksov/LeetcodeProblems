//
//  NumberCompliment.swift
//  Problems
//
//  Created by Leysan Latypova on 14.10.2022.
//

import Foundation

func findComplement(_ num: Int) -> Int {
    var binary = ""
    String(num, radix: 2).forEach {
        let num = $0 == "0" ? "1" : "0"
        binary.append(num)
    }
    return Int(binary, radix: 2)!
}
