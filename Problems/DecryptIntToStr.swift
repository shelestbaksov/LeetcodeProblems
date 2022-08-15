//
//  DecryptIntToStr.swift
//  ffff
//
//  Created by Leysan Latypova on 20.07.2022.
//

import Foundation

let decryptionDictionary = [
        "1":"a",
        "2":"b",
        "3":"c",
        "4":"d",
        "5":"e",
        "6":"f",
        "7":"g",
        "8":"h",
        "9":"i",
        "10":"j",
        "11":"k",
        "12":"l",
        "13":"m",
        "14":"n",
        "15":"o",
        "16":"p",
        "17":"q",
        "18":"r",
        "19":"s",
        "20":"t",
        "21":"u",
        "22":"v",
        "23":"w",
        "24":"x",
        "25":"y",
        "26":"z"
]

func freqAlphabets(_ s: String) -> String {
    let array = Array(s)
    var index = 0
    var output = ""
    
    while index < array.count {
        if index + 2 < array.count, array[index + 2] == "#" {
            let key = String(array[index...index + 1])
            output.append(decryptionDictionary[key] ?? "")
            index += 3
        } else {
            output.append(decryptionDictionary[String(array[index])] ?? "")
            index += 1
        }
    }
    return output
}
