# frozen_string_literal: true

# https://leetcode.com/problems/sort-array-by-parity-ii/
# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity_ii(nums)
  evens = ::Array.new(nums.length / 2)
  odds = ::Array.new(nums.length / 2)
  e_p = 0
  o_p = 0
  nums.each do |num|
    if num.even?
      evens[e_p] = num
      e_p += 1
    else
      odds[o_p] = num
      o_p += 1
    end
  end

  (0...nums.length).step(1) do |i|
    if i.even?
      e_p -= 1
      nums[i] = evens[e_p]
    else
      o_p -= 1
      nums[i] = odds[o_p]
    end
  end

  nums
end
