# frozen_string_literal: true
# 两数之和

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each_with_index do |n, i|
    (i + 1...nums.size).each { |j|
      if n + nums[j] == target
        return [i, j]
      end
    }
  end
end

nums = [0, 4, 3, 0]
target = 0
p two_sum(nums, target)


