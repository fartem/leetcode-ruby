# frozen_string_literal: true

# https://leetcode.com/problems/reformat-phone-number/
# @param {String} number
# @return {String}
def reformat_number(number)
  return number if number.length < 4

  digits = []
  (0...number.length).each do |i|
    c = number[i]
    digits << c if c != '-' && c != ' '
  end

  result = []
  diff =
    if (digits.length % 3).zero?
      2
    else
      ((digits.length - 2) % 3).zero? ? 2 : 4
    end

  (0...(digits.length - diff)).step(3).each do |i|
    result << '-' if i != 0
    (i...(i + 3)).each do |j|
      result << digits[j]
    end
  end

  if digits.length % 3 != 0
    (0...diff).each do |i|
      result << '-' if !result.empty? && i.even?
      result << digits[digits.length - diff + i]
    end
  end

  result.join
end
