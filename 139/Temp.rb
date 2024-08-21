# frozen_string_literal: true

# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, word_dict)
  dp = Array.new(s.size + 1, false)
  dp[0] = true

  (1..s.size).each do |i|
    (0...i).each do |j|
      if dp[j] && word_dict.include?(s[j...i])
        dp[i] = true
        break
      end
    end
  end

  dp[s.size]
end

s = "leetcode"
wordDict = ["leet", "code"]

p word_break(s, wordDict)