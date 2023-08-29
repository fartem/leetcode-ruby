# frozen_string_literal: true

# https://leetcode.com/problems/di-string-match/
# @param {String} s
# @return {Integer[]}
def di_string_match(s)
  n = s.length
  result = ::Array.new(n + 1)
  l = 0
  h = n
  (0...n).each do |i|
    if s[i] == 'I'
      result[i] = l
      l += 1
    else
      result[i] = h
      h -= 1
    end
  end

  result[n] = l

  result
end
