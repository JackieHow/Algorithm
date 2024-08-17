# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return nums[0] if nums.size == 1
  dp = Array.new(nums.size)
  dp[0] = nums[0]
  dp[1] = [nums[0], nums[1]].max
  (2...nums.size).each do |i|
    dp[i] = [dp[i-1], dp[i-2] + nums[i]].max
  end
  dp[-1]
end

nums = [2,1,1,2]
p rob(nums)