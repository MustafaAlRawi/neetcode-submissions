class ListNode {
    var val: Int
    var key: Int
    var next: ListNode?
    var prev: ListNode?
    init(_ key: Int, _ val: Int) {
        self.val = val
        self.key = key
    }
}
class LRUCache {
    var llDict: [Int: ListNode] = [:]
    var head = ListNode(0, 0)
    var tail = ListNode(0, 0)
    let capacity: Int
    init(_ capacity: Int) {
        self.capacity = capacity
        head.next = tail
        tail.prev = head
    }

    func get(_ key: Int) -> Int {
           guard let node = llDict[key] else {
            return -1
        }
        moveAfterHead(node)

        return node.val
    }

    func put(_ key: Int, _ value: Int) {
       if let node = llDict[key] {
            node.val = value
            moveAfterHead(node)
            return
        }
        let node = ListNode(key, value)

        llDict[key] = node
        addAfterHead(node)
if llDict.count > capacity {
            removeLRU()
        }
    }
    func remove(_ node: ListNode) {
        guard let previous = node.prev,
              let next = node.next else {
            return
        }

        previous.next = next
        next.prev = previous

        node.prev = nil
        node.next = nil
    }
      private func addAfterHead(_ node: ListNode) {
        let first = head.next!

        node.prev = head
        node.next = first

        head.next = node
        first.prev = node
    }
    func moveAfterHead(_ node: ListNode) {
        remove(node)
        addAfterHead(node)
    }
    func removeLRU() {
        let node = tail.prev
        llDict[node!.key] = nil
        let prev = node!.prev
        remove(node!)
        prev!.next = tail
        tail.prev = prev
    }

}
