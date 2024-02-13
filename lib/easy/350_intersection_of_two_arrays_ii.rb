# frozen_string_literal: true

# https://leetcode.com/problems/intersection-of-two-arrays-ii/
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  nums1_c = nums1.each_with_object(::Hash.new(0)) { |elem, acc| acc[elem] += 1 }

  result = []
  nums2.each do |num|
    next if nums1_c[num].zero?

    result << num
    nums1_c[num] -= 1
  end

  result
end
