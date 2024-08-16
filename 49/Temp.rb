# frozen_string_literal: true

# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  strs.group_by{|s| s.chars.sort.join}.values
end

strs = %w[eat tea tan ate nat bat]
p  group_anagrams(strs)
