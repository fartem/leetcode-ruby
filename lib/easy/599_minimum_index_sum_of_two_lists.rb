# frozen_string_literal: true

# https://leetcode.com/problems/minimum-index-sum-of-two-lists/
# @param {String[]} list1
# @param {String[]} list2
# @return {String[]}
def find_restaurant(list1, list2)
  list1_map = {}
  list1.each_with_index { |val, index| list1_map[val] = index }
  min = 1_000_000
  result = []
  list2.each_with_index do |val, index|
    next unless list1_map.include?(val)

    sum = index + list1_map[val]
    next unless sum <= min

    result.clear if sum != min
    min = sum
    result << val
  end

  result
end
