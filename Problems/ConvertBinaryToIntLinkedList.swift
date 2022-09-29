//
//  ConvertBinaryToIntLinkedList.swift
//  Problems
//
//  Created by Leysan Latypova on 29.09.2022.
//

import Foundation

func getDecimalValue(_ head: ListNode?) -> Int {
    guard head != nil else { return 0 }
    var head = head
    var result = ""
    
    while head != nil {
        result += "\(head!.val)"
        head = head?.next
    }
    let number = strtoul(result, nil, 2)
    return Int(number)
}
