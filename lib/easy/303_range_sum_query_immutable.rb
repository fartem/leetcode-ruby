# frozen_string_literal: true

# https://leetcode.com/problems/range-sum-query-immutable/
class NumArray
  # @param {Integer[]} nums
  def initialize(nums)
    @nums = [nums.first]
    (1...nums.length).each do |i|
      @nums << @nums[i - 1] + nums[i]
    end
  end

  # @param {Integer} left
  # @param {Integer} right
  # @return {Integer}
  def sum_range(left, right)
    return @nums[right] if left.zero?

    @nums[right] - @nums[left - 1]
  end
end
