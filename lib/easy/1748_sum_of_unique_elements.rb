# frozen_string_literal: true

# https://leetcode.com/problems/sum-of-unique-elements/
# @param {Integer[]} nums
# @return {Integer}
def sum_of_unique(nums)
  numbers = {}
  result = 0
  nums.each do |num|
    if numbers.include?(num)
      count = numbers[num]
      result -= num if count == 1
      numbers[num] += 1
    else
      result += num
      numbers[num] = 1
    end
  end

  result
end
