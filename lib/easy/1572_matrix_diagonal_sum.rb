# frozen_string_literal: true

# https://leetcode.com/problems/matrix-diagonal-sum/
# @param {Integer[][]} mat
# @return {Integer}
def diagonal_sum(mat)
  start = 0
  nd = mat.first.length - 1
  result = 0
  (0...(mat.length / 2)).each do |i|
    result += mat[i][start]
    result += mat[i][nd]
    result += mat[mat.length - i - 1][start]
    result += mat[mat.length - i - 1][nd]

    start += 1
    nd -= 1
  end

  result += mat[mat.length / 2][start] if start == nd

  result
end
