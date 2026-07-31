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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var dummy = ListNode(0)
        var newList = dummy
        var l1 = list1
        var l2 = list2
        while l1 != nil && l2 != nil {
            if l1!.val < l2!.val {
                newList.next = l1
                l1 = l1?.next
            } else {
                newList.next = l2
                l2 = l2?.next
            }
            newList = newList.next!
        }
        newList.next = l1 ?? l2
    return dummy.next
    }
}
