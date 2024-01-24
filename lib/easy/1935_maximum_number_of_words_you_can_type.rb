# frozen_string_literal: true

# https://leetcode.com/problems/maximum-number-of-words-you-can-type/
# @param {String} text
# @param {String} broken_letters
# @return {Integer}
def can_be_typed_words(text, broken_letters)
  words = text.split
  result = words.length
  chars = []
  (0...broken_letters.length).each do |i|
    chars[broken_letters[i].ord] = 1
  end
  words.each do |word|
    (0...word.length).each do |i|
      next unless chars[word[i].ord] == 1

      result -= 1

      break
    end
  end

  result
end
