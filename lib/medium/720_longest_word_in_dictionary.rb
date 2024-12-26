# frozen_string_literal: true

require 'set'

# https://leetcode.com/problems/longest-word-in-dictionary/
# @param {String[]} words
# @return {String}
def longest_word(words)
  found_words = { '' => true }
  words.sort.each { |word| found_words[word] = true if found_words[word[...-1]] }

  found_words.keys.max_by(&:size)
end
