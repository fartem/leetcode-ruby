# frozen_string_literal: true

# https://leetcode.com/problems/next-greater-element-iii/
# @param {Integer} n
# @return {Integer}
def next_greater_element_iii(n)
  digits = n.to_s.chars

  i = digits.size - 1
  i -= 1 while i - 1 >= 0 && digits[i] <= digits[i - 1]

  return -1 if i.zero?

  j = i
  j += 1 while j + 1 < digits.size && digits[j + 1] > digits[i - 1]

  digits[i - 1], digits[j] = digits[j], digits[i - 1]
  digits[i..-1] = digits[i..].reverse

  result = digits.join.to_i

  result < 1 << 31 ? result : -1
end
