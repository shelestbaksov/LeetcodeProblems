//
//  InOrderTraversal.swift
//  Problems
//
//  Created by Leysan Latypova on 20.09.2022.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
       self.val = val
       self.left = left
       self.right = right
    }
}

func inorderTraversal(_ root: TreeNode?) -> [Int] {
    guard root != nil else { return [] }
    
    var current = root
    var output = [Int]()
    
    while current != nil {
        if current?.left == nil {
            output.append(current!.val)
            current = current?.right
        } else {
            current = current?.left
        }
    }
    return output
}

