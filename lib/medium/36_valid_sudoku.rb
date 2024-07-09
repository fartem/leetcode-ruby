# frozen_string_literal: true

# https://leetcode.com/problems/valid-sudoku/
# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  [
    has_valid_rows?(board),
    has_valid_columns?(board),
    has_valid_grids?(board)
  ].all?
end

private

# @param {Character[][]} board
# @return {Boolean}
def has_valid_rows?(board)
  board.all? { |row| is_valid_array?(row) }
end

# @param {Character[]} arr
# @return {Boolean}
def is_valid_array?(arr)
  ref = [0] * 10

  arr.each do |sq|
    next if sq == '.'

    num = sq.to_i

    return false if num.zero? || num > 9 || ref[num] == 1

    ref[num] = 1
  end
end

# @param {Character[][]} board
# @return {Boolean}
def has_valid_columns?(board)
  (0...9).each do |n|
    column = board.map { |row| row[n] }

    return false unless is_valid_array?(column)
  end

  true
end

# @param {Character[][]} board
# @return {Boolean}
def has_valid_grids?(board)
  [0, 3, 6].each do |i|
    [0, 3, 6].each do |j|
      grid = [
        board[i][j],
        board[i][j + 1],
        board[i][j + 2],
        board[i + 1][j],
        board[i + 1][j + 1],
        board[i + 1][j + 2],
        board[i + 2][j],
        board[i + 2][j + 1],
        board[i + 2][j + 2]
      ]

      return false unless is_valid_array?(grid)
    end
  end

  true
end
