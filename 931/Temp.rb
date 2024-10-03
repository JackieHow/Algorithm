# @param {Integer[][]} matrix
# @return {Integer}
def min_falling_path_sum(matrix)
  n = matrix.size
  (1...n).each do |i|
    (0...n).each do |j|
      left = matrix[i - 1][j - 1] if j > 0
      mid = matrix[i - 1][j]
      right = matrix[i - 1][j + 1] if j < n - 1

      matrix[i][j] += [left, mid, right].compact.min
    end
  end
  matrix.last.min
end

matrix = [[2, 1, 3], [6, 5, 4], [7, 8, 9]]

puts min_falling_path_sum(matrix)

