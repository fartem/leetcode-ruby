# frozen_string_literal: true

# https://leetcode.com/problems/1-bit-and-2-bit-characters/
# @param {Integer[]} bits
# @return {Boolean}
def is_one_bit_character(bits)
  pos = 0
  pos += bits[pos] == 1 ? 2 : 1 while pos < bits.length - 1

  pos == bits.length - 1
end
