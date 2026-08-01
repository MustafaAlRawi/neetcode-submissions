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
       func height(_ node: Node?) -> Int {
        var h = 0
        var curr = node
        while curr != nil {
            h += 1
            curr = curr?.parent
        }
        return h
       }
       var pNode = p
       var qNode = q
       var h1 = height(pNode)
       var h2 = height(qNode)

       if h1 < h2 {
        swap(&qNode, &pNode)
        swap(&h2, &h1)
       }
       var diff = h1 - h2
       while diff > 0 {
        pNode = pNode?.parent
        diff -= 1
       }
       while pNode !== qNode {
        pNode = pNode?.parent
        qNode = qNode?.parent
       }
       return pNode

    }
}
