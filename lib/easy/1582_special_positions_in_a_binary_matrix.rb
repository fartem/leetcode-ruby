# frozen_string_literal: true

# https://leetcode.com/problems/special-positions-in-a-binary-matrix/
# @param {Integer[][]} mat
# @return {Integer}
def num_special(mat)
  sum_row = ::Array.new(mat.length, 0)
  sum_column = ::Array.new(mat.first.length, 0)
  (0...mat.length).each do |i|
    (0...mat.first.length).each do |j|
      sum = mat[i][j]
      sum_row[i] += sum
      sum_column[j] += sum
    end
  end

  result = 0
  (0...mat.length).each do |i|
    (0...mat.first.length).each do |j|
      result += 1 if mat[i][j] == 1 && sum_row[i] == 1 && sum_column[j] == 1
    end
  end

  result
end
