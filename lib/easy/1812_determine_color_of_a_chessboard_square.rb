# frozen_string_literal: true

# https://leetcode.com/problems/determine-color-of-a-chessboard-square/
# @param {String} coordinates
# @return {Boolean}
def square_is_white(coordinates)
  letter = coordinates[0].ord - 96
  number = coordinates[1].ord

  (letter.even? && number.odd?) || (letter.odd? && number.even?)
end
