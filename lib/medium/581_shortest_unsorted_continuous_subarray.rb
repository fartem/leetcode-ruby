# frozen_string_literal: true

# https://leetcode.com/problems/shortest-unsorted-continuous-subarray/
# @param {Integer[]} nums
# @return {Integer}
def find_unsorted_subarray(nums)
  sorted = nums.sort
  start = nums.size
  nd = 0
  (0...nums.size).each do |i|
    next if nums[i] == sorted[i]

    start = [start, i].min
    nd = [nd, i].max
  end

  nd - start >= 0 ? nd - start + 1 : 0
end
