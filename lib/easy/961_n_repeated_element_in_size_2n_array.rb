# frozen_string_literal: true

# https://leetcode.com/problems/n-repeated-element-in-size-2n-array/
# @param {Integer[]} nums
# @return {Integer}
def repeated_n_times(nums)
  uniq = ::Set.new
  nums.each do |num|
    return num if uniq.include?(num)

    uniq << num
  end

  0
end
