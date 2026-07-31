class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let sArr = Array(s)
        var l = 0
        var r = s.count - 1
        while l < r {
         
            while l < r && !sArr[l].isNumber && !sArr[l].isLetter {
                l += 1
                }
                 while l < r && !sArr[r].isNumber && !sArr[r].isLetter {
                r -= 1
                }
            if sArr[l].lowercased() != sArr[r].lowercased() {
                return false
            }
            l += 1
            r -= 1
        }
        return true
    }
}
