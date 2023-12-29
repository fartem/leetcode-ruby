# frozen_string_literal: true

# https://leetcode.com/problems/determine-whether-matrix-can-be-obtained-by-rotation/
# @param {Integer[][]} mat
# @param {Integer[][]} target
# @return {Boolean}
def find_rotation(mat, target)
  length = mat.length
  f_c = true
  s_c = true
  t_c = true
  l_c = true
  (0...length).each do |i|
    (0...length).each do |j|
      curr = mat[i][j]

      f_c = false if curr != target[i][j]
      s_c = false if curr != target[j][length - i - 1]
      t_c = false if curr != target[length - i - 1][length - j - 1]
      l_c = false if curr != target[length - j - 1][i]
    end
  end

  f_c || s_c || t_c || l_c
end
