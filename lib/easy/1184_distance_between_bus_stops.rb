# frozen_string_literal: true

# https://leetcode.com/problems/distance-between-bus-stops/
# @param {Integer[]} distance
# @param {Integer} start
# @param {Integer} destination
# @return {Integer}
def distance_between_bus_stops(distance, start, destination)
  sum = distance.sum
  min = [start, destination].min
  max = [start, destination].max
  clock_wise = (min...max).sum { |i| distance[i] }

  [clock_wise, sum - clock_wise].min
end
