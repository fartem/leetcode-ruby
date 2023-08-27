# frozen_string_literal: true

# https://leetcode.com/problems/island-perimeter/
# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  return 0 if grid.length.zero? || grid[0].length.zero?

  result = 0
  (0...grid.length).each do |i|
    (0...grid[i].length).each do |j|
      next unless grid[i][j] == 1

      result += 4
      result -= 2 if i.positive? && grid[i - 1][j] == 1
      result -= 2 if j.positive? && grid[i][j - 1] == 1
    end
  end

  result
end
