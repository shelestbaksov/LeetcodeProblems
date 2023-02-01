//
//  GCDofStrings.swift
//  Problems
//
//  Created by Leysan Latypova on 01.02.2023.
//

import Foundation

func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    if str1 == str2 {
        return str1
    }
    let maxStr = str1.count > str2.count ? str1 : str2
    let minStr = str1.count > str2.count ? str2 : str1
    
    if String(maxStr.prefix(minStr.count)) != minStr {
        return ""
    }
    
    return gcdOfStrings(String(maxStr.suffix(maxStr.count - minStr.count)), minStr)
}
