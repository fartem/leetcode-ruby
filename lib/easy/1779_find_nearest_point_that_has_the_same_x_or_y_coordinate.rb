# frozen_string_literal: true

# https://leetcode.com/problems/find-nearest-point-that-has-the-same-x-or-y-coordinate/
# @param {Integer} x
# @param {Integer} y
# @param {Integer[][]} points
# @return {Integer}
def nearest_valid_point(x, y, points)
  result = -1
  distance = 1_000_000_000_000_000
  (0...points.length).each do |i|
    point = points[i]
    p_x = point.first
    p_y = point.last

    next unless p_x == x || p_y == y

    candidate = (x - p_x).abs + (y - p_y).abs
    if candidate < distance
      distance = candidate
      result = i
    end
  end

  result
end
