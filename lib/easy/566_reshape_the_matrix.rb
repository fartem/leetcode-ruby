# frozen_string_literal: true

# https://leetcode.com/problems/reshape-the-matrix/
# @param {Integer[][]} mat
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(mat, r, c)
  return mat if mat.length * mat.first.length != r * c

  k = 0
  l = 0
  result = []
  (0...r).each do |i|
    result << []
    (0...c).each do |j|
      if l == mat.first.length
        l = 0
        k += 1
      end

      result[i].insert(j, mat[k][l])
      l += 1
    end
  end

  result
end
