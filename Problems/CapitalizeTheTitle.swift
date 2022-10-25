//
//  CapitalizeTheTitle.swift
//  Problems
//
//  Created by Leysan Latypova on 24.10.2022.
//

import Foundation

func capitalizeTitle(_ title: String) -> String {
    let title = title.lowercased().split(separator: " ")
    var result = ""
    
    for i in 0..<title.count {
        if i == title.count - 1 {
            if title[i].count > 2 {
                result += title[i].firstUppercased
            } else if title[i].count < 2 {
                result += title[i]
            }
            break
        } else {
            if title[i].count > 2 {
                result += title[i].firstUppercased
                result += " "
            } else if title[i].count <= 2 {
                result += title[i]
                result += " "
            }
        }
    }
    return result
}
