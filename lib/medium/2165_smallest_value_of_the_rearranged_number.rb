# frozen_string_literal: true

# https://leetcode.com/problems/smallest-value-of-the-rearranged-number/
# @param {Integer} num
# @return {Integer}
def smallest_number(num)
  return 0 if num.zero?

  digits = num.to_s.chars

  if num >= 0
    sorted_digits = digits.sort

    if sorted_digits[0] == '0'
      first_non_zero = sorted_digits.find { |d| d != '0' }
      index = sorted_digits.index(first_non_zero)
      sorted_digits[0], sorted_digits[index] = sorted_digits[index], sorted_digits[0]
    end

    sorted_digits.join.to_i
  else
    sorted_digits = digits[1..].sort.reverse
    "-#{sorted_digits.join}".to_i
  end
end
