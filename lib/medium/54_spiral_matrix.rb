# frozen_string_literal: true

# https://leetcode.com/problems/spiral-matrix/
# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
  top = 0
  bottom = matrix.length - 1
  left = 0
  right = matrix[0].length - 1
  result = []

  while top <= bottom && left <= right
    (left..right).each { |i| result << matrix[top][i] }
    top += 1

    (top..bottom).each { |i| result << matrix[i][right] }
    right -= 1

    if top <= bottom
      (left..right).reverse_each { |i| result << matrix[bottom][i] }
      bottom -= 1
    end

    if left <= right
      (top..bottom).reverse_each { |i| result << matrix[i][left] }
      left += 1
    end
  end

  result
end
