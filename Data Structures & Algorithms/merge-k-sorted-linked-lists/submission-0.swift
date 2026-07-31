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
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        if lists.isEmpty {
            return nil
        }
        var lists = lists 
        while lists.count > 1 {
            var mergedLists: [ListNode?] = []
            for i in stride(from: 0, to: lists.count, by: 2) {
                let l1 = lists[i]
                let l2 = i + 1 < lists.count ? lists[i + 1] : nil
                mergedLists.append(mergeTwoLists(l1, l2))
            }
            lists = mergedLists
        }
        return lists[0]
    }
   private func mergeTwoLists(
        _ l1: ListNode?,
        _ l2: ListNode?
    ) -> ListNode? {
        var l1 = l1
        var l2 = l2
        
        let dummy = ListNode(0)
        var curr: ListNode? = dummy
        
        while let node1 = l1, let node2 = l2 {
            if node1.val < node2.val {
                curr?.next = node1
                l1 = node1.next
            } else {
                curr?.next = node2
                l2 = node2.next
            }
            
            curr = curr?.next
        }
        
        curr?.next = l1 ?? l2
        
        return dummy.next
    }
}
