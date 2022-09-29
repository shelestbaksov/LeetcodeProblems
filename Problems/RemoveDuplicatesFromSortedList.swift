//
//  RemoveDuplicatesFromSortedList.swift
//  Problems
//
//  Created by Leysan Latypova on 29.09.2022.
//

import Foundation

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var node = head
    
    while node?.next != nil {
        if node?.val == node?.next?.val {
            node?.next = node?.next?.next
        } else {
            node = node?.next
        }
    }
    return head
}
