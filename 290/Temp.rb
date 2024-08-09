# frozen_string_literal: true
# 单词规律
# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
  char_array = pattern.chars
  word = s.split(' ')
  # key_value = { 'a' => 'dog', 'b' => 'cat' }
  key_value = {}
  if char_array.size != word.size
    return false
  end
  (0...char_array.size).each do |i|
    if key_value[pattern[i]].nil? && !key_value.values.include?(word[i])
      key_value[pattern[i]] = word[i]
    else
      return false if key_value[pattern[i]] != word[i]
    end

  end
  true
end

pattern = 'abba'
s = "dog cat cat dog"
p word_pattern(pattern, s)