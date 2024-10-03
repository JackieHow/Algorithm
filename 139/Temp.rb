# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, word_dict)
 n = s.length
  dp = Array.new(n + 1, false)
  dp[0] = true # 空字符串可以被拆分

  # 将字典转为集合以便快速查找
  word_set = Set.new(word_dict)

  (1..n).each do |i|
    (0...i).each do |j|
      # 如果 dp[j] 为真且 s[j..i-1] 在字典中，则 dp[i] 为真
      if dp[j] && word_set.include?(s[j...i])
        dp[i] = true
        break # 找到可拆分的方式后可以提前退出内层循环
      end
    end
  end

  dp[n] # 返回是否可以拆分完整个字符串
end
s = "leetcode"
wordDict = ["leet", "code"]
puts word_break(s , wordDict)