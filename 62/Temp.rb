# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  dp = Array.new(m){[0]*n}

  (0...m).each {|i|dp[i][0] = 1}
  (0...n).each {|j|dp[0][j] = 1}

  (1...m).each do |i|
    (1...n).each do |j|
      dp[i][j] = dp[i-1][j] + dp[i][j-1]
    end
  end
  dp[m-1][n-1]
end

puts unique_paths(3,7)

