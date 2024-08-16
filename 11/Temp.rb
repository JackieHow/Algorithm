# frozen_string_literal: true

# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  left, right = 0, height.size - 1
  n = height.size
  ans = 0
  while left < right
    area = (right - left) * [height[right], height[left]].min
    ans = [ans, area].max
    if height[left] <= height[right]
      left += 1
    else
      right -= 1
    end

  end
  ans
end

height = [1, 8, 6, 2, 5, 4, 8, 3, 7]
p max_area(height)