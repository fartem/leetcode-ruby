# frozen_string_literal: true

# https://leetcode.com/problems/find-first-palindromic-string-in-the-array/
# @param {String[]} words
# @return {String}
def first_palindrome(words)
  words.each do |word|
    return word if is_palindromic?(word)
  end

  ''
end

# @param {String} word
# @return {Boolean}
def is_palindromic?(word)
  l = 0
  r = word.length - 1
  while l < r
    return false unless word[l] == word[r]

    l += 1
    r -= 1
  end

  true
end
