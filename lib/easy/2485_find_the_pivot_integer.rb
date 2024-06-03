# frozen_string_literal: true

# https://leetcode.com/problems/find-the-pivot-integer/
# @param {Integer} n
# @return {Integer}
def pivot_integer(n)
  sum = n * (n + 1) / 2
  value = 0
  (0..n).reverse_each do |i|
    value += i

    return i if sum == value

    sum -= i
  end

  -1
end
