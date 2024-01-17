# frozen_string_literal: true

# https://leetcode.com/problems/check-if-string-is-a-prefix-of-array/description/
# @param {String} s
# @param {String[]} words
# @return {Boolean}
def is_prefix_string(s, words)
  p = 0
  i = 0
  while i < words.length && p < s.length
    word = words[i]
    j = p
    k = 0
    while j < s.length && k < word.length
      return false unless s[j] == word[k]

      j += 1
      k += 1
    end

    p += word.length
    i += 1
  end

  p == s.length
end
