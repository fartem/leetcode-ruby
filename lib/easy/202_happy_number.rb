# frozen_string_literal: true

# https://leetcode.com/problems/happy-number/
# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  seen = ::Set.new
  while n != 1 && !seen.include?(n)
    seen << n
    n = _next(n)
  end
  n == 1
end

private

# @param {Integer} n
# @return {Integer}
def _next(n)
  sum = 0
  while n.positive?
    d = n % 10
    n /= 10
    sum += d * d
  end
  sum
end
