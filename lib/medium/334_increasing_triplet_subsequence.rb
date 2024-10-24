# frozen_string_literal: true

# https://leetcode.com/problems/increasing-triplet-subsequence/
# @param {Integer[]} nums
# @return {Boolean}
def increasing_triplet(nums)
  a = ::Float::INFINITY
  b = ::Float::INFINITY

  nums.each do |num|
    if num < a
      a = num
    elsif num < b && num > a
      b = num
    elsif num > a && num > b
      return true
    end
  end

  false
end
