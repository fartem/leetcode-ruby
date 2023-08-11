# frozen_string_literal: true

# https://leetcode.com/problems/prime-number-of-set-bits-in-binary-representation/
# @param {Integer} left
# @param {Integer} right
# @return {Integer}
def count_prime_set_bits(left, right)
  result = 0
  (left..right).step(1) do |num|
    bits = pop_count(num)
    result += 1 if is_prime?(bits)
  end

  result
end

# @param {Integer} x
# @return {Integer}
def pop_count(x)
  b = 0
  while x.positive?
    x &= x - 1
    b += 1
  end

  b
end

# @param {Integer} num
# @return {Boolean}
def is_prime?(num)
  return false if num <= 1

  ::Math.sqrt(num).to_i.downto(2).each do |i|
    return false if (num % i).zero?
  end

  true
end
