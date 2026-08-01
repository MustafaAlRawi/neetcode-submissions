/**
 * Definition for a Node.
 * class Node {
 *     var val: Int
 *     var left: Node?
 *     var right: Node?
 *     var parent: Node?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *         self.parent = nil
 *     }
 * }
 */

class Solution {
    func lowestCommonAncestor(_ p: Node?, _ q: Node?) -> Node? {
        var seen = Set<ObjectIdentifier>()
        var pNode = p
        while let node = pNode {
            seen.insert(ObjectIdentifier(node))
            pNode = node.parent
        }
        var qNode = q
        while let node = qNode {
            if seen.contains(ObjectIdentifier(node)) {
                return node
            }
            qNode = node.parent
        }
        return nil
    }
}
