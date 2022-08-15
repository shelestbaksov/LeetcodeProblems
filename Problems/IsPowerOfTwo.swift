//
//  IsPowerOfTwo.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation


func isPowerOfTwo(_ number: Int) -> Bool {
    guard (0...1024).contains(number) else { return false }
   
    var power = 1
    
    while power <= number {
        
        if power < number {
            power *= 2
        } else {
            return true
        }
    }
   return false
}

func isAlsoPowerOfTwo(_ number: Int) -> Bool {
    guard (0...1024).contains(number) else { return false }
   
    var power = 1
    
    while power <= number {
        if power == number { return true }
        power *= 2
    }
   return false
}
