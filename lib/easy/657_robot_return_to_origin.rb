# frozen_string_literal: true

# https://leetcode.com/problems/robot-return-to-origin/
# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
  hor = 0
  vert = 0
  (0..moves.length).each do |i|
    case moves[i]
    when 'U'
      vert += 1
    when 'D'
      vert -= 1
    when 'L'
      hor += 1
    when 'R'
      hor -= 1
    end
  end

  hor.zero? && vert.zero?
end
