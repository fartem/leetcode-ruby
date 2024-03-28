# frozen_string_literal: true

# https://leetcode.com/problems/largest-number-after-digit-swaps-by-parity/
# @param {Integer} num
# @return {Integer}
def largest_integer(num)
  odds = []
  evens = []
  ref = num
  while num.positive?
    curr = num % 10
    if curr.even?
      odds << curr
    else
      evens << curr
    end

    num /= 10
  end

  odds.sort!
  evens.sort!

  p_o = 0
  p_e = 0
  result = 0
  mul = 1
  while ref.positive?
    curr = ref % 10
    if curr.even?
      result = odds[p_o] * mul + result
      p_o += 1
    else
      result = evens[p_e] * mul + result
      p_e += 1
    end

    ref /= 10
    mul *= 10
  end

  result
end
