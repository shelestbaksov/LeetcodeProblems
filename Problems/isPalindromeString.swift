//
//  isPalindromeString.swift
//  Problems
//
//  Created by Leysan Latypova on 01.09.2022.
//

import Foundation

func isPalindrome(_ s: String) -> Bool{
    let newString = s.alphanumeric
    
    return newString == String(newString.reversed())
}

extension String {
    var alphanumeric: String {
        return self.components(separatedBy: CharacterSet.alphanumerics.inverted).joined().lowercased()
    }
}
