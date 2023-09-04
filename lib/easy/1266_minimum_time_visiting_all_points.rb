# frozen_string_literal: true

# https://leetcode.com/problems/minimum-time-visiting-all-points/
# @param {Integer[][]} points
# @return {Integer}
def min_time_to_visit_all_points(points)
  result = 0
  (1...points.length).each do |i|
    curr = points[i - 1]
    nxt = points[i]

    result += [(curr[0] - nxt[0]).abs, (curr[1] - nxt[1]).abs].max
  end

  result
end
