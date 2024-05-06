# frozen_string_literal: true

# https://leetcode.com/problems/largest-local-values-in-a-matrix/
# @param {Integer[][]} grid
# @return {Integer[][]}
def largest_local(grid)
  n = grid.length - 2
  result = ::Array.new(n) { ::Array.new(n, 0) }
  (0...n).each do |i|
    (0...n).each do |j|
      result[i][j] = highest(grid, i, j)
    end
  end

  result
end

# @param {Integer[][]} grid
# @param {Integer} r
# @param {Integer} c
# @return {Integer}
def highest(grid, r, c)
  max = 0
  (r...(r + 3)).each do |i|
    (c...(c + 3)).each do |j|
      max = [max, grid[i][j]].max
    end
  end

  max
end
