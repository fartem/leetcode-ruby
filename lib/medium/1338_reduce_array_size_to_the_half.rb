# frozen_string_literal: true

# https://leetcode.com/problems/reduce-array-size-to-the-half/
# @param {Integer[]} arr
# @return {Integer}
def min_set_size(arr)
  return 1 if arr.size < 3

  frequency_map = ::Hash.new(0)
  arr.each { |num| frequency_map[num] += 1 }

  max_heap = frequency_map.values.sort.reverse

  r = 0
  result = 0

  while r < arr.size / 2 && !max_heap.empty?
    r += max_heap.shift
    result += 1
  end

  result
end
