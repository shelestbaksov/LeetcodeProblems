//
//  RemovePalindromicSub.swift
//  Problems
//
//  Created by Leysan Latypova on 04.10.2022.
//

import Foundation

func removePalindromeSub(_ s: String) -> Int {
 
    return String(s) == String(s.reversed()) ? 1 : 2
}
