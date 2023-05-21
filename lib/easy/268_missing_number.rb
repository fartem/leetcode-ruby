# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  max = nums.length
  max * (max + 1) / 2 - nums.sum
end
