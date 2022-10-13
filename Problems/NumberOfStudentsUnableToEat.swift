//
//  NumberOfStudentsUnableToEat.swift
//  Problems
//
//  Created by Leysan Latypova on 13.10.2022.
//

import Foundation

func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
    var students = students
    var sandwiches = sandwiches
    var count = 0
    while count != students.count {
        if students.first == sandwiches.first {
            students.remove(at: 0)
            sandwiches.remove(at: 0)
            count = 0
        } else {
            let left = students.remove(at: 0)
            students.append(left)
            count += 1
        }
    }
    return students.count
}
