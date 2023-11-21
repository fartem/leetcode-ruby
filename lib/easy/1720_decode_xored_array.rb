# frozen_string_literal: true

# https://leetcode.com/problems/decode-xored-array/
# @param {Integer[]} encoded
# @param {Integer} first
# @return {Integer[]}
def decode_xored(encoded, first)
  result = ::Array.new(encoded.length + 1)
  result[0] = first
  (1...result.length).each { |i| result[i] = result[i - 1] ^ encoded[i - 1] }

  result
end
