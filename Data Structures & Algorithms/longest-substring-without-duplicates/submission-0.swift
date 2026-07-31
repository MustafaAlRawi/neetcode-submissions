class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLength: Int = 0
        var freq: [Character: Int] = [:]
        var l = 0
        var sArr = Array(s)
        for r in 0..<sArr.count {
   
            freq[sArr[r], default: 0] += 1
            while freq[sArr[r], default: 0] > 1 {
                freq[sArr[l], default: 0] -= 1
                l += 1
            }
            let length = r - l + 1
            maxLength = max(maxLength, length)
        }
        return maxLength
    }
}
