# frozen_string_literal: true

# https://leetcode.com/problems/divide-two-integers/
# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
  return 2**31 - 1 if dividend == -2**31 && divisor == -1

  neg = (dividend.negative? || divisor.negative?) && (dividend.positive? || divisor.positive?)
  dividend = dividend.abs
  divisor = divisor.abs
  quotient = 0

  while dividend - divisor >= 0
    sub_quotient = 0
    sub_quotient += 1 while dividend - (divisor << sub_quotient << 1) >= 0
    quotient += 1 << sub_quotient
    dividend -= divisor << sub_quotient
  end

  neg ? -quotient : quotient
end
