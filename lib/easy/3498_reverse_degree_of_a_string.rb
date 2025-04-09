# frozen_string_literal: true

# https://leetcode.com/problems/reverse-degree-of-a-string/
# @param {String} s
# @return {Integer}
def reverse_degree(s)
  result = 0

  (0...s.size).each do |i|
    c = s[i]
    val = (c.ord - 123).abs * (i + 1)

    result += val
  end

  result
end
