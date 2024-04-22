# frozen_string_literal: true

# https://leetcode.com/problems/check-if-matrix-is-x-matrix/
# @param {Integer[][]} grid
# @return {Boolean}
def check_x_matrix(grid)
  n = grid.length
  (0...n).each do |i|
    return false if grid[i][i].zero? || grid[i][n - i - 1].zero?
  end

  (0...n).each do |i|
    (0...n).each do |j|
      next unless i != j && j != n - i - 1

      return false if grid[i][j].positive?
    end
  end

  true
end
