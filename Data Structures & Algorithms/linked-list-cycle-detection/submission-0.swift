/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
extension ListNode: Hashable {
    static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs === rhs
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(ObjectIdentifier(self))
    }
}

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var seto: Set<ListNode> = []
        var current = head
        
        while let node = current {
            if seto.contains(node) {
                return true
            }
            
            seto.insert(node)
            current = node.next
        }
        
        return false
    }
}
