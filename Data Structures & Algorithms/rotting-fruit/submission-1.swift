class Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var grid = grid
        var fresh = 0
        var time = 0
        var q: [[Int]] = []
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] == 1 {
                    fresh += 1
                } 
                 if grid[i][j] == 2 {
                    q.append([i, j])
                }
            }
        }

        let directions = [[0, 1], [0, -1], [1, 0], [-1, 0]]

        while fresh > 0 && !q.isEmpty {
            let length = q.count

            for _ in 0..<length {
                let f = q.removeFirst()
                for dir in directions {
                let ni = f[0] + dir[0]
                let nj = f[1] + dir[1]
                if ni >= 0 && ni < grid.count && nj >= 0 && nj < grid[0].count && grid[ni][nj] == 1 {
                    grid[ni][nj] = 2
                    q.append([ni, nj])
                    fresh -= 1
                }
                
                }

            }
            time += 1
        }
        return fresh == 0 ? time : -1
    }   
}
