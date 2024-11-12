# frozen_string_literal: true

# https://leetcode.com/problems/pacific-atlantic-water-flow/
# @param {Integer[][]} heights
# @return {Integer[][]}
def pacific_atlantic(heights)
  r = heights.size
  c = heights.first.size

  atlantic = ::Array.new(r) { ::Array.new(c) }
  pacific = ::Array.new(r) { ::Array.new(c) }

  (0...r).each do |i|
    (0...c).each do |j|
      dfs417(pacific, heights, i, j, 0) if i.zero? || j.zero?

      dfs417(atlantic, heights, i, j, 0) if i == r - 1 || j == c - 1
    end
  end

  result = []
  (0...r).each do |i|
    (0...c).each do |j|
      result << [i, j] if atlantic[i][j] && pacific[i][j]
    end
  end

  result
end

private

# @param {Boolean[][]} sea
# @param {Integer[][]} grid
# @param {Integer} r
# @param {Integer} c
# @param {Integer} prev
def dfs417(sea, grid, r, c, prev)
  return if r.negative? || r >= grid.size || c.negative? || c >= grid.first.size

  return if grid[r][c] < prev

  return if sea[r][c]

  sea[r][c] = true

  dfs417(sea, grid, r + 1, c, grid[r][c])
  dfs417(sea, grid, r - 1, c, grid[r][c])
  dfs417(sea, grid, r, c + 1, grid[r][c])
  dfs417(sea, grid, r, c - 1, grid[r][c])
end
