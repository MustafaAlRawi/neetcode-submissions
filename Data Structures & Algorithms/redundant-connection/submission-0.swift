class Solution {
    func findRedundantConnection(_ edges: [[Int]]) -> [Int] {
        let n = edges.count 
        var adj = Array(repeating: [Int](), count: n + 1)
        func dfs(_ node: Int, _ p: Int, _ visit: inout [Bool]) -> Bool {
            if visit[node] {
                return true
            }
            visit[node] = true
            for nei in adj[node] {
                if nei == p {
                    continue
                }
                if dfs(nei, node, &visit) {
                    return true
                }
            }
            return false
        }
        for edge in edges {
            let u = edge[0]
            let v = edge[1]
            adj[u].append(v)
            adj[v].append(u)
            var visit = Array(repeating: false, count: n + 1) 
            if dfs(u, -1, &visit) {
                return [u, v]
            }
        }
        return []
    }
}
