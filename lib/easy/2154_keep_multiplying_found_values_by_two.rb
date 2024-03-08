# frozen_string_literal: true

require 'set'

# https://leetcode.com/problems/keep-multiplying-found-values-by-two/
# @param {Integer[]} nums
# @param {Integer} original
# @return {Integer}
def find_final_value(nums, original)
  uniq = nums.to_set
  original *= 2 while uniq.include?(original)

  original
end
