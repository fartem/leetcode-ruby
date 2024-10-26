# frozen_string_literal: true

# https://leetcode.com/problems/minimum-absolute-difference/
# @param {Integer[]} arr
# @return {Integer[][]}
def minimum_abs_difference(arr)
  arr.sort!
  diff = ::Float::INFINITY
  (0...(arr.length - 1)).each do |i|
    abs = (arr[i] - arr[i + 1]).abs
    diff = abs if diff > abs
  end

  result = []
  (0...(arr.length - 1)).each do |i|
    f = arr[i]
    s = arr[i + 1]
    result << [f, s].minmax if (f - s).abs == diff
  end

  result
end
