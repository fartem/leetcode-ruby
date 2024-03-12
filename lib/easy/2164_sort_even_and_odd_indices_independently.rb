# frozen_string_literal: true

# https://leetcode.com/problems/sort-even-and-odd-indices-independently/
# @param {Integer[]} nums
# @return {Integer[]}
def sort_even_odd(nums)
  evens = []
  odds = []
  (0...nums.length).each do |i|
    if (i % 2).even?
      evens << nums[i]
    else
      odds << nums[i]
    end
  end

  evens.sort!
  odds.sort!.reverse!

  evens.zip(odds).flatten.compact
end
