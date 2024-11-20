# frozen_string_literal: true

# https://leetcode.com/problems/find-all-duplicates-in-an-array/
# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
  nums.sort!
  result = []
  i = 0
  while i < nums.size
    if nums[i] == nums[i + 1]
      result << nums[i]
      i += 1
    end

    i += 1
  end

  result
end
