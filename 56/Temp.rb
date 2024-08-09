# frozen_string_literal: true
# 合并区间
# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  intervals.sort_by! { |x| x }
  result = []
  current_index = 1
  while current_index < intervals.length do
    pre_index = current_index - 1
    current = intervals[current_index]
    pre_item = intervals[pre_index]
    if pre_item[1] >= current[0]
      intervals[current_index] = [pre_item[0], [current[1], pre_item[1]].max]
      intervals.delete_at(pre_index)
    else
      current_index += 1
    end

  end
  intervals
end

intervals = [[1, 3], [2, 6], [8, 10], [15, 18]]
p merge(intervals)