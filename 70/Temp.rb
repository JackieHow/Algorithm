# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    return n if n < 3

    ret = [0, 1, 2]
    3.upto(n) do |idx|
        ret[idx] = ret[idx-1] + ret[idx-2]
    end

    return ret[n]
end

n = 5
p climb_stairs n