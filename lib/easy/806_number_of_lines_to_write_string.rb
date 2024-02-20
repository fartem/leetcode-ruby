# frozen_string_literal: true

# https://leetcode.com/problems/number-of-lines-to-write-string/
# @param {Integer[]} widths
# @param {String} s
# @return {Integer[]}
def number_of_lines(widths, s)
  lines = 1
  width = 0
  s.each_byte do |b|
    w = widths[b - 97]
    width += w

    next unless width > 100

    lines += 1
    width = w
  end

  [lines, width]
end
