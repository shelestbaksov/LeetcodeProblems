//
//  StrongPasswordChecker.swift
//  Problems
//
//  Created by Leysan Latypova on 09.02.2023.
//

import Foundation

func strongPasswordCheckerII(_ password: String) -> Bool {
    guard password.count > 7 else {
        return false
    }
    guard password != password.lowercased() else {
        return false
    }
    
    guard password != password.uppercased() else {
        return false
    }
    
    guard password.contains(where: { Int(String($0)) != nil }) else {
        return false
    }
    
    guard password.contains(where: { "!@#$%^&*()-+".contains($0) }) else {
        return false
    }
    
    return zip(password.dropLast(), password.dropFirst()).allSatisfy { $0 != $1 }
}
