# frozen_string_literal: true
#
# 核心思想 dp[][] 为 左右 相同的结果
# 如果有相同的结果则结果 + 1
# 如果没有相同的结果则当前结果直接为0 重新统计
def find_length(nums1, nums2)
    m , n = nums1.size , nums2.size
    dp = Array.new(m+1){[0] * (n+1)}
    ans = 0
    (0..m).each {|i| dp[i][0] = 0}
    (0..n).each {|j| dp[0][j] = 0}

    (1..m).each do |i|
        (1..n).each do |j|
            if nums1[i - 1] == nums2[j - 1]
                dp[i][j] = dp[i - 1][j - 1] + 1
                ans = [ans , dp[i][j]].max
            else
                dp[i][j] = 0
            end

        end
    end
ans
end

nums1 =
[1,2,3,2,1]
nums2 =
[3,2,1,4,7]

p find_length(nums1, nums2)