def path(obstacleGrid)
  return 0 if obstacleGrid[0][0] == 1
  m , n = obstacleGrid.size , obstacleGrid[0].size
  dp = Array.new(m){[0]* n }

  dp[0][0] = 1
  (1...m).each {|i| dp[i][0] = obstacleGrid[i][0] == 1 ? 0 : dp[i-1][0]}
  (1...n).each {|j| dp[0][j] = obstacleGrid[0][j] == 1 ? 0 : dp[0][j-1]}

  (1...m).each do |i|
    (1...n).each do |j|
      if obstacleGrid[i][j] == 1
        next
      else
        dp[i][j] =  dp[i][j-1] + dp[i-1][j]
      end
    end
  end
  dp[m-1][n-1]
end
obstacleGrid = [[0,0,0],[0,1,0],[0,0,0]]
puts path obstacleGrid
