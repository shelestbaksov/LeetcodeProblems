//
//  SortTheStudents.swift
//  Problems
//
//  Created by Leysan Latypova on 06.02.2023.
//

import Foundation

func sortTheStudents(_ score: [[Int]], _ k: Int) -> [[Int]] {
    return score.sorted { $0[k] > $1[k] }
}
