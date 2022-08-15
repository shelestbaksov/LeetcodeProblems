//
//  PrintAllNumbersFrom.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func printAllNumbersFromHundredToThousand() {
    
    for number in 100..<1000 {
        
        let firstI = number % 10
        let secondI = (number / 10) % 10
        let thirdI = number / 100
        
        if firstI != secondI && secondI != thirdI && firstI != thirdI {
            print(number)
        }
    }
}

func printAllNumbersFromHundredToThousandV2() {
   
   for firstDigit in 1...9 {
       for secondDigit in 0...9 {
           for thirdDigit in 0...9 {
               
               if firstDigit != secondDigit && secondDigit != thirdDigit && firstDigit != thirdDigit {
                   print("\(firstDigit)\(secondDigit)\(thirdDigit)")
               }
           }
       }
   }
}

