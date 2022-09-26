//
//  RangeSumBST.swift
//  Problems
//
//  Created by Leysan Latypova on 26.09.2022.
//

import Foundation

func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
    var result = 0
    guard let root = root else { return 0 }
    
    result += rangeSumBST(root.left, low, high)
    result += rangeSumBST(root.right, low, high)
    if root.val >= low && root.val <= high {
        result += root.val
    }
    
    return result
}
