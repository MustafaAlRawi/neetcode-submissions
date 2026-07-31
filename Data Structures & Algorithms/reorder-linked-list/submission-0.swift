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
    func reorderList(_ head: ListNode?) {
        var slow = head, fast = head?.next
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        var second = slow?.next
        var prev: ListNode? = nil
        slow?.next = nil
        while second != nil {
            let tmp = second?.next
            second?.next = prev
            prev = second
            second = tmp
        }
        var first = head
        second = prev 
        while second != nil {
            let tmp1 = first?.next
            let tmp2 = second?.next
            first?.next = second
            second?.next = tmp1
            first = tmp1
            second = tmp2
        }

    }
}
