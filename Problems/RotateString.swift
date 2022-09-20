//
//  RotateString.swift
//  Problems
//
//  Created by Leysan Latypova on 20.09.2022.
//

import Foundation

func rotateString(_ s: String, _ goal: String) -> Bool {
    return s.count == goal.count && (s + s).contains(goal)
}
