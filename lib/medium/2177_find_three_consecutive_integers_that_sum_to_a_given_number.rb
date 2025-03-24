# frozen_string_literal: true

# https://leetcode.com/problems/find-three-consecutive-integers-that-sum-to-a-given-number/
# @param {Integer} num
# @return {Integer[]}
def sum_of_three(num)
  middle = num / 3
  start = middle - 1
  nd = middle + 1

  return [] unless (start + middle + nd) == num

  [start, middle, nd]
end
