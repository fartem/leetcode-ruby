# frozen_string_literal: true

# https://leetcode.com/problems/find-the-difference/
# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  return t[0] if s.length.zero?

  s_chars = s.split('').sort
  t_chars = t.split('').sort

  (0..s_chars.length).step(1) do |i|
    return t_chars[i] if s_chars[i] != t_chars[i]
  end

  t_chars[t_chars.length - 1]
end