//
//  DetermineColorOfChessBoardSquare.swift
//  Problems
//
//  Created by Leysan Latypova on 14.09.2022.
//

import Foundation

func squareIsWhite(_ coordinates: String) -> Bool {
    var letter = coordinates.first!
    let number = coordinates.last!
    
    switch letter {
    case "a", "c", "e", "g":
        letter = "1"
    default:
        letter = "2"
    }
    
    if number.wholeNumberValue! % 2 == 0 {
        return letter.wholeNumberValue! % 2 == 0 ? false : true
    } else {
        return letter.wholeNumberValue! % 2 == 0 ? true : false
    }
}
