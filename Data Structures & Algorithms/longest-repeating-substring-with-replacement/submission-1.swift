class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var count : [Character: Int] = [:]
        var res = 0
        var l = 0, maxf = 0
        let chars = Array(s)

        for r in 0..<chars.count {
            count[chars[r], default: 0] += 1
            maxf = max(maxf, count[chars[r], default: 0])
            while (r - l + 1) - maxf > k {
                count[chars[l], default: 0] -= 1
                l += 1
            }
            res = max(res, r - l + 1)
        }
        return res
    }
}
