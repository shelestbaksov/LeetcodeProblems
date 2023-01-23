//
//  CategorizeBox.swift
//  Problems
//
//  Created by Leysan Latypova on 23.01.2023.
//

import Foundation

func categorizeBox(_ length: Int, _ width: Int, _ height: Int, _ mass: Int) -> String {
    
    let bulk = Int(pow(Double(10), Double(4)))
    let volume = length * width * height
    
    if length >= bulk || width >= bulk || height >= bulk || mass >= bulk {
        if mass >= 100 {
            return "Both"
        } else {
            return "Bulky"
        }
    } else if volume >= Int(pow(Double(10), Double(9))) {
        if mass >= 100 {
            return "Both"
        } else {
            return "Bulky"
        }
    } else if mass >= 100 {
        return "Heavy"
    } else {
        return "Neither"
    }
}
