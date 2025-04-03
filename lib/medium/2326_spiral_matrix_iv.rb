# frozen_string_literal: true

# https://leetcode.com/problems/spiral-matrix-iv/
# @param {Integer} m
# @param {Integer} n
# @param {ListNode} head
# @return {Integer[][]}
def spiral_matrix(m, n, head)
  matrix = ::Array.new(m) { ::Array.new(n, -1) }

  return matrix unless head

  directions = [
    [0, 1],
    [1, 0],
    [0, -1],
    [-1, 0]
  ]
  current_dir = 0
  row = 0
  col = 0
  current = head

  while current
    matrix[row][col] = current.val
    current = current.next

    next_row = row + directions[current_dir][0]
    next_col = col + directions[current_dir][1]

    if next_row.negative? || next_row >= m || next_col.negative? || next_col >= n || matrix[next_row][next_col] != -1
      current_dir = (current_dir + 1) % 4
      next_row = row + directions[current_dir][0]
      next_col = col + directions[current_dir][1]
    end

    row = next_row
    col = next_col
  end

  matrix
end
