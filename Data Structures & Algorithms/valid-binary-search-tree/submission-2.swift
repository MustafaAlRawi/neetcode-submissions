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
    func isValidBST(_ root: TreeNode?) -> Bool {
        return isValid(root, nil, nil)
    }
    func isValid(_ node: TreeNode?, _ lower: Int?, _ upper: Int?) -> Bool {
        guard let node else {return true}
        if let lower, node.val <= lower {
            return false
        }
        if let upper, node.val >= upper {
            return false
        }
        let leftIsValid = isValid(node.left, lower, node.val)
        let rightIsValid = isValid(node.right, node.val, upper)
        return leftIsValid && rightIsValid
    }
}
