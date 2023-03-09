//
//  PassThePillowe.swift
//  Problems
//
//  Created by Leisan Latypova on 09.03.2023.
//

import Foundation

func passThePillow(_ n: Int, _ time: Int) -> Int {
    (time / (n - 1) % 2 == 0) ? (time % (n - 1) + 1) : (n - time % (n - 1))
}
