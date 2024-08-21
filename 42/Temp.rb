# 考虑max_area 这一题
# 不需要所有遍历一边
# 只需要考虑双指针 当满足某个条件 双指针其中一个移动
# 计算水的时候 考虑  当双指针移动了 ，并且 一方无穷大， 那么另一方就可以计算出水滴
# 对于少的一方 需要判断 之前的墙壁如何 如果之前的max 没有当前墙高 则重置mac 下一步
# 当之前的墙比当前的高  说明可以存水 开始计算水滴

def trap(height)

  left = 0
  right = height.size - 1
  sum = 0
  left_max = 0
  right_max = 0
  while left < right

    if height[left] > height[right]
      if right_max < height[right]
        right_max = height[right]
      else
        sum = sum + right_max - height[right]
      end

      right -= 1
    else
      if left_max < height[left]
        left_max = height[left]
      else
        sum = sum + left_max - height[left]
      end

      left += 1
    end

  end
  sum
end

height = [4, 2, 0, 3, 2, 5]

p trap(height)