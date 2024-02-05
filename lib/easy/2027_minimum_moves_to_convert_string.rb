# frozen_string_literal: true

# https://leetcode.com/problems/minimum-moves-to-convert-string/
# @param {String} s
# @return {Integer}
def minimum_moves(s)
  result = 0
  p = 0
  while p < s.length
    if s[p] == 'X'
      result += 1
      p += 3
    else
      p += 1
    end
  end

  result
end
