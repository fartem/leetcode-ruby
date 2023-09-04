# frozen_string_literal: true

# https://leetcode.com/problems/find-winner-on-a-tic-tac-toe-game/
# @param {Integer[][]} moves
# @return {String}
def tictactoe(moves)
  board = ::Array.new(3)
  board.map! { |_x| _x = ::Array.new(3) }
  is_x = true
  moves.each do |move|
    board[move[0]][move[1]] = is_x ? 'A' : 'B'
    is_x = !is_x
  end

  (0...3).each do |i|
    value = board[i][0]

    return value if is_valid_position(value, board[i][1], board[i][2])

    value = board[0][i]

    return value if is_valid_position(value, board[1][i], board[2][i])
  end

  value = board[0][0]

  return value if is_valid_position(value, board[1][1], board[2][2])

  value = board[0][2]

  return value if is_valid_position(value, board[1][1], board[2][0])

  moves.length == 9 ? 'Draw' : 'Pending'
end

# @param {String} a
# @param {String} b
# @param {String} c
# @return {Boolean}
def is_valid_position(a, b, c)
  !a.nil? && a == b && a == c
end
