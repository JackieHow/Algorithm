# 无重复字符串的最长子串

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  char_arr = s.chars
  str_set = Set.new
  rk = -1
  size = char_arr.size
  ans = 0
  for i in 0...char_arr.length do
    if i != 0
      str_set.delete(char_arr[i -1])
    end

    while rk + 1 < size && !str_set.include?(char_arr[rk + 1])
      str_set.add(char_arr[rk + 1])
      rk += 1
    end
    ans = [ans, rk - i + 1].max

  end
  ans

end

str = 'pwwkew'
puts length_of_longest_substring(str)



