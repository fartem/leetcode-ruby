# frozen_string_literal: true

# https://leetcode.com/problems/min-cost-climbing-stairs/
# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  n = cost.length

  return [cost[0], cost[1]].min if n == 2

  dp = ::Array.new(n + 1, 0)
  dp_n = dp.length
  (2...dp_n).each do |i|
    dp[i] = [dp[i - 1] + cost[i - 1], dp[i - 2] + cost[i - 2]].min
  end

  dp[dp_n - 1]
end
