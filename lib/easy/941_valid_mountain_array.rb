# frozen_string_literal: true

# https://leetcode.com/problems/valid-mountain-array/
# @param {Integer[]} arr
# @return {Boolean}
def valid_mountain_array(arr)
  i = 0
  i += 1 while i + 1 < arr.length && arr[i] < arr[i + 1]

  return false if i.zero? || i == arr.length - 1

  i += 1 while i + 1 < arr.length && arr[i] > arr[i + 1]

  i == arr.length - 1
end
