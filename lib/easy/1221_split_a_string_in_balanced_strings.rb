# frozen_string_literal: true

# https://leetcode.com/problems/split-a-string-in-balanced-strings/
# @param {String} s
# @return {Integer}
def balanced_string_split(s)
  result = 0
  last = s[0]
  r = last == 'R' ? 1 : 0
  l = last == 'L' ? 1 : 0
  (1...s.length).each do |i|
    c = s[i]
    if last == c
      r += last == 'R' ? 1 : 0
      l += last == 'L' ? 1 : 0
    else
      last = c
      r -= last == 'L' ? 1 : 0
      l -= last == 'R' ? 1 : 0
    end

    result += 1 if l == r
  end

  result
end
