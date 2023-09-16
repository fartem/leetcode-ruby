# frozen_string_literal: true

# https://leetcode.com/problems/find-the-distance-value-between-two-arrays/
# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @param {Integer} d
# @return {Integer}
def find_the_distance_value(arr1, arr2, d)
  count = 0
  arr1.each do |num1|
    arr2.each do |num2|
      next unless (num1 - num2).abs <= d

      count += 1

      break
    end
  end

  arr1.length - count
end
