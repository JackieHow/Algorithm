# @param {String} s1
# @param {String} s2
# @return {Integer}
def minimum_delete_sum(s1, s2)
  m, n = s1.size, s2.size
  dp = Array.new(m + 1) { [0] * (n + 1) }

  (1..m).each { |i| dp[i][0] = dp[i - 1][0] + s1[i - 1].ord }
  (1..n).each { |j| dp[0][j] = dp[0][j - 1] + s2[j - 1].ord }

  (1..m).each do |i|
    (1..n).each do |j|
      if s1[i - 1] == s2[j - 1]
        dp[i][j] = dp[i - 1][j - 1]
      else
        dp[i][j] = [(dp[i - 1][j] + s1[i - 1].ord), (dp[i][j - 1] + s2[j - 1].ord)].min
      end

    end
  end
  dp[m][n]
end

s1 = "sea"
s2 = "eat"
puts minimum_delete_sum(s1, s2)