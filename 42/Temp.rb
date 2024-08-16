# @param {Integer[]} height
# @return {Integer}
def trap(height)
  left, right = 0, height.size - 1
  sum = 0
  left_max = 0
  right_max = 0
  while left < right
    if height[left] <= height[right]
      if height[left] > left_max
        left_max = height[left]
      else
        sum = sum + left_max - height[left]
      end
      left += 1
    else
      if height[right] > right_max
        right_max = height[right]
      else
        sum = sum + right_max - height[right]
      end
      right -= 1
    end
  end
  sum
end

height = [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]
p trap height