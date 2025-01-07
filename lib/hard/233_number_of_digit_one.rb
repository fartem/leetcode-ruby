# frozen_string_literal: true

# https://leetcode.com/problems/number-of-digit-one/
# @param {Integer} n
# @return {Integer}
def count_digit_one(n)
  result = 0
  i = 1
  while i <= n
    div = i * 10
    result += (n / div) * i + [[n % div - i + 1, 0].max, i].min

    i *= 10
  end

  result
end
