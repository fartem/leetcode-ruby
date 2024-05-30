# frozen_string_literal: true

# https://leetcode.com/problems/number-of-unequal-triplets-in-array/
# @param {Integer[]} nums
# @return {Integer}
def unequal_triplets(nums)
  result = 0
  n = nums.length
  (0...n).each do |i|
    ((i + 1)...n).each do |j|
      ((j + 1)...n).each do |k|
        result += 1 if nums[i] != nums[j] && nums[j] != nums[k] && nums[i] != nums[k]
      end
    end
  end

  result
end
