# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  result = -1
  (0..nums.length).step(1) do |i|
    nums[result += 1] = nums[i] if nums[i] != val
  end
  result
end
