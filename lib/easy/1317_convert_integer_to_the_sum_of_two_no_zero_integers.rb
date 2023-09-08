# frozen_string_literal: true

# https://leetcode.com/problems/convert-integer-to-the-sum-of-two-no-zero-integers/
# @param {Integer} n
# @return {Integer[]}
def get_no_zero_integers(n)
  result = []
  (1...n).each do |i|
    next if has_zeros(i)

    b = n - i

    next if has_zeros(b)

    result[0] = i
    result[1] = b

    break
  end

  result
end

# @param {Integer} num
# @return {Boolean}
def has_zeros(num)
  while num.positive?
    return true if (num % 10).zero?

    num /= 10
  end

  false
end
