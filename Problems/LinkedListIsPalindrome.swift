//
//  LinkedListIsPalindrome.swift
//  Problems
//
//  Created by Leysan Latypova on 23.08.2022.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func isPalindrome(_ head: ListNode?) -> Bool {
    var result: [Int] = []
    var cursor: ListNode? = head
    while cursor != nil {
        result.append(cursor!.val)
        cursor = cursor!.next
    }
    
    return result == result.reversed()
}


