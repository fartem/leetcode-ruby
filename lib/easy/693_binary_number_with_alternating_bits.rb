# frozen_string_literal: true

# https://leetcode.com/problems/binary-number-with-alternating-bits/
# @param {Integer} n
# @return {Boolean}
def has_alternating_bits(n)
  curr = n % 2
  n /= 2
  while n.positive?
    return false if curr == n % 2

    curr = n % 2
    n /= 2
  end

  true
end
