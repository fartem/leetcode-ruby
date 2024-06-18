# frozen_string_literal: true

# https://leetcode.com/problems/minimum-common-value/
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def get_common(nums1, nums2)
  last_min = 0
  nums1.each do |num|
    (last_min...nums2.length).each do |i|
      curr = nums2[i]

      return num if curr == num

      next unless curr > num

      last_min = i

      break
    end
  end

  -1
end
