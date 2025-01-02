# frozen_string_literal: true

# https://leetcode.com/problems/peak-index-in-a-mountain-array/
# @param {Integer[]} arr
# @return {Integer}
def peak_index_in_mountain_array(arr)
  result = 0
  max = 0
  arr.each_with_index do |num, i|
    next unless num > max

    max = num
    result = i
  end

  result
end
