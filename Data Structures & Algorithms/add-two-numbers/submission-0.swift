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

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var carry: Int = 0
        var dummy: ListNode? = ListNode(-1)
        var head = dummy
        var l1 = l1 
        var l2 = l2
        while l1 != nil && l2 != nil {
            let sum = l1!.val + l2!.val + carry
            carry = sum / 10
            let num = sum % 10
            let node = ListNode(num)
            head?.next = node
            head = head?.next
            l1 = l1?.next
            l2 = l2?.next
        }
        while l1 != nil {
            let sum = l1!.val + carry
            carry = sum / 10
            let num = sum % 10
            let node = ListNode(num)
            head?.next = node
            head = head?.next
            l1 = l1?.next
        }
        while l2 != nil {
   let sum = l2!.val + carry
            carry = sum / 10
            let num = sum % 10
            let node = ListNode(num)
            head?.next = node
            head = head?.next
            l2 = l2?.next
        }
    if carry != 0 {
        head?.next = ListNode(carry)
    }

    return dummy?.next
    }
}
