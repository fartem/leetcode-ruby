# frozen_string_literal: true

# https://leetcode.com/problems/minimum-sum-of-four-digit-number-after-splitting-digits/
# @param {Integer} num
# @return {Integer}
def minimum_sum(num)
  nums = num.to_s.chars.min(4)

  (nums[0] + nums[2]).to_i + (nums[1] + nums[3]).to_i
end
