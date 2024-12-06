# frozen_string_literal: true

# https://leetcode.com/problems/longest-word-in-dictionary-through-deleting/
# @param {String} s
# @param {String[]} dictionary
# @return {String}
def find_longest_word(s, dictionary)
  result = ''
  dictionary.each do |word|
    next unless is_valid_word_from_dictionary(s, word)

    r_s = result.size
    w_s = word.size

    result = word if r_s == w_s && result > word || w_s > r_s
  end

  result
end

private

# @param {String} s
# @param {String} word
# @return {Boolean}
def is_valid_word_from_dictionary(s, word)
  s_p = 0
  w_p = 0
  while s_p < s.size && w_p < word.size
    w_p += s[s_p] == word[w_p] ? 1 : 0
    s_p += 1
  end

  w_p == word.size
end
