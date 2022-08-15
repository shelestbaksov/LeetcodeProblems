import Foundation



public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}


class Solution {
    func preorder(_ root: Node?) -> [Int] {
        guard let root = root else { return [] }
        
        var result: [Int] = []
        traverse(node: root, result: &result)
        return result
    }
    
    func traverse(node: Node, result: inout [Int]) {
        result.append(node.val)
        for child in node.children {
            traverse(node: child, result: &result)
        }
    }
}


class Solution2 {
    func preorder(_ root: Node?) -> [Int] {
        guard let root = root else { return [] }
        
        var cursor: [Int] = []
        var result: [Int] = []
        var visitedNodesCursors: Set<[Int]> = Set()
        
        while true {
            // find the node that is at cursor
            var node: Node = root
            for indexAtLevel in cursor {
                node = node.children[indexAtLevel]
            }
            
            // if it has not been visited before
            if !visitedNodesCursors.contains(cursor) {
                result.append(node.val)
                visitedNodesCursors.insert(cursor)
            }
            
            // move cursor to the next node
            var nextCursor: [Int]?
            // Case 1. The current node has no children
            if node.children.isEmpty {
                if cursor.isEmpty {
                    return result
                }
                nextCursor = cursor
                _ = nextCursor?.popLast()
            } else {
                
                // Case 2. The current node has children we have not visited
                for (index, _) in node.children.enumerated() {
                    let childCursor = cursor + [index]
                    if !visitedNodesCursors.contains(childCursor) {
                        nextCursor = childCursor
                        break
                    }
                }
                
                // Case 3. The current node has children, but all has been visited
                if nextCursor == nil {
                    if cursor.isEmpty {
                        return result
                    }
                    nextCursor = cursor
                    _ = nextCursor?.popLast()
                }
            }
            cursor = nextCursor!
        }
    }
}
