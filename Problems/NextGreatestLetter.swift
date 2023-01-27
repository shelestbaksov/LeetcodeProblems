//
//  NextGreatestLetter.swift
//  Problems
//
//  Created by Leysan Latypova on 27.01.2023.
//

import Foundation

func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        
    for letter in letters {
        if letter > target {
            return letter
        }
    }
    return letters.first!
}
