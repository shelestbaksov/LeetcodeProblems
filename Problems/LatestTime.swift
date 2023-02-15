//
//  LatestTime.swift
//  Problems
//
//  Created by Leysan Latypova on 15.02.2023.
//

import Foundation

func maximumTime(_ time: String) -> String {
    var arr = Array(time.replacingOccurrences(of: ":", with: ""))
    
    for (i, char) in arr.enumerated() {
        if char == "?" {
            if i == 0 {
                if Int(String(arr[1])) ?? 0 <= 3 {
                    arr[i] = "2"
                } else {
                    arr[i] = "1"
                }
            } else if i == 1 {
                if arr[0] == "0" || arr[0] == "1"  {
                    arr[i] = "9"
                } else {
                    arr[i] = "3"
                }
            } else if i == 2 {
                arr[i] = "5"
            } else if i == 3 {
                arr[i] = "9"
            }
        }
    }
    
    arr.insert(":", at: 2)
    return String(arr)
}
