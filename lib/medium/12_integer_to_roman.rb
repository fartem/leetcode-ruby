# frozen_string_literal: false

# https://leetcode.com/problems/integer-to-roman/
# @param {Integer} num
# @return {String}
def int_to_roman(num)
  roman_numbers = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

  result = ''
  roman_numbers.each do |value, symbol|
    while num >= value
      result << symbol
      num -= value
    end
  end

  result
end
