# frozen_string_literal: true

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  min_price = Float::INFINITY
  max_profit = 0
  (0...prices.size).each do |i|
    if prices[i]<min_price
      min_price = prices[i]
    elsif prices[i] - min_price > max_profit
      max_profit = prices[i] - min_price
    end
  end
  max_profit
end

prices = [1, 2]
p max_profit prices
