class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var l = 0
        var r = heights.count - 1
        var maxArea = 0

        while l < r {
            let area = (r - l) * min(heights[l], heights[r])
            maxArea = max(area, maxArea)
            
            if heights[l] < heights[r] {
                l += 1
                continue
            }
            if heights[r] < heights[l] {
                r -= 1
                continue
            }
           l += 1
           r -= 1

        }

        return maxArea
    }
}
