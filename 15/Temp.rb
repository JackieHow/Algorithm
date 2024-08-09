# frozen_string_literal: true

# 三数之和
# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums.sort!
  result = []
  (0...nums.size).each do |i|
    right = nums.size - 1
    left = i + 1

    if nums[0] > 0
      []
    end

    if i > 0 && nums[i] == nums[i - 1]
      next
    end
    while right > left
    sum = nums[i] + nums[left] + nums[right]
      if sum > 0
        right -= 1
      elsif sum < 0
        left += 1
      else
        result << [nums[i], nums[left], nums[right]]

        while right > left && nums[right] == nums[right - 1]
          right -= 1
        end
        while right > left && nums[left] == nums[left + 1]
          left += 1
        end
        right -= 1
        left += 1

      end
    end

  end
  result

end

nums = [-1, 0, 1, 2, -1, -4]
p three_sum(nums)