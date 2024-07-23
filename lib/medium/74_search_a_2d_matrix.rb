# frozen_string_literal: true

# https://leetcode.com/problems/search-a-2d-matrix/
# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  i = 0
  j = matrix.first.length - 1

  while i < matrix.length && j >= 0
    curr = matrix[i][j]

    return true if curr == target

    i += 1 if curr < target
    j -= 1 if curr > target
  end

  false
end
