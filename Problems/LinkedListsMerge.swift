//
//  LinkedListsMerge.swift
//  ffff
//
//  Created by Leysan Latypova on 03.08.2022.
//

import Foundation

//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//}

extension ListNode: CustomDebugStringConvertible {
        
    // [7, 8, 9]
    // ->
    // [ListNode(7, nil), ListNode(8, nil), ListNode(9, nil)]
    // ->
    // [ListNode(7, .next.), ListNode(8, .next.), ListNode(9, nil)]
    static func arrayToLinkedList(_ array: [Int]) -> ListNode? {
        guard !array.isEmpty else { return nil }
        
        var nodesArray: [ListNode] = []
        for value in array {
            nodesArray.append(ListNode(value))
        }
        for (index, node) in nodesArray.prefix(nodesArray.count-1).enumerated() {
            node.next = nodesArray[index + 1]
        }
        return nodesArray[0]
    }
    
    static func linkedListToArray(_ root: ListNode) -> [Int] {
        var result: [Int] = []
        var cursor: ListNode? = root
        while cursor != nil {
            result.append(cursor!.val)
            cursor = cursor!.next
        }
        return result
    }
    
    // [ListNode(7, .next.), ListNode(8, .next.), ListNode(9, nil)]
    // ->
    // [7, 8, 9]
    public var debugDescription: String {
        return Self.linkedListToArray(self).debugDescription
    }
}

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    guard list1 != nil else { return list2 }
    guard list2 != nil else { return list1 }
    
    var result: [Int] = []
    var list1Cursor: ListNode? = list1
    var list2Cursor: ListNode? = list2
    
    while true {
        if list1Cursor == nil && list2Cursor == nil {
            break
        } else if list1Cursor == nil {
            result.append(list2Cursor!.val)
            list2Cursor = list2Cursor!.next
        } else if list2Cursor == nil {
            result.append(list1Cursor!.val)
            list1Cursor = list1Cursor!.next
        } else if list1Cursor!.val < list2Cursor!.val {
            result.append(list1Cursor!.val)
            list1Cursor = list1Cursor!.next
        } else {
            result.append(list2Cursor!.val)
            list2Cursor = list2Cursor!.next
        }
    }
    
    return ListNode.arrayToLinkedList(result)
}

func mergeTwoListsV2(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    guard list1 != nil else { return list2 }
    guard list2 != nil else { return list1 }
    
    var result: ListNode? = nil
    var resultCursor: ListNode? = nil
    
    var list1Cursor: ListNode? = list1
    var list2Cursor: ListNode? = list2
    
    func appendToResult(_ node: ListNode?) {
        if let unwrappedResultCursor = resultCursor {
            unwrappedResultCursor.next = node
            resultCursor = node
        } else {
            resultCursor = node
            result = node
        }
    }
    
    while true {
        if list1Cursor == nil && list2Cursor == nil {
            break
        } else if list1Cursor == nil {
            appendToResult(list2Cursor!)
            list2Cursor = list2Cursor!.next
        } else if list2Cursor == nil {
            appendToResult(list1Cursor!)
            list1Cursor = list1Cursor!.next
        } else if list1Cursor!.val < list2Cursor!.val {
            appendToResult(list1Cursor!)
            list1Cursor = list1Cursor!.next
        } else {
            appendToResult(list2Cursor!)
            list2Cursor = list2Cursor!.next
        }
    }
    
    return result
}



//// reference types
//var list: ListNode? = ListNode.arrayToLinkedList([1, 2, 3, 4])
//var list2 = list
//list = nil
//print(list2)
//
//
//var list: ListNode? = ListNode.arrayToLinkedList([1, 2, 3, 4])
//var list2 = list
//list.append(5)
//print(list2.count) // 5
//
//
// value types
//var array = [1, 2, 3, 4]
//var array2 = array
//print(array2)
//
//array.append(5)
//print(array2.count) // 4

//

func middleNode(_ head: ListNode?) -> ListNode? {
        let countOfNodes = countNumberOfNodes(head)
        let middleIndex = countOfNodes / 2
        var currentIndex = 0
        var currentHead = head
        
        while currentHead != nil && currentIndex != middleIndex {
            currentHead = currentHead?.next
            currentIndex += 1
        }
        return currentHead
    }

func countNumberOfNodes(_ head: ListNode?) -> Int {
        var head = head
        var countOfNodes = 0
        while head != nil {
            head = head?.next
            countOfNodes += 1
        }
    return countOfNodes
}

func mergeNodes(_ head: ListNode?) -> ListNode? {
    let newHead = head?.next
    var pointer = head?.next

    
    while pointer != nil && pointer?.next != nil {
        while pointer?.next?.val != 0 {
            pointer?.val += pointer?.next?.val ?? 0
            pointer?.next = pointer?.next?.next
        }
        pointer?.next = pointer?.next?.next
        pointer = pointer?.next
    }
    return newHead
}
