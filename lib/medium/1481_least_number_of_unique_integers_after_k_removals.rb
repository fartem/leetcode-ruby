# frozen_string_literal: true

# https://leetcode.com/problems/least-number-of-unique-integers-after-k-removals/
# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def find_least_num_of_unique_ints(arr, k)
  nums_with_count = ::Hash.new(0).tap { |h| arr.each { |num| h[num] += 1 } }
  to_sort = nums_with_count.values.sort

  count = 0
  p = 0

  while k.positive?
    c = to_sort[p]

    count += 1 if k >= c

    k -= c
    p += 1
  end

  nums_with_count.size - count
end
