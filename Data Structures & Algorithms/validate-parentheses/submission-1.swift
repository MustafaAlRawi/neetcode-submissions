class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        var sA = Array(s)

        for c in sA {
            if c == "{" || c == "[" || c == "(" {
                stack.append(c)
            } else if (c == "}" || c == "]" || c == ")" ) && stack.isEmpty {
                return false
            } else  {
                let last = stack.popLast()
                print(stack)
                if last == "[" && c != "]" || last == "{" && c != "}" || last == "(" && c != ")" {
                    return false
                } 
                
            }
        }
        return stack.isEmpty
    }
}
