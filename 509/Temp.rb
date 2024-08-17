# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def fib(n)
  dp = []
  dp[0] = 0
  dp[1] = 1
  (2..n).each do |i|
    dp[i] = dp[i - 1] + dp[i - 2]
  end
  dp[n]

end

n = 6
p fib(n)