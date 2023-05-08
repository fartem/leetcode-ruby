# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  sorted = nums.sort
  sorted[sorted.length / 2]
end
