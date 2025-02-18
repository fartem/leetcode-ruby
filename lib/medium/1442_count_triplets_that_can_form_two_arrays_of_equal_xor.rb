# frozen_string_literal: true

# https://leetcode.com/problems/count-triplets-that-can-form-two-arrays-of-equal-xor/
# @param {Integer[]} arr
# @return {Integer}
def count_triplets(arr)
  result = 0

  (0...arr.size).each do |i|
    xor = arr[i]

    (i + 1...arr.size).each do |j|
      xor ^= arr[j]

      result += j - i if xor.zero?
    end
  end

  result
end
