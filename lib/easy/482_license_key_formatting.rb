# frozen_string_literal: true

# https://leetcode.com/problems/license-key-formatting/
# @param {String} s
# @param {Integer} k
# @return {String}
def license_key_formatting(s, k)
  key = []
  (0...s.length).step(1) do |i|
    c = s[i]
    key << c.upcase if c != '-'
  end

  return '' if key.length.zero?

  parts = key.reverse.each_slice(k)
  result = []
  parts.each do |part|
    result << part.join.reverse
  end

  result.reverse_each.to_a.join('-')
end
