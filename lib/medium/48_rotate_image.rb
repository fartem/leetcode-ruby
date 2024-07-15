# frozen_string_literal: true

# https://leetcode.com/problems/rotate-image/
# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
  n = matrix.length
  up = (n + 1) / 2

  (0...up).each do |i|
    h = n / 2

    (0...h).each do |j|
      f_index = n - j - 1
      temp = matrix[f_index][i]
      s_index = n - i - 1

      matrix[f_index][i] = matrix[s_index][f_index]
      matrix[s_index][f_index] = matrix[j][s_index]
      matrix[j][s_index] = matrix[i][j]
      matrix[i][j] = temp
    end
  end
end
