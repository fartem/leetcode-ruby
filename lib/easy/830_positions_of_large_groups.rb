# frozen_string_literal: true

# https://leetcode.com/problems/positions-of-large-groups/
# @param {String} s
# @return {Integer[][]}
def large_group_positions(s)
  result = []
  prev = s[0]
  count = 1
  n = s.length
  (1...n).each do |i|
    c = s[i]
    if c == prev
      count += 1
    else
      result << [i - count, i - 1] if count >= 3
      count = 1
      prev = c
    end
  end

  result << [n - count, n - 1] if count >= 3

  result
end
