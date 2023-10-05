# frozen_string_literal: true

# https://leetcode.com/problems/can-make-arithmetic-progression-from-sequence/
# @param {Integer[]} arr
# @return {Boolean}
def can_make_arithmetic_progression(arr)
  arr.sort!
  if arr.length > 2
    diff = arr[0] - arr[1]
    (2...arr.length).each do |i|
      return false unless diff == arr[i - 1] - arr[i]
    end
  end

  true
end
