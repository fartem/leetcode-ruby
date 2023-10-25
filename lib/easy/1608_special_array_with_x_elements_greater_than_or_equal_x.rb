# frozen_string_literal: true

# https://leetcode.com/problems/special-array-with-x-elements-greater-than-or-equal-x/
# @param {Integer[]} nums
# @return {Integer}
def special_array(nums)
  (0..nums.length).reverse_each do |i|
    count = nums.count { |num| num >= i }

    return i if count == i
  end

  -1
end
