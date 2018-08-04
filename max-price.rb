# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  profits = Array.new(prices.length, 0)
  max = 0
  for i in 1...prices.length do
    profit = prices[i] - prices[i-1]
    if profits[i-1] + profit > 0
     profits[i] = profits[i-1] + profit
     max = profits[i] if profits[i] > max
    end
  end
  puts profits.join(" ")
  max
end

tests = [
  [1,2,4,5,3],
  [1,2,3,4,5],
  [5,4,3,2,1],
  [7,5,5,4,2,6]
]

tests.each { |t| puts max_profit(t) }
# puts max_price(tests[0]