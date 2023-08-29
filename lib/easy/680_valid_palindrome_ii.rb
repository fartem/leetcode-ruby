# frozen_string_literal: true

# https://leetcode.com/problems/valid-palindrome-ii/
# @param {String} s
# @return {Boolean}
def valid_palindrome_ii(s)
  (0...(s.length / 2)).each do |i|
    index = s.length - i - 1

    return is_palindrome_range(s, i + 1, index) || is_palindrome_range(s, i, index - 1) if s[i] != s[index]
  end

  true
end

# @param {String} s
# @param {Integer} i
# @param {Integer} j
def is_palindrome_range(s, i, j)
  (i..(i + (j - i) / 2)).each do |k|
    return false if s[k] != s[j - k + i]
  end

  true
end
