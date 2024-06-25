# frozen_string_literal: true

# https://leetcode.com/problems/longest-palindromic-substring/
# @param {String} s
# @return {String}
def longest_palindrome5(s)
  result = ''

  (0...s.length).each do |i|
    str1 = find_longest_palindrome(i, i, s)
    str2 = find_longest_palindrome(i, i + 1, s)

    result = [result, str1, str2].max_by(&:size)
  end

  result
end

# @param {Integer} l
# @param {Integer} r
# @param {String} s
# @return {String}
def find_longest_palindrome(l, r, s)
  while l >= 0 && r < s.size && s[l] == s[r]
    l -= 1
    r += 1
  end

  s[(l + 1)..(r - 1)]
end
