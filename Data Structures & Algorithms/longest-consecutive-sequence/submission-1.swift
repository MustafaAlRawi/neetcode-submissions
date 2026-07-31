class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var seto: Set<Int> = Set(nums)
        var longest: Int = 0
        for num in nums {
            var length: Int = 1
            var num = num
            if seto.contains(num - 1) {continue}
            while seto.contains(num + 1) {
                num += 1
                length += 1
               
            }
             longest = max(longest, length)
        }
        return longest
    }
}
