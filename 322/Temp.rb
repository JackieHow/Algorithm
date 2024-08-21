# frozen_string_literal: true

# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)

  if amount == 0
    return 0
  end

  dp = Array.new(amount + 1, Float::INFINITY)
  dp[0] = 0
  (1..amount).each do |i|
    coins.each do |coin|
      next if i - coin < 0
      dp[i] = [dp[i], dp[i - coin] + 1].min

    end

  end
  dp[-1] = -1 if dp[-1] == Float::INFINITY
  dp[-1]
end

coins = [1]
amount = 2
p coin_change(coins, amount)
