//
//  QueriesOnAPermutationWithKey.swift
//  Problems
//
//  Created by Leysan Latypova on 06.09.2022.
//

import Foundation

func processQueries(_ queries: [Int], _ m: Int) -> [Int] {
    var permArray = Array(1...m)
    var output = [Int]()
    for num in queries {
        for (index, number) in permArray.enumerated() {
            if number == num {
                output.append(index)
                permArray.remove(at: index)
                permArray.insert(number, at: 0)
            }
        }
    }
    return output
}
