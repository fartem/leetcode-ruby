# frozen_string_literal: true

# https://leetcode.com/problems/next-greater-element-i/
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def next_greater_element(nums1, nums2)
  nums_with_indices = nums2.map.with_index.to_h

  result = []
  nums1.each do |num|
    add_last = true
    (nums_with_indices[num]...nums2.length).each do |j|
      candidate = nums2[j]

      next unless num < candidate

      result << candidate
      add_last = false

      break
    end

    result << -1 if add_last
  end

  result
end
