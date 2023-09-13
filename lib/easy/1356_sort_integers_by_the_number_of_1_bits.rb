# frozen_string_literal: true

# https://leetcode.com/problems/sort-integers-by-the-number-of-1-bits/
# @param {Integer[]} arr
# @return {Integer[]}
def sort_by_bits(arr)
  arr.sort_by { |a| [a.to_s(2).count('1'), a] }
end
