# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def num_squares(n)
  dp = Array.new(n + 1, Float::INFINITY)
  dp[0] = 0
  (1..n).each do |i|
    j = 1
    while j * j <= i
      dp[i] = [dp[i], dp[i - j * j] + 1].min
      j += 1
    end

  end
  dp[-1]
end

n = 13
p num_squares(n)