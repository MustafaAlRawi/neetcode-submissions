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
        if head == nil {return nil}
        var newHead = head
        if head?.next != nil {
            newHead = reverseList(head?.next)
            head?.next?.next = head
        }
        head?.next = nil
        return newHead
    }
}
