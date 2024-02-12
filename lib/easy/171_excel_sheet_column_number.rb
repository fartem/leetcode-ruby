# frozen_string_literal: true

# https://leetcode.com/problems/excel-sheet-column-number/
# @param {String} column_title
# @return {Integer}
def title_to_number(column_title)
  alphabet = ('A'..'Z').each_with_index.map { |l, i| [l, i] }.to_h
  result = 0
  column_title.each_char do |c|
    result *= 26
    result += alphabet[c] + 1
  end

  result
end
