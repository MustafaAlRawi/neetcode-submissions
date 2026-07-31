/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
       var curr = root
       while let node = curr {
        if let p = p, let q = q {
            if max(p.val, q.val) < node.val {
                curr = node.left
            } else if min(p.val, q.val) > node.val {
                curr = node.right 
            } else {
                return node
            }
        }
       }
       return nil
    }
}
