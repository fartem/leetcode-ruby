# frozen_string_literal: true

# https://leetcode.com/problems/power-of-two/
# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  n.positive? && n.nobits?(n.pred)
end
