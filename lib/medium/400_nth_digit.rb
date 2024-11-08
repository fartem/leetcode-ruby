# frozen_string_literal: true

# https://leetcode.com/problems/nth-digit/
# @param {Integer} n
# @return {Integer}
def find_nth_digit(n)
  sz = 1
  p = 1

  loop do
    d = 9 * sz * p

    return ((n - 1) / sz + p).to_s[(n - 1) % sz].to_i if n <= d

    n -= d
    sz += 1
    p *= 10
  end
end
