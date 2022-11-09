//
//  RemoveNthFromEnd.swift
//  Problems
//
//  Created by Leysan Latypova on 09.11.2022.
//

import Foundation


func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    var result: [Int] = []
    var cursor: ListNode? = head
    while cursor != nil {
        result.append(cursor!.val)
        cursor = cursor!.next
    }
    
    result.remove(at: result.count - n)
    
    var nodesArray: [ListNode] = []
    for value in result {
        nodesArray.append(ListNode(value))
    }
    for (index, node) in nodesArray.prefix(nodesArray.count-1).enumerated() {
        node.next = nodesArray[index + 1]
    }
    return nodesArray[0]
}
