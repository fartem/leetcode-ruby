# frozen_string_literal: true

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  y = x
  t = 0
  while y.positive?
    t *= 10
    t += y % 10
    y /= 10
  end
  x == t
end
