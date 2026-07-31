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
    func maxDepth(_ root: TreeNode?) -> Int {
        return dfs(0, root)
    }
    func dfs(_ depth: Int, _ root: TreeNode?) -> Int {
        var depth = depth
        guard let root = root else {return 0}
       depth = 1 + max(dfs(depth + 1, root.left), dfs(depth + 1, root.right)) 

        return depth
    }
}
