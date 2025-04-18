# frozen_string_literal: true

# https://leetcode.com/problems/existence-of-a-substring-in-a-string-and-its-reverse/
# @param {String} s
# @return {Boolean}
def is_substring_present(s)
  return false if s.size < 2

  rev = s.reverse
  subs = []

  (0..s.length - 2).each do |i|
    subs << s[i, 2]
  end

  subs.any? { |sub| rev.include?(sub) }
end
