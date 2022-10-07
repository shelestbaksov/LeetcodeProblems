//
//  IsLongPressedName.swift
//  Problems
//
//  Created by Leysan Latypova on 07.10.2022.
//

import Foundation

func isLongPressedName(_ name: String, _ typed: String) -> Bool {
    var nPointer = 0
    var tPointer = 0
    
    let nameArray = Array(name)
    let typedArray = Array(typed)
    
    while nPointer < nameArray.count, tPointer < typedArray.count {
        if nameArray[nPointer] == typedArray[tPointer] {
            nPointer += 1
            tPointer += 1
        } else {
            while tPointer > 0, tPointer < typedArray.count, typedArray[tPointer] == typedArray[tPointer - 1] {
                tPointer += 1
            }
            
            if tPointer >= typedArray.count {
                return false
            }
            if nameArray[nPointer] != typedArray[tPointer] {
                return false
            }
        }
    }
    while tPointer < typedArray.count, typedArray[tPointer] == typedArray[tPointer - 1] { tPointer += 1
    }
    return nPointer == nameArray.count && tPointer == typedArray.count
}

