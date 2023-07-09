# frozen_string_literal: true

# https://leetcode.com/problems/plus-one/
# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  rem = 1
  (digits.length - 1).downto(0).each do |i|
    break if rem.zero?

    curr = digits[i]
    digits[i] = curr + 1 > 9 ? 0 : curr + 1
    rem = 0 unless digits[i].zero?
  end

  digits.insert(0, 1) unless rem.zero?
  digits
end
