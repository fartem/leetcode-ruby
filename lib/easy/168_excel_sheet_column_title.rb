# frozen_string_literal: true

# https://leetcode.com/problems/excel-sheet-column-title/
# @param {Integer} column_number
# @return {String}
def convert_to_title(column_number)
  alphabet = ('A'..'Z').each_with_index.map { |l, i| [i, l] }.to_h
  result = []
  while column_number.positive?
    column_number -= 1
    result << alphabet[column_number % 26]
    column_number /= 26
  end
  result.reverse.join
end
