# frozen_string_literal: true

# https://leetcode.com/problems/sort-the-matrix-diagonally/
# @param {Integer[][]} mat
# @return {Integer[][]}
def diagonal_sort(mat)
  rows = mat.size
  columns = mat[0].size

  (0...rows).each do |row|
    i = row
    j = 0
    diagonals = []

    while i < rows && j < columns
      diagonals << mat[i][j]

      i += 1
      j += 1
    end

    diagonals.sort!

    i = row
    j = 0
    k = 0

    while i < rows && j < columns
      mat[i][j] = diagonals[k]

      i += 1
      j += 1
      k += 1
    end
  end

  (0...columns).each do |column|
    i = 0
    j = column
    diagonals = []

    while i < rows && j < columns
      diagonals << mat[i][j]

      i += 1
      j += 1
    end

    diagonals.sort!

    i = 0
    j = column
    k = 0

    while i < rows && j < columns
      mat[i][j] = diagonals[k]

      i += 1
      j += 1
      k += 1
    end
  end

  mat
end
