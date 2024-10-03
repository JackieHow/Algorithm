# frozen_string_literal: true
#在一个由 '0' 和 '1' 组成的二维矩阵内，找到只包含 '1' 的最大正方形，并返回其面积。
#
#
#
# 示例 1：
#
#
# 输入：matrix = [["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]
# 输出：4
# 示例 2：
#
#
# 输入：matrix = [["0","1"],["1","0"]]
# 输出：1
# 示例 3：
#
# 输入：matrix = [["0"]]
# 输出：0
#
#
# 提示：
#
# m == matrix.length
# n == matrix[i].length
# 1 <= m, n <= 300
# matrix[i][j] 为 '0' 或 '1'



# @param {Character[][]} matrix
# @return {Integer}
def maximal_square(matrix)
  return 0 if matrix.empty?

  m , n = matrix.size , matrix[0].size
  max_size = 0
  dp = Array.new(m+1){[0] * (n+1)}

  (1..m).each do |i|
    (1..n).each do |j|
      if matrix[i-1][j-1] == '1'
        dp[i][j] = [ dp[i-1][j] ,dp[i][j-1],dp[i-1][j-1]   ].min + 1
        max_size = [dp[i][j] , max_size].max
      end
    end
  end
  max_size * max_size
end

matrix = [["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]
puts maximal_square matrix



