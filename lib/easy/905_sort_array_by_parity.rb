# frozen_string_literal: true

# https://leetcode.com/problems/sort-array-by-parity/
# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity(nums)
  evens = []
  odds = []
  nums.each do |num|
    if num.even?
      evens << num
    else
      odds << num
    end
  end

  evens_length = evens.length
  (0...nums.length).each do |i|
    nums[i] =
      if i < evens_length
        evens[i]
      else
        odds[i - evens_length]
      end
  end

  nums
end
