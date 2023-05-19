# frozen_string_literal: true

# https://leetcode.com/problems/valid-anagram/
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.length != t.length

  s_chars = s.split('').sort
  t_chars = t.split('').sort

  s_chars == t_chars
end
