# frozen_string_literal: true

# https://leetcode.com/problems/gas-station/
# @param {Integer[]} gas
# @param {Integer[]} cost
# @return {Integer}
def can_complete_circuit(gas, cost)
  tmp_sum = 0
  index = 0
  sum = gas.first - cost.first
  (1...gas.size).each do |i|
    if sum.negative?
      index = i
      tmp_sum += sum
      sum = 0
    end

    sum += gas[i] - cost[i]
  end

  sum += tmp_sum

  sum >= 0 ? index : -1
end
