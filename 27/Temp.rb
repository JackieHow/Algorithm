def remove_element(nums, val)
 i = 0
 nums.each_index  do |j|
    if   nums[j] != val
            nums[i] = nums[j]
            i += 1
        end
    end
 i
end