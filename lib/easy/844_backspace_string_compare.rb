# frozen_string_literal: true

# https://leetcode.com/problems/backspace-string-compare/
# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
  f = print_chars(s)
  n = print_chars(t)

  return false if f.length != n.length

  (0...f.length).each do |i|
    f_c = f[i]
    n_c = n[i]

    return false if f_c != n_c
  end

  true
end

# @param {String} s
# @return {Array}
def print_chars(s)
  stack = []
  (0...s.length).each do |i|
    c = s[i]
    if c == '#'
      stack.pop unless stack.empty?
    else
      stack.push(c)
    end
  end

  stack
end
