# frozen_string_literal: true

# https://leetcode.com/problems/binary-trees-with-factors/
# @param {Integer[]} arr
# @return {Integer}
def num_factored_binary_trees(arr)
  mod = 1_000_000_007
  arr.sort!
  dp = ::Array.new(arr.size, 1)
  index = {}
  arr.each_with_index { |val, i| index[val] = i }
  (0...arr.size).each do |i|
    (0...i).each do |j|
      next unless (arr[i] % arr[j]).zero?

      r = arr[i] / arr[j]

      dp[i] = (dp[i] + dp[j] * dp[index[r]]) % mod if index.key?(r)
    end
  end

  result = 0
  dp.each { |val| result = (result + val) % mod }

  result
end
