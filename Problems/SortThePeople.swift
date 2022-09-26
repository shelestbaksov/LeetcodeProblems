//
//  SortThePeople.swift
//  Problems
//
//  Created by Leysan Latypova on 26.09.2022.
//

import Foundation

func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
    let sorted = zip(names, heights).sorted(by: { $0.1 > $1.1 })
    var result = [String]()
    
    for (name, _) in sorted {
        result.append(name)
    }
    
    return result
}
