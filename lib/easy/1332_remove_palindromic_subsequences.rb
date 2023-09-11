# frozen_string_literal: true

# https://leetcode.com/problems/remove-palindromic-subsequences/
# @param {String} s
# @return {Integer}
def remove_palindrome_sub(s)
  start = 0
  nd = s.length - 1
  while start < nd
    return 2 unless s[start] == s[nd]

    start += 1
    nd -= 1
  end

  1
end
