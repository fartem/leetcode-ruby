# frozen_string_literal: true

# https://leetcode.com/problems/the-kth-factor-of-n/
# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def kth_factor(n, k)
  factors = ::Array.new(k, 0)
  p = 0
  i = 1

  while i <= n && p < k
    if (n % i).zero?
      factors[p] = i
      p += 1
    end

    i += 1
  end

  p < k ? -1 : factors.last
end
