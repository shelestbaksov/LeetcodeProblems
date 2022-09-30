//
//  IsSameTree.swift
//  Problems
//
//  Created by Leysan Latypova on 30.09.2022.
//

import Foundation

func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    if p == nil && q == nil { return true }
    if p == nil || q == nil { return false }
    
    if p?.val != q?.val { return false }
    
    return isSameTree(p?.right, q?.right) && isSameTree(p?.left, q?.left)
}
