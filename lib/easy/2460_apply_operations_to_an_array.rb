# frozen_string_literal: true

# https://leetcode.com/problems/apply-operations-to-an-array/
# @param {Integer[]} nums
# @return {Integer[]}
def apply_operations(nums)
  n = nums.length
  result = ::Array.new(n, 0)

  return result if n.zero?

  p = 0
  (0...(n - 1)).each do |i|
    curr = nums[i]

    if curr == nums[i + 1] && curr.positive?
      nums[i] *= 2
      result[p] = nums[i]
      nums[i + 1] = 0

      p += 1
    elsif curr.positive?
      result[p] = curr

      p += 1
    end
  end

  result[p] = nums.last if nums.last.positive?

  result
end
