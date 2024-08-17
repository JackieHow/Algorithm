# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  dp = []
  (0...num_rows).each do |row|
    temp = Array.new(row + 1, 1)
    (1...row).each do |j|
      temp[j] = dp[row -1][j - 1] + dp[row -1][j]
    end
    dp << temp
  end
  dp
end

numRows = 5
p generate numRows
