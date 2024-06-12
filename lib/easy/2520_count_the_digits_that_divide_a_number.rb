# frozen_string_literal: true

# https://leetcode.com/problems/count-the-digits-that-divide-a-number/
# @param {Integer} num
# @return {Integer}
def count_digits(num)
  original = num
  result = 0
  while num.positive?
    digit = num % 10
    result += 1 if (original % digit).zero?
    num /= 10
  end

  result
end
