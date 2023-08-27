# frozen_string_literal: true

# https://leetcode.com/problems/word-pattern/
# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
  words = s.split

  return false if words.length != pattern.length

  matches = {}
  (0...words.length).each do |i|
    p_char = pattern[i]
    word = words[i]

    if matches.include?(p_char)
      match = matches[p_char]

      return false if match != word
    elsif matches.value?(word)
      return false
    end

    matches[p_char] = word
  end

  true
end
