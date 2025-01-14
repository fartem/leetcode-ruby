# frozen_string_literal: false

# https://leetcode.com/problems/maximum-score-from-performing-multiplication-operations/
# @param {Integer[]} nums
# @param {Integer[]} multipliers
# @return {Integer}
def maximum_score(nums, multipliers)
  m = multipliers.length
  dp = ::Array.new(m + 1) { ::Array.new(m + 1, 0) }
  n = nums.length

  (m - 1).downto(0) do |op|
    (op).downto(0) do |l|
      dp[op][l] = [
        multipliers[op] * nums[l] + dp[op + 1][l + 1],
        multipliers[op] * nums[n - 1 - (op - l)] + dp[op + 1][l]
      ].max
    end
  end

  dp[0][0]
end
