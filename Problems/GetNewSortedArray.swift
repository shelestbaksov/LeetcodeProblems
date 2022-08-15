//
//  File.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func getNewSortedArray(from firstArray:[Int], and secondArray:[Int]) -> [Int] {
    var newArray = [Int]()
    var indexOfFirstArray = 0
    var indexOfSecondArray = 0
    
    while true {
        
        if indexOfFirstArray < firstArray.count && indexOfSecondArray == secondArray.count {
            newArray.append(firstArray[indexOfFirstArray])
            indexOfFirstArray += 1
        } else if indexOfFirstArray == firstArray.count && indexOfSecondArray < secondArray.count {
            newArray.append(secondArray[indexOfSecondArray])
            indexOfSecondArray += 1
        }
        else if indexOfFirstArray == firstArray.count && indexOfSecondArray == secondArray.count {
            break
        }
        
        else if firstArray[indexOfFirstArray] < secondArray[indexOfSecondArray] {
            newArray.append(firstArray[indexOfFirstArray])
            indexOfFirstArray += 1
        } else {
            newArray.append(secondArray[indexOfSecondArray])
            indexOfSecondArray += 1
        }
    }
    
    return newArray
}

func getNewSortedArrayV2(from firstArray:[Int], and secondArray:[Int]) -> [Int] {
    var newArray = [Int]()
    var indexOfFirstArray = 0
    var indexOfSecondArray = 0
        
    while indexOfFirstArray < firstArray.count || indexOfSecondArray < secondArray.count {
        
        if indexOfFirstArray < firstArray.count && indexOfSecondArray == secondArray.count {
            newArray.append(firstArray[indexOfFirstArray])
            indexOfFirstArray += 1
        } else if indexOfFirstArray == firstArray.count && indexOfSecondArray < secondArray.count {
            newArray.append(secondArray[indexOfSecondArray])
            indexOfSecondArray += 1
        } else if firstArray[indexOfFirstArray] < secondArray[indexOfSecondArray] {
            newArray.append(firstArray[indexOfFirstArray])
            indexOfFirstArray += 1
        } else {
            newArray.append(secondArray[indexOfSecondArray])
            indexOfSecondArray += 1
        }
    }
    return newArray
}
