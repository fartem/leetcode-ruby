# frozen_string_literal: true

# https://leetcode.com/problems/max-number-of-k-sum-pairs/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_operations(nums, k)
  count = {}
  result = 0

  nums.each do |num|
    s = k - num
    s_count = count.fetch(s, 0)

    if s_count.positive?
      result += 1
      count[s] = s_count - 1
    else
      count[num] = count.fetch(num, 0) + 1
    end
  end

  result
end
