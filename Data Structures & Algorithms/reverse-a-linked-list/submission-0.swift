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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var h = head
        var prev: ListNode? = nil
        while h != nil {
            var next = h?.next
                h?.next = prev
              prev = h
              h = next
        }
        return prev
    }
}
