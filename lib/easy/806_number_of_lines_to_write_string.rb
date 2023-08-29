# frozen_string_literal: true

# https://leetcode.com/problems/number-of-lines-to-write-string/
# @param {Integer[]} widths
# @param {String} s
# @return {Integer[]}
def number_of_lines(widths, s)
  lines = 1
  width = 0
  (0...s.length).each do |i|
    c = s[i]
    w = widths[c.ord - 97]
    width += w

    if width > 100
      lines += 1
      width = w
    end
  end

  [lines, width]
end
