# frozen_string_literal: true

# https://leetcode.com/problems/cells-with-odd-values-in-a-matrix/
# @param {Integer} m
# @param {Integer} n
# @param {Integer[][]} indices
# @return {Integer}
def odd_cells(m, n, indices)
  column = ::Array.new(m, 0)
  row = ::Array.new(n, 0)

  indices.each do |index|
    column[index[0]] += 1
    row[index[1]] += 1
  end

  column_odds = column.sum { |value| value.odd? ? 1 : 0 }
  row_odds = row.sum { |value| value.odd? ? 1 : 0 }

  column_odds * (n - row_odds) + row_odds * (m - column_odds)
end
