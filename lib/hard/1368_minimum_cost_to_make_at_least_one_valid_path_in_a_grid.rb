# frozen_string_literal: false

# https://leetcode.com/problems/minimum-cost-to-make-at-least-one-valid-path-in-a-grid/
# @param {Integer[][]} grid
# @return {Integer}
def min_cost(grid)
  m = grid.length
  n = grid[0].length
  dist = ::Array.new(m) { ::Array.new(n, ::Float::INFINITY) }
  dist[0][0] = 0

  dirs = [
    [0, 1],
    [0, -1],
    [1, 0],
    [-1, 0]
  ]
  pq = [[0, 0, 0]]

  until pq.empty?
    cost, row, col = pq.shift

    next if cost > dist[row][col]

    4.times do |i|
      new_row = row + dirs[i][0]
      new_col = col + dirs[i][1]

      next if new_row.negative? || new_row >= m || new_col.negative? || new_col >= n

      new_cost = cost
      new_cost += 1 if grid[row][col] != i + 1

      next unless new_cost < dist[new_row][new_col]

      dist[new_row][new_col] = new_cost
      idx = pq.bsearch_index { |x| x[0] > new_cost } || pq.length
      pq.insert(idx, [new_cost, new_row, new_col])
    end
  end

  dist[m - 1][n - 1]
end
