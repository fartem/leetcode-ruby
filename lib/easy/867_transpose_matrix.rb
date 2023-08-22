# frozen_string_literal: true

# https://leetcode.com/problems/transpose-matrix/
# @param {Integer[][]} matrix
# @return {Integer[][]}
def transpose(matrix)
  r = matrix.length
  c = matrix.first.length
  result = ::Array.new(c) { ::Array.new(r, 0) }
  (0...r).step(1) do |i|
    (0...c).step(1) do |j|
      result[j][i] = matrix[i][j]
    end
  end

  result
end
