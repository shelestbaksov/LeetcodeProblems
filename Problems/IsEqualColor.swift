//
//  IsEqualColor.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func isEqualColour(firstX: Int, firstY: Int, secondX: Int, secondY: Int) -> Bool {
//    let x = first.0
//    let y = first.1
//
//    if (x + y) % 2 == 0 {
//        print("white")
//    } else {
//        print("black")
//    }
//
    guard firstX < 8 && firstY < 8 && secondX < 8 && secondY < 8 else { return false }
    
    if (firstX + firstY) % 2 == 0 && (secondX + secondY) % 2 == 0 {
        print("Both figures stay on white squares")
        return true
    } else if (firstX + firstY) % 2 != 0 && (secondX + secondY) % 2 != 0 {
        print("Both figures stay on black squares")
        return true
    } else {
        return false
    }
}
