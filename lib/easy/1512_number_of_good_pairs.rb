# frozen_string_literal: true

# https://leetcode.com/problems/number-of-good-pairs/
# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
  nums
    .each_with_object(::Hash.new(0)) { |elem, acc| acc[elem] += 1 }
    .values
    .reduce(0) { |acc, elem| acc + elem * (elem - 1) / 2 }
end
