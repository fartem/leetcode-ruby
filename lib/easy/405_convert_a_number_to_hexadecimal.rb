# frozen_string_literal: true

# https://leetcode.com/problems/convert-a-number-to-hexadecimal/
# @param {Integer} num
# @return {String}
def to_hex(num)
  (num & 0xffffffff).to_s(16)
end
