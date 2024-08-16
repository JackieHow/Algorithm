# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  sorted = nums.sort
  ans = 0
  temp = 0
  temp_arry = []
  sorted.each do |num|
    if temp_arry.size <= 0
      temp_arry << num
      temp += 1
      ans = [ans, temp].max
      next
    end
    count = num - temp_arry.last
    if count <= 0
      next
    elsif count == 1
      temp_arry << num
      temp += 1
    else
      temp_arry = [num]
      temp = 1
    end
    ans = [ans, temp].max
  end
  ans

end

nums = [9,1,4,7,3,-1,0,5,8,-1,6]
p longest_consecutive nums