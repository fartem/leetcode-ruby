# frozen_string_literal: true

# https://leetcode.com/problems/cells-in-a-range-on-an-excel-sheet/
# @param {String} s
# @return {String[]}
def cells_in_range(s)
  chars = s.split('')

  result = []
  (chars.first.sum..chars[3].sum).each do |c|
    (chars[1].to_i..chars.last.to_i).each do |i|
      result << "#{c.chr}#{i}"
    end
  end

  result
end
