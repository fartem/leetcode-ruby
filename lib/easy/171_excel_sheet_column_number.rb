# frozen_string_literal: true

# https://leetcode.com/problems/excel-sheet-column-number/
# @param {String} column_title
# @return {Integer}
def title_to_number(column_title)
  alphabet = ('A'..'Z').each_with_index.map { |l, i| [l, i] }.to_h
  result = 0
  (0...column_title.length).step(1) do |i|
    result *= 26
    result += alphabet[column_title[i].chr] + 1
  end
  result
end
