# frozen_string_literal: true

# https://leetcode.com/problems/toeplitz-matrix/
# @param {Integer[][]} matrix
# @return {Boolean}
def is_toeplitz_matrix(matrix)
  (1...matrix.length).step(1) do |i|
    (1...matrix.first.length).step(1) do |j|
      return false if matrix[i - 1][j - 1] != matrix[i][j]
    end
  end

  true
end
