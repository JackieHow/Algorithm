# @param {Integer[]} nums
# @return {Integer}
# 给你一个整数数组 nums ，你可以对它进行一些操作。
#
# 每次操作中，选择任意一个 nums[i] ，删除它并获得 nums[i] 的点数。之后，你必须删除 所有 等于 nums[i] - 1 和 nums[i] + 1 的元素。
#
# 开始你拥有 0 个点数。返回你能通过这些操作获得的最大点数。
#
#
#
# 示例 1：
#
# 输入：nums = [3,4,2]
# 输出：6
# 解释：
# 删除 4 获得 4 个点数，因此 3 也被删除。
# 之后，删除 2 获得 2 个点数。总共获得 6 个点数。
# 示例 2：
#
# 输入：nums = [2,2,3,3,3,4]
# 输出：9
# 解释：
# 删除 3 获得 3 个点数，接着要删除两个 2 和 4 。
# 之后，再次删除 3 获得 3 个点数，再次删除 3 获得 3 个点数。
# 总共获得 9 个点数。
def delete_and_earn(nums)
  return 0 if nums.empty?

  points = Hash.new(0)
  nums.each { |num| points[num] += num }

  max_num = points.keys.max

  return points[max_num] if max_num == 1

  dp = Array.new(max_num+1, 0)
  dp[1] = points[1]
  dp[2] = [points[1],points[2]].max

  (3..max_num).each do |i|
    dp[i] = [dp[i-1],dp[i-2]+points[i]].max
  end

  dp[max_num]
end

nums = [3,4,2]
puts delete_and_earn nums