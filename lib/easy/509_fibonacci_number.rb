# frozen_string_literal: true

# https://leetcode.com/problems/fibonacci-number/
# @param {Integer} n
# @return {Integer}
def fib(n)
  return n if n < 2

  first = 0
  second = 1
  (2...n).step(2) do |i|
    first += second
    second += first if i < n - 1
  end

  first + second
end
