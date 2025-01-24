# frozen_string_literal: true

# https://leetcode.com/problems/binary-search-tree-to-greater-sum-tree/
# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def max_sum_after_partitioning(arr, k)
  partitioned = ::Array.new(arr.size + 1, 0)

  (1..arr.size).each do |i|
    max = 0
    val = 0

    [i, k].min.times do |j|
      max = [max, arr[i - j - 1]].max
      val = [partitioned[i - j - 1] + max * (j + 1), val].max
    end

    partitioned[i] = val
  end

  partitioned[arr.size]
end
