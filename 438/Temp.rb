# frozen_string_literal: true
# @param {String} s
# @param {String} p
# @return {Integer[]}
#
# 哈希表判断包含 不会考虑顺序 只考虑value的值
def find_anagrams(s, p)
  p_count = Hash.new(0)
  s_count = Hash.new(0)

  p.chars.each { |c| p_count[c] += 1 }
  ans = []
  window_size = p.size

  s.chars[0...window_size].each { |char| s_count[char] += 1 }

  ans << 0 if s_count == p_count

  (window_size...s.size).each do |i|
    start_char = s[i - window_size]
    end_char = s[i]

    s_count[start_char] -= 1
    s_count[end_char] += 1

    s_count.delete(start_char) if s_count[start_char].zero?
    ans << (i - window_size +1) if s_count == p_count
  end
  ans

end

s = "cbaebabacd"
p = "abc"
p find_anagrams(s, p)