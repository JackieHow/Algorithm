# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  ans = []
  nums = nums.sort

  if nums.size == 0
    return []
  end

  for i in 0...nums.length do
    if i > 0 && nums[i] == nums[i - 1]
      next
    end

    left, right = i + 1, nums.size - 1

    while left < right do
      sum = nums[i] + nums[left] + nums[right]
      if sum > 0
        right -= 1
      elsif sum < 0
        left += 1
      else
        ans << [nums[i], nums[left], nums[right]]
        while left < right && nums[right] == nums[right - 1]
          right -= 1
        end
        while left < right && nums[left] == nums[left + 1]
          left += 1
        end
        right -= 1
        left += 1
      end

    end

  end
  ans
end

nums = [-1, 0, 1, 2, -1, -4]
p three_sum(nums)
