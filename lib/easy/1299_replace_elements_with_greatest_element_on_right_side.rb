# frozen_string_literal: true

# https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side/
# @param {Integer[]} arr
# @return {Integer[]}
def replace_elements(arr)
  n = arr.length
  index = 0
  max = 0
  (0...(n - 1)).each do |i|
    if i >= index
      max = 0
      ((i + 1)...n).each do |j|
        num = arr[j]

        next unless num > max

        max = num
        index = j
      end
    end

    arr[i] = max
  end

  arr[n - 1] = -1

  arr
end
