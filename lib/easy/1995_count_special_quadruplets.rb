# frozen_string_literal: true

# https://leetcode.com/problems/count-special-quadruplets/
# @param {Integer[]} nums
# @return {Integer}
def count_quadruplets(nums)
  values = ::Array.new(101, 0)
  result = 0
  (0...nums.length).each do |i|
    ((i + 1)...nums.length).each do |j|
      ((j + 1)...nums.length).each do |k|
        index = nums[k] - nums[j] - nums[i]

        result += values[index] if index >= 0
      end
    end

    values[nums[i]] += 1
  end

  result
end
