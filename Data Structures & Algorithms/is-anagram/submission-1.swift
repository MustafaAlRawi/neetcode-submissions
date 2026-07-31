class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {return false}
        var sD: [Character: Int] = [:]
        let sA = Array(s)
        let tA = Array(t)
        for sa in sA {
            sD[sa, default: 0] += 1
        }
        for ta in tA {
            if sD[ta] == nil {return false}
            sD[ta, default: 0] -= 1
            if sD[ta]! == 0 {sD[ta] = nil}
        }
    return sD.count == 0
    }
}
