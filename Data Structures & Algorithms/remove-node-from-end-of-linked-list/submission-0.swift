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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var count = 0
        var current = head

        while current != nil {
            count += 1
            current = current?.next
        }
        let target = count - n
        let dummy = ListNode(0)
        dummy.next = head
        current = dummy
        for _ in 0..<target {
            current = current?.next
        }
        let temp = current
        // temp?.next?.next = nil
        current?.next = current?.next?.next

        return dummy.next
    }
}
