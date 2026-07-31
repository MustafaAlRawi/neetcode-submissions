class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {return false}
        var sA = Array(s).sorted()
        var tA = Array(t).sorted()
        for sa in 0..<sA.count {
            if sA[sa] != tA[sa] {return false}
        }
    return true
    }
}
