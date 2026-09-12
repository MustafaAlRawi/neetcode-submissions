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
extension ListNode {
    convenience init(_ val: Int, _ next: ListNode?) {
        self.init(val)
        self.next = next
    }
}
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        return add(l1, l2, 0)
    }
    func add(_ l1: ListNode?, _ l2: ListNode?,  _ carry: Int) -> ListNode? {
        if l1 == nil && l2 == nil && carry == 0 {
            return nil
        }
        let v1 = l1?.val ?? 0
        let v2 = l2?.val ?? 0

        let sum = v1 + v2 + carry
        let newCarry = sum / 10
        let val = sum % 10
        let nextNode = add(l1?.next, l2?.next, newCarry)
        return ListNode(val, nextNode)
    }
}
