# frozen_string_literal: true

# https://leetcode.com/problems/arranging-coins/
# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  stairs = 1
  while n.positive?
    n -= stairs
    stairs += 1
  end

  stairs - (n.zero? ? 1 : 2)
end
