# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} target
# @param {Integer} start
# @return {Integer}
def get_min_distance(nums, target, start)
  result = 1_000_000_000_000
  (0...nums.length).each do |i|
    num = nums[i]

    next unless num == target

    abs = (i - start).abs
    result = abs if abs < result
  end

  result
end
