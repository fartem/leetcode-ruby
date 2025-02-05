# frozen_string_literal: true

# https://leetcode.com/problems/xor-queries-of-a-subarray/
# @param {Integer[]} arr
# @param {Integer[][]} queries
# @return {Integer[]}
def xor_queries(arr, queries)
  (1...arr.size).each { |i| arr[i] ^= arr[i - 1] }

  result = ::Array.new(queries.size)

  queries.each_with_index do |query, i|
    result[i] =
      if query[0].zero?
        arr[query[1]]
      else
        arr[query[0] - 1] ^ arr[query[1]]
      end
  end

  result
end
