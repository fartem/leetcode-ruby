# frozen_string_literal: true

# https://leetcode.com/problems/power-of-three/description/
# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  return false if n.negative?

  num = n / 3
  pow = 0
  until num.zero?
    num /= 3
    pow += 1
  end

  3.pow(pow) == n
end
