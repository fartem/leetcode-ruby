# frozen_string_literal: true

# https://leetcode.com/problems/minimum-size-subarray-sum/
# @param {Integer} target
# @param {Integer[]} nums
# @return {Integer}
def min_sub_array_len(target, nums)
  max = 1_000_000_000_000_000
  result = max
  l = 0
  sum = 0
  (0...nums.size).each do |i|
    sum += nums[i]
    while sum >= target
      result = [result, i - l].min
      sum -= nums[l]

      l += 1
    end
  end

  result == max ? 0 : result + 1
end
