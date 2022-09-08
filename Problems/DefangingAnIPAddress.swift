//
//  DefangingAnIPAddress.swift
//  Problems
//
//  Created by Leysan Latypova on 08.09.2022.
//

import Foundation

func defangIPaddr(_ address: String) -> String {
    return address.replacingOccurrences(of: ".", with: "[.]")
}
