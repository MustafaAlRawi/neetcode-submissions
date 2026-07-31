class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit: Int = 0
        var buyPrice: Int = prices[0]
        for i in 1..<prices.count {
            let profit = prices[i] - buyPrice
            buyPrice = min(buyPrice, prices[i])
            maxProfit = max(maxProfit, profit)
        }
        return maxProfit
    }
}
