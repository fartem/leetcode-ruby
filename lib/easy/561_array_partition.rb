# frozen_string_literal: true

# https://leetcode.com/problems/array-partition/
# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
  nums.sort!
  result = 0
  (0...nums.length).step(2) do |i|
    result += [nums[i], nums[i + 1]].min
  end

  result
end
