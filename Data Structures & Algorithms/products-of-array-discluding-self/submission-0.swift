class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefix: [Int] = []
        var suffix: [Int] = Array(repeating: 1, count: nums.count)
        var preProd: Int = 1
    
        for idx in 0..<nums.count {
            if idx == 0 {
                prefix.append(1)
                continue
            }
            preProd *= nums[idx - 1]
             prefix.append(preProd)
        } 
        preProd = 1
              for idx in stride(from: nums.count - 1, through: 0, by: -1){
            if idx == nums.count - 1 {
                suffix.append(1)
                continue
            }
            preProd *= nums[idx + 1]
             suffix[idx] = preProd
        } 
    
    var out = Array(repeating: 0, count: nums.count)
    
    for idx in 0..<nums.count {

        out[idx] = prefix[idx] * suffix[idx]
    }
    return out

    }
}

/*
[1,2,4,6] 48
[48, 24, 12, 8]
[1,1,2,8]
[48,24,6,1]
*/