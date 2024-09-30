# frozen_string_literal: true

# i是由 i-1个单词拼接来的
# i 的操作数 是 i-1 的操作数 + 当前操作数
#
# word 同步进行操作  1位1位进行比较 当前包含则替换 不包含直接删除
#
# ====================================
#  i - 1 是当前时态
#  i 是未来时候
# 1. 插入操作
# 	•	方程：dp[i][j] = dp[i][j-1] + 1
# 	•	解释：
# 	•	假设我们已经知道将word1的前i个字符转换成word2的前j-1个字符的最小编辑距离是dp[i][j-1]。
# 	•	现在，为了让word1[1..i]匹配到word2[1..j]，我们可以在word1[1..i]的基础上插入一个字符，这个字符就是word2[j]，这样就能匹配word2[1..j]的最后一个字符。
# 	•	由于这是一个额外的插入操作，所以在dp[i][j-1]的基础上加1。
#
# 2. 删除操作
#
# 	•	方程：dp[i][j] = dp[i-1][j] + 1
# 	•	解释：
# 	•	假设已知将word1的前i-1个字符转换成word2的前j个字符的最小编辑距离是dp[i-1][j]。
# 	•	要将word1[1..i]转换成word2[1..j]，可以考虑从word1中删除一个字符，即删除word1[i]，这样word1[1..i-1]就变成了word1[1..i-1]。
# 	•	这是一个额外的删除操作，所以在dp[i-1][j]的基础上加1。
#
# 3. 替换操作
#
# 	•	方程：dp[i][j] = dp[i-1][j-1] + 1
# 	•	解释：
# 	•	假设已知将word1的前i-1个字符转换成word2的前j-1个字符的最小编辑距离是dp[i-1][j-1]。
# 	•	如果word1[i]与word2[j]不相同，可以通过将word1[i]替换为word2[j]来匹配，使得word1[1..i]转换为word2[1..j]。
# 	•	这是一个额外的替换操作，所以在dp[i-1][j-1]的基础上加1。





# @param {String} word1
# @param {String} word2
# @return {Integer}
# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
  m , n = word1.size , word2.size
  dp =Array.new(m+1){[0] * (n+1)}


  (0..n).each do |i|
    dp[0][i] = i
  end
  (0..m).each do |i|
    dp[i][0] = i
  end
    (1..m).each do |i|
        (1..n).each do |j|
            if word1[i - 1] == word2[j - 1]
                dp[i][j] = dp[i - 1][j - 1]
            else
                dp[i][j] = [dp[i][j-1] ,dp[i - 1][j]  , dp[i - 1][j - 1] ].min + 1
            end


        end
    end

dp[m][n]
end



word1 = "horse"
word2 = "ros"
p min_distance(word1, word2)

