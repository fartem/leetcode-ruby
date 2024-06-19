# frozen_string_literal: true

# https://leetcode.com/problems/alternating-digit-sum/
# @param {Integer} n
# @return {Integer}
def alternate_digit_sum(n)
  result = 0
  factor = 1
  n.to_s.each_char do |c|
    result += c.to_i * factor
    factor *= -1
  end

  result
end
