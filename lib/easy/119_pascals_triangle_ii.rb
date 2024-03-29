# frozen_string_literal: true

# https://leetcode.com/problems/pascals-triangle-ii/
# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  result = [[1]]
  (1..row_index).each do |i|
    row = (0..i).to_a
    row[0] = 1
    row[row.length - 1] = 1

    if i >= 2
      prev = result[i - 1]
      p = 1
      (0...prev.length - 1).each do |j|
        row[p] = prev[j] + prev[j + 1]
        p += 1
      end
    end

    result << row
  end

  result.last
end
