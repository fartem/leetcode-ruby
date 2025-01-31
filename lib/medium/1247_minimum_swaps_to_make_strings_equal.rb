# frozen_string_literal: true

# https://leetcode.com/problems/minimum-swaps-to-make-strings-equal/
# @param {String} s1
# @param {String} s2
# @return {Integer}
def minimum_swap(s1, s2)
  x = 0
  y = 0

  s1.each_char.with_index do |char, i|
    next unless char != s2[i]

    if char == 'x'
      x += 1
    else
      y += 1
    end
  end

  x_remainder = x % 2
  y_remainder = y % 2

  if x_remainder.zero? && y_remainder.zero?
    (x + y) / 2
  elsif x_remainder == 1 && y_remainder == 1
    (x + y) / 2 + 1
  else
    -1
  end
end
