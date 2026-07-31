class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dicto: [String: [String]] = [:]
        for str in strs {
            let sorted = String(Array(str).sorted())
            dicto[sorted, default: []].append(str)
        }
        

        return Array(dicto.values)
    }
}
