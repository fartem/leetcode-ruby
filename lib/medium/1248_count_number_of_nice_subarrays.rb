# frozen_string_literal: true

# https://leetcode.com/problems/count-number-of-nice-subarrays/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def number_of_subarrays(nums, k)
  prefix = ::Array.new(nums.size + 1, 0)
  max = 0
  count = 0

  nums.each do |num|
    prefix[count] += 1

    count += 1 if num.odd?

    max += prefix[count - k] if count >= k
  end

  max
end
