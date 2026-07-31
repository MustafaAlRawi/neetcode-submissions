class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dicto: [String: [String]] = [:]
        var out: [[String]] = []
        for str in strs {
            let sorted = String(Array(str).sorted())
            dicto[sorted, default: []].append(str)
        }
        for value in dicto.values {
            out.append(value)
        }

        return out
    }
}
