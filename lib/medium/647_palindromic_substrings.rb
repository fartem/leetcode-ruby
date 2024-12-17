# frozen_string_literal: true

# https://leetcode.com/problems/palindromic-substrings/
# @param {String} s
# @return {Integer}
def count_substrings(s)
  count = 0
  s.size.times do |i|
    count += palindrome_count_for_string(s, i, i)
    count += palindrome_count_for_string(s, i, i + 1)
  end

  count
end

private

# @param {String} s
# @param {Integer} left
# @param {Integer} right
# @return {Integer}
def palindrome_count_for_string(s, left, right)
  count = 0
  while left >= 0 && right < s.length && s[left] == s[right]
    count += 1
    left -= 1
    right += 1
  end

  count
end
