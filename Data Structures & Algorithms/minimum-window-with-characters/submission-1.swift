class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        var tC: [Character: Int] = [:]
        var wC: [Character: Int] = [:]
        for c in t {
            tC[c, default: 0] += 1
        }
        var res = [-1, -1]
        var resL = Int.max
        var have = 0, need = tC.count
        var l = 0
        let sA = Array(s)
        for r in 0..<sA.count {
            let c = sA[r]
            wC[c, default: 0] += 1
            if let count = tC[c], count == wC[c] {
                have += 1
            }
            while have == need {

                wC[sA[l], default: 0] -= 1
            
               if (r - l + 1) < resL {
                    res = [l, r]
                    resL = r - l + 1
                }

                  if let count = tC[sA[l]], count > wC[sA[l], default: 0] {
                have -= 1
            }
                l += 1
            }
        }

        return resL == Int.max ? "" : (String(sA[res[0]...res[1]]))   
    }
}
