# frozen_string_literal: true

# https://leetcode.com/problems/duplicate-zeros/
# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
  possible = 0
  length = arr.length - 1
  left = 0
  while left <= length - possible
    if arr[left].zero?
      if left == length - possible
        arr[length] = 0
        length -= 1

        break
      end

      possible += 1
    end

    left += 1
  end

  last = length - possible
  (0..last).reverse_each do |i|
    if arr[i].zero?
      arr[i + possible] = 0
      possible -= 1
      arr[i + possible] = 0
    else
      arr[i + possible] = arr[i]
    end
  end
end
