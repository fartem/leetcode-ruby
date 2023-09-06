# frozen_string_literal: true

# https://leetcode.com/problems/find-numbers-with-even-number-of-digits/
# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
  result = 0
  nums.each do |num|
    result += 1 if ((::Math.log10(num).to_i + 1) % 2).zero?
  end

  result
end
