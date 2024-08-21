# 注意left <= right  是小于等于
# 因为去重的时候
#  if sum > 0
#         right -= 1
#       elsif sum < 0
#         left += 1
#       else
# 导致了 [-5, -5, -4, -4, -4, -2, -2, -2, 0, 0, 0, 1, 1, 3, 4, 4]
# 0,0,0 处在边界判断上  导致left == right



# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  result = []
  nums = nums.sort

  (0...nums.size).each do |i|
    left, right = i + 1, nums.size - 1
    if i > 0 && nums[i] == nums[i - 1]
      next
    end

    while left <= right
      sum = nums[i] + nums[left] + nums[right]

      while nums[right] == nums[right -1]
        right -= 1
      end
      while nums[left] == nums[left + 1]
        left += 1
      end

      if sum > 0
        right -= 1
      elsif sum < 0
        left += 1
      else
        result << [nums[i], nums[left], nums[right]]
        left += 1
        right -= 1
      end

    end

  end
  result
end

nums = [-4,-2,1,-5,-4,-4,4,-2,0,4,0,-2,3,1,-5,0]

p three_sum(nums)