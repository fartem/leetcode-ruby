# frozen_string_literal: true

# https://leetcode.com/problems/add-digits/
# @param {Integer} num
# @return {Integer}
def add_digits(num)
  result = 0
  while num.positive?
    digit = num % 10
    result += digit
    num /= 10
    if num.zero? && result >= 10
      num = result
      result = 0
    end
  end

  result
end
