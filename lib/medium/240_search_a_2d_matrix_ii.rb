# frozen_string_literal: true

# https://leetcode.com/problems/search-a-2d-matrix-ii/
# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix240(matrix, target)
  matrix.each do |matr|
    l = 0
    r = matrix.first.length - 1

    while l <= r
      m = (l + r) / 2
      curr = matr[m]

      return true if curr == target

      if curr > target
        r = m - 1
      else
        l = m + 1
      end
    end
  end

  false
end
