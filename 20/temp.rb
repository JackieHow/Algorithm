# frozen_string_literal: true

# @param {String} s
# @return {Boolean}
def is_valid(s)
  # s_map = {}
  symbol_map = { ')' => '(', '}' => '{', ']' => '[' }

  list = []

  (0...s.size).each do |i|
    if symbol_map.key?(s[i])
      if list.pop != symbol_map[s[i]]
        return false
      end
    else
      list << s[i]
    end
  end

  list.empty?

end

s = "{[]}"
p is_valid s
