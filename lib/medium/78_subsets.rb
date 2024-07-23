# frozen_string_literal: true

# https://leetcode.com/problems/subsets/
# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  result = [[]]
  nums.each do |num|
    subsets = []
    result.each { |subset| subsets << subset + [num] }
    result += subsets
  end

  result
end
