# 给你一个字符串 s，找到 s 中最长的
# 回文 子串 。
#
#
#
# 示例 1：
#
# 输入：s = "babad"
# 输出："bab"
# 解释："aba" 同样是符合题意的答案。
# 示例 2：
#
# 输入：s = "cbbd"
# 输出："bb"
#
#
# 提示：
#
# 1 <= s.length <= 1000
# s 仅由数字和英文字母组成
#
# @param {String} s
# @return {String}
def longest_palindrome(s)
  n = s.size
  max_size = 0
  start = 0

  (0...n).each do |i|
    len1 = around_center(s, i, i)
    len2 = around_center(s, i, i + 1)
    len = [len1,len2].max
    if max_size < len

      max_size = len
      start = i - (len - 1)/2
    end

  end
  s[start , max_size]
end

def around_center(s, left, right)
  while left >= 0 && right < s.size && s[left] == s[right]
    left -= 1
    right += 1
  end
  right - left - 1

end

s = "babad"
puts longest_palindrome(s)

s = "cbbd"
puts longest_palindrome(s)
