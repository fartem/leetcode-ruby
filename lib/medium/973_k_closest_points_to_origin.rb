# frozen_string_literal: true

# https://leetcode.com/problems/k-closest-points-to-origin/
# @param {Integer[][]} points
# @param {Integer} k
# @return {Integer[][]}
def k_closest(points, k)
  points.sort_by { |point| point[0] * point[0] + point[1] * point[1] }[0...k]
end
