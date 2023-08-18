# frozen_string_literal: true

# https://leetcode.com/problems/largest-triangle-area/
# @param {Integer[][]} points
# @return {Float}
def largest_triangle_area(points)
  result = 0.0
  n = points.length
  (0...n).step(1) do |i|
    (i...n).step(1) do |j|
      (j...n).step(1) do |k|
        result = [
          result,
          triangle(
            points[i][0],
            points[i][1],
            points[j][0],
            points[j][1],
            points[k][0],
            points[k][1]
          )
        ].max
      end
    end
  end

  result
end

# @param {Integer} x1
# @param {Integer} y1
# @param {Integer} x2
# @param {Integer} y2
# @param {Integer} x3
# @param {Integer} y3
# @return {Float}
def triangle(x1, y1, x2, y2, x3, y3)
  0.5 * (x1 * y2 + x2 * y3 + x3 * y1 - x1 * y3 - x2 * y1 - x3 * y2).abs
end
