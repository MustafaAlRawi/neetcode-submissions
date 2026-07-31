class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var seto: Set<Int> = []
        for num in nums { 
            if seto.contains(num) {return true}
            seto.insert(num)
        }
        return false
    }
}
