# frozen_string_literal: true

# https://leetcode.com/problems/construct-k-palindrome-strings/
# @param {String} s
# @param {Integer} k
# @return {Boolean}
def can_construct_k_palindrome(s, k)
  return false if s.size < k

  chars = s.chars.sort
  odd_count = 0
  i = 0

  while i < chars.size
    current = chars[i]
    count = 0

    while i < chars.size && chars[i] == current
      count += 1
      i += 1
    end

    odd_count += 1 if count.odd?
  end

  odd_count <= k
end
