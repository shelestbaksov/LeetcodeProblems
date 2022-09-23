//
//  RootEqualsSumOfChildren.swift
//  Problems
//
//  Created by Leysan Latypova on 23.09.2022.
//

import Foundation

//
//public class TreeNode {
//    public var val: Int
//    public var left: TreeNode?
//    public var right: TreeNode?
//    public init() { self.val = 0; self.left = nil; self.right = nil; }
//    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
//    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
//        self.val = val
//        self.left = left
//        self.right = right
//    }
//}

    func checkTree(_ root: TreeNode?) -> Bool {
        let root = root!
        guard let left = root.left else { return false }
        guard let right = root.right else { return false }
    
        return root.val - left.val == right.val
    }

