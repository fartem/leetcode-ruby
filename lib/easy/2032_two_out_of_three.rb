# frozen_string_literal: true

# https://leetcode.com/problems/two-out-of-three/
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer[]} nums3
# @return {Integer[]}
def two_out_of_three(nums1, nums2, nums3)
  f = ::Array.new(101, 0)
  nums1.each { |num| f[num] += 1 }

  s = ::Array.new(101, 0)
  nums2.each { |num| s[num] += 1 }

  t = ::Array.new(101, 0)
  nums3.each { |num| t[num] += 1 }

  result = []
  (1..100).each do |i|
    next unless (f[i].positive? && s[i].positive?) ||
                (s[i].positive? && t[i].positive?) ||
                (f[i].positive? && t[i].positive?)

    result << i
  end

  result
end
