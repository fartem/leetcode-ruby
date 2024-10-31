# frozen_string_literal: true

# https://leetcode.com/problems/kth-smallest-element-in-a-sorted-matrix/
# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
def kth_smallest378(matrix, k)
  n = matrix.length
  l = matrix[0][0]
  h = matrix[n - 1][n - 1]
  m = 0
  temp = 0
  count = 0

  while l < h
    m = l + (h - l) / 2
    temp = n - 1
    count = 0

    matrix.each do |mat|
      temp -= 1 while temp >= 0 && mat[temp] > m

      count += (temp + 1)
    end

    if count < k
      l = m + 1
    else
      h = m
    end
  end

  l
end
