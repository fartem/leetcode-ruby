# frozen_string_literal: true

# https://leetcode.com/problems/range-sum-query-2d-immutable/
class NumMatrix
  # @param {Integer[][]}
  def initialize(matrix)
    return if matrix.empty? || matrix.first.empty?

    @dp = ::Array.new(matrix.size + 1) { ::Array.new(matrix[0].size + 1, 0) }
    matrix.each_with_index do |row, r|
      row.each_with_index do |val, c|
        @dp[r + 1][c + 1] = @dp[r + 1][c] + @dp[r][c + 1] + val - @dp[r][c]
      end
    end
  end

  # @param {Integer} row1
  # @param {Integer} col1
  # @param {Integer} row2
  # @param {Integer} col2
  # @return {Integer}
  def sum_region(row1, col1, row2, col2)
    @dp[row2 + 1][col2 + 1] - @dp[row1][col2 + 1] - @dp[row2 + 1][col1] + @dp[row1][col1]
  end
end
