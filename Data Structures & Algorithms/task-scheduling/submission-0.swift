import Collections
class Solution {
    func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        var count = [Character: Int]()
        for task in tasks {
            count[task, default: 0] += 1
        }
        var maxHeap = Heap<Int>(Array(count.values))
        var time = 0
        var queue = Deque<(Int, Int)>()

        while !maxHeap.isEmpty || !queue.isEmpty {
            time += 1
            if maxHeap.isEmpty {
                time = queue.first!.1
            } else {
                let cnt = maxHeap.popMax()! - 1
                if cnt > 0 {
                    queue.append((cnt, time + n))
                }
            }
            if let front = queue.first, front.1 == time {
                maxHeap.insert(front.0)
                queue.removeFirst()
            }
        }
        return time
    }
}
