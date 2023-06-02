# frozen_string_literal: true

# https://leetcode.com/problems/valid-perfect-square/
# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
  r = num
  r = (r + num / r) / 2 while r * r > num

  r * r == num
end
