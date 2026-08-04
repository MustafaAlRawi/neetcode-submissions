/**
 * Definition of Interval:
 * class Interval {
 *     var start: Int
 *     var end: Int
 *     init(_ start: Int, _ end: Int) {
 *         self.start = start
 *         self.end = end
 *     }
 * }
 */

class Solution {
    func minMeetingRooms(_ intervals: [Interval]) -> Int {
        let starts = intervals.map { $0.start }.sorted()
        let ends = intervals.map { $0.end }.sorted()
        var res = 0, count = 0, s = 0, e = 0
        while s < intervals.count {
            if starts[s] < ends[e] {
                count += 1
                s += 1
            } else {
                count -= 1
                e += 1
            }
            res = max(res, count)
        }
        return res
    }
}
