class Solution {
    func encode(_ strs: [String]) -> String {
       var encoded = ""
       for str in strs {
        encoded += "\(str.count)&\(str)" 
       }
       return encoded
    }

    func decode(_ s: String) -> [String] {
      var out: [String] = []
      let sA = Array(s)
      var i = 0
      
      while i < s.count {
        var j = i
        while sA[j] != "&" {
            j += 1
        }
        let length = Int(String(sA[i..<j]))!
        i = j + 1
        let end = i + length
        let str = String(sA[i..<end])
        out.append(str)
        i = end
        
      }
      return out
    }
}