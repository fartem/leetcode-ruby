# frozen_string_literal: true

# https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/
# @param {Integer[][]} grid
# @return {Integer}
def count_negatives(grid)
  result = 0
  f = 0
  s = 0
  while f != grid.length
    result += 1 if grid[f][s].negative?

    if s == grid[0].length - 1
      f += 1
      s = 0
    else
      s += 1
    end
  end

  result
end
