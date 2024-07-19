# frozen_string_literal: true

# https://leetcode.com/problems/spiral-matrix-ii/
# @param {Integer} n
# @return {Integer[][]}
def generate_matrix(n)
  i = 0
  j = 0
  up = 0
  right = 1
  left = 2
  down = 4

  up_side = 0
  right_side = n
  left_side = -1
  down_side = n
  direction = right
  value = 0
  result = ::Array.new(n) { ::Array.new(n) { nil } }

  while value < n * n
    if direction == up
      while i > up_side
        value += 1
        result[i][j] = value
        i -= 1
      end

      i += 1
      j += 1
      up_side += 1
      direction = right
    elsif direction == right
      while j < right_side
        value += 1
        result[i][j] = value
        j += 1
      end

      i += 1
      j -= 1
      right_side -= 1
      direction = down
    elsif direction == left
      while j > left_side
        value += 1
        result[i][j] = value
        j -= 1
      end

      i -= 1
      j += 1
      left_side += 1
      direction = up
    else
      while i < down_side
        value += 1
        result[i][j] = value
        i += 1
      end

      i -= 1
      j -= 1
      down_side -= 1
      direction = left
    end
  end

  result
end
