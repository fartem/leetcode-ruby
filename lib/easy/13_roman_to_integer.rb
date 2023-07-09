# frozen_string_literal: true

# https://leetcode.com/problems/roman-to-integer/
# @param {String} s
# @return {Integer}
def roman_to_int(s)
  values = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  result = 0
  s.reverse.each_char do |ch|
    curr = values[ch]
    if curr * 4 < result
      result -= curr
    else
      result += curr
    end
  end

  result
end
