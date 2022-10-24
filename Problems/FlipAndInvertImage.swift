//
//  FlipAndInvertImage.swift
//  Problems
//
//  Created by Leysan Latypova on 24.10.2022.
//

import Foundation

func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
    return image.map { $0.reversed().map { $0 == 0 ? 1 : 0 } }
}
