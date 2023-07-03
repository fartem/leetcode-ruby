# frozen_string_literal: true

# https://leetcode.com/problems/longest-uncommon-subsequence-i/
# @param {String} a
# @param {String} b
# @return {Integer}
def find_lu_slength(a, b)
  chars_in_a = ::Set.new
  (0..a.length).step(1) do |i|
    chars_in_a << a[i]
  end

  has_diff = false
  (0..b.length).step(1) do |i|
    unless chars_in_a.include?(b[i])
      has_diff = true
      break
    end
  end

  has_diff ||= a.length != b.length

  has_diff ? [a.length, b.length].max : -1
end
