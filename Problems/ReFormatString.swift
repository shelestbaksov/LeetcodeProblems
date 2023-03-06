//
//  ReFormatString.swift
//  Problems
//
//  Created by Leisan Latypova on 06.03.2023.
//

import Foundation

func reformat(_ s: String) -> String {
    if s.count == 1 {
        return s
    }
    var letters = [Character]()
    var digits = [Character]()
    
    for char in s {
        if char.isWholeNumber {
            digits.append(char)
        } else {
            letters.append(char)
        }
    }
    var res = ""
    var index = 0
    
    if letters.isEmpty || digits.isEmpty {
        return ""
    } else if letters.count - digits.count > 1 || letters.count - digits.count < -1 {
        return ""
    } else {
        if letters.count >= digits.count {
            while true {
                if index == digits.count && index != letters.count {
                    res += String(letters[index])
                    break
                } else if index != digits.count && index == letters.count {
                    res += String(digits[index])
                    break
                } else if index == digits.count && index == letters.count {
                    break
                }
                res += String(letters[index])
                res += String(digits[index])
                index += 1
            }
        } else {
            while true {
                if index == digits.count && index != letters.count {
                    res += String(letters[index])
                    break
                } else if index != digits.count && index == letters.count {
                    res += String(digits[index])
                    break
                } else if index == digits.count && index == letters.count {
                    break
                }
                res += String(digits[index])
                res += String(letters[index])
                index += 1
            }
        }
    }
    return res
}
