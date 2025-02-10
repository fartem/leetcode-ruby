# frozen_string_literal: true

# https://leetcode.com/problems/number-of-sub-arrays-of-size-k-and-average-greater-than-or-equal-to-threshold/
# @param {Integer[]} arr
# @param {Integer} k
# @param {Integer} threshold
# @return {Integer}
def num_of_subarrays(arr, k, threshold)
  result = 0
  left = 0
  sum = 0
  border = k - 1

  (0...arr.size).each do |i|
    sum += arr[i]

    next unless i >= border

    unless i == border
      sum -= arr[left]
      left += 1
    end

    result += 1 if (sum / k) >= threshold
  end

  result
end
