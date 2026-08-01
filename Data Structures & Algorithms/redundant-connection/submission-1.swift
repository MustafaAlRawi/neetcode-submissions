class Solution {
    func findRedundantConnection(_ edges: [[Int]]) -> [Int] {
        let n = edges.count 
        var adj = Array(repeating: [Int](), count: n + 1)
        func dfs(_ node: Int, _ p: Int, _ visited: inout [Bool]) -> Bool {
             if visited[node] {
                return true
             }
             visited[node] = true
             for nei in adj[node] {
                if nei == p {
                    continue
                }
                if dfs(nei, node, &visited) {
                    return true
                }
             }
             return false
        }
    for e in edges {
        let u = e[0]
        let v = e[1]
        adj[v].append(u)
        adj[u].append(v)
        var visited = Array(repeating: false, count: n + 1)
        if dfs(u, -1, &visited) {
            return [u, v]
        }
    }
return []

    }
}
