# frozen_string_literal: true

# https://leetcode.com/problems/element-appearing-more-than-25-in-sorted-array/
# @param {Integer[]} arr
# @return {Integer}
def find_special_integer(arr)
  size = arr.length
  portion = size / 4
  (0...(size - portion)).each do |i|
    num = arr[i]

    return num if num == arr[i + portion]
  end
end
