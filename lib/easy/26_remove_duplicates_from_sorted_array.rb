# frozen_string_literal: true

# https://leetcode.com/problems/remove-duplicates-from-sorted-array/
# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return 0 if nums.empty?

  result = 0
  (1..nums.length).each do |i|
    nums[result += 1] = nums[i] unless nums[i] == nums[result]
  end

  result
end
