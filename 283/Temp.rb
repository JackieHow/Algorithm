# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  left, right = 0,0
  n = nums.size
  while right < n
    if nums[right] != 0
      nums[right] ,nums[left] = nums[left], nums[right]
      left += 1
    end
    right += 1
  end
  nums

end

nums = [0, 1, 0, 3, 12]
p move_zeroes(nums)
