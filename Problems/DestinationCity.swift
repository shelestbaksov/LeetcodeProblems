//
//  DestinationCity.swift
//  Problems
//
//  Created by Leysan Latypova on 09.09.2022.
//

import Foundation

func destCity(_ paths: [[String]]) -> String {
    guard !paths.isEmpty else { return "" }
    
    let pathsDict: [String: [String]] = paths.reduce([:]) {
        var result = $0
        result[$1.first!] = $1
        return result
    }
    
    // London -> [London, New York]
    // New York -> [ , ]
    //
    
    var currentPath = paths.first!
    while true {
        let nextCity = currentPath[1]
        if let nextPath = pathsDict[nextCity] {
            currentPath = nextPath
        } else {
            return nextCity
        }
    }
}
