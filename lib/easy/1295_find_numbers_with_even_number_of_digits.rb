# frozen_string_literal: true

# https://leetcode.com/problems/find-numbers-with-even-number-of-digits/
# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
  nums.sum { |num| ((::Math.log10(num).to_i + 1) % 2).zero? ? 1 : 0 }
end
