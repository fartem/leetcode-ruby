# frozen_string_literal: true

# https://leetcode.com/problems/find-triangular-sum-of-an-array/
# @param {Integer[]} nums
# @return {Integer}
def triangular_sum(nums)
  count = nums.size

  until count == 1
    (0...(count - 1)).each do |i|
      nums[i] = (nums[i] + nums[i + 1]) % 10
    end

    count -= 1
  end

  nums.first
end
