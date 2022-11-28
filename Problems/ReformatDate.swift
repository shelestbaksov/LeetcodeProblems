//
//  ReformatDate.swift
//  Problems
//
//  Created by Leysan Latypova on 28.11.2022.
//

import Foundation

func reformatDate(_ date: String) -> String {
    let months =  ["Jan": "01", "Feb": "02", "Mar": "03", "Apr": "04", "May": "05", "Jun": "06", "Jul": "07", "Aug": "08", "Sep": "09", "Oct": "10", "Nov": "11", "Dec": "12"]
    let day = date.split(separator: " ")[0].count == 3 ? "0\(String(date.split(separator: " ")[0].prefix(1)))" : String(date.split(separator: " ")[0].prefix(2))
    let year = String(date.split(separator: " ")[2])
    return "\(year)-\(months[String(date.split(separator: " ")[1])]!)-\(day)"
}
