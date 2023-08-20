# frozen_string_literal: true

# https://leetcode.com/problems/next-greater-element-i/
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def next_greater_element(nums1, nums2)
  nums_with_indices = {}
  (0...nums2.length).step(1) do |i|
    nums_with_indices[nums2[i]] = i
  end

  result = []
  (0...nums1.length).step(1) do |i|
    num = nums1[i]
    (nums_with_indices[num]...nums2.length).step(1) do |j|
      candidate = nums2[j]
      if num < candidate
        result[i] = candidate
        break
      end
    end

    result[i] = -1 if result[i].nil?
  end

  result
end
