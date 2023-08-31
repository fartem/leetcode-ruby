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
  clock_wise = 0
  (min...max).each do |i|
    clock_wise += distance[i]
  end

  [clock_wise, sum - clock_wise].min
end
