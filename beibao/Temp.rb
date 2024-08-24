# frozen_string_literal: true
def beibao(arr)

  dp = []
  (0...arr[0][0]).each do |i|

    dp[i] = []

    (0...arr[0][1]).each do |j|
      if j == 0
        dp[i][j] = [0]
      else
        dp[i][j] << 0
      end

    end
  end

  space = arr[0][1]
  size = arr[0][0]
  #
  # (0...size - 1).each do |i|
  #   if arr[1][i] <= arr[0][1]
  #     dp[0][i] = arr[2][i]
  #   end
  # end
  #


  (0...size - 1).each do |i|
    (1...size - 1).each do |j|
      last_weight = arr[1][i]

      dp[i][j] = [dp[i - 1][j], dp[i][j - last_weight] + arr[2][i]].max

    end

  end

  p dp
end

a = [[6, 1], [2, 2, 3, 1, 5, 2], [2, 3, 1, 5, 4, 3]]

p beibao a

# 6 1
# 2 2 3 1 5 2
# 2 3 1 5 4 3
