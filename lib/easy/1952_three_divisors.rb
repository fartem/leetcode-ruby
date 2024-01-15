# frozen_string_literal: true

# https://leetcode.com/problems/three-divisors/description/
# @param {Integer} n
# @return {Boolean}
def is_three(n)
  divisors = 0
  (1..n).each do |i|
    divisors += 1 if (n % i).zero?

    return false if divisors > 3
  end

  divisors == 3
end
