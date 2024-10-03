# @param {Integer[][]} triangle
# @return {Integer}
def minimum_total(triangle)
  n = triangle.size
  dp = triangle.last.dup

  (n - 2).downto(0).each do |i|
    (0..i).each do |j|
      dp[j] = triangle[i][j] + [dp[j] , dp[j+1]].min
    end
  end
  dp[0]
end

triangle = [
    [2],
    [3, 4],
    [6, 5, 7],
    [4, 1, 8, 3]
]
puts minimum_total(triangle) # 输出 11