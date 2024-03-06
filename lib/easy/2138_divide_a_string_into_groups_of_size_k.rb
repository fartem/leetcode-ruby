# frozen_string_literal: true

# https://leetcode.com/problems/divide-a-string-into-groups-of-size-k/
# @param {String} s
# @param {Integer} k
# @param {Character} fill
# @return {String[]}
def divide_string(s, k, fill)
  result = []
  s.chars.each_slice(k) { |char| result << char.join }
  result[-1] += fill * (k - result[-1].length) unless result[-1].length == k

  result
end
