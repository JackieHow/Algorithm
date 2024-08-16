# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  left = 0
  char_map = {}
  ans = 0
  s.chars.each_with_index do |c, right|

    if char_map.key?(c) && char_map[c] > left
      left = char_map[c] + 1
    end

    char_map[c] = right

    ans = [ans, right - left +1].max

  end
  ans

end

st = "pwwkew"
p length_of_longest_substring(st)