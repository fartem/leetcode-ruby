# frozen_string_literal: true

# https://leetcode.com/problems/minimum-number-of-refueling-stops/
# @param {Integer} target
# @param {Integer} start_fuel
# @param {Integer[][]} stations
# @return {Integer}
def min_refuel_stops(target, start_fuel, stations)
  dp = ::Array.new(stations.size + 1, 0)
  dp[0] = start_fuel

  (0...stations.size).each do |i|
    (0..i).reverse_each do |j|
      dp[j + 1] = [dp[j + 1], dp[j] + stations[i][1]].max if dp[j] >= stations[i][0]
    end
  end

  (0..stations.size).each { |i| return i if dp[i] >= target }

  -1
end
