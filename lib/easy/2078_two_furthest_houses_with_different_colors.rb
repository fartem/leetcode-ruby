# frozen_string_literal: true

# https://leetcode.com/problems/two-furthest-houses-with-different-colors/
# @param {Integer[]} colors
# @return {Integer}
def max_distance(colors)
  result = 0
  (0...colors.length).each do |i|
    (i...colors.length).each do |j|
      next if colors[i] == colors[j]

      diff = j - i
      result = diff if diff > result
    end
  end

  result
end
