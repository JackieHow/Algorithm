# @param {String} s
# @return {Integer}
def longest_palindrome_subseq(s)
  n = s.size
  dp = Array.new(n){[0] * n }

  (0...n).each {|i| dp[i][i] = 1}

  (2..n).each do |len|
    (0...(n-len+1)).each do |i|
      j = i + len - 1
      if s[i] == s[j]
        dp[i][j] = dp[i+1][j-1] + 2
      else
        dp[i][j] = [dp[i+1][j] , dp[i][j-1] ].max
      end

    end
  end
  dp[0][n-1]
end

s = "bbbab"

puts longest_palindrome_subseq(s)
p 1