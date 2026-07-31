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
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        var first: [Int?] = []
        var second: [Int?] = []
        dfs(p, &first)
        dfs(q, &second)
        return first == second
    }
    func dfs(_ root: TreeNode?, _ arr: inout [Int?]) {
        guard let root = root else {
            arr.append(nil) 
            return}
        arr.append(root.val)
        dfs(root.left, &arr)
        dfs(root.right, &arr)
    }
}
