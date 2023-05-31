# frozen_string_literal: true

# https://leetcode.com/problems/reverse-string/
# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  max = s.length - 1
  (0...s.length / 2).step(1) do |i|
    temp = s[i]
    s[i] = s[max - i]
    s[max - i] = temp
  end
end
