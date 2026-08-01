class Solution {
    func findRedundantConnection(_ edges: [[Int]]) -> [Int] {
        let uf = UnionFind()
      for edge in edges {
        uf.add(edge[0])
        uf.add(edge[1])
      }
        for edge in edges {
            let n1 = edge[0]
            let n2 = edge[1]
            if !uf.union(n1, n2) {
                return [n1, n2]
            }
        }
        return []
    }
}
class UnionFind {
    var p: [Int: Int] = [:]
    var size: [Int: Int] = [:]

    init(){}
@discardableResult
    func add(_ node: Int) -> Bool {
        if p[node] != nil {
            return false
        }
        p[node] = node
        size[node] = 1
        return true
    }
    func find(_ node: Int) -> Int {
        let cp = p[node]!
        if cp == node {
            return node
        }
        let root = find(cp)
        p[node] = root
        return root
    }
    func union(_ n1: Int, _ n2: Int) -> Bool {
        let p1 = find(n1)
        let p2 = find(n2)
        if p1 == p2 {return false}
        let size1 = size[p1, default: 0] 
        let size2 = size[p2, default: 0]
        if size1 > size2 {
            p[p2] = p1
            size[p1, default: 0] += size2
        } else {
            p[p1] = p2
            size[p2, default: 0] += size1
        }
        return true
    }


}