# frozen_string_literal: true

# https://leetcode.com/problems/3sum-closest/
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  n = nums.length

  return nums[0] + nums[1] + nums[2] if n == 3

  nums.sort!
  n = nums.length
  max = nums[n - 1] + nums[n - 2] + nums[n - 3]

  return max if target > max

  min = ::Float::INFINITY
  (0...(n - 2)).each do |i|
    l = i + 1
    r = n - 1

    while l < r
      curr = nums[i]
      max = curr + nums[r - 1] + nums[r]

      break if target - max > min.abs

      min_sum = curr + nums[l] + nums[l + 1]

      break if min_sum - target > min.abs

      sum = curr + nums[l] + nums[r]

      return sum if sum == target

      diff = sum - target
      min = diff if diff.abs < min.abs

      r -= 1 if diff.positive?
      l += 1 if diff.negative?
    end
  end

  target + min
end
