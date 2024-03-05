# frozen_string_literal: true

# https://leetcode.com/problems/check-if-every-row-and-column-contains-all-numbers/
# @param {Integer[][]} matrix
# @return {Boolean}
def check_valid(matrix)
  matrix.each do |row|
    rows = ::Set.new
    (0...matrix.length).each do |i|
      return false if rows.include?(row[i])

      rows << row[i]
    end
  end

  (0...matrix.length).each do |i|
    columns = ::Set.new
    matrix.each do |column|
      return false if columns.include?(column[i])

      columns << column[i]
    end
  end

  true
end
