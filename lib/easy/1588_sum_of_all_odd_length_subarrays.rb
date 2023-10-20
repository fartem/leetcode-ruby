# frozen_string_literal: true

# https://leetcode.com/problems/sum-of-all-odd-length-subarrays/
# @param {Integer[]} arr
# @return {Integer}
def sum_odd_length_subarrays(arr)
  result = 0
  num = 1
  size = arr.length
  while num <= size
    (0...size).each do |i|
      index = i + num

      next unless index < size + 1

      (i...index).each do |j|
        result += arr[j]
      end
    end

    num += 2
  end

  result
end
