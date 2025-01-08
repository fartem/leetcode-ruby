# frozen_string_literal: true

# https://leetcode.com/problems/decoded-string-at-index/
# @param {String} s
# @param {Integer} k
# @return {String}
def decode_at_index(s, k)
  size = 0

  s.each_char do |c|
    if c =~ /[0-9]/
      size *= c.to_i
    else
      size += 1
    end
  end

  s.each_char.reverse_each do |c|
    k %= size

    return c if k.zero? && c =~ /[A-Za-z]/

    if c =~ /[0-9]/
      size /= c.to_i
    else
      size -= 1
    end
  end
end
