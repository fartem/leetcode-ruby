# frozen_string_literal: true

# https://leetcode.com/problems/robot-return-to-origin/
# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
  hor = 0
  vert = 0
  moves.each_char do |move|
    case move
    when 'U'
      vert += 1
    when 'D'
      vert -= 1
    when 'L'
      hor += 1
    else
      hor -= 1
    end
  end

  hor.zero? && vert.zero?
end
