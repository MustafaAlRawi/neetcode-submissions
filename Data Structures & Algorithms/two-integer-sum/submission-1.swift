class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dicto: [Int: Int] = [:]
        for (index, num) in nums.enumerated() {
            let com = target - num
            if dicto[com] != nil {
                return [ dicto[com]!, index]
            }
            dicto[num] = index
        }

        return []
    }
}
