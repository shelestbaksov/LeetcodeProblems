//
//  MinMovesToSeat.swift
//  Problems
//
//  Created by Leysan Latypova on 29.08.2022.
//

import Foundation

func minMovesToSeat(_ seats: [Int], _ students: [Int]) -> Int {
    var result = 0
    let sortedSeats = seats.sorted(by: <)
    
    for (studentIndex, student) in students.sorted(by: <).enumerated() {
        let seat = sortedSeats[studentIndex]
        if student == seat {
            continue
        } else if student > seat {
            result += (student - seat)
        } else if seat > student {
            result += (seat - student)
        }
    }
    return result
}
