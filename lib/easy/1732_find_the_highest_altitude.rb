# frozen_string_literal: true

# https://leetcode.com/problems/find-the-highest-altitude/
# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
  high = gain.first
  curr = gain.first
  (1...gain.length).each do |i|
    curr += gain[i]

    high = curr if curr > high
  end

  [0, high].max
end
