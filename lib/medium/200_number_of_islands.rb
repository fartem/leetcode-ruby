# frozen_string_literal: true

# https://leetcode.com/problems/number-of-islands/
# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
  result = 0
  (0...grid.size).each do |i|
    (0...grid.first.size).each do |j|
      next unless grid[i][j] == '1'

      result += 1

      dfs200(grid, i, j)
    end
  end

  result
end

private

# @param {Character[][]} grid
# @param {Integer} i
# @param {Integer} j
# @return {Void}
def dfs200(grid, i, j)
  return if i.negative? || j.negative? || i >= grid.size || j >= grid.first.size || grid[i][j] == '0'

  grid[i][j] = '0'

  dfs200(grid, i + 1, j)
  dfs200(grid, i - 1, j)
  dfs200(grid, i, j + 1)
  dfs200(grid, i, j - 1)
end
