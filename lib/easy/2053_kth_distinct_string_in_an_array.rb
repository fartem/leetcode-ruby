# frozen_string_literal: true

# https://leetcode.com/problems/kth-distinct-string-in-an-array/
# @param {String[]} arr
# @param {Integer} k
# @return {String}
def kth_distinct(arr, k)
  arr.tally.each do |key, value|
    next unless value == 1

    return key if k == 1

    k -= 1
  end

  ''
end
