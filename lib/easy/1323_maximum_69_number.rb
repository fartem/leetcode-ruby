# frozen_string_literal: true

# https://leetcode.com/problems/maximum-69-number/
# @param {Integer} num
# @return {Integer}
def maximum69_number(num)
  result = num
  mul = 10
  temp = num
  while temp.positive?
    n = temp % 10 == 6 ? 3 : -3
    m = mul + n * mul / 10
    candidate = num - mul + m

    result = candidate if candidate > result

    mul *= 10
    temp /= 10
  end

  result
end
