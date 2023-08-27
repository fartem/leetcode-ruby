# frozen_string_literal: true

# https://leetcode.com/problems/transpose-matrix/
# @param {Integer[][]} matrix
# @return {Integer[][]}
def transpose(matrix)
  r = matrix.length
  c = matrix.first.length
  result = ::Array.new(c) { ::Array.new(r, 0) }
  (0...r).each do |i|
    (0...c).each do |j|
      result[j][i] = matrix[i][j]
    end
  end

  result
end
