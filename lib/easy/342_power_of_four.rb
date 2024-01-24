# frozen_string_literal: true

# https://leetcode.com/problems/power-of-four/
# @param {Integer} n
# @return {Boolean}
def is_power_of_four(n)
  return false if n.negative?

  num = n / 4
  pow = 0
  until num.zero?
    num /= 4
    pow += 1
  end

  4.pow(pow) == n
end
