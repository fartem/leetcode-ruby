# frozen_string_literal: true

# https://leetcode.com/problems/where-will-the-ball-fall/
# @param {Integer[][]} grid
# @return {Integer[]}
def find_ball(grid)
  c = grid[0].size
  result = ::Array.new(c, 0)

  (0...c).each { |i| result[i] = dfs_for_find_ball(grid, 0, i) }

  result
end

private

# @param {Integer[][]} grid
# @param {Integer} i
# @param {Integer} j
# @return {Integer}
def dfs_for_find_ball(grid, i, j)
  curr = grid[i][j]

  return -1 if (j.zero? && curr == -1) || (j == grid[i].size - 1 && curr == 1)

  return -1 if curr == 1 && curr != grid[i][j + 1]

  return -1 if curr != 1 && curr != grid[i][j - 1]

  return curr == 1 ? j + 1 : j - 1 if i == grid.size - 1

  return curr == 1 ? j + 1 : j - 1 if i == grid.size - 1

  i += 1
  j += curr == 1 ? 1 : -1

  dfs_for_find_ball(grid, i, j)
end
