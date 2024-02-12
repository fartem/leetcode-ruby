# frozen_string_literal: true

# https://leetcode.com/problems/kth-distinct-string-in-an-array/
# @param {String[]} arr
# @param {Integer} k
# @return {String}
def kth_distinct(arr, k)
  values = arr.each_with_object(::Hash.new(0)) { |elem, acc| acc[elem] += 1 }
  values.each do |key, value|
    next unless value == 1

    return key if k == 1

    k -= 1
  end

  ''
end
